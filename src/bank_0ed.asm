; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ed", ROMX[$4000], BANK[$ed]

    db $ed

    dec c                                         ; $4001: $0d

Jump_0ed_4002:
    inc b                                         ; $4002: $04
    pop af                                        ; $4003: $f1
    ld a, [bc]                                    ; $4004: $0a
    ld [$ea01], a                                 ; $4005: $ea $01 $ea
    ei                                            ; $4008: $fb
    db $ec                                        ; $4009: $ec
    cp $fa                                        ; $400a: $fe $fa
    db $fd                                        ; $400c: $fd
    ld a, [$02ff]                                 ; $400d: $fa $ff $02
    inc de                                        ; $4010: $13
    add h                                         ; $4011: $84
    dec a                                         ; $4012: $3d
    ccf                                           ; $4013: $3f
    rst $08                                       ; $4014: $cf
    rst $38                                       ; $4015: $ff
    ld [bc], a                                    ; $4016: $02
    ld a, a                                       ; $4017: $7f
    sbc b                                         ; $4018: $98
    ld a, $2f                                     ; $4019: $3e $2f
    ld a, a                                       ; $401b: $7f
    ld d, e                                       ; $401c: $53
    dec sp                                        ; $401d: $3b
    cpl                                           ; $401e: $2f
    ld a, a                                       ; $401f: $7f
    ld l, c                                       ; $4020: $69
    ld a, a                                       ; $4021: $7f
    ld e, d                                       ; $4022: $5a
    ccf                                           ; $4023: $3f
    ld hl, $131f                                  ; $4024: $21 $1f $13
    dec c                                         ; $4027: $0d
    rrca                                          ; $4028: $0f
    ld a, [de]                                    ; $4029: $1a
    rra                                           ; $402a: $1f
    ld d, $1f                                     ; $402b: $16 $1f
    ld e, $1f                                     ; $402d: $1e $1f
    jr jr_0ed_4050                                ; $402f: $18 $1f

    ld [bc], a                                    ; $4031: $02
    ld b, $82                                     ; $4032: $06 $82
    ld [bc], a                                    ; $4034: $02
    ld b, $04                                     ; $4035: $06 $04
    rlca                                          ; $4037: $07
    inc b                                         ; $4038: $04
    ld b, $04                                     ; $4039: $06 $04
    inc b                                         ; $403b: $04
    add e                                         ; $403c: $83
    ld [bc], a                                    ; $403d: $02
    ld b, $05                                     ; $403e: $06 $05
    inc bc                                        ; $4040: $03
    rlca                                          ; $4041: $07
    ld [bc], a                                    ; $4042: $02
    ld b, $02                                     ; $4043: $06 $02
    inc b                                         ; $4045: $04
    ld [bc], a                                    ; $4046: $02
    ld b, $84                                     ; $4047: $06 $84
    add $be                                       ; $4049: $c6 $be
    cp $de                                        ; $404b: $fe $de
    inc b                                         ; $404d: $04
    nop                                           ; $404e: $00
    add l                                         ; $404f: $85

jr_0ed_4050:
    ld e, a                                       ; $4050: $5f
    ld a, a                                       ; $4051: $7f
    ld l, a                                       ; $4052: $6f
    ld a, a                                       ; $4053: $7f
    ld [hl], a                                    ; $4054: $77
    inc bc                                        ; $4055: $03
    ld a, a                                       ; $4056: $7f
    add d                                         ; $4057: $82
    add $ff                                       ; $4058: $c6 $ff
    ld [bc], a                                    ; $405a: $02
    ld a, a                                       ; $405b: $7f
    inc d                                         ; $405c: $14
    nop                                           ; $405d: $00
    inc b                                         ; $405e: $04
    ld [bc], a                                    ; $405f: $02
    ld [bc], a                                    ; $4060: $02
    inc bc                                        ; $4061: $03
    add d                                         ; $4062: $82
    ld bc, $0203                                  ; $4063: $01 $03 $02
    ld [bc], a                                    ; $4066: $02
    ld [de], a                                    ; $4067: $12
    nop                                           ; $4068: $00
    rst $38                                       ; $4069: $ff
    dec c                                         ; $406a: $0d
    inc b                                         ; $406b: $04
    pop af                                        ; $406c: $f1
    ld a, [bc]                                    ; $406d: $0a
    ld [$ea01], a                                 ; $406e: $ea $01 $ea
    ld a, [$fdec]                                 ; $4071: $fa $ec $fd
    ld a, [$fafb]                                 ; $4074: $fa $fb $fa
    rst $38                                       ; $4077: $ff
    ld [bc], a                                    ; $4078: $02
    inc de                                        ; $4079: $13
    add h                                         ; $407a: $84
    dec a                                         ; $407b: $3d
    ccf                                           ; $407c: $3f
    rst $08                                       ; $407d: $cf
    rst $38                                       ; $407e: $ff
    ld [bc], a                                    ; $407f: $02
    ld a, a                                       ; $4080: $7f
    sbc b                                         ; $4081: $98
    ld a, $2f                                     ; $4082: $3e $2f
    ld a, a                                       ; $4084: $7f
    ld d, e                                       ; $4085: $53
    dec sp                                        ; $4086: $3b
    cpl                                           ; $4087: $2f
    ld a, a                                       ; $4088: $7f
    ld l, c                                       ; $4089: $69
    ld a, a                                       ; $408a: $7f
    ld e, d                                       ; $408b: $5a
    ccf                                           ; $408c: $3f
    ld hl, $131f                                  ; $408d: $21 $1f $13
    dec c                                         ; $4090: $0d
    rrca                                          ; $4091: $0f
    ld a, [de]                                    ; $4092: $1a
    rra                                           ; $4093: $1f
    ld d, $1f                                     ; $4094: $16 $1f
    add hl, de                                    ; $4096: $19
    rra                                           ; $4097: $1f
    jr c, jr_0ed_40d1                             ; $4098: $38 $37

    ld [bc], a                                    ; $409a: $02
    ld b, $82                                     ; $409b: $06 $82
    ld [bc], a                                    ; $409d: $02
    ld b, $04                                     ; $409e: $06 $04
    rlca                                          ; $40a0: $07
    inc b                                         ; $40a1: $04
    ld b, $04                                     ; $40a2: $06 $04
    inc b                                         ; $40a4: $04
    add e                                         ; $40a5: $83
    ld [bc], a                                    ; $40a6: $02
    ld b, $05                                     ; $40a7: $06 $05
    inc bc                                        ; $40a9: $03
    rlca                                          ; $40aa: $07
    ld [bc], a                                    ; $40ab: $02
    ld b, $86                                     ; $40ac: $06 $86
    ld [bc], a                                    ; $40ae: $02
    ld b, $02                                     ; $40af: $06 $02
    ld b, $ce                                     ; $40b1: $06 $ce
    cp $02                                        ; $40b3: $fe $02
    rst $38                                       ; $40b5: $ff
    ld [bc], a                                    ; $40b6: $02
    ld b, b                                       ; $40b7: $40
    add a                                         ; $40b8: $87
    ret nz                                        ; $40b9: $c0

    add b                                         ; $40ba: $80
    ld [hl], a                                    ; $40bb: $77
    ld a, a                                       ; $40bc: $7f
    dec sp                                        ; $40bd: $3b
    ccf                                           ; $40be: $3f
    dec a                                         ; $40bf: $3d
    inc bc                                        ; $40c0: $03
    ccf                                           ; $40c1: $3f
    add d                                         ; $40c2: $82
    ld sp, $023f                                  ; $40c3: $31 $3f $02
    rra                                           ; $40c6: $1f
    inc d                                         ; $40c7: $14
    nop                                           ; $40c8: $00
    inc b                                         ; $40c9: $04
    inc c                                         ; $40ca: $0c
    ld [bc], a                                    ; $40cb: $02
    ld c, $84                                     ; $40cc: $0e $84
    dec c                                         ; $40ce: $0d
    rrca                                          ; $40cf: $0f
    ld a, [bc]                                    ; $40d0: $0a

jr_0ed_40d1:
    ld c, $02                                     ; $40d1: $0e $02
    inc c                                         ; $40d3: $0c
    stop                                          ; $40d4: $10 $00
    rst $38                                       ; $40d6: $ff
    dec c                                         ; $40d7: $0d
    inc b                                         ; $40d8: $04
    pop af                                        ; $40d9: $f1
    ld a, [bc]                                    ; $40da: $0a
    ld [$ea01], a                                 ; $40db: $ea $01 $ea
    ld a, [$fdec]                                 ; $40de: $fa $ec $fd
    ld a, [$fafb]                                 ; $40e1: $fa $fb $fa
    rst $38                                       ; $40e4: $ff
    ld [bc], a                                    ; $40e5: $02
    inc de                                        ; $40e6: $13
    add h                                         ; $40e7: $84
    dec a                                         ; $40e8: $3d
    ccf                                           ; $40e9: $3f
    rst $08                                       ; $40ea: $cf
    rst $38                                       ; $40eb: $ff
    ld [bc], a                                    ; $40ec: $02
    ld a, a                                       ; $40ed: $7f
    sbc b                                         ; $40ee: $98
    ld a, $2f                                     ; $40ef: $3e $2f
    ld a, a                                       ; $40f1: $7f
    ld d, e                                       ; $40f2: $53
    dec sp                                        ; $40f3: $3b
    cpl                                           ; $40f4: $2f
    ld a, a                                       ; $40f5: $7f
    ld l, c                                       ; $40f6: $69
    ld a, a                                       ; $40f7: $7f
    ld e, d                                       ; $40f8: $5a
    ccf                                           ; $40f9: $3f
    ld hl, $131f                                  ; $40fa: $21 $1f $13
    dec c                                         ; $40fd: $0d
    rrca                                          ; $40fe: $0f
    ld a, [de]                                    ; $40ff: $1a
    rra                                           ; $4100: $1f
    ld e, $1f                                     ; $4101: $1e $1f
    ld [hl-], a                                   ; $4103: $32
    ccf                                           ; $4104: $3f
    jr nc, @+$41                                  ; $4105: $30 $3f

    ld [bc], a                                    ; $4107: $02
    ld b, $82                                     ; $4108: $06 $82
    ld [bc], a                                    ; $410a: $02
    ld b, $04                                     ; $410b: $06 $04
    rlca                                          ; $410d: $07
    inc b                                         ; $410e: $04
    ld b, $04                                     ; $410f: $06 $04
    inc b                                         ; $4111: $04
    add e                                         ; $4112: $83
    ld [bc], a                                    ; $4113: $02
    ld b, $05                                     ; $4114: $06 $05
    inc bc                                        ; $4116: $03
    rlca                                          ; $4117: $07
    ld b, $06                                     ; $4118: $06 $06
    add d                                         ; $411a: $82
    sbc $fe                                       ; $411b: $de $fe
    ld [bc], a                                    ; $411d: $02
    rst $38                                       ; $411e: $ff
    adc c                                         ; $411f: $89
    ret nz                                        ; $4120: $c0

    add b                                         ; $4121: $80
    ret nz                                        ; $4122: $c0

    add b                                         ; $4123: $80
    ld [hl], a                                    ; $4124: $77
    ld a, a                                       ; $4125: $7f
    dec sp                                        ; $4126: $3b
    ccf                                           ; $4127: $3f
    dec a                                         ; $4128: $3d
    inc bc                                        ; $4129: $03
    ccf                                           ; $412a: $3f
    add d                                         ; $412b: $82
    ld sp, $023f                                  ; $412c: $31 $3f $02
    rra                                           ; $412f: $1f
    inc d                                         ; $4130: $14
    nop                                           ; $4131: $00
    inc b                                         ; $4132: $04
    inc c                                         ; $4133: $0c
    ld [bc], a                                    ; $4134: $02
    ld c, $84                                     ; $4135: $0e $84
    dec c                                         ; $4137: $0d
    rrca                                          ; $4138: $0f
    ld a, [bc]                                    ; $4139: $0a
    ld c, $02                                     ; $413a: $0e $02
    inc c                                         ; $413c: $0c
    stop                                          ; $413d: $10 $00
    rst $38                                       ; $413f: $ff
    dec c                                         ; $4140: $0d
    inc b                                         ; $4141: $04
    pop af                                        ; $4142: $f1
    ld a, [bc]                                    ; $4143: $0a
    ld [$eb01], a                                 ; $4144: $ea $01 $eb
    ld sp, hl                                     ; $4147: $f9
    db $ec                                        ; $4148: $ec
    db $fd                                        ; $4149: $fd
    ei                                            ; $414a: $fb
    ld a, [$fffb]                                 ; $414b: $fa $fb $ff
    ld [bc], a                                    ; $414e: $02
    daa                                           ; $414f: $27
    add e                                         ; $4150: $83
    db $dd                                        ; $4151: $dd
    rst $38                                       ; $4152: $ff
    ld l, a                                       ; $4153: $6f
    inc bc                                        ; $4154: $03
    ld a, a                                       ; $4155: $7f
    sbc b                                         ; $4156: $98
    ld a, $27                                     ; $4157: $3e $27
    ld a, a                                       ; $4159: $7f
    ld d, e                                       ; $415a: $53
    dec sp                                        ; $415b: $3b
    cpl                                           ; $415c: $2f
    ld a, a                                       ; $415d: $7f
    ld l, c                                       ; $415e: $69
    ld a, a                                       ; $415f: $7f
    ld e, d                                       ; $4160: $5a

jr_0ed_4161:
    ccf                                           ; $4161: $3f
    ld hl, $131f                                  ; $4162: $21 $1f $13
    dec c                                         ; $4165: $0d
    rrca                                          ; $4166: $0f
    dec de                                        ; $4167: $1b
    rra                                           ; $4168: $1f
    ld d, $1f                                     ; $4169: $16 $1f

jr_0ed_416b:
    dec sp                                        ; $416b: $3b
    dec a                                         ; $416c: $3d
    ld [hl], a                                    ; $416d: $77
    ld e, h                                       ; $416e: $5c
    ld [bc], a                                    ; $416f: $02
    ld [$0c02], sp                                ; $4170: $08 $02 $0c
    add c                                         ; $4173: $81
    ld b, $03                                     ; $4174: $06 $03
    ld c, $06                                     ; $4176: $0e $06
    inc c                                         ; $4178: $0c
    ld [bc], a                                    ; $4179: $02
    ld [$0c02], sp                                ; $417a: $08 $02 $0c
    add c                                         ; $417d: $81
    ld [bc], a                                    ; $417e: $02
    inc bc                                        ; $417f: $03
    ld c, $91                                     ; $4180: $0e $91
    ld b, $0e                                     ; $4182: $06 $0e
    add hl, bc                                    ; $4184: $09
    rrca                                          ; $4185: $0f
    ld bc, $060f                                  ; $4186: $01 $0f $06
    ld c, $be                                     ; $4189: $0e $be
    cp $e0                                        ; $418b: $fe $e0
    and b                                         ; $418d: $a0
    ld [hl], a                                    ; $418e: $77
    ld a, a                                       ; $418f: $7f
    dec sp                                        ; $4190: $3b
    ccf                                           ; $4191: $3f
    ld e, l                                       ; $4192: $5d
    inc bc                                        ; $4193: $03
    ld a, a                                       ; $4194: $7f
    add d                                         ; $4195: $82
    inc c                                         ; $4196: $0c
    rrca                                          ; $4197: $0f
    ld [bc], a                                    ; $4198: $02
    rlca                                          ; $4199: $07
    inc d                                         ; $419a: $14
    nop                                           ; $419b: $00
    ld [bc], a                                    ; $419c: $02
    inc e                                         ; $419d: $1c
    ld [bc], a                                    ; $419e: $02
    ld e, $84                                     ; $419f: $1e $84
    dec e                                         ; $41a1: $1d
    rra                                           ; $41a2: $1f
    rrca                                          ; $41a3: $0f
    rra                                           ; $41a4: $1f
    ld [bc], a                                    ; $41a5: $02
    ld e, $02                                     ; $41a6: $1e $02
    db $10                                        ; $41a8: $10
    ld [de], a                                    ; $41a9: $12
    nop                                           ; $41aa: $00
    rst $38                                       ; $41ab: $ff
    dec c                                         ; $41ac: $0d
    inc b                                         ; $41ad: $04
    pop af                                        ; $41ae: $f1
    ld a, [bc]                                    ; $41af: $0a
    ld [$ea01], a                                 ; $41b0: $ea $01 $ea
    ld hl, sp-$14                                 ; $41b3: $f8 $ec
    db $fd                                        ; $41b5: $fd
    ld a, [$faf8]                                 ; $41b6: $fa $f8 $fa
    cp $02                                        ; $41b9: $fe $02
    inc de                                        ; $41bb: $13
    add h                                         ; $41bc: $84
    dec a                                         ; $41bd: $3d
    ccf                                           ; $41be: $3f
    rst $08                                       ; $41bf: $cf
    rst $38                                       ; $41c0: $ff
    ld [bc], a                                    ; $41c1: $02
    ld a, a                                       ; $41c2: $7f
    sbc b                                         ; $41c3: $98
    ld a, $2f                                     ; $41c4: $3e $2f
    ld a, a                                       ; $41c6: $7f
    ld d, e                                       ; $41c7: $53
    dec sp                                        ; $41c8: $3b
    cpl                                           ; $41c9: $2f
    ld a, a                                       ; $41ca: $7f
    ld l, c                                       ; $41cb: $69
    ld a, a                                       ; $41cc: $7f
    ld e, d                                       ; $41cd: $5a
    ccf                                           ; $41ce: $3f
    ld hl, $233f                                  ; $41cf: $21 $3f $23
    ld e, $1f                                     ; $41d2: $1e $1f
    dec d                                         ; $41d4: $15
    rra                                           ; $41d5: $1f
    dec de                                        ; $41d6: $1b
    rra                                           ; $41d7: $1f
    dec [hl]                                      ; $41d8: $35
    ccf                                           ; $41d9: $3f
    ld e, e                                       ; $41da: $5b
    ld a, a                                       ; $41db: $7f
    ld [bc], a                                    ; $41dc: $02
    jr jr_0ed_4161                                ; $41dd: $18 $82

    ld [$0418], sp                                ; $41df: $08 $18 $04
    inc e                                         ; $41e2: $1c
    inc b                                         ; $41e3: $04
    jr jr_0ed_41ea                                ; $41e4: $18 $04

    db $10                                        ; $41e6: $10
    ld [bc], a                                    ; $41e7: $02
    jr jr_0ed_416b                                ; $41e8: $18 $81

jr_0ed_41ea:
    inc d                                         ; $41ea: $14
    inc bc                                        ; $41eb: $03
    inc e                                         ; $41ec: $1c
    sub d                                         ; $41ed: $92
    inc b                                         ; $41ee: $04
    inc e                                         ; $41ef: $1c
    ld [de], a                                    ; $41f0: $12
    ld e, $19                                     ; $41f1: $1e $19
    rra                                           ; $41f3: $1f
    ld a, e                                       ; $41f4: $7b
    db $fd                                        ; $41f5: $fd
    cp a                                          ; $41f6: $bf
    ld sp, hl                                     ; $41f7: $f9
    ld hl, sp-$68                                 ; $41f8: $f8 $98
    ret nc                                        ; $41fa: $d0

    cp b                                          ; $41fb: $b8
    ld a, [hl]                                    ; $41fc: $7e
    ld a, a                                       ; $41fd: $7f
    ld c, $0f                                     ; $41fe: $0e $0f
    ld [bc], a                                    ; $4200: $02
    rra                                           ; $4201: $1f
    add d                                         ; $4202: $82
    cpl                                           ; $4203: $2f
    ccf                                           ; $4204: $3f
    ld [bc], a                                    ; $4205: $02
    rra                                           ; $4206: $1f
    ld [bc], a                                    ; $4207: $02
    ld bc, $0014                                  ; $4208: $01 $14 $00
    ld [bc], a                                    ; $420b: $02
    inc a                                         ; $420c: $3c
    ld [bc], a                                    ; $420d: $02
    ld a, $86                                     ; $420e: $3e $86
    ld e, $3e                                     ; $4210: $1e $3e
    dec l                                         ; $4212: $2d
    ccf                                           ; $4213: $3f
    ld e, $3e                                     ; $4214: $1e $3e
    ld [bc], a                                    ; $4216: $02
    jr c, @+$12                                   ; $4217: $38 $10

    nop                                           ; $4219: $00
    rst $38                                       ; $421a: $ff
    dec c                                         ; $421b: $0d
    inc b                                         ; $421c: $04
    pop af                                        ; $421d: $f1
    ld a, [bc]                                    ; $421e: $0a
    ld [$ea01], a                                 ; $421f: $ea $01 $ea
    ld hl, sp-$15                                 ; $4222: $f8 $eb
    rst $38                                       ; $4224: $ff
    ld a, [$faf8]                                 ; $4225: $fa $f8 $fa
    cp $02                                        ; $4228: $fe $02
    rla                                           ; $422a: $17
    add h                                         ; $422b: $84
    dec e                                         ; $422c: $1d
    rra                                           ; $422d: $1f
    cpl                                           ; $422e: $2f
    ccf                                           ; $422f: $3f
    ld [bc], a                                    ; $4230: $02
    ld a, a                                       ; $4231: $7f
    sbc b                                         ; $4232: $98
    ccf                                           ; $4233: $3f
    inc l                                         ; $4234: $2c
    ccf                                           ; $4235: $3f
    ld [hl], $3f                                  ; $4236: $36 $3f
    add hl, hl                                    ; $4238: $29
    ccf                                           ; $4239: $3f
    add hl, hl                                    ; $423a: $29
    ccf                                           ; $423b: $3f
    ld [hl], $3f                                  ; $423c: $36 $3f
    jr c, jr_0ed_425f                             ; $423e: $38 $1f

    ld de, $0f0e                                  ; $4240: $11 $0e $0f
    dec d                                         ; $4243: $15
    rra                                           ; $4244: $1f
    dec de                                        ; $4245: $1b
    rra                                           ; $4246: $1f
    ld [hl], l                                    ; $4247: $75
    ld a, a                                       ; $4248: $7f
    ei                                            ; $4249: $fb
    sbc a                                         ; $424a: $9f
    ld [bc], a                                    ; $424b: $02
    ld h, b                                       ; $424c: $60
    add h                                         ; $424d: $84
    ld d, b                                       ; $424e: $50
    ld [hl], b                                    ; $424f: $70
    ld d, b                                       ; $4250: $50
    ld [hl], b                                    ; $4251: $70
    inc b                                         ; $4252: $04
    ld a, b                                       ; $4253: $78
    inc bc                                        ; $4254: $03
    ld [hl], b                                    ; $4255: $70
    add c                                         ; $4256: $81
    db $10                                        ; $4257: $10
    ld [bc], a                                    ; $4258: $02
    ld h, b                                       ; $4259: $60
    ld [bc], a                                    ; $425a: $02
    ld b, b                                       ; $425b: $40
    ld [bc], a                                    ; $425c: $02
    ld h, b                                       ; $425d: $60
    add c                                         ; $425e: $81

jr_0ed_425f:
    ld d, b                                       ; $425f: $50
    inc bc                                        ; $4260: $03
    ld [hl], b                                    ; $4261: $70
    sub h                                         ; $4262: $94
    ld c, h                                       ; $4263: $4c
    ld a, h                                       ; $4264: $7c
    ld h, d                                       ; $4265: $62
    ld a, [hl]                                    ; $4266: $7e
    halt                                          ; $4267: $76
    ld a, d                                       ; $4268: $7a
    rst $38                                       ; $4269: $ff
    ld sp, hl                                     ; $426a: $f9
    ld a, [$35de]                                 ; $426b: $fa $de $35
    ccf                                           ; $426e: $3f
    dec d                                         ; $426f: $15
    rra                                           ; $4270: $1f
    ld e, $1f                                     ; $4271: $1e $1f
    ld e, $1f                                     ; $4273: $1e $1f
    cpl                                           ; $4275: $2f
    ccf                                           ; $4276: $3f
    ld [bc], a                                    ; $4277: $02
    rra                                           ; $4278: $1f
    ld [bc], a                                    ; $4279: $02
    ld bc, $0012                                  ; $427a: $01 $12 $00
    ld [bc], a                                    ; $427d: $02
    dec sp                                        ; $427e: $3b
    inc b                                         ; $427f: $04
    inc a                                         ; $4280: $3c
    ld [bc], a                                    ; $4281: $02
    ld a, $84                                     ; $4282: $3e $84
    dec l                                         ; $4284: $2d
    ccf                                           ; $4285: $3f
    ld e, $3e                                     ; $4286: $1e $3e
    ld [bc], a                                    ; $4288: $02
    jr c, @+$12                                   ; $4289: $38 $10

    nop                                           ; $428b: $00
    rst $38                                       ; $428c: $ff
    dec c                                         ; $428d: $0d
    inc b                                         ; $428e: $04
    pop af                                        ; $428f: $f1
    ld a, [bc]                                    ; $4290: $0a
    ld [$ea01], a                                 ; $4291: $ea $01 $ea
    ld sp, hl                                     ; $4294: $f9
    db $eb                                        ; $4295: $eb
    nop                                           ; $4296: $00
    ld a, [$fafa]                                 ; $4297: $fa $fa $fa
    cp $02                                        ; $429a: $fe $02
    rla                                           ; $429c: $17
    add h                                         ; $429d: $84
    dec e                                         ; $429e: $1d
    rra                                           ; $429f: $1f
    cpl                                           ; $42a0: $2f
    ccf                                           ; $42a1: $3f
    ld [bc], a                                    ; $42a2: $02
    ld a, a                                       ; $42a3: $7f
    adc [hl]                                      ; $42a4: $8e
    ccf                                           ; $42a5: $3f
    inc l                                         ; $42a6: $2c
    ccf                                           ; $42a7: $3f
    ld [hl], $3f                                  ; $42a8: $36 $3f
    add hl, hl                                    ; $42aa: $29
    ccf                                           ; $42ab: $3f
    add hl, hl                                    ; $42ac: $29
    ccf                                           ; $42ad: $3f
    ld [hl], $3f                                  ; $42ae: $36 $3f
    jr c, jr_0ed_42d1                             ; $42b0: $38 $1f

    ld de, $1f02                                  ; $42b2: $11 $02 $1f
    adc b                                         ; $42b5: $88
    dec hl                                        ; $42b6: $2b
    ccf                                           ; $42b7: $3f
    ld [hl], a                                    ; $42b8: $77
    ld a, a                                       ; $42b9: $7f
    db $eb                                        ; $42ba: $eb
    cp a                                          ; $42bb: $bf
    or a                                          ; $42bc: $b7
    rst $38                                       ; $42bd: $ff
    ld [bc], a                                    ; $42be: $02
    ld h, b                                       ; $42bf: $60
    add h                                         ; $42c0: $84
    ld d, b                                       ; $42c1: $50
    ld [hl], b                                    ; $42c2: $70
    ld d, b                                       ; $42c3: $50
    ld [hl], b                                    ; $42c4: $70
    inc b                                         ; $42c5: $04
    ld a, b                                       ; $42c6: $78
    inc bc                                        ; $42c7: $03
    ld [hl], b                                    ; $42c8: $70
    add c                                         ; $42c9: $81
    db $10                                        ; $42ca: $10
    ld [bc], a                                    ; $42cb: $02
    ld h, [hl]                                    ; $42cc: $66
    adc b                                         ; $42cd: $88
    ld c, a                                       ; $42ce: $4f
    ld c, c                                       ; $42cf: $49
    ld d, a                                       ; $42d0: $57

jr_0ed_42d1:
    ld e, c                                       ; $42d1: $59
    ld h, d                                       ; $42d2: $62
    ld a, [hl]                                    ; $42d3: $7e
    inc c                                         ; $42d4: $0c
    ld a, h                                       ; $42d5: $7c
    ld [bc], a                                    ; $42d6: $02
    ld [hl], b                                    ; $42d7: $70
    inc b                                         ; $42d8: $04
    ld b, b                                       ; $42d9: $40
    ld [bc], a                                    ; $42da: $02
    ldh [$8e], a                                  ; $42db: $e0 $8e
    db $ec                                        ; $42dd: $ec
    db $fc                                        ; $42de: $fc
    ld [hl], a                                    ; $42df: $77
    ld a, a                                       ; $42e0: $7f
    ld d, a                                       ; $42e1: $57
    ld a, a                                       ; $42e2: $7f
    ld d, a                                       ; $42e3: $57
    ld a, a                                       ; $42e4: $7f
    ld a, e                                       ; $42e5: $7b
    ld a, a                                       ; $42e6: $7f
    cp [hl]                                       ; $42e7: $be
    rst $38                                       ; $42e8: $ff
    ld a, l                                       ; $42e9: $7d
    ld a, a                                       ; $42ea: $7f
    ld [bc], a                                    ; $42eb: $02
    rlca                                          ; $42ec: $07
    ld [de], a                                    ; $42ed: $12
    nop                                           ; $42ee: $00
    inc b                                         ; $42ef: $04
    ld [$0c02], sp                                ; $42f0: $08 $02 $0c
    ld [bc], a                                    ; $42f3: $02
    ld c, $82                                     ; $42f4: $0e $82
    dec c                                         ; $42f6: $0d
    rrca                                          ; $42f7: $0f
    ld [bc], a                                    ; $42f8: $02
    ld c, $02                                     ; $42f9: $0e $02
    ld [$0010], sp                                ; $42fb: $08 $10 $00
    rst $38                                       ; $42fe: $ff
    dec c                                         ; $42ff: $0d
    inc b                                         ; $4300: $04
    pop af                                        ; $4301: $f1
    ld a, [bc]                                    ; $4302: $0a
    ld [$ea01], a                                 ; $4303: $ea $01 $ea
    ld sp, hl                                     ; $4306: $f9
    db $ec                                        ; $4307: $ec
    db $fd                                        ; $4308: $fd
    ld a, [$fafa]                                 ; $4309: $fa $fa $fa
    cp $02                                        ; $430c: $fe $02
    ld d, $9e                                     ; $430e: $16 $9e
    ld a, [$9ffe]                                 ; $4310: $fa $fe $9f
    rst $38                                       ; $4313: $ff
    ld a, [hl]                                    ; $4314: $7e
    ld a, a                                       ; $4315: $7f
    ld a, l                                       ; $4316: $7d
    ld e, a                                       ; $4317: $5f
    rst $38                                       ; $4318: $ff
    and a                                         ; $4319: $a7
    ld [hl], a                                    ; $431a: $77
    ld e, a                                       ; $431b: $5f
    rst $38                                       ; $431c: $ff
    db $d3                                        ; $431d: $d3
    rst $38                                       ; $431e: $ff
    or l                                          ; $431f: $b5
    ld a, a                                       ; $4320: $7f
    ld b, e                                       ; $4321: $43
    ccf                                           ; $4322: $3f
    daa                                           ; $4323: $27
    ld e, $1f                                     ; $4324: $1e $1f
    ld a, [hl+]                                   ; $4326: $2a
    ccf                                           ; $4327: $3f
    scf                                           ; $4328: $37
    ccf                                           ; $4329: $3f
    ld l, e                                       ; $432a: $6b
    ld a, a                                       ; $432b: $7f
    ld [hl], a                                    ; $432c: $77
    ld a, a                                       ; $432d: $7f
    inc b                                         ; $432e: $04
    ld [$0c02], sp                                ; $432f: $08 $02 $0c
    adc [hl]                                      ; $4332: $8e
    ld c, $02                                     ; $4333: $0e $02
    ld c, $02                                     ; $4335: $0e $02
    ld bc, $020f                                  ; $4337: $01 $0f $02
    ld c, $02                                     ; $433a: $0e $02
    ld c, $02                                     ; $433c: $0e $02
    ld c, $04                                     ; $433e: $0e $04
    inc c                                         ; $4340: $0c
    ld [$8408], sp                                ; $4341: $08 $08 $84
    ld a, h                                       ; $4344: $7c
    db $fc                                        ; $4345: $fc
    cp h                                          ; $4346: $bc
    db $fc                                        ; $4347: $fc
    inc b                                         ; $4348: $04
    ld h, b                                       ; $4349: $60
    adc d                                         ; $434a: $8a
    ld d, a                                       ; $434b: $57
    ld a, a                                       ; $434c: $7f
    ld d, a                                       ; $434d: $57
    ld a, a                                       ; $434e: $7f
    ld a, e                                       ; $434f: $7b
    ld a, a                                       ; $4350: $7f
    cp [hl]                                       ; $4351: $be
    rst $38                                       ; $4352: $ff
    ld a, l                                       ; $4353: $7d
    ld a, a                                       ; $4354: $7f
    ld [bc], a                                    ; $4355: $02
    rlca                                          ; $4356: $07
    inc d                                         ; $4357: $14
    nop                                           ; $4358: $00
    ld [bc], a                                    ; $4359: $02
    ld [$0c02], sp                                ; $435a: $08 $02 $0c
    ld [bc], a                                    ; $435d: $02
    ld c, $82                                     ; $435e: $0e $82
    dec c                                         ; $4360: $0d
    rrca                                          ; $4361: $0f
    ld [bc], a                                    ; $4362: $02
    ld c, $02                                     ; $4363: $0e $02
    ld [$0010], sp                                ; $4365: $08 $10 $00
    rst $38                                       ; $4368: $ff
    dec c                                         ; $4369: $0d
    inc b                                         ; $436a: $04
    pop af                                        ; $436b: $f1
    ld a, [bc]                                    ; $436c: $0a
    ld [$ea01], a                                 ; $436d: $ea $01 $ea
    rst $30                                       ; $4370: $f7
    db $ec                                        ; $4371: $ec
    ei                                            ; $4372: $fb
    ld a, [$fafa]                                 ; $4373: $fa $fa $fa
    db $fd                                        ; $4376: $fd
    ld [bc], a                                    ; $4377: $02
    inc de                                        ; $4378: $13
    add h                                         ; $4379: $84
    dec a                                         ; $437a: $3d
    ccf                                           ; $437b: $3f
    rst $08                                       ; $437c: $cf
    rst $38                                       ; $437d: $ff
    ld [bc], a                                    ; $437e: $02
    ld a, a                                       ; $437f: $7f
    sbc b                                         ; $4380: $98
    ld a, $3f                                     ; $4381: $3e $3f
    ld a, a                                       ; $4383: $7f
    ld e, e                                       ; $4384: $5b
    ei                                            ; $4385: $fb
    adc a                                         ; $4386: $8f
    ld h, a                                       ; $4387: $67
    ld e, l                                       ; $4388: $5d
    ld h, e                                       ; $4389: $63
    ld a, [hl]                                    ; $438a: $7e
    ld sp, $1c3f                                  ; $438b: $31 $3f $1c
    rra                                           ; $438e: $1f
    ld e, $1f                                     ; $438f: $1e $1f
    dec de                                        ; $4391: $1b
    rra                                           ; $4392: $1f
    rla                                           ; $4393: $17
    rra                                           ; $4394: $1f
    dec de                                        ; $4395: $1b
    rra                                           ; $4396: $1f
    rla                                           ; $4397: $17
    rra                                           ; $4398: $1f
    ld [bc], a                                    ; $4399: $02
    inc c                                         ; $439a: $0c
    add d                                         ; $439b: $82
    inc b                                         ; $439c: $04
    inc c                                         ; $439d: $0c
    inc b                                         ; $439e: $04
    ld c, $04                                     ; $439f: $0e $04
    inc c                                         ; $43a1: $0c
    ld [bc], a                                    ; $43a2: $02
    ld [$0c02], sp                                ; $43a3: $08 $02 $0c
    add c                                         ; $43a6: $81
    ld a, [bc]                                    ; $43a7: $0a
    inc bc                                        ; $43a8: $03
    ld c, $02                                     ; $43a9: $0e $02
    inc c                                         ; $43ab: $0c
    ld [bc], a                                    ; $43ac: $02
    ld c, $81                                     ; $43ad: $0e $81
    dec c                                         ; $43af: $0d
    inc bc                                        ; $43b0: $03
    rrca                                          ; $43b1: $0f
    add h                                         ; $43b2: $84
    ld a, [hl]                                    ; $43b3: $7e
    cp $7f                                        ; $43b4: $fe $7f
    rst $38                                       ; $43b6: $ff
    inc b                                         ; $43b7: $04
    add b                                         ; $43b8: $80
    adc d                                         ; $43b9: $8a
    rst $18                                       ; $43ba: $df
    rst $38                                       ; $43bb: $ff
    rst $18                                       ; $43bc: $df
    rst $38                                       ; $43bd: $ff
    ld l, a                                       ; $43be: $6f
    ld a, a                                       ; $43bf: $7f
    cp l                                          ; $43c0: $bd
    rst $38                                       ; $43c1: $ff
    ld a, c                                       ; $43c2: $79
    ld a, a                                       ; $43c3: $7f
    ld [bc], a                                    ; $43c4: $02
    rlca                                          ; $43c5: $07
    inc d                                         ; $43c6: $14
    nop                                           ; $43c7: $00
    ld [bc], a                                    ; $43c8: $02
    inc b                                         ; $43c9: $04
    ld [bc], a                                    ; $43ca: $02
    ld b, $84                                     ; $43cb: $06 $84
    dec b                                         ; $43cd: $05
    rlca                                          ; $43ce: $07
    dec b                                         ; $43cf: $05
    rlca                                          ; $43d0: $07
    ld [bc], a                                    ; $43d1: $02
    ld b, $12                                     ; $43d2: $06 $12
    nop                                           ; $43d4: $00
    rst $38                                       ; $43d5: $ff
    dec c                                         ; $43d6: $0d
    inc b                                         ; $43d7: $04
    pop af                                        ; $43d8: $f1
    ld a, [bc]                                    ; $43d9: $0a
    ld [$eb01], a                                 ; $43da: $ea $01 $eb
    di                                            ; $43dd: $f3
    db $eb                                        ; $43de: $eb
    ei                                            ; $43df: $fb
    ei                                            ; $43e0: $fb
    ld a, [$fdfb]                                 ; $43e1: $fa $fb $fd
    ld [bc], a                                    ; $43e4: $02
    ld bc, $0302                                  ; $43e5: $01 $02 $03
    add d                                         ; $43e8: $82
    inc c                                         ; $43e9: $0c
    rrca                                          ; $43ea: $0f
    ld [bc], a                                    ; $43eb: $02
    rlca                                          ; $43ec: $07
    sub h                                         ; $43ed: $94
    inc bc                                        ; $43ee: $03
    ld [bc], a                                    ; $43ef: $02
    rlca                                          ; $43f0: $07
    dec b                                         ; $43f1: $05
    inc bc                                        ; $43f2: $03
    ld [bc], a                                    ; $43f3: $02
    rlca                                          ; $43f4: $07
    ld b, $07                                     ; $43f5: $06 $07
    dec b                                         ; $43f7: $05
    ld h, e                                       ; $43f8: $63
    ld h, d                                       ; $43f9: $62
    pop af                                        ; $43fa: $f1
    sub c                                         ; $43fb: $91
    rst $38                                       ; $43fc: $ff
    xor a                                         ; $43fd: $af
    ld a, b                                       ; $43fe: $78
    ld b, a                                       ; $43ff: $47
    inc a                                         ; $4400: $3c
    cpl                                           ; $4401: $2f
    ld [bc], a                                    ; $4402: $02
    rla                                           ; $4403: $17
    ld [bc], a                                    ; $4404: $02
    ld bc, $3002                                  ; $4405: $01 $02 $30
    add d                                         ; $4408: $82
    ret nc                                        ; $4409: $d0

    ldh a, [rSC]                                  ; $440a: $f0 $02
    db $fc                                        ; $440c: $fc
    add e                                         ; $440d: $83
    db $f4                                        ; $440e: $f4
    db $fc                                        ; $440f: $fc
    xor $02                                       ; $4410: $ee $02
    cp $82                                        ; $4412: $fe $82
    ld a, $bc                                     ; $4414: $3e $bc
    ld [bc], a                                    ; $4416: $02
    db $fc                                        ; $4417: $fc
    add a                                         ; $4418: $87
    sbc h                                         ; $4419: $9c
    ld hl, sp-$58                                 ; $441a: $f8 $a8
    cp $1e                                        ; $441c: $fe $1e
    ld a, [c]                                     ; $441e: $f2
    ld a, $02                                     ; $441f: $3e $02
    cp $94                                        ; $4421: $fe $94
    ld e, $fe                                     ; $4423: $1e $fe
    ld a, l                                       ; $4425: $7d
    rst $38                                       ; $4426: $ff
    db $fd                                        ; $4427: $fd
    rst $38                                       ; $4428: $ff
    ld a, [hl]                                    ; $4429: $7e
    cp $bf                                        ; $442a: $fe $bf
    rst $38                                       ; $442c: $ff
    cp a                                          ; $442d: $bf
    rst $38                                       ; $442e: $ff
    rst $18                                       ; $442f: $df
    rst $38                                       ; $4430: $ff
    ld h, a                                       ; $4431: $67
    ld a, a                                       ; $4432: $7f
    cp l                                          ; $4433: $bd
    rst $38                                       ; $4434: $ff
    ld a, c                                       ; $4435: $79
    ld a, a                                       ; $4436: $7f
    ld [bc], a                                    ; $4437: $02
    rlca                                          ; $4438: $07
    inc d                                         ; $4439: $14
    nop                                           ; $443a: $00
    inc b                                         ; $443b: $04
    inc b                                         ; $443c: $04
    ld [bc], a                                    ; $443d: $02
    ld b, $82                                     ; $443e: $06 $82
    dec b                                         ; $4440: $05
    rlca                                          ; $4441: $07
    ld [bc], a                                    ; $4442: $02
    ld b, $14                                     ; $4443: $06 $14
    nop                                           ; $4445: $00
    rst $38                                       ; $4446: $ff
    rrca                                          ; $4447: $0f
    dec b                                         ; $4448: $05
    pop af                                        ; $4449: $f1
    ld a, [bc]                                    ; $444a: $0a
    ld [$f601], a                                 ; $444b: $ea $01 $f6
    ldh a, [$ec]                                  ; $444e: $f0 $ec
    ld hl, sp-$12                                 ; $4450: $f8 $ee
    db $fd                                        ; $4452: $fd
    db $fc                                        ; $4453: $fc
    ld hl, sp-$04                                 ; $4454: $f8 $fc
    cp $02                                        ; $4456: $fe $02
    ld h, b                                       ; $4458: $60
    adc h                                         ; $4459: $8c
    ldh a, [$90]                                  ; $445a: $f0 $90
    ld hl, sp-$68                                 ; $445c: $f8 $98
    ld a, h                                       ; $445e: $7c
    ld h, h                                       ; $445f: $64
    inc a                                         ; $4460: $3c
    inc h                                         ; $4461: $24
    ld e, $1a                                     ; $4462: $1e $1a
    rra                                           ; $4464: $1f
    inc de                                        ; $4465: $13
    ld [bc], a                                    ; $4466: $02
    inc c                                         ; $4467: $0c
    stop                                          ; $4468: $10 $00
    ld [bc], a                                    ; $446a: $02
    inc de                                        ; $446b: $13
    add h                                         ; $446c: $84
    dec a                                         ; $446d: $3d
    ccf                                           ; $446e: $3f
    rst $08                                       ; $446f: $cf
    rst $38                                       ; $4470: $ff
    ld [bc], a                                    ; $4471: $02
    ld a, a                                       ; $4472: $7f
    sbc b                                         ; $4473: $98
    ld a, $2f                                     ; $4474: $3e $2f
    ld a, a                                       ; $4476: $7f
    ld d, e                                       ; $4477: $53
    dec sp                                        ; $4478: $3b
    cpl                                           ; $4479: $2f
    ld a, a                                       ; $447a: $7f
    ld l, c                                       ; $447b: $69
    ld a, a                                       ; $447c: $7f
    ld e, d                                       ; $447d: $5a
    ccf                                           ; $447e: $3f
    ld hl, $131f                                  ; $447f: $21 $1f $13
    dec bc                                        ; $4482: $0b
    rrca                                          ; $4483: $0f
    ld c, $0f                                     ; $4484: $0e $0f
    ld c, c                                       ; $4486: $49
    ld c, a                                       ; $4487: $4f
    di                                            ; $4488: $f3
    cp a                                          ; $4489: $bf
    rst $20                                       ; $448a: $e7
    rst $18                                       ; $448b: $df
    ld [bc], a                                    ; $448c: $02
    jr @-$7c                                      ; $448d: $18 $82

    ld [$0418], sp                                ; $448f: $08 $18 $04
    inc e                                         ; $4492: $1c
    inc b                                         ; $4493: $04
    jr jr_0ed_4498                                ; $4494: $18 $02

    inc e                                         ; $4496: $1c
    add d                                         ; $4497: $82

jr_0ed_4498:
    ld [de], a                                    ; $4498: $12
    ld e, $02                                     ; $4499: $1e $02
    inc e                                         ; $449b: $1c
    ld [bc], a                                    ; $449c: $02
    jr @+$08                                      ; $449d: $18 $06

    inc e                                         ; $449f: $1c
    ld [bc], a                                    ; $44a0: $02
    ld e, $8e                                     ; $44a1: $1e $8e
    ld a, [hl]                                    ; $44a3: $7e
    cp $7f                                        ; $44a4: $fe $7f
    rst $38                                       ; $44a6: $ff
    add sp, $18                                   ; $44a7: $e8 $18
    ld hl, sp-$48                                 ; $44a9: $f8 $b8
    ld e, l                                       ; $44ab: $5d
    ld e, a                                       ; $44ac: $5f
    cpl                                           ; $44ad: $2f
    ccf                                           ; $44ae: $3f
    ld e, $1f                                     ; $44af: $1e $1f
    ld [bc], a                                    ; $44b1: $02
    ld bc, $0018                                  ; $44b2: $01 $18 $00
    add [hl]                                      ; $44b5: $86
    dec a                                         ; $44b6: $3d
    ccf                                           ; $44b7: $3f
    dec a                                         ; $44b8: $3d
    ccf                                           ; $44b9: $3f
    ld c, $3e                                     ; $44ba: $0e $3e
    ld [bc], a                                    ; $44bc: $02
    jr c, jr_0ed_44d3                             ; $44bd: $38 $14

    nop                                           ; $44bf: $00
    rst $38                                       ; $44c0: $ff
    ld de, $f106                                  ; $44c1: $11 $06 $f1
    ld a, [bc]                                    ; $44c4: $0a
    ld [$f701], a                                 ; $44c5: $ea $01 $f7
    xor $eb                                       ; $44c8: $ee $eb
    ld a, [$fded]                                 ; $44ca: $fa $ed $fd
    ei                                            ; $44cd: $fb
    or $fb                                        ; $44ce: $f6 $fb
    cp $fb                                        ; $44d0: $fe $fb
    rst $38                                       ; $44d2: $ff

jr_0ed_44d3:
    ld [bc], a                                    ; $44d3: $02
    ld b, b                                       ; $44d4: $40
    add h                                         ; $44d5: $84
    ldh [$a0], a                                  ; $44d6: $e0 $a0

jr_0ed_44d8:
    ld [hl], b                                    ; $44d8: $70
    ld d, b                                       ; $44d9: $50
    ld [bc], a                                    ; $44da: $02
    jr c, @-$78                                   ; $44db: $38 $86

    inc a                                         ; $44dd: $3c
    inc h                                         ; $44de: $24
    dec a                                         ; $44df: $3d
    dec h                                         ; $44e0: $25
    rra                                           ; $44e1: $1f
    ld e, $02                                     ; $44e2: $1e $02
    ld bc, $0010                                  ; $44e4: $01 $10 $00
    ld [bc], a                                    ; $44e7: $02
    inc de                                        ; $44e8: $13
    add h                                         ; $44e9: $84
    dec a                                         ; $44ea: $3d
    ccf                                           ; $44eb: $3f
    rst $08                                       ; $44ec: $cf
    rst $38                                       ; $44ed: $ff
    ld [bc], a                                    ; $44ee: $02
    ld a, a                                       ; $44ef: $7f
    sbc b                                         ; $44f0: $98
    ld a, $2f                                     ; $44f1: $3e $2f
    ld a, a                                       ; $44f3: $7f
    ld d, e                                       ; $44f4: $53
    dec sp                                        ; $44f5: $3b
    cpl                                           ; $44f6: $2f
    ld a, a                                       ; $44f7: $7f
    ld l, c                                       ; $44f8: $69
    ld a, a                                       ; $44f9: $7f
    ld e, d                                       ; $44fa: $5a
    ccf                                           ; $44fb: $3f
    ld hl, $131f                                  ; $44fc: $21 $1f $13
    dec c                                         ; $44ff: $0d
    rrca                                          ; $4500: $0f
    ld a, [de]                                    ; $4501: $1a
    rra                                           ; $4502: $1f
    ld d, $1f                                     ; $4503: $16 $1f
    ld e, $1f                                     ; $4505: $1e $1f
    inc e                                         ; $4507: $1c
    rra                                           ; $4508: $1f
    ld [bc], a                                    ; $4509: $02
    ld b, $82                                     ; $450a: $06 $82
    ld [bc], a                                    ; $450c: $02
    ld b, $04                                     ; $450d: $06 $04
    rlca                                          ; $450f: $07
    inc b                                         ; $4510: $04
    ld b, $04                                     ; $4511: $06 $04
    inc b                                         ; $4513: $04
    add h                                         ; $4514: $84
    inc bc                                        ; $4515: $03
    rlca                                          ; $4516: $07
    dec b                                         ; $4517: $05
    rlca                                          ; $4518: $07
    ld [$8406], sp                                ; $4519: $08 $06 $84
    rst $00                                       ; $451c: $c7
    rst $38                                       ; $451d: $ff
    rst $28                                       ; $451e: $ef
    cp a                                          ; $451f: $bf
    inc b                                         ; $4520: $04
    ld [bc], a                                    ; $4521: $02
    ld [bc], a                                    ; $4522: $02
    add e                                         ; $4523: $83
    add h                                         ; $4524: $84
    jp $8543                                      ; $4525: $c3 $43 $85


    add a                                         ; $4528: $87
    ld [bc], a                                    ; $4529: $02
    inc bc                                        ; $452a: $03
    jr jr_0ed_452d                                ; $452b: $18 $00

jr_0ed_452d:
    adc b                                         ; $452d: $88
    rst $38                                       ; $452e: $ff
    ccf                                           ; $452f: $3f
    adc $ff                                       ; $4530: $ce $ff
    cp $ff                                        ; $4532: $fe $ff
    rst $00                                       ; $4534: $c7
    rst $38                                       ; $4535: $ff
    ld [bc], a                                    ; $4536: $02
    ld a, h                                       ; $4537: $7c
    jr jr_0ed_453a                                ; $4538: $18 $00

jr_0ed_453a:
    inc b                                         ; $453a: $04
    ld bc, $0016                                  ; $453b: $01 $16 $00
    rst $38                                       ; $453e: $ff
    ld de, $f106                                  ; $453f: $11 $06 $f1
    ld a, [bc]                                    ; $4542: $0a
    ld [$f801], a                                 ; $4543: $ea $01 $f8
    db $eb                                        ; $4546: $eb
    cp $f3                                        ; $4547: $fe $f3
    ld [$fafb], a                                 ; $4549: $ea $fb $fa
    ei                                            ; $454c: $fb
    db $ec                                        ; $454d: $ec
    inc bc                                        ; $454e: $03
    db $fc                                        ; $454f: $fc
    inc bc                                        ; $4550: $03
    ld [bc], a                                    ; $4551: $02
    jr nz, jr_0ed_44d8                            ; $4552: $20 $84

    ld [hl], b                                    ; $4554: $70
    ld d, b                                       ; $4555: $50
    ldh [$a0], a                                  ; $4556: $e0 $a0
    ld [bc], a                                    ; $4558: $02
    ld b, b                                       ; $4559: $40
    ld [bc], a                                    ; $455a: $02
    ld [$1c84], sp                                ; $455b: $08 $84 $1c
    inc d                                         ; $455e: $14
    ld c, $0a                                     ; $455f: $0e $0a
    ld [bc], a                                    ; $4561: $02
    inc b                                         ; $4562: $04
    stop                                          ; $4563: $10 $00
    ld [bc], a                                    ; $4565: $02
    ld [hl], b                                    ; $4566: $70
    add d                                         ; $4567: $82
    ld hl, sp-$78                                 ; $4568: $f8 $88
    ld [bc], a                                    ; $456a: $02
    ld [hl], b                                    ; $456b: $70
    ld a, [de]                                    ; $456c: $1a
    nop                                           ; $456d: $00
    ld [bc], a                                    ; $456e: $02
    inc de                                        ; $456f: $13
    add h                                         ; $4570: $84
    dec a                                         ; $4571: $3d
    ccf                                           ; $4572: $3f
    rst $08                                       ; $4573: $cf
    rst $38                                       ; $4574: $ff
    ld [bc], a                                    ; $4575: $02
    ld a, a                                       ; $4576: $7f
    and [hl]                                      ; $4577: $a6
    ld a, $2f                                     ; $4578: $3e $2f
    ld a, a                                       ; $457a: $7f
    ld d, e                                       ; $457b: $53
    dec sp                                        ; $457c: $3b
    cpl                                           ; $457d: $2f
    ld a, a                                       ; $457e: $7f
    ld l, c                                       ; $457f: $69
    ld a, a                                       ; $4580: $7f
    ld e, d                                       ; $4581: $5a
    ccf                                           ; $4582: $3f
    ld hl, $131f                                  ; $4583: $21 $1f $13
    dec c                                         ; $4586: $0d
    rrca                                          ; $4587: $0f
    ld a, [de]                                    ; $4588: $1a
    rra                                           ; $4589: $1f
    ld d, $1f                                     ; $458a: $16 $1f
    ld a, [de]                                    ; $458c: $1a
    rra                                           ; $458d: $1f
    inc d                                         ; $458e: $14
    rra                                           ; $458f: $1f
    inc d                                         ; $4590: $14
    rra                                           ; $4591: $1f
    rla                                           ; $4592: $17
    add hl, de                                    ; $4593: $19
    ccf                                           ; $4594: $3f
    add hl, sp                                    ; $4595: $39
    dec sp                                        ; $4596: $3b
    ccf                                           ; $4597: $3f
    dec a                                         ; $4598: $3d
    ccf                                           ; $4599: $3f
    ld e, a                                       ; $459a: $5f
    ld a, a                                       ; $459b: $7f
    jr c, @+$41                                   ; $459c: $38 $3f

    ld [bc], a                                    ; $459e: $02
    rrca                                          ; $459f: $0f
    stop                                          ; $45a0: $10 $00
    ld [bc], a                                    ; $45a2: $02
    ret nz                                        ; $45a3: $c0

    add d                                         ; $45a4: $82
    ld b, b                                       ; $45a5: $40
    ret nz                                        ; $45a6: $c0

    inc b                                         ; $45a7: $04
    ldh [rDIV], a                                 ; $45a8: $e0 $04
    ret nz                                        ; $45aa: $c0

    inc b                                         ; $45ab: $04
    add b                                         ; $45ac: $80
    add e                                         ; $45ad: $83
    ld b, b                                       ; $45ae: $40
    ret nz                                        ; $45af: $c0

    and b                                         ; $45b0: $a0
    inc bc                                        ; $45b1: $03
    ldh [rSC], a                                  ; $45b2: $e0 $02
    ret nz                                        ; $45b4: $c0

    inc b                                         ; $45b5: $04
    add b                                         ; $45b6: $80
    inc b                                         ; $45b7: $04
    ret nz                                        ; $45b8: $c0

    inc b                                         ; $45b9: $04
    ldh [rSC], a                                  ; $45ba: $e0 $02
    ldh a, [$84]                                  ; $45bc: $f0 $84
    ret nc                                        ; $45be: $d0

    ldh a, [$a0]                                  ; $45bf: $f0 $a0
    ldh [rSC], a                                  ; $45c1: $e0 $02
    ret nz                                        ; $45c3: $c0

    inc d                                         ; $45c4: $14
    nop                                           ; $45c5: $00
    rst $38                                       ; $45c6: $ff

    db $0b, $03, $f1

    ld a, [bc]                                    ; $45ca: $0a
    db $ea                                        ; $45cb: $ea
    db $01                                        ; $45cc: $01

    db $ea, $fb, $ec, $fe, $fa, $fc, $02, $13, $84, $3d, $3f, $cf, $ff, $02, $7f, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $18, $02, $12, $03, $13, $81, $12, $02, $06, $82, $02, $06, $04, $07, $04
    db $06, $04, $04, $02, $00, $06, $04, $02, $02, $02, $04, $84, $9e, $96, $be, $a6
    db $04, $00, $82, $1f, $1b, $02, $16, $02, $31, $02, $3f, $82, $63, $7f, $02, $3f
    db $10, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4623: $0a
    db $ea                                        ; $4624: $ea
    db $01                                        ; $4625: $01

    db $f5, $fc, $8d, $02, $00, $0e, $00, $1a, $00, $19, $00, $18, $00, $18, $00, $10
    db $04, $00, $83, $08, $00, $0e, $0c, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $4642: $0a
    db $ea                                        ; $4643: $ea
    db $01                                        ; $4644: $01

    db $ea, $fb, $ec, $fe, $fa, $fc, $02, $13, $84, $3d, $3f, $cf, $ff, $02, $7f, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $18, $02, $12, $03, $13, $81, $12, $02, $06, $82, $02, $06, $04, $07, $04
    db $06, $04, $04, $02, $00, $06, $04, $02, $02, $02, $04, $84, $9e, $96, $be, $a6
    db $04, $00, $82, $1f, $1b, $02, $16, $02, $31, $02, $3f, $82, $63, $7f, $02, $3f
    db $10, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $469b: $0a
    db $ea                                        ; $469c: $ea
    db $01                                        ; $469d: $01

    db $f5, $fc, $8d, $02, $00, $0e, $00, $1a, $00, $19, $00, $18, $00, $18, $00, $10
    db $04, $00, $83, $08, $00, $0e, $0c, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $46ba: $0a
    db $ea                                        ; $46bb: $ea
    db $01                                        ; $46bc: $01

    db $ea, $fb, $ec, $fe, $fa, $fc, $02, $13, $84, $3d, $3f, $cf, $ff, $02, $7f, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $18, $02, $12, $03, $13, $81, $12, $02, $06, $82, $02, $06, $04, $07, $04
    db $06, $04, $04, $02, $00, $06, $04, $02, $02, $02, $04, $84, $9e, $96, $be, $a6
    db $04, $00, $82, $1f, $1b, $02, $16, $02, $31, $02, $3f, $82, $63, $7f, $02, $3f
    db $10, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4713: $0a
    db $ea                                        ; $4714: $ea
    db $01                                        ; $4715: $01

    db $f5, $fc, $8d, $02, $00, $0e, $00, $1a, $00, $19, $00, $18, $00, $18, $00, $10
    db $04, $00, $83, $08, $00, $0e, $0c, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $4732: $0a
    db $ea                                        ; $4733: $ea
    db $01                                        ; $4734: $01

    db $ea, $fb, $ec, $fe, $fa, $fc, $02, $13, $84, $3d, $3f, $cf, $ff, $02, $7f, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $18, $02, $12, $03, $13, $81, $12, $02, $06, $82, $02, $06, $04, $07, $04
    db $06, $04, $04, $02, $00, $06, $04, $02, $02, $02, $04, $84, $9e, $96, $be, $a6
    db $04, $00, $82, $1f, $1b, $02, $16, $02, $31, $02, $3f, $82, $63, $7f, $02, $3f
    db $10, $00, $ff

    rlca                                          ; $4788: $07
    ld bc, $0af1                                  ; $4789: $01 $f1 $0a
    ld [$f501], a                                 ; $478c: $ea $01 $f5
    db $fc                                        ; $478f: $fc
    adc l                                         ; $4790: $8d
    ld [bc], a                                    ; $4791: $02
    nop                                           ; $4792: $00
    ld c, $00                                     ; $4793: $0e $00
    ld a, [de]                                    ; $4795: $1a
    nop                                           ; $4796: $00
    add hl, de                                    ; $4797: $19
    nop                                           ; $4798: $00
    jr jr_0ed_479b                                ; $4799: $18 $00

jr_0ed_479b:
    jr jr_0ed_479d                                ; $479b: $18 $00

jr_0ed_479d:
    db $10                                        ; $479d: $10
    inc b                                         ; $479e: $04
    nop                                           ; $479f: $00
    add e                                         ; $47a0: $83
    ld [$0e00], sp                                ; $47a1: $08 $00 $0e
    inc c                                         ; $47a4: $0c
    nop                                           ; $47a5: $00
    rst $38                                       ; $47a6: $ff
    dec bc                                        ; $47a7: $0b
    inc bc                                        ; $47a8: $03
    pop af                                        ; $47a9: $f1
    ld a, [bc]                                    ; $47aa: $0a
    ld [$ea01], a                                 ; $47ab: $ea $01 $ea
    ei                                            ; $47ae: $fb
    db $ec                                        ; $47af: $ec
    cp $fa                                        ; $47b0: $fe $fa
    db $fc                                        ; $47b2: $fc
    ld [bc], a                                    ; $47b3: $02
    inc de                                        ; $47b4: $13
    add h                                         ; $47b5: $84
    dec a                                         ; $47b6: $3d
    ccf                                           ; $47b7: $3f
    rst $08                                       ; $47b8: $cf
    rst $38                                       ; $47b9: $ff
    ld [bc], a                                    ; $47ba: $02
    ld a, a                                       ; $47bb: $7f
    adc [hl]                                      ; $47bc: $8e
    ld a, $2f                                     ; $47bd: $3e $2f
    ld a, a                                       ; $47bf: $7f
    ld d, e                                       ; $47c0: $53
    dec sp                                        ; $47c1: $3b
    cpl                                           ; $47c2: $2f
    ld a, a                                       ; $47c3: $7f
    ld l, c                                       ; $47c4: $69
    ld a, a                                       ; $47c5: $7f
    ld e, d                                       ; $47c6: $5a
    ccf                                           ; $47c7: $3f
    ld hl, $131f                                  ; $47c8: $21 $1f $13
    ld [bc], a                                    ; $47cb: $02
    ld c, $02                                     ; $47cc: $0e $02
    jr jr_0ed_47d2                                ; $47ce: $18 $02

    ld [de], a                                    ; $47d0: $12
    inc bc                                        ; $47d1: $03

jr_0ed_47d2:
    inc de                                        ; $47d2: $13
    add c                                         ; $47d3: $81
    ld [de], a                                    ; $47d4: $12
    ld [bc], a                                    ; $47d5: $02
    ld b, $82                                     ; $47d6: $06 $82
    ld [bc], a                                    ; $47d8: $02
    ld b, $04                                     ; $47d9: $06 $04
    rlca                                          ; $47db: $07
    inc b                                         ; $47dc: $04
    ld b, $04                                     ; $47dd: $06 $04
    inc b                                         ; $47df: $04
    ld [bc], a                                    ; $47e0: $02
    nop                                           ; $47e1: $00
    ld b, $04                                     ; $47e2: $06 $04
    ld [bc], a                                    ; $47e4: $02
    ld [bc], a                                    ; $47e5: $02
    ld [bc], a                                    ; $47e6: $02
    inc b                                         ; $47e7: $04
    add h                                         ; $47e8: $84
    sbc [hl]                                      ; $47e9: $9e
    sub [hl]                                      ; $47ea: $96
    cp [hl]                                       ; $47eb: $be
    and [hl]                                      ; $47ec: $a6
    inc b                                         ; $47ed: $04
    nop                                           ; $47ee: $00
    add d                                         ; $47ef: $82
    rra                                           ; $47f0: $1f
    dec de                                        ; $47f1: $1b
    ld [bc], a                                    ; $47f2: $02
    ld d, $02                                     ; $47f3: $16 $02
    ld sp, $3f02                                  ; $47f5: $31 $02 $3f
    add d                                         ; $47f8: $82
    ld h, e                                       ; $47f9: $63
    ld a, a                                       ; $47fa: $7f
    ld [bc], a                                    ; $47fb: $02
    ccf                                           ; $47fc: $3f
    stop                                          ; $47fd: $10 $00
    rst $38                                       ; $47ff: $ff
    rlca                                          ; $4800: $07
    ld bc, $0af1                                  ; $4801: $01 $f1 $0a
    ld [$f501], a                                 ; $4804: $ea $01 $f5
    db $fc                                        ; $4807: $fc
    adc l                                         ; $4808: $8d
    ld [bc], a                                    ; $4809: $02
    nop                                           ; $480a: $00
    ld c, $00                                     ; $480b: $0e $00
    ld a, [de]                                    ; $480d: $1a
    nop                                           ; $480e: $00
    add hl, de                                    ; $480f: $19
    nop                                           ; $4810: $00
    jr jr_0ed_4813                                ; $4811: $18 $00

jr_0ed_4813:
    jr jr_0ed_4815                                ; $4813: $18 $00

jr_0ed_4815:
    db $10                                        ; $4815: $10
    inc b                                         ; $4816: $04
    nop                                           ; $4817: $00
    add e                                         ; $4818: $83
    ld [$0e00], sp                                ; $4819: $08 $00 $0e
    inc c                                         ; $481c: $0c
    nop                                           ; $481d: $00
    rst $38                                       ; $481e: $ff
    dec bc                                        ; $481f: $0b
    inc bc                                        ; $4820: $03
    pop af                                        ; $4821: $f1
    ld a, [bc]                                    ; $4822: $0a
    ld [$ea01], a                                 ; $4823: $ea $01 $ea
    ei                                            ; $4826: $fb
    db $ec                                        ; $4827: $ec
    cp $fa                                        ; $4828: $fe $fa
    db $fc                                        ; $482a: $fc
    ld [bc], a                                    ; $482b: $02
    inc de                                        ; $482c: $13
    add h                                         ; $482d: $84
    dec a                                         ; $482e: $3d
    ccf                                           ; $482f: $3f
    rst $08                                       ; $4830: $cf
    rst $38                                       ; $4831: $ff
    ld [bc], a                                    ; $4832: $02
    ld a, a                                       ; $4833: $7f
    adc [hl]                                      ; $4834: $8e
    ld a, $2f                                     ; $4835: $3e $2f
    ld a, a                                       ; $4837: $7f
    ld d, e                                       ; $4838: $53
    dec sp                                        ; $4839: $3b
    cpl                                           ; $483a: $2f
    ld a, a                                       ; $483b: $7f
    ld l, c                                       ; $483c: $69
    ld a, a                                       ; $483d: $7f
    ld e, d                                       ; $483e: $5a
    ccf                                           ; $483f: $3f
    ld hl, $131f                                  ; $4840: $21 $1f $13
    ld [bc], a                                    ; $4843: $02
    ld c, $02                                     ; $4844: $0e $02
    jr jr_0ed_484a                                ; $4846: $18 $02

    ld [de], a                                    ; $4848: $12
    inc bc                                        ; $4849: $03

jr_0ed_484a:
    inc de                                        ; $484a: $13
    add c                                         ; $484b: $81
    ld [de], a                                    ; $484c: $12
    ld [bc], a                                    ; $484d: $02
    ld b, $82                                     ; $484e: $06 $82
    ld [bc], a                                    ; $4850: $02
    ld b, $04                                     ; $4851: $06 $04
    rlca                                          ; $4853: $07
    inc b                                         ; $4854: $04
    ld b, $04                                     ; $4855: $06 $04
    inc b                                         ; $4857: $04
    ld [bc], a                                    ; $4858: $02
    nop                                           ; $4859: $00
    ld b, $04                                     ; $485a: $06 $04
    ld [bc], a                                    ; $485c: $02
    ld [bc], a                                    ; $485d: $02
    ld [bc], a                                    ; $485e: $02
    inc b                                         ; $485f: $04
    add h                                         ; $4860: $84
    sbc [hl]                                      ; $4861: $9e
    sub [hl]                                      ; $4862: $96
    cp [hl]                                       ; $4863: $be
    and [hl]                                      ; $4864: $a6
    inc b                                         ; $4865: $04
    nop                                           ; $4866: $00
    add d                                         ; $4867: $82
    rra                                           ; $4868: $1f
    dec de                                        ; $4869: $1b
    ld [bc], a                                    ; $486a: $02
    ld d, $02                                     ; $486b: $16 $02
    ld sp, $3f02                                  ; $486d: $31 $02 $3f
    add d                                         ; $4870: $82
    ld h, e                                       ; $4871: $63
    ld a, a                                       ; $4872: $7f
    ld [bc], a                                    ; $4873: $02
    ccf                                           ; $4874: $3f
    stop                                          ; $4875: $10 $00
    rst $38                                       ; $4877: $ff
    rlca                                          ; $4878: $07
    ld bc, $0af1                                  ; $4879: $01 $f1 $0a
    ld [$f501], a                                 ; $487c: $ea $01 $f5
    db $fc                                        ; $487f: $fc
    adc l                                         ; $4880: $8d
    ld [bc], a                                    ; $4881: $02
    nop                                           ; $4882: $00
    ld c, $00                                     ; $4883: $0e $00
    ld a, [de]                                    ; $4885: $1a
    nop                                           ; $4886: $00
    add hl, de                                    ; $4887: $19
    nop                                           ; $4888: $00
    jr jr_0ed_488b                                ; $4889: $18 $00

jr_0ed_488b:
    jr jr_0ed_488d                                ; $488b: $18 $00

jr_0ed_488d:
    db $10                                        ; $488d: $10
    inc b                                         ; $488e: $04
    nop                                           ; $488f: $00
    add e                                         ; $4890: $83
    ld [$0e00], sp                                ; $4891: $08 $00 $0e
    inc c                                         ; $4894: $0c
    nop                                           ; $4895: $00
    rst $38                                       ; $4896: $ff

    db $0d, $04, $f1

    ld a, [bc]                                    ; $489a: $0a
    db $ea                                        ; $489b: $ea
    db $01                                        ; $489c: $01

    db $ea, $fb, $ea, $ff, $fa, $fc, $fa, $fe, $02, $09, $02, $1f, $82, $6f, $7f, $02
    db $3f, $8e, $1e, $17, $3f, $29, $19, $1f, $3f, $39, $3f, $2a, $1f, $11, $0f, $09
    db $02, $07, $02, $0c, $02, $09, $02, $7d, $82, $fe, $9a, $02, $08, $82, $04, $0c
    db $02, $0f, $81, $02, $03, $0e, $04, $0f, $02, $0e, $02, $0c, $04, $08, $08, $04
    db $02, $02, $82, $fe, $8e, $02, $71, $02, $27, $02, $23, $02, $3f, $83, $32, $3e
    db $4f, $03, $7f, $10, $00, $02, $01, $04, $02, $04, $00, $06, $02, $10, $00, $ff
    db $07, $01, $f1

    ld a, [bc]                                    ; $4900: $0a
    db $ea                                        ; $4901: $ea
    db $01                                        ; $4902: $01

    db $f5, $fd, $8b, $02, $00, $0e, $00, $1a, $00, $0a, $00, $07, $00, $03, $02, $00
    db $85, $1c, $00, $30, $00, $38, $03, $00, $81, $02, $0a, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4923: $0a
    db $ea                                        ; $4924: $ea
    db $01                                        ; $4925: $01

    db $eb, $f9, $eb, $01, $fb, $fc, $fb, $ff, $02, $02, $02, $07, $82, $1b, $1f, $02
    db $0f, $8c, $07, $05, $0f, $0a, $06, $07, $0f, $0e, $0f, $0a, $07, $04, $02, $67
    db $84, $f8, $98, $7d, $45, $02, $3f, $04, $02, $02, $60, $82, $d0, $f0, $02, $fc
    db $90, $c8, $f8, $b8, $f8, $fc, $7c, $7e, $fe, $ff, $79, $fe, $b6, $fc, $6c, $96
    db $92, $02, $0c, $02, $08, $02, $28, $02, $18, $02, $08, $02, $1e, $02, $11, $02
    db $27, $02, $23, $02, $7b, $81, $87, $03, $ff, $12, $00, $02, $02, $02, $06, $02
    db $04, $02, $02, $02, $06, $82, $01, $07, $02, $06, $12, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4996: $0a
    db $ea                                        ; $4997: $ea
    db $01                                        ; $4998: $01

    db $f5, $fe, $8d, $0d, $00, $fe, $00, $5e, $00, $1a, $00, $3c, $00, $3e, $00, $06
    db $02, $00, $87, $38, $00, $60, $00, $72, $00, $10, $0a, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $49b9: $0a
    db $ea                                        ; $49ba: $ea
    db $01                                        ; $49bb: $01

    db $eb, $f9, $eb, $01, $f3, $03, $fb, $fb, $02, $02, $02, $07, $82, $1b, $1f, $02
    db $0f, $92, $07, $05, $0f, $0a, $06, $07, $0f, $0e, $0f, $0a, $67, $64, $ff, $9f
    db $7c, $4c, $3c, $34, $02, $0f, $04, $02, $02, $60, $82, $d0, $f0, $02, $fc, $85
    db $c8, $f8, $b8, $f8, $fc, $02, $7c, $02, $fc, $85, $7c, $ff, $bb, $ff, $76, $02
    db $97, $02, $0a, $02, $0c, $02, $28, $02, $18, $02, $08, $02, $02, $82, $03, $01
    db $02, $02, $0a, $00, $02, $20, $02, $e0, $02, $c0, $02, $a0, $02, $e0, $82, $90
    db $f0, $02, $e0, $02, $00, $02, $0f, $02, $08, $02, $13, $02, $11, $02, $3d, $81
    db $43, $03, $7f, $12, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4a35: $0a
    db $ea                                        ; $4a36: $ea
    db $01                                        ; $4a37: $01

    db $f5, $ff, $8d, $1a, $00, $fd, $00, $fc, $00, $34, $00, $78, $00, $7c, $00, $0c
    db $02, $00, $87, $70, $00, $c0, $00, $e4, $00, $20, $0a, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4a58: $0a
    db $ea                                        ; $4a59: $ea
    db $01                                        ; $4a5a: $01

    db $eb, $f9, $eb, $01, $f2, $03, $fb, $fb, $02, $02, $02, $07, $82, $1b, $1f, $02
    db $0f, $8c, $07, $05, $0f, $0a, $06, $07, $0f, $0e, $0f, $0a, $07, $04, $02, $67
    db $84, $fc, $9c, $7c, $44, $02, $3f, $02, $03, $02, $02, $02, $60, $82, $d0, $f0
    db $02, $fc, $85, $c8, $f8, $b8, $f8, $fc, $02, $7c, $87, $fc, $ff, $7f, $ff, $b2
    db $fd, $7d, $02, $ca, $02, $0a, $02, $0c, $02, $28, $02, $18, $02, $08, $02, $02
    db $82, $03, $01, $02, $02, $0c, $00, $02, $20, $02, $e0, $02, $c0, $02, $a0, $02
    db $e0, $82, $90, $f0, $02, $e0, $02, $0f, $02, $08, $02, $13, $02, $11, $02, $3d
    db $81, $43, $03, $7f, $12, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4ad5: $0a
    db $ea                                        ; $4ad6: $ea
    db $01                                        ; $4ad7: $01

    db $f5, $ff, $8d, $0d, $00, $fd, $00, $fc, $00, $34, $00, $38, $00, $7c, $00, $0c
    db $02, $00, $87, $70, $00, $c0, $00, $e4, $00, $20, $0a, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4af8: $0a
    db $ea                                        ; $4af9: $ea
    db $01                                        ; $4afa: $01

    db $ec, $fa, $ed, $fe, $fc, $fc, $fc, $ff, $02, $27, $83, $dd, $ff, $6f, $03, $7f
    db $8e, $3f, $27, $7f, $59, $7d, $77, $7f, $75, $7f, $4a, $3f, $31, $1e, $12, $02
    db $3d, $84, $7e, $4e, $7f, $51, $02, $3e, $02, $09, $02, $08, $02, $0c, $84, $06
    db $0e, $06, $0e, $08, $0c, $02, $08, $04, $04, $02, $06, $02, $0a, $02, $01, $02
    db $0d, $02, $66, $02, $00, $02, $11, $02, $23, $02, $7b, $81, $8e, $03, $ff, $16
    db $00, $02, $04, $02, $02, $84, $05, $07, $03, $07, $02, $04, $14, $00, $ff, $07
    db $01, $f1

    ld a, [bc]                                    ; $4b5d: $0a
    db $ea                                        ; $4b5e: $ea
    db $01                                        ; $4b5f: $01

    db $f6, $fd, $8b, $0c, $00, $14, $00, $0c, $00, $02, $00, $0f, $00, $31, $02, $00
    db $87, $0c, $00, $1c, $00, $39, $00, $08, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4b7e: $0a
    db $ea                                        ; $4b7f: $ea
    db $01                                        ; $4b80: $01

    db $ec, $f4, $ec, $fc, $f8, $fe, $fc, $f6, $02, $02, $02, $0b, $92, $0d, $0f, $1f
    db $17, $3f, $2d, $77, $56, $ff, $8d, $77, $55, $3f, $2e, $1f, $17, $0f, $0e, $02
    db $03, $04, $01, $04, $00, $02, $e0, $94, $b8, $f8, $f4, $fc, $f4, $fc, $fe, $9e
    db $fe, $de, $fc, $3c, $fc, $24, $f8, $d8, $fc, $1c, $ea, $2a, $02, $c5, $88, $07
    db $06, $0f, $0d, $9f, $93, $9f, $93, $02, $02, $06, $00, $02, $bc, $02, $1e, $02
    db $33, $84, $dd, $df, $32, $fe, $02, $dc, $0c, $00, $02, $03, $06, $01, $81, $02
    db $03, $03, $14, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4be9: $0a
    db $ea                                        ; $4bea: $ea
    db $01                                        ; $4beb: $01

    db $f6, $fc, $8b, $14, $00, $3a, $00, $f8, $00, $f0, $00, $60, $00, $60, $02, $00
    db $87, $10, $00, $38, $00, $33, $00, $08, $0c, $00, $ff, $0f, $05, $f1

    ld a, [bc]                                    ; $4c0a: $0a
    db $ea                                        ; $4c0b: $ea
    db $01                                        ; $4c0c: $01

    db $ed, $f1, $ec, $f9, $f0, $fe, $fc, $fc, $fc, $fe, $04, $01, $02, $03, $0a, $01
    db $02, $00, $02, $7f, $84, $ff, $90, $7f, $73, $02, $0c, $06, $00, $02, $38, $85
    db $ee, $fe, $7d, $ff, $fd, $02, $ff, $8d, $67, $ff, $b7, $ff, $4f, $ff, $49, $fe
    db $b6, $fd, $c5, $f9, $89, $02, $f1, $02, $a0, $02, $60, $02, $21, $02, $13, $04
    db $10, $06, $00, $02, $10, $02, $08, $02, $14, $88, $1e, $1a, $1e, $1a, $1c, $04
    db $1c, $04, $02, $9c, $02, $1c, $02, $3a, $02, $df, $02, $c0, $06, $40, $82, $8c
    db $ff, $02, $f7, $1c, $00, $82, $01, $03, $02, $02, $14, $00, $ff, $09, $02, $f1

    ld a, [bc]                                    ; $4c7d: $0a
    db $ea                                        ; $4c7e: $ea
    db $01                                        ; $4c7f: $01

    db $f5, $fa, $f5, $fc, $8d, $04, $00, $0d, $00, $1c, $00, $be, $00, $3e, $00, $3c
    db $00, $18, $02, $00, $87, $06, $00, $0e, $00, $0c, $00, $02, $0e, $00, $81, $02
    db $0e, $00, $81, $01, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4caa: $0a
    db $ea                                        ; $4cab: $ea
    db $01                                        ; $4cac: $01

    db $ed, $f3, $ec, $fb, $f7, $fe, $fc, $f6, $02, $07, $82, $05, $07, $02, $0f, $8a
    db $07, $05, $07, $06, $07, $05, $07, $05, $07, $06, $03, $03, $81, $02, $02, $05
    db $86, $fe, $fa, $ff, $97, $7c, $64, $02, $18, $02, $00, $02, $e0, $94, $b8, $f8
    db $f4, $fc, $f4, $fc, $fe, $9e, $fe, $de, $fc, $3c, $fc, $24, $f8, $d8, $f6, $16
    db $e5, $25, $02, $c6, $04, $83, $84, $87, $84, $4f, $4c, $02, $04, $84, $06, $02
    db $06, $02, $04, $04, $02, $9c, $02, $1c, $02, $3a, $02, $df, $82, $31, $ff, $02
    db $de, $0a, $00, $02, $03, $06, $01, $81, $02, $03, $03, $14, $00, $ff, $09, $02
    db $f1

    ld a, [bc]                                    ; $4d1e: $0a
    db $ea                                        ; $4d1f: $ea
    db $01                                        ; $4d20: $01

    db $f5, $f9, $f5, $fc, $8d, $02, $00, $06, $00, $8e, $00, $5f, $00, $1f, $00, $1e
    db $00, $0c, $02, $00, $87, $03, $00, $07, $00, $06, $00, $01, $0c, $00, $83, $04
    db $00, $02, $0e, $00, $81, $01, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4d4d: $0a
    db $ea                                        ; $4d4e: $ea
    db $01                                        ; $4d4f: $01

    db $eb, $f8, $eb, $fc, $fb, $f9, $fb, $fd, $02, $13, $83, $2e, $3f, $77, $03, $7f
    db $8e, $1f, $13, $3f, $2c, $3e, $3b, $3f, $3a, $3f, $25, $1f, $18, $0f, $09, $02
    db $06, $04, $0c, $84, $dc, $d4, $fc, $ac, $02, $08, $02, $0c, $02, $0e, $84, $0b
    db $0f, $0b, $0f, $07, $0e, $81, $06, $02, $0c, $02, $04, $02, $0a, $02, $09, $03
    db $07, $85, $05, $07, $05, $f9, $b9, $02, $6f, $04, $04, $02, $07, $82, $08, $0f
    db $02, $1f, $12, $00, $84, $0e, $02, $0e, $0a, $02, $0e, $02, $07, $02, $0f, $81
    db $0d, $03, $0f, $12, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4db9: $0a
    db $ea                                        ; $4dba: $ea
    db $01                                        ; $4dbb: $01

    db $f5, $fb, $8d, $04, $00, $0a, $00, $1b, $00, $1c, $00, $1c, $00, $1c, $00, $18
    db $04, $00, $83, $0c, $00, $0e, $0c, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $4dd8: $0a
    db $ea                                        ; $4dd9: $ea
    db $01                                        ; $4dda: $01

    db $ea, $fb, $ec, $fe, $fa, $fc, $02, $13, $84, $3d, $3f, $cf, $ff, $02, $7f, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $18, $02, $12, $02, $13, $82, $33, $32, $02, $06, $82, $02, $06, $04, $07
    db $04, $06, $04, $04, $02, $00, $06, $04, $02, $02, $02, $04, $84, $9e, $96, $be
    db $a6, $02, $40, $84, $c0, $80, $7f, $7b, $02, $16, $02, $31, $02, $3f, $82, $63
    db $7f, $02, $3f, $10, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4e34: $0a
    db $ea                                        ; $4e35: $ea
    db $01                                        ; $4e36: $01

    db $f5, $fc, $8d, $02, $00, $0e, $00, $1a, $00, $19, $00, $18, $00, $18, $00, $10
    db $04, $00, $83, $08, $00, $0e, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4e53: $0a
    db $ea                                        ; $4e54: $ea
    db $01                                        ; $4e55: $01

    db $ea, $fb, $ea, $02, $fa, $fd, $fa, $fe, $02, $02, $02, $03, $82, $05, $07, $02
    db $0f, $8a, $07, $05, $07, $06, $07, $05, $07, $05, $07, $06, $02, $17, $8a, $3b
    db $2a, $3f, $27, $7e, $72, $ff, $bd, $fb, $9b, $02, $78, $02, $70, $94, $5c, $7c
    db $7a, $7e, $7a, $7e, $7f, $4f, $7f, $6f, $7e, $1e, $7e, $12, $7c, $6c, $78, $08
    db $70, $30, $02, $60, $02, $50, $02, $10, $02, $30, $02, $50, $02, $41, $02, $25
    db $02, $2b, $02, $52, $02, $71, $02, $fe, $82, $23, $3f, $02, $1f, $10, $00, $02
    db $01, $08, $00, $06, $01, $10, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4ec1: $0a
    db $ea                                        ; $4ec2: $ea
    db $01                                        ; $4ec3: $01

    db $f6, $fd, $94, $05, $00, $03, $00, $12, $00, $1d, $00, $3e, $00, $18, $02, $00
    db $14, $00, $2c, $00, $0e, $00, $01, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $4ee1: $0a
    db $ea                                        ; $4ee2: $ea
    db $01                                        ; $4ee3: $01

    db $eb, $fc, $ec, $00, $fb, $fd, $fb, $fe, $02, $17, $84, $1d, $1f, $2f, $3f, $02
    db $7f, $8e, $3f, $2c, $3f, $36, $3f, $29, $3f, $29, $3f, $36, $3f, $38, $1f, $11
    db $02, $1f, $02, $72, $84, $fc, $9c, $7d, $41, $02, $7e, $02, $0c, $84, $0a, $0e
    db $0a, $0e, $04, $0f, $03, $0e, $81, $02, $02, $0c, $02, $08, $04, $00, $06, $08
    db $04, $04, $02, $60, $02, $23, $02, $29, $02, $58, $02, $7f, $82, $f1, $ff, $02
    db $1f, $14, $00, $02, $01, $02, $00, $06, $01, $14, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $4f43: $0a
    db $ea                                        ; $4f44: $ea
    db $01                                        ; $4f45: $01

    db $f7, $fd, $8b, $1a, $00, $06, $00, $04, $00, $03, $00, $1f, $00, $1c, $02, $00
    db $83, $16, $00, $27, $10, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $4f60: $0a
    db $ea                                        ; $4f61: $ea
    db $01                                        ; $4f62: $01

    db $ea, $fb, $ec, $fe, $fa, $fd, $02, $02, $84, $3d, $3f, $4f, $7f, $02, $ff, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $08, $04, $12, $82, $1f, $1d, $02, $04, $02, $06, $82, $02, $06, $04, $07
    db $02, $06, $04, $04, $02, $00, $0a, $04, $84, $fa, $8a, $f6, $b6, $04, $00, $04
    db $26, $02, $62, $02, $7f, $82, $e3, $ff, $02, $3e, $10, $00, $ff

    rlca                                          ; $4fb0: $07
    ld bc, $0af1                                  ; $4fb1: $01 $f1 $0a
    ld [$f501], a                                 ; $4fb4: $ea $01 $f5
    db $fc                                        ; $4fb7: $fc
    add a                                         ; $4fb8: $87
    ld [bc], a                                    ; $4fb9: $02
    nop                                           ; $4fba: $00
    ld c, $00                                     ; $4fbb: $0e $00
    ld a, [de]                                    ; $4fbd: $1a
    nop                                           ; $4fbe: $00
    ld a, [de]                                    ; $4fbf: $1a
    inc bc                                        ; $4fc0: $03
    nop                                           ; $4fc1: $00
    add c                                         ; $4fc2: $81
    ld bc, $0002                                  ; $4fc3: $01 $02 $00
    add a                                         ; $4fc6: $87
    ld [bc], a                                    ; $4fc7: $02
    nop                                           ; $4fc8: $00
    inc c                                         ; $4fc9: $0c
    nop                                           ; $4fca: $00
    inc c                                         ; $4fcb: $0c
    nop                                           ; $4fcc: $00
    ld c, $0c                                     ; $4fcd: $0e $0c
    nop                                           ; $4fcf: $00
    rst $38                                       ; $4fd0: $ff

    db $0b, $03, $f1

    ld a, [bc]                                    ; $4fd4: $0a
    db $ea                                        ; $4fd5: $ea
    db $01                                        ; $4fd6: $01

    db $ea, $fb, $ec, $fe, $fa, $fc, $02, $13, $84, $3d, $3f, $cf, $ff, $02, $7f, $8e
    db $3e, $2f, $7f, $53, $3b, $2f, $7f, $69, $7f, $5a, $3f, $21, $1f, $13, $02, $0e
    db $02, $18, $02, $12, $03, $13, $81, $12, $02, $06, $82, $02, $06, $04, $07, $04
    db $06, $04, $04, $02, $00, $06, $04, $02, $02, $02, $04, $84, $9e, $96, $be, $a6
    db $04, $00, $82, $1f, $1b, $02, $16, $02, $31, $02, $3f, $82, $63, $7f, $02, $3f
    db $10, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $502d: $0a
    db $ea                                        ; $502e: $ea
    db $01                                        ; $502f: $01

    db $f5, $fc, $8d, $02, $00, $0e, $00, $1a, $00, $19, $00, $18, $00, $18, $00, $10
    db $04, $00, $83, $08, $00, $0e, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $504c: $0a
    db $ea                                        ; $504d: $ea
    db $01                                        ; $504e: $01

    db $eb, $fb, $ec, $fe, $fb, $fc, $fb, $fd, $02, $2e, $84, $3b, $3f, $5f, $7f, $02
    db $ff, $8e, $7f, $59, $7f, $6d, $7f, $53, $7f, $52, $7f, $6d, $7f, $71, $3f, $23
    db $02, $1d, $02, $08, $02, $12, $02, $11, $02, $31, $02, $04, $84, $02, $06, $02
    db $06, $04, $07, $03, $06, $81, $02, $02, $04, $04, $00, $04, $04, $03, $06, $89
    db $02, $07, $05, $9e, $92, $c0, $80, $77, $75, $02, $53, $02, $73, $02, $3e, $82
    db $71, $7f, $02, $1f, $14, $00, $02, $01, $04, $00, $06, $01, $12, $00, $ff, $07
    db $01, $f1

    ld a, [bc]                                    ; $50b1: $0a
    db $ea                                        ; $50b2: $ea
    db $01                                        ; $50b3: $01

    db $f6, $fc, $8d, $04, $00, $0e, $00, $1a, $00, $1c, $00, $1c, $00, $18, $00, $08
    db $02, $00, $85, $2c, $00, $0c, $00, $01, $0c, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $50d2: $0a
    db $ea                                        ; $50d3: $ea
    db $01                                        ; $50d4: $01

    db $ed, $fa, $ee, $ff, $fd, $fc, $fd, $fe, $02, $2e, $84, $3b, $3f, $5f, $7f, $02
    db $ff, $8e, $7f, $59, $7f, $6d, $7f, $53, $7f, $52, $7f, $6d, $7f, $71, $3e, $22
    db $02, $1c, $02, $28, $84, $78, $58, $e8, $a8, $02, $56, $02, $10, $84, $08, $18
    db $08, $18, $04, $1c, $03, $18, $81, $08, $04, $10, $02, $08, $02, $14, $88, $0e
    db $0a, $0f, $0d, $1e, $12, $1e, $1a, $02, $cc, $02, $a0, $02, $99, $02, $76, $82
    db $f9, $ff, $02, $0f, $18, $00, $02, $02, $02, $01, $02, $03, $02, $02, $16, $00
    db $ff, $07, $01, $f1

    ld a, [bc]                                    ; $5139: $0a
    db $ea                                        ; $513a: $ea
    db $01                                        ; $513b: $01

    db $f7, $fd, $89, $0c, $00, $1a, $00, $bc, $00, $3c, $00, $38, $02, $00, $87, $48
    db $00, $8c, $00, $cc, $00, $03, $0e, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $5158: $0a
    db $ea                                        ; $5159: $ea
    db $01                                        ; $515a: $01

    db $e5, $f9, $e5, $00, $f5, $fd, $02, $03, $83, $06, $07, $0b, $03, $0f, $8e, $1f
    db $1b, $0f, $0d, $0f, $0a, $0f, $0a, $0f, $0d, $0f, $0e, $0f, $0c, $02, $73, $84
    db $fc, $8c, $7c, $5c, $02, $24, $02, $04, $02, $40, $02, $78, $02, $7c, $90, $74
    db $7c, $76, $3e, $7e, $5e, $7e, $3e, $7c, $24, $78, $58, $70, $10, $68, $28, $02
    db $5c, $84, $1e, $12, $0f, $09, $02, $0e, $02, $08, $02, $41, $02, $67, $02, $5a
    db $02, $52, $02, $59, $02, $39, $02, $7f, $84, $5a, $7e, $6a, $6e, $02, $0c, $0c
    db $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $51c0: $0a
    db $ea                                        ; $51c1: $ea
    db $01                                        ; $51c2: $01

    db $ef, $fc, $8f, $01, $00, $62, $00, $1e, $00, $1f, $00, $1f, $00, $1f, $00, $1f
    db $00, $0c, $02, $00, $87, $12, $00, $16, $00, $13, $00, $03, $08, $00, $ff, $0b
    db $03, $f1

    ld a, [bc]                                    ; $51e5: $0a
    db $ea                                        ; $51e6: $ea
    db $01                                        ; $51e7: $01

    db $e3, $f9, $e3, $00, $f3, $fd, $02, $03, $83, $06, $07, $0b, $03, $0f, $8e, $1f
    db $1b, $0f, $0d, $2f, $2a, $7f, $5a, $ff, $9d, $7f, $5e, $3f, $2c, $02, $17, $02
    db $0c, $06, $04, $02, $40, $02, $78, $02, $7c, $90, $74, $7c, $76, $3e, $7e, $5e
    db $7e, $3e, $7e, $2a, $7f, $59, $7e, $1a, $7e, $3a, $02, $64, $02, $18, $06, $08
    db $04, $41, $02, $6e, $02, $5a, $02, $52, $02, $59, $02, $39, $02, $7f, $84, $5a
    db $7e, $6a, $6e, $02, $0c, $0a, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $5243: $0a
    db $ea                                        ; $5244: $ea
    db $01                                        ; $5245: $01

    db $ee, $fd, $8d, $83, $00, $3c, $00, $3e, $00, $3e, $00, $3e, $00, $3e, $00, $3e
    db $02, $00, $89, $10, $00, $24, $00, $2c, $00, $26, $00, $06, $08, $00, $ff, $0b
    db $03, $f1

    ld a, [bc]                                    ; $5268: $0a
    db $ea                                        ; $5269: $ea
    db $01                                        ; $526a: $01

    db $e2, $fa, $e2, $00, $f2, $fd, $02, $0b, $84, $0e, $0f, $17, $1f, $02, $3f, $8e
    db $7f, $7b, $7f, $54, $ff, $94, $7f, $5b, $7f, $56, $3f, $37, $2f, $28, $02, $1f
    db $04, $08, $04, $10, $02, $20, $02, $38, $82, $34, $3c, $03, $3e, $8b, $1e, $3f
    db $39, $3f, $39, $3e, $0a, $3e, $1a, $34, $14, $02, $34, $02, $28, $08, $08, $02
    db $81, $02, $7d, $02, $6e, $02, $5a, $02, $52, $02, $59, $02, $39, $02, $7f, $84
    db $5a, $7e, $6a, $6e, $02, $0c, $0a, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $52c7: $0a
    db $ea                                        ; $52c8: $ea
    db $01                                        ; $52c9: $01

    db $eb, $fd, $91, $01, $00, $81, $00, $02, $00, $3e, $00, $3e, $00, $7e, $00, $7e
    db $00, $7e, $00, $02, $02, $00, $89, $10, $00, $24, $00, $2c, $00, $26, $00, $06
    db $04, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $52f0: $0a
    db $ea                                        ; $52f1: $ea
    db $01                                        ; $52f2: $01

    db $e4, $f9, $e4, $ff, $f4, $fd, $f4, $fe, $02, $05, $02, $07, $82, $1b, $1f, $03
    db $0f, $8d, $0d, $0f, $0a, $2f, $2a, $7f, $5d, $ff, $9b, $7f, $5b, $3f, $2c, $02
    db $17, $02, $0c, $02, $04, $04, $08, $02, $38, $83, $0e, $3e, $3a, $03, $3e, $8e
    db $3f, $2f, $3f, $1b, $3f, $19, $3f, $2d, $3f, $0d, $3a, $2a, $32, $12, $02, $24
    db $02, $0c, $06, $04, $02, $fc, $82, $7f, $47, $02, $6a, $02, $56, $02, $b2, $02
    db $bb, $02, $71, $02, $7e, $84, $aa, $ee, $ca, $ce, $02, $0c, $0a, $00, $02, $01
    db $1e, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $5359: $0a
    db $ea                                        ; $535a: $ea
    db $01                                        ; $535b: $01

    db $ed, $fd, $8f, $01, $00, $03, $00, $86, $00, $3c, $00, $3e, $00, $7e, $00, $7e
    db $00, $03, $04, $00, $89, $14, $00, $28, $00, $4c, $00, $44, $00, $0e, $04, $00
    db $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $5380: $0a
    db $ea                                        ; $5381: $ea
    db $01                                        ; $5382: $01

    db $e6, $f9, $e6, $ff, $f6, $fd, $f6, $fe, $02, $05, $02, $17, $82, $1b, $1f, $03
    db $0f, $91, $08, $0f, $0d, $0f, $0a, $0f, $0a, $2f, $2d, $7f, $5e, $ff, $9c, $77
    db $57, $34, $24, $02, $1e, $04, $08, $02, $38, $84, $0e, $3e, $3a, $3e, $03, $3f
    db $81, $1f, $03, $3e, $89, $2e, $3e, $26, $3e, $36, $3e, $0a, $3e, $1a, $02, $36
    db $02, $14, $02, $0c, $04, $04, $02, $fc, $82, $7f, $47, $02, $6a, $02, $56, $02
    db $b2, $02, $bb, $02, $f1, $02, $7e, $84, $ba, $fe, $ca, $ce, $02, $0c, $0a, $00
    db $02, $01, $1e, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $53eb: $0a
    db $ea                                        ; $53ec: $ea
    db $01                                        ; $53ed: $01

    db $f1, $fd, $8b, $82, $00, $ba, $00, $1c, $00, $7e, $00, $7e, $00, $03, $04, $00
    db $89, $14, $00, $28, $00, $4c, $00, $44, $00, $0e, $08, $00, $ff, $0d, $04, $f1

    ld a, [bc]                                    ; $540e: $0a
    db $ea                                        ; $540f: $ea
    db $01                                        ; $5410: $01

    db $ed, $f8, $ee, $fe, $fd, $fc, $fd, $fe, $02, $07, $84, $0d, $0f, $17, $1f, $03
    db $3f, $8f, $36, $1f, $1b, $1f, $14, $1f, $14, $3f, $3b, $7f, $5d, $ff, $98, $7f
    db $67, $02, $1e, $04, $02, $02, $05, $02, $38, $02, $3c, $83, $34, $3c, $36, $02
    db $3e, $81, $1e, $02, $3e, $88, $3c, $34, $3c, $0c, $3e, $26, $3f, $39, $02, $0a
    db $02, $04, $04, $02, $02, $2c, $02, $e6, $02, $80, $02, $99, $02, $76, $82, $f9
    db $ff, $02, $0f, $18, $00, $02, $02, $02, $01, $02, $03, $02, $02, $16, $00, $ff
    db $07, $01, $f1

    ld a, [bc]                                    ; $5474: $0a
    db $ea                                        ; $5475: $ea
    db $01                                        ; $5476: $01

    db $f8, $fd, $87, $1a, $00, $3c, $00, $3e, $00, $3e, $02, $00, $87, $48, $00, $8c
    db $00, $cc, $00, $03, $10, $00, $ff, $0b, $03, $f1

    ld a, [bc]                                    ; $5491: $0a
    db $ea                                        ; $5492: $ea
    db $01                                        ; $5493: $01

    db $ec, $fb, $ed, $ff, $fc, $fd, $02, $2e, $84, $3b, $3f, $5f, $7f, $02, $ff, $8e
    db $7f, $59, $7f, $6d, $7f, $53, $7f, $52, $7f, $6d, $7f, $71, $3f, $23, $02, $5c
    db $86, $f3, $b3, $f7, $94, $73, $72, $02, $21, $02, $08, $84, $04, $0c, $04, $0c
    db $04, $0e, $03, $0c, $81, $04, $04, $08, $02, $04, $02, $0a, $84, $0f, $09, $0e
    db $06, $02, $0c, $02, $04, $02, $3c, $02, $40, $02, $a2, $02, $e6, $02, $7d, $82
    db $e3, $ff, $02, $3f, $14, $00, $ff, $07, $01, $f1

    ld a, [bc]                                    ; $54ee: $0a
    db $ea                                        ; $54ef: $ea
    db $01                                        ; $54f0: $01

    db $f6, $fd, $8d, $02, $00, $0d, $00, $30, $00, $20, $00, $30, $00, $7a, $00, $30
    db $02, $00, $85, $5c, $00, $18, $00, $02, $0c, $00, $ff, $09, $02, $fc

    rrca                                          ; $550f: $0f
    rst $30                                       ; $5510: $f7
    db $01                                        ; $5511: $01

    db $f2, $04, $f2, $09, $81, $02, $02, $00, $02, $20, $83, $70, $00, $20, $0a, $00
    db $84, $40, $e0, $04, $40, $04, $00, $81, $20, $09, $00, $84, $04, $0e, $00, $04
    db $02, $00, $81, $10, $03, $00, $81, $01, $06, $00, $02, $08, $83, $1c, $00, $08
    db $06, $00, $ff, $09, $02, $fc

    rrca                                          ; $5548: $0f
    rst $30                                       ; $5549: $f7
    db $01                                        ; $554a: $01

    db $f0, $07, $f0, $0c, $81, $04, $02, $00, $02, $20, $83, $71, $00, $20, $02, $00
    db $81, $01, $05, $00, $84, $40, $e0, $00, $41, $04, $00, $81, $04, $0b, $00, $84
    db $10, $18, $00, $10, $08, $00, $81, $01, $02, $10, $83, $18, $00, $10, $0a, $00
    db $ff, $09, $02, $fc

    rrca                                          ; $557f: $0f
    rst $30                                       ; $5580: $f7
    db $01                                        ; $5581: $01

    db $e9, $06, $e9, $09, $81, $01, $02, $00, $85, $40, $42, $e7, $80, $42, $06, $00
    db $87, $20, $71, $01, $23, $00, $01, $08, $17, $00, $81, $01, $04, $00, $81, $04
    db $0e, $00, $ff, $07, $01, $fc

    rrca                                          ; $55a8: $0f
    rst $30                                       ; $55a9: $f7
    db $01                                        ; $55aa: $01

    db $e7, $ff, $8b, $00, $04, $84, $0e, $01, $04, $10, $38, $00, $10, $04, $15, $00
    db $ff

    dec bc                                        ; $55bc: $0b
    inc bc                                        ; $55bd: $03
    pop af                                        ; $55be: $f1
    ld a, [bc]                                    ; $55bf: $0a
    ld [$ea01], a                                 ; $55c0: $ea $01 $ea
    ei                                            ; $55c3: $fb
    db $ec                                        ; $55c4: $ec
    cp $fa                                        ; $55c5: $fe $fa
    db $fc                                        ; $55c7: $fc
    ld [bc], a                                    ; $55c8: $02
    inc de                                        ; $55c9: $13
    add h                                         ; $55ca: $84
    dec a                                         ; $55cb: $3d
    ccf                                           ; $55cc: $3f
    rst $08                                       ; $55cd: $cf
    rst $38                                       ; $55ce: $ff
    ld [bc], a                                    ; $55cf: $02
    ld a, a                                       ; $55d0: $7f
    adc [hl]                                      ; $55d1: $8e
    ld a, $2f                                     ; $55d2: $3e $2f
    ld a, a                                       ; $55d4: $7f
    ld d, e                                       ; $55d5: $53
    dec sp                                        ; $55d6: $3b
    cpl                                           ; $55d7: $2f
    ld a, a                                       ; $55d8: $7f
    ld l, c                                       ; $55d9: $69
    ld a, a                                       ; $55da: $7f
    ld e, d                                       ; $55db: $5a
    ccf                                           ; $55dc: $3f
    ld hl, $131f                                  ; $55dd: $21 $1f $13
    ld [bc], a                                    ; $55e0: $02
    ld c, $02                                     ; $55e1: $0e $02
    jr jr_0ed_55e7                                ; $55e3: $18 $02

    ld [de], a                                    ; $55e5: $12
    inc bc                                        ; $55e6: $03

jr_0ed_55e7:
    inc de                                        ; $55e7: $13
    add c                                         ; $55e8: $81
    ld [de], a                                    ; $55e9: $12
    ld [bc], a                                    ; $55ea: $02
    ld b, $82                                     ; $55eb: $06 $82
    ld [bc], a                                    ; $55ed: $02
    ld b, $04                                     ; $55ee: $06 $04
    rlca                                          ; $55f0: $07
    inc b                                         ; $55f1: $04
    ld b, $04                                     ; $55f2: $06 $04
    inc b                                         ; $55f4: $04
    ld [bc], a                                    ; $55f5: $02
    nop                                           ; $55f6: $00
    ld b, $04                                     ; $55f7: $06 $04
    ld [bc], a                                    ; $55f9: $02
    ld [bc], a                                    ; $55fa: $02
    ld [bc], a                                    ; $55fb: $02
    inc b                                         ; $55fc: $04
    add h                                         ; $55fd: $84
    sbc [hl]                                      ; $55fe: $9e
    sub [hl]                                      ; $55ff: $96
    cp [hl]                                       ; $5600: $be
    and [hl]                                      ; $5601: $a6
    inc b                                         ; $5602: $04
    nop                                           ; $5603: $00
    add d                                         ; $5604: $82
    rra                                           ; $5605: $1f
    dec de                                        ; $5606: $1b
    ld [bc], a                                    ; $5607: $02
    ld d, $02                                     ; $5608: $16 $02
    ld sp, $3f02                                  ; $560a: $31 $02 $3f
    add d                                         ; $560d: $82
    ld h, e                                       ; $560e: $63
    ld a, a                                       ; $560f: $7f
    ld [bc], a                                    ; $5610: $02
    ccf                                           ; $5611: $3f
    stop                                          ; $5612: $10 $00
    rst $38                                       ; $5614: $ff
    rlca                                          ; $5615: $07
    ld bc, $0af1                                  ; $5616: $01 $f1 $0a
    ld [$f501], a                                 ; $5619: $ea $01 $f5
    db $fc                                        ; $561c: $fc
    adc l                                         ; $561d: $8d
    ld [bc], a                                    ; $561e: $02
    nop                                           ; $561f: $00
    rrca                                          ; $5620: $0f
    nop                                           ; $5621: $00
    add hl, de                                    ; $5622: $19
    nop                                           ; $5623: $00
    inc e                                         ; $5624: $1c
    nop                                           ; $5625: $00
    inc e                                         ; $5626: $1c
    nop                                           ; $5627: $00
    jr jr_0ed_562a                                ; $5628: $18 $00

jr_0ed_562a:
    jr jr_0ed_562e                                ; $562a: $18 $02

    nop                                           ; $562c: $00
    add l                                         ; $562d: $85

jr_0ed_562e:
    inc b                                         ; $562e: $04
    nop                                           ; $562f: $00
    ld [$0e00], sp                                ; $5630: $08 $00 $0e
    inc c                                         ; $5633: $0c
    nop                                           ; $5634: $00
    rst $38                                       ; $5635: $ff
    dec bc                                        ; $5636: $0b
    inc bc                                        ; $5637: $03
    pop af                                        ; $5638: $f1
    ld a, [bc]                                    ; $5639: $0a
    ld [$ea01], a                                 ; $563a: $ea $01 $ea
    ei                                            ; $563d: $fb
    db $ec                                        ; $563e: $ec
    cp $fa                                        ; $563f: $fe $fa
    db $fc                                        ; $5641: $fc
    ld [bc], a                                    ; $5642: $02
    inc de                                        ; $5643: $13
    add h                                         ; $5644: $84
    dec a                                         ; $5645: $3d
    ccf                                           ; $5646: $3f
    rst $08                                       ; $5647: $cf
    rst $38                                       ; $5648: $ff
    ld [bc], a                                    ; $5649: $02
    ld a, a                                       ; $564a: $7f
    adc [hl]                                      ; $564b: $8e
    ld a, $2f                                     ; $564c: $3e $2f
    ld a, a                                       ; $564e: $7f
    ld d, e                                       ; $564f: $53
    dec sp                                        ; $5650: $3b
    cpl                                           ; $5651: $2f
    ld a, a                                       ; $5652: $7f
    ld l, c                                       ; $5653: $69
    ld a, a                                       ; $5654: $7f
    ld e, d                                       ; $5655: $5a
    ccf                                           ; $5656: $3f
    ld hl, $131f                                  ; $5657: $21 $1f $13
    ld [bc], a                                    ; $565a: $02
    ld c, $02                                     ; $565b: $0e $02
    jr jr_0ed_5661                                ; $565d: $18 $02

    inc de                                        ; $565f: $13
    inc b                                         ; $5660: $04

jr_0ed_5661:
    ld de, $0602                                  ; $5661: $11 $02 $06
    add d                                         ; $5664: $82
    ld [bc], a                                    ; $5665: $02
    ld b, $04                                     ; $5666: $06 $04
    rlca                                          ; $5668: $07
    inc b                                         ; $5669: $04
    ld b, $04                                     ; $566a: $06 $04
    inc b                                         ; $566c: $04
    ld [bc], a                                    ; $566d: $02
    nop                                           ; $566e: $00
    ld [bc], a                                    ; $566f: $02
    inc b                                         ; $5670: $04
    inc b                                         ; $5671: $04
    ld [bc], a                                    ; $5672: $02
    adc b                                         ; $5673: $88
    rlca                                          ; $5674: $07
    dec b                                         ; $5675: $05
    rlca                                          ; $5676: $07
    dec b                                         ; $5677: $05
    sbc [hl]                                      ; $5678: $9e
    sub d                                         ; $5679: $92
    sbc [hl]                                      ; $567a: $9e
    sub [hl]                                      ; $567b: $96
    inc b                                         ; $567c: $04
    nop                                           ; $567d: $00
    ld [bc], a                                    ; $567e: $02
    dec sp                                        ; $567f: $3b
    ld [bc], a                                    ; $5680: $02
    ld d, $02                                     ; $5681: $16 $02
    ld sp, $3f02                                  ; $5683: $31 $02 $3f
    add d                                         ; $5686: $82
    ld h, e                                       ; $5687: $63
    ld a, a                                       ; $5688: $7f
    ld [bc], a                                    ; $5689: $02
    ccf                                           ; $568a: $3f
    stop                                          ; $568b: $10 $00
    rst $38                                       ; $568d: $ff
    rlca                                          ; $568e: $07
    ld bc, $0af1                                  ; $568f: $01 $f1 $0a
    ld [$f501], a                                 ; $5692: $ea $01 $f5
    db $fc                                        ; $5695: $fc
    adc l                                         ; $5696: $8d
    inc b                                         ; $5697: $04
    nop                                           ; $5698: $00
    rra                                           ; $5699: $1f
    nop                                           ; $569a: $00
    ld a, [de]                                    ; $569b: $1a
    nop                                           ; $569c: $00
    inc e                                         ; $569d: $1c
    nop                                           ; $569e: $00
    jr jr_0ed_56a1                                ; $569f: $18 $00

jr_0ed_56a1:
    stop                                          ; $56a1: $10 $00
    db $10                                        ; $56a3: $10
    ld [bc], a                                    ; $56a4: $02
    nop                                           ; $56a5: $00
    add l                                         ; $56a6: $85
    inc b                                         ; $56a7: $04
    nop                                           ; $56a8: $00
    ld [$0e00], sp                                ; $56a9: $08 $00 $0e
    inc c                                         ; $56ac: $0c
    nop                                           ; $56ad: $00
    rst $38                                       ; $56ae: $ff
    dec bc                                        ; $56af: $0b
    inc bc                                        ; $56b0: $03
    pop af                                        ; $56b1: $f1
    ld a, [bc]                                    ; $56b2: $0a
    ld [$ea01], a                                 ; $56b3: $ea $01 $ea
    ld a, [$feec]                                 ; $56b6: $fa $ec $fe
    ld a, [$02fc]                                 ; $56b9: $fa $fc $02
    inc de                                        ; $56bc: $13
    add h                                         ; $56bd: $84
    dec a                                         ; $56be: $3d
    ccf                                           ; $56bf: $3f
    rst $08                                       ; $56c0: $cf
    rst $38                                       ; $56c1: $ff
    ld [bc], a                                    ; $56c2: $02
    ld a, a                                       ; $56c3: $7f
    adc [hl]                                      ; $56c4: $8e
    ld a, $2f                                     ; $56c5: $3e $2f
    ld a, a                                       ; $56c7: $7f
    ld d, e                                       ; $56c8: $53
    dec sp                                        ; $56c9: $3b
    cpl                                           ; $56ca: $2f
    ld a, a                                       ; $56cb: $7f
    ld l, c                                       ; $56cc: $69
    ld a, a                                       ; $56cd: $7f
    ld e, d                                       ; $56ce: $5a
    ccf                                           ; $56cf: $3f
    ld hl, $131f                                  ; $56d0: $21 $1f $13
    ld [bc], a                                    ; $56d3: $02
    ld c, $02                                     ; $56d4: $0e $02
    ld [$0902], sp                                ; $56d6: $08 $02 $09
    ld [bc], a                                    ; $56d9: $02
    ld [$1902], sp                                ; $56da: $08 $02 $19
    ld [bc], a                                    ; $56dd: $02
    inc c                                         ; $56de: $0c
    add d                                         ; $56df: $82
    inc b                                         ; $56e0: $04
    inc c                                         ; $56e1: $0c
    inc b                                         ; $56e2: $04
    ld c, $04                                     ; $56e3: $0e $04
    inc c                                         ; $56e5: $0c
    inc b                                         ; $56e6: $04
    ld [$0002], sp                                ; $56e7: $08 $02 $00
    ld [bc], a                                    ; $56ea: $02
    inc c                                         ; $56eb: $0c
    ld [bc], a                                    ; $56ec: $02
    ld [bc], a                                    ; $56ed: $02
    ld [bc], a                                    ; $56ee: $02
    rlca                                          ; $56ef: $07
    adc b                                         ; $56f0: $88
    rrca                                          ; $56f1: $0f
    dec c                                         ; $56f2: $0d
    ld c, $0a                                     ; $56f3: $0e $0a
    cp [hl]                                       ; $56f5: $be
    and [hl]                                      ; $56f6: $a6
    cp [hl]                                       ; $56f7: $be
    xor [hl]                                      ; $56f8: $ae
    ld [bc], a                                    ; $56f9: $02
    ld b, b                                       ; $56fa: $40
    add d                                         ; $56fb: $82
    ret nz                                        ; $56fc: $c0

    add b                                         ; $56fd: $80
    ld [bc], a                                    ; $56fe: $02
    ld a, e                                       ; $56ff: $7b
    ld [bc], a                                    ; $5700: $02
    ld d, $02                                     ; $5701: $16 $02
    ld sp, $3f02                                  ; $5703: $31 $02 $3f
    add d                                         ; $5706: $82
    ld h, e                                       ; $5707: $63
    ld a, a                                       ; $5708: $7f
    ld [bc], a                                    ; $5709: $02
    ccf                                           ; $570a: $3f
    stop                                          ; $570b: $10 $00
    rst $38                                       ; $570d: $ff
    rlca                                          ; $570e: $07
    ld bc, $0af1                                  ; $570f: $01 $f1 $0a
    ld [$f501], a                                 ; $5712: $ea $01 $f5
    ei                                            ; $5715: $fb
    adc e                                         ; $5716: $8b
    ld [bc], a                                    ; $5717: $02
    nop                                           ; $5718: $00
    rrca                                          ; $5719: $0f
    nop                                           ; $571a: $00
    dec c                                         ; $571b: $0d
    nop                                           ; $571c: $00
    ld [$0c00], sp                                ; $571d: $08 $00 $0c
    nop                                           ; $5720: $00
    ld [$0004], sp                                ; $5721: $08 $04 $00
    add l                                         ; $5724: $85
    ld b, $00                                     ; $5725: $06 $00
    inc b                                         ; $5727: $04
    nop                                           ; $5728: $00
    rlca                                          ; $5729: $07
    inc c                                         ; $572a: $0c
    nop                                           ; $572b: $00
    rst $38                                       ; $572c: $ff
    dec bc                                        ; $572d: $0b
    inc bc                                        ; $572e: $03
    pop af                                        ; $572f: $f1
    ld a, [bc]                                    ; $5730: $0a
    ld [$ea01], a                                 ; $5731: $ea $01 $ea
    ld a, [$fdec]                                 ; $5734: $fa $ec $fd
    ld a, [$02fc]                                 ; $5737: $fa $fc $02
    inc de                                        ; $573a: $13
    add h                                         ; $573b: $84
    dec a                                         ; $573c: $3d
    ccf                                           ; $573d: $3f
    rst $08                                       ; $573e: $cf
    rst $38                                       ; $573f: $ff
    ld [bc], a                                    ; $5740: $02
    ld a, a                                       ; $5741: $7f
    adc [hl]                                      ; $5742: $8e
    ld a, $2f                                     ; $5743: $3e $2f
    ld a, a                                       ; $5745: $7f
    ld d, e                                       ; $5746: $53
    dec sp                                        ; $5747: $3b
    cpl                                           ; $5748: $2f
    ld a, a                                       ; $5749: $7f
    ld l, c                                       ; $574a: $69
    ld a, a                                       ; $574b: $7f
    ld e, d                                       ; $574c: $5a
    ccf                                           ; $574d: $3f
    ld hl, $131f                                  ; $574e: $21 $1f $13
    ld [bc], a                                    ; $5751: $02
    ld c, $02                                     ; $5752: $0e $02
    ld [$0902], sp                                ; $5754: $08 $02 $09
    ld [bc], a                                    ; $5757: $02
    dec de                                        ; $5758: $1b
    ld [bc], a                                    ; $5759: $02
    add hl, de                                    ; $575a: $19
    ld [bc], a                                    ; $575b: $02
    ld b, $82                                     ; $575c: $06 $82
    ld [bc], a                                    ; $575e: $02
    ld b, $04                                     ; $575f: $06 $04
    rlca                                          ; $5761: $07
    inc b                                         ; $5762: $04
    ld b, $04                                     ; $5763: $06 $04
    inc b                                         ; $5765: $04
    ld [bc], a                                    ; $5766: $02
    nop                                           ; $5767: $00
    ld [bc], a                                    ; $5768: $02
    inc b                                         ; $5769: $04
    inc b                                         ; $576a: $04
    ld [bc], a                                    ; $576b: $02
    inc bc                                        ; $576c: $03
    ld b, $85                                     ; $576d: $06 $85
    ld [bc], a                                    ; $576f: $02
    rst $18                                       ; $5770: $df
    ld d, a                                       ; $5771: $57
    rst $38                                       ; $5772: $ff
    ld h, a                                       ; $5773: $67
    inc b                                         ; $5774: $04
    add b                                         ; $5775: $80
    ld [bc], a                                    ; $5776: $02
    ld d, e                                       ; $5777: $53
    ld [bc], a                                    ; $5778: $02
    ld d, $02                                     ; $5779: $16 $02
    ld sp, $3f02                                  ; $577b: $31 $02 $3f
    add d                                         ; $577e: $82
    ld h, e                                       ; $577f: $63
    ld a, a                                       ; $5780: $7f
    ld [bc], a                                    ; $5781: $02
    ccf                                           ; $5782: $3f
    stop                                          ; $5783: $10 $00
    rst $38                                       ; $5785: $ff
    rlca                                          ; $5786: $07
    ld bc, $0af1                                  ; $5787: $01 $f1 $0a
    ld [$f601], a                                 ; $578a: $ea $01 $f6
    ei                                            ; $578d: $fb
    sub d                                         ; $578e: $92
    ld c, $00                                     ; $578f: $0e $00
    dec de                                        ; $5791: $1b
    nop                                           ; $5792: $00
    ld a, [de]                                    ; $5793: $1a
    nop                                           ; $5794: $00
    inc e                                         ; $5795: $1c
    nop                                           ; $5796: $00
    jr jr_0ed_5799                                ; $5797: $18 $00

jr_0ed_5799:
    db $10                                        ; $5799: $10
    inc b                                         ; $579a: $04
    nop                                           ; $579b: $00
    ld [$2800], sp                                ; $579c: $08 $00 $28
    nop                                           ; $579f: $00
    ld b, $0e                                     ; $57a0: $06 $0e
    nop                                           ; $57a2: $00
    rst $38                                       ; $57a3: $ff
    dec c                                         ; $57a4: $0d
    inc b                                         ; $57a5: $04
    pop af                                        ; $57a6: $f1
    ld a, [bc]                                    ; $57a7: $0a
    ld [$eb01], a                                 ; $57a8: $ea $01 $eb
    ld sp, hl                                     ; $57ab: $f9
    db $ec                                        ; $57ac: $ec
    db $fd                                        ; $57ad: $fd
    ei                                            ; $57ae: $fb
    ld a, [$fdfb]                                 ; $57af: $fa $fb $fd
    ld [bc], a                                    ; $57b2: $02
    daa                                           ; $57b3: $27
    add e                                         ; $57b4: $83
    db $dd                                        ; $57b5: $dd
    rst $38                                       ; $57b6: $ff
    ld l, a                                       ; $57b7: $6f
    inc bc                                        ; $57b8: $03
    ld a, a                                       ; $57b9: $7f
    adc [hl]                                      ; $57ba: $8e
    ld a, $27                                     ; $57bb: $3e $27
    ld a, a                                       ; $57bd: $7f
    ld d, e                                       ; $57be: $53
    dec sp                                        ; $57bf: $3b
    cpl                                           ; $57c0: $2f
    ld a, a                                       ; $57c1: $7f
    ld l, c                                       ; $57c2: $69
    ld a, a                                       ; $57c3: $7f
    ld e, d                                       ; $57c4: $5a
    ccf                                           ; $57c5: $3f
    ld hl, $131f                                  ; $57c6: $21 $1f $13
    ld [bc], a                                    ; $57c9: $02
    inc c                                         ; $57ca: $0c
    ld [bc], a                                    ; $57cb: $02
    add hl, bc                                    ; $57cc: $09
    ld [bc], a                                    ; $57cd: $02
    add hl, de                                    ; $57ce: $19
    add h                                         ; $57cf: $84
    jr c, jr_0ed_57fa                             ; $57d0: $38 $28

    ld a, c                                       ; $57d2: $79
    ld e, c                                       ; $57d3: $59
    ld [bc], a                                    ; $57d4: $02
    ld [$0c02], sp                                ; $57d5: $08 $02 $0c
    add c                                         ; $57d8: $81
    ld b, $03                                     ; $57d9: $06 $03
    ld c, $06                                     ; $57db: $0e $06
    inc c                                         ; $57dd: $0c
    ld [bc], a                                    ; $57de: $02
    ld [$0002], sp                                ; $57df: $08 $02 $00
    ld [bc], a                                    ; $57e2: $02

jr_0ed_57e3:
    ld [$0402], sp                                ; $57e3: $08 $02 $04
    ld [bc], a                                    ; $57e6: $02
    ld [bc], a                                    ; $57e7: $02

jr_0ed_57e8:
    ld [bc], a                                    ; $57e8: $02
    ld b, $88                                     ; $57e9: $06 $88
    rrca                                          ; $57eb: $0f
    dec c                                         ; $57ec: $0d
    ld c, $02                                     ; $57ed: $0e $02
    xor h                                         ; $57ef: $ac
    and h                                         ; $57f0: $a4
    ldh [$a0], a                                  ; $57f1: $e0 $a0
    ld [bc], a                                    ; $57f3: $02
    ld e, e                                       ; $57f4: $5b
    ld [bc], a                                    ; $57f5: $02
    dec hl                                        ; $57f6: $2b
    add d                                         ; $57f7: $82
    ld e, h                                       ; $57f8: $5c
    ld a, h                                       ; $57f9: $7c

jr_0ed_57fa:
    ld [bc], a                                    ; $57fa: $02
    ld a, a                                       ; $57fb: $7f
    add d                                         ; $57fc: $82
    inc b                                         ; $57fd: $04
    rlca                                          ; $57fe: $07
    ld [bc], a                                    ; $57ff: $02
    rrca                                          ; $5800: $0f
    inc d                                         ; $5801: $14
    nop                                           ; $5802: $00
    inc b                                         ; $5803: $04
    inc b                                         ; $5804: $04
    ld [bc], a                                    ; $5805: $02
    ld b, $82                                     ; $5806: $06 $82
    inc bc                                        ; $5808: $03
    rlca                                          ; $5809: $07
    ld [bc], a                                    ; $580a: $02
    ld b, $02                                     ; $580b: $06 $02
    inc b                                         ; $580d: $04
    ld [de], a                                    ; $580e: $12
    nop                                           ; $580f: $00
    rst $38                                       ; $5810: $ff
    rlca                                          ; $5811: $07
    ld bc, $0af1                                  ; $5812: $01 $f1 $0a
    ld [$f501], a                                 ; $5815: $ea $01 $f5
    ld a, [$048b]                                 ; $5818: $fa $8b $04
    nop                                           ; $581b: $00
    ld a, [hl-]                                   ; $581c: $3a
    nop                                           ; $581d: $00
    dec de                                        ; $581e: $1b
    nop                                           ; $581f: $00
    inc e                                         ; $5820: $1c
    nop                                           ; $5821: $00
    inc a                                         ; $5822: $3c
    nop                                           ; $5823: $00
    ld a, $02                                     ; $5824: $3e $02
    nop                                           ; $5826: $00
    add a                                         ; $5827: $87
    inc c                                         ; $5828: $0c
    nop                                           ; $5829: $00
    inc d                                         ; $582a: $14
    nop                                           ; $582b: $00
    ld d, $00                                     ; $582c: $16 $00
    inc bc                                        ; $582e: $03
    inc c                                         ; $582f: $0c
    nop                                           ; $5830: $00
    rst $38                                       ; $5831: $ff
    dec c                                         ; $5832: $0d
    inc b                                         ; $5833: $04
    pop af                                        ; $5834: $f1
    ld a, [bc]                                    ; $5835: $0a
    ld [$ea01], a                                 ; $5836: $ea $01 $ea
    ld hl, sp-$14                                 ; $5839: $f8 $ec
    db $fd                                        ; $583b: $fd
    ld a, [$faf8]                                 ; $583c: $fa $f8 $fa
    db $fc                                        ; $583f: $fc
    ld [bc], a                                    ; $5840: $02
    inc de                                        ; $5841: $13
    add h                                         ; $5842: $84
    dec a                                         ; $5843: $3d
    ccf                                           ; $5844: $3f
    rst $08                                       ; $5845: $cf
    rst $38                                       ; $5846: $ff
    ld [bc], a                                    ; $5847: $02
    ld a, a                                       ; $5848: $7f
    adc [hl]                                      ; $5849: $8e
    ld a, $2f                                     ; $584a: $3e $2f
    ld a, a                                       ; $584c: $7f
    ld d, e                                       ; $584d: $53
    dec sp                                        ; $584e: $3b
    cpl                                           ; $584f: $2f
    ld a, a                                       ; $5850: $7f
    ld l, c                                       ; $5851: $69
    ld a, a                                       ; $5852: $7f
    ld e, d                                       ; $5853: $5a
    ccf                                           ; $5854: $3f
    ld hl, $233f                                  ; $5855: $21 $3f $23
    ld [bc], a                                    ; $5858: $02
    ld e, $02                                     ; $5859: $1e $02
    ld de, $1902                                  ; $585b: $11 $02 $19
    ld [bc], a                                    ; $585e: $02
    jr c, jr_0ed_57e3                             ; $585f: $38 $82

    ld [hl], b                                    ; $5861: $70
    ld d, b                                       ; $5862: $50
    ld [bc], a                                    ; $5863: $02
    jr jr_0ed_57e8                                ; $5864: $18 $82

    ld [$0418], sp                                ; $5866: $08 $18 $04
    inc e                                         ; $5869: $1c
    inc b                                         ; $586a: $04
    jr jr_0ed_586f                                ; $586b: $18 $02

    db $10                                        ; $586d: $10
    inc b                                         ; $586e: $04

jr_0ed_586f:
    nop                                           ; $586f: $00
    ld [bc], a                                    ; $5870: $02
    db $10                                        ; $5871: $10
    ld [bc], a                                    ; $5872: $02
    ld [$0402], sp                                ; $5873: $08 $02 $04
    adc h                                         ; $5876: $8c
    inc e                                         ; $5877: $1c
    inc d                                         ; $5878: $14
    ld e, $1a                                     ; $5879: $1e $1a
    rrca                                          ; $587b: $0f
    add hl, bc                                    ; $587c: $09
    sbc [hl]                                      ; $587d: $9e
    sbc d                                         ; $587e: $9a
    ldh a, [$90]                                  ; $587f: $f0 $90
    add sp, -$58                                  ; $5881: $e8 $a8
    ld [bc], a                                    ; $5883: $02
    ld c, d                                       ; $5884: $4a
    ld [bc], a                                    ; $5885: $02
    ld a, [bc]                                    ; $5886: $0a
    ld [bc], a                                    ; $5887: $02
    rra                                           ; $5888: $1f
    add d                                         ; $5889: $82
    cpl                                           ; $588a: $2f
    ccf                                           ; $588b: $3f
    ld [bc], a                                    ; $588c: $02
    rra                                           ; $588d: $1f
    ld [bc], a                                    ; $588e: $02
    ld bc, $0014                                  ; $588f: $01 $14 $00
    ld [bc], a                                    ; $5892: $02
    ld c, $02                                     ; $5893: $0e $02
    ld b, $02                                     ; $5895: $06 $02
    ld [bc], a                                    ; $5897: $02
    ld [bc], a                                    ; $5898: $02
    rrca                                          ; $5899: $0f
    add d                                         ; $589a: $82
    inc bc                                        ; $589b: $03
    rrca                                          ; $589c: $0f
    ld [bc], a                                    ; $589d: $02
    ld c, $10                                     ; $589e: $0e $10
    nop                                           ; $58a0: $00
    rst $38                                       ; $58a1: $ff
    rlca                                          ; $58a2: $07
    ld bc, $0af1                                  ; $58a3: $01 $f1 $0a
    ld [$f501], a                                 ; $58a6: $ea $01 $f5
    ld a, [$048b]                                 ; $58a9: $fa $8b $04
    nop                                           ; $58ac: $00
    ld e, $00                                     ; $58ad: $1e $00
    dec e                                         ; $58af: $1d
    nop                                           ; $58b0: $00
    inc a                                         ; $58b1: $3c
    nop                                           ; $58b2: $00
    ld a, $00                                     ; $58b3: $3e $00
    ld a, $02                                     ; $58b5: $3e $02
    nop                                           ; $58b7: $00
    add a                                         ; $58b8: $87
    inc d                                         ; $58b9: $14
    nop                                           ; $58ba: $00
    ld l, $00                                     ; $58bb: $2e $00
    ld h, $00                                     ; $58bd: $26 $00
    inc de                                        ; $58bf: $13
    inc c                                         ; $58c0: $0c
    nop                                           ; $58c1: $00
    rst $38                                       ; $58c2: $ff
    dec c                                         ; $58c3: $0d
    inc b                                         ; $58c4: $04
    pop af                                        ; $58c5: $f1
    ld a, [bc]                                    ; $58c6: $0a
    ld [$ea01], a                                 ; $58c7: $ea $01 $ea
    ld hl, sp-$15                                 ; $58ca: $f8 $eb
    rst $38                                       ; $58cc: $ff
    ld a, [$faf8]                                 ; $58cd: $fa $f8 $fa
    cp $02                                        ; $58d0: $fe $02
    rla                                           ; $58d2: $17
    add h                                         ; $58d3: $84
    dec e                                         ; $58d4: $1d
    rra                                           ; $58d5: $1f
    cpl                                           ; $58d6: $2f
    ccf                                           ; $58d7: $3f
    ld [bc], a                                    ; $58d8: $02
    ld a, a                                       ; $58d9: $7f
    adc [hl]                                      ; $58da: $8e
    ccf                                           ; $58db: $3f
    inc l                                         ; $58dc: $2c
    ccf                                           ; $58dd: $3f
    ld [hl], $3f                                  ; $58de: $36 $3f
    add hl, hl                                    ; $58e0: $29
    ccf                                           ; $58e1: $3f
    add hl, hl                                    ; $58e2: $29
    ccf                                           ; $58e3: $3f
    ld [hl], $3f                                  ; $58e4: $36 $3f
    jr c, jr_0ed_5907                             ; $58e6: $38 $1f

    ld de, $0e02                                  ; $58e8: $11 $02 $0e
    ld [bc], a                                    ; $58eb: $02
    ld [$1802], sp                                ; $58ec: $08 $02 $18
    ld [bc], a                                    ; $58ef: $02
    ld [hl], b                                    ; $58f0: $70
    add d                                         ; $58f1: $82
    ldh a, [$90]                                  ; $58f2: $f0 $90
    ld [bc], a                                    ; $58f4: $02
    ld h, b                                       ; $58f5: $60
    add h                                         ; $58f6: $84
    ld d, b                                       ; $58f7: $50
    ld [hl], b                                    ; $58f8: $70
    ld d, b                                       ; $58f9: $50
    ld [hl], b                                    ; $58fa: $70
    inc b                                         ; $58fb: $04
    ld a, b                                       ; $58fc: $78
    inc bc                                        ; $58fd: $03
    ld [hl], b                                    ; $58fe: $70
    add c                                         ; $58ff: $81
    db $10                                        ; $5900: $10
    ld [bc], a                                    ; $5901: $02
    ld h, b                                       ; $5902: $60
    inc b                                         ; $5903: $04
    ld b, b                                       ; $5904: $40
    ld [bc], a                                    ; $5905: $02
    ld h, b                                       ; $5906: $60

jr_0ed_5907:
    ld [bc], a                                    ; $5907: $02
    jr nz, jr_0ed_590c                            ; $5908: $20 $02

    ld d, b                                       ; $590a: $50
    adc b                                         ; $590b: $88

jr_0ed_590c:
    ld a, h                                       ; $590c: $7c
    ld l, h                                       ; $590d: $6c
    ld a, $32                                     ; $590e: $3e $32
    cpl                                           ; $5910: $2f
    add hl, hl                                    ; $5911: $29
    ldh a, [$d0]                                  ; $5912: $f0 $d0
    ld [bc], a                                    ; $5914: $02
    ld a, [hl-]                                   ; $5915: $3a
    ld [bc], a                                    ; $5916: $02
    inc d                                         ; $5917: $14
    ld [bc], a                                    ; $5918: $02
    ld d, $02                                     ; $5919: $16 $02
    dec de                                        ; $591b: $1b
    add d                                         ; $591c: $82
    cpl                                           ; $591d: $2f
    ccf                                           ; $591e: $3f
    ld [bc], a                                    ; $591f: $02
    rra                                           ; $5920: $1f
    ld [bc], a                                    ; $5921: $02
    ld bc, $0012                                  ; $5922: $01 $12 $00
    ld [bc], a                                    ; $5925: $02
    inc sp                                        ; $5926: $33
    inc b                                         ; $5927: $04
    db $10                                        ; $5928: $10
    ld [bc], a                                    ; $5929: $02
    ld [$3c02], sp                                ; $592a: $08 $02 $3c
    add d                                         ; $592d: $82
    inc c                                         ; $592e: $0c
    inc a                                         ; $592f: $3c
    ld [bc], a                                    ; $5930: $02
    jr c, jr_0ed_5943                             ; $5931: $38 $10

    nop                                           ; $5933: $00
    rst $38                                       ; $5934: $ff
    rlca                                          ; $5935: $07
    ld bc, $0af1                                  ; $5936: $01 $f1 $0a
    ld [$f501], a                                 ; $5939: $ea $01 $f5
    ei                                            ; $593c: $fb
    adc e                                         ; $593d: $8b
    inc b                                         ; $593e: $04
    nop                                           ; $593f: $00
    ccf                                           ; $5940: $3f
    nop                                           ; $5941: $00
    ld a, c                                       ; $5942: $79

jr_0ed_5943:
    nop                                           ; $5943: $00
    ld a, b                                       ; $5944: $78
    nop                                           ; $5945: $00
    ld a, h                                       ; $5946: $7c
    nop                                           ; $5947: $00
    ld a, h                                       ; $5948: $7c
    ld [bc], a                                    ; $5949: $02
    nop                                           ; $594a: $00
    add a                                         ; $594b: $87
    jr z, jr_0ed_594e                             ; $594c: $28 $00

jr_0ed_594e:
    ld e, h                                       ; $594e: $5c
    nop                                           ; $594f: $00
    ld c, h                                       ; $5950: $4c
    nop                                           ; $5951: $00
    ld h, $0c                                     ; $5952: $26 $0c
    nop                                           ; $5954: $00
    rst $38                                       ; $5955: $ff
    dec c                                         ; $5956: $0d
    inc b                                         ; $5957: $04
    pop af                                        ; $5958: $f1
    ld a, [bc]                                    ; $5959: $0a
    ld [$ea01], a                                 ; $595a: $ea $01 $ea
    ld sp, hl                                     ; $595d: $f9
    db $eb                                        ; $595e: $eb
    nop                                           ; $595f: $00
    ld a, [$fafa]                                 ; $5960: $fa $fa $fa
    db $fc                                        ; $5963: $fc
    ld [bc], a                                    ; $5964: $02
    rla                                           ; $5965: $17
    add h                                         ; $5966: $84
    dec e                                         ; $5967: $1d
    rra                                           ; $5968: $1f
    cpl                                           ; $5969: $2f
    ccf                                           ; $596a: $3f
    ld [bc], a                                    ; $596b: $02
    ld a, a                                       ; $596c: $7f
    adc [hl]                                      ; $596d: $8e
    ccf                                           ; $596e: $3f
    inc l                                         ; $596f: $2c
    ccf                                           ; $5970: $3f
    ld [hl], $3f                                  ; $5971: $36 $3f
    add hl, hl                                    ; $5973: $29
    ccf                                           ; $5974: $3f
    add hl, hl                                    ; $5975: $29
    ccf                                           ; $5976: $3f
    ld [hl], $3f                                  ; $5977: $36 $3f
    jr c, jr_0ed_599a                             ; $5979: $38 $1f

    ld de, $1e02                                  ; $597b: $11 $02 $1e
    ld [bc], a                                    ; $597e: $02
    jr nc, jr_0ed_5983                            ; $597f: $30 $02

    ld h, c                                       ; $5981: $61
    add d                                         ; $5982: $82

jr_0ed_5983:
    pop hl                                        ; $5983: $e1
    and c                                         ; $5984: $a1
    inc b                                         ; $5985: $04
    ld h, b                                       ; $5986: $60
    add h                                         ; $5987: $84
    ld d, b                                       ; $5988: $50
    ld [hl], b                                    ; $5989: $70
    ld d, b                                       ; $598a: $50
    ld [hl], b                                    ; $598b: $70
    inc b                                         ; $598c: $04
    ld a, b                                       ; $598d: $78
    inc bc                                        ; $598e: $03
    ld [hl], b                                    ; $598f: $70
    add c                                         ; $5990: $81
    db $10                                        ; $5991: $10
    ld [bc], a                                    ; $5992: $02
    ld h, d                                       ; $5993: $62
    adc b                                         ; $5994: $88
    ld b, a                                       ; $5995: $47
    ld b, l                                       ; $5996: $45
    ld c, a                                       ; $5997: $4f
    ld c, c                                       ; $5998: $49
    ld a, [hl]                                    ; $5999: $7e

jr_0ed_599a:
    halt                                          ; $599a: $76
    jr jr_0ed_59a5                                ; $599b: $18 $08

    ld [bc], a                                    ; $599d: $02
    ld d, b                                       ; $599e: $50
    ld [bc], a                                    ; $599f: $02
    ld h, b                                       ; $59a0: $60
    ld b, $40                                     ; $59a1: $06 $40
    ld [bc], a                                    ; $59a3: $02
    ld l, e                                       ; $59a4: $6b

jr_0ed_59a5:
    ld [bc], a                                    ; $59a5: $02
    ld d, c                                       ; $59a6: $51
    ld [bc], a                                    ; $59a7: $02
    ld e, c                                       ; $59a8: $59
    ld [bc], a                                    ; $59a9: $02
    ld l, h                                       ; $59aa: $6c
    add h                                         ; $59ab: $84
    cp a                                          ; $59ac: $bf
    rst $38                                       ; $59ad: $ff
    ld a, h                                       ; $59ae: $7c
    ld a, a                                       ; $59af: $7f
    ld [bc], a                                    ; $59b0: $02
    rlca                                          ; $59b1: $07
    jr jr_0ed_59b4                                ; $59b2: $18 $00

jr_0ed_59b4:
    ld [bc], a                                    ; $59b4: $02
    ld [bc], a                                    ; $59b5: $02
    inc b                                         ; $59b6: $04
    inc bc                                        ; $59b7: $03
    ld [bc], a                                    ; $59b8: $02
    ld [bc], a                                    ; $59b9: $02
    stop                                          ; $59ba: $10 $00
    rst $38                                       ; $59bc: $ff
    rlca                                          ; $59bd: $07
    ld bc, $0af1                                  ; $59be: $01 $f1 $0a
    ld [$f501], a                                 ; $59c1: $ea $01 $f5
    ld a, [$028b]                                 ; $59c4: $fa $8b $02
    nop                                           ; $59c7: $00
    ld a, [de]                                    ; $59c8: $1a
    nop                                           ; $59c9: $00
    inc a                                         ; $59ca: $3c
    nop                                           ; $59cb: $00
    inc a                                         ; $59cc: $3c
    nop                                           ; $59cd: $00
    ld a, $00                                     ; $59ce: $3e $00
    ld a, $02                                     ; $59d0: $3e $02
    nop                                           ; $59d2: $00
    add a                                         ; $59d3: $87
    inc d                                         ; $59d4: $14
    nop                                           ; $59d5: $00
    ld l, $00                                     ; $59d6: $2e $00
    daa                                           ; $59d8: $27
    nop                                           ; $59d9: $00
    ld [de], a                                    ; $59da: $12
    inc c                                         ; $59db: $0c
    nop                                           ; $59dc: $00
    rst $38                                       ; $59dd: $ff
    dec c                                         ; $59de: $0d
    inc b                                         ; $59df: $04
    pop af                                        ; $59e0: $f1
    ld a, [bc]                                    ; $59e1: $0a
    ld [$ea01], a                                 ; $59e2: $ea $01 $ea
    ld sp, hl                                     ; $59e5: $f9
    db $ec                                        ; $59e6: $ec
    db $fc                                        ; $59e7: $fc
    ld a, [$fafa]                                 ; $59e8: $fa $fa $fa
    db $fc                                        ; $59eb: $fc
    ld [bc], a                                    ; $59ec: $02
    ld d, $94                                     ; $59ed: $16 $94
    ld a, [$9ffe]                                 ; $59ef: $fa $fe $9f
    rst $38                                       ; $59f2: $ff

Call_0ed_59f3:
    ld a, [hl]                                    ; $59f3: $7e
    ld a, a                                       ; $59f4: $7f
    ld a, l                                       ; $59f5: $7d
    ld e, a                                       ; $59f6: $5f
    rst $38                                       ; $59f7: $ff
    and a                                         ; $59f8: $a7
    ld [hl], a                                    ; $59f9: $77
    ld e, a                                       ; $59fa: $5f
    rst $38                                       ; $59fb: $ff
    db $d3                                        ; $59fc: $d3
    rst $38                                       ; $59fd: $ff
    or l                                          ; $59fe: $b5
    ld a, a                                       ; $59ff: $7f
    ld b, e                                       ; $5a00: $43
    ccf                                           ; $5a01: $3f
    daa                                           ; $5a02: $27
    ld [bc], a                                    ; $5a03: $02
    ld e, $02                                     ; $5a04: $1e $02
    ld [hl-], a                                   ; $5a06: $32
    ld [bc], a                                    ; $5a07: $02
    ld hl, $6102                                  ; $5a08: $21 $02 $61
    ld [bc], a                                    ; $5a0b: $02
    ld h, b                                       ; $5a0c: $60
    inc b                                         ; $5a0d: $04
    inc b                                         ; $5a0e: $04
    ld [bc], a                                    ; $5a0f: $02
    ld b, $8c                                     ; $5a10: $06 $8c
    rlca                                          ; $5a12: $07
    ld bc, $0107                                  ; $5a13: $01 $07 $01
    ld b, $02                                     ; $5a16: $06 $02
    ld b, $02                                     ; $5a18: $06 $02
    ld b, $02                                     ; $5a1a: $06 $02
    ld b, $02                                     ; $5a1c: $06 $02
    ld [bc], a                                    ; $5a1e: $02
    ld b, $04                                     ; $5a1f: $06 $04
    inc b                                         ; $5a21: $04
    ld [bc], a                                    ; $5a22: $02
    nop                                           ; $5a23: $00
    inc b                                         ; $5a24: $04
    inc b                                         ; $5a25: $04
    ld [bc], a                                    ; $5a26: $02
    xor h                                         ; $5a27: $ac
    inc b                                         ; $5a28: $04
    ld b, b                                       ; $5a29: $40
    ld [bc], a                                    ; $5a2a: $02
    ld d, c                                       ; $5a2b: $51
    ld [bc], a                                    ; $5a2c: $02
    ld e, b                                       ; $5a2d: $58
    ld [bc], a                                    ; $5a2e: $02
    ld l, l                                       ; $5a2f: $6d
    add h                                         ; $5a30: $84
    cp a                                          ; $5a31: $bf
    rst $38                                       ; $5a32: $ff
    ld a, h                                       ; $5a33: $7c
    ld a, a                                       ; $5a34: $7f
    ld [bc], a                                    ; $5a35: $02
    rlca                                          ; $5a36: $07
    ld d, $00                                     ; $5a37: $16 $00
    ld [bc], a                                    ; $5a39: $02
    ld [bc], a                                    ; $5a3a: $02
    inc b                                         ; $5a3b: $04
    inc bc                                        ; $5a3c: $03
    inc b                                         ; $5a3d: $04
    ld [bc], a                                    ; $5a3e: $02
    stop                                          ; $5a3f: $10 $00
    rst $38                                       ; $5a41: $ff
    rlca                                          ; $5a42: $07
    ld bc, $0af1                                  ; $5a43: $01 $f1 $0a
    ld [$f401], a                                 ; $5a46: $ea $01 $f4
    ld sp, hl                                     ; $5a49: $f9
    adc l                                         ; $5a4a: $8d
    inc c                                         ; $5a4b: $0c
    nop                                           ; $5a4c: $00
    ld b, $00                                     ; $5a4d: $06 $00
    ld [$0e00], sp                                ; $5a4f: $08 $00 $0e
    nop                                           ; $5a52: $00
    rra                                           ; $5a53: $1f
    nop                                           ; $5a54: $00
    rra                                           ; $5a55: $1f
    nop                                           ; $5a56: $00
    ld e, $02                                     ; $5a57: $1e $02
    nop                                           ; $5a59: $00
    add a                                         ; $5a5a: $87
    ld a, [bc]                                    ; $5a5b: $0a
    nop                                           ; $5a5c: $00
    ld d, $00                                     ; $5a5d: $16 $00
    rla                                           ; $5a5f: $17
    nop                                           ; $5a60: $00
    inc bc                                        ; $5a61: $03
    ld a, [bc]                                    ; $5a62: $0a
    nop                                           ; $5a63: $00
    rst $38                                       ; $5a64: $ff
    dec c                                         ; $5a65: $0d
    inc b                                         ; $5a66: $04
    pop af                                        ; $5a67: $f1
    ld a, [bc]                                    ; $5a68: $0a
    ld [$ea01], a                                 ; $5a69: $ea $01 $ea
    rst $30                                       ; $5a6c: $f7
    db $ec                                        ; $5a6d: $ec
    ld a, [$fafa]                                 ; $5a6e: $fa $fa $fa
    ld a, [$02fb]                                 ; $5a71: $fa $fb $02
    inc de                                        ; $5a74: $13
    add h                                         ; $5a75: $84
    dec a                                         ; $5a76: $3d
    ccf                                           ; $5a77: $3f
    rst $08                                       ; $5a78: $cf
    rst $38                                       ; $5a79: $ff
    ld [bc], a                                    ; $5a7a: $02
    ld a, a                                       ; $5a7b: $7f
    adc h                                         ; $5a7c: $8c
    ld a, $3f                                     ; $5a7d: $3e $3f
    ld a, a                                       ; $5a7f: $7f
    ld d, e                                       ; $5a80: $53
    ld a, e                                       ; $5a81: $7b
    ld c, a                                       ; $5a82: $4f
    ld a, a                                       ; $5a83: $7f
    ld l, c                                       ; $5a84: $69
    ccf                                           ; $5a85: $3f
    ld [hl], $3f                                  ; $5a86: $36 $3f
    dec sp                                        ; $5a88: $3b
    ld [bc], a                                    ; $5a89: $02
    inc e                                         ; $5a8a: $1c
    ld [bc], a                                    ; $5a8b: $02
    ld b, $02                                     ; $5a8c: $06 $02
    dec c                                         ; $5a8e: $0d
    ld [bc], a                                    ; $5a8f: $02
    inc c                                         ; $5a90: $0c
    inc b                                         ; $5a91: $04
    ld [$0602], sp                                ; $5a92: $08 $02 $06
    add d                                         ; $5a95: $82

jr_0ed_5a96:
    ld [bc], a                                    ; $5a96: $02
    ld b, $04                                     ; $5a97: $06 $04
    rlca                                          ; $5a99: $07
    inc b                                         ; $5a9a: $04
    ld b, $06                                     ; $5a9b: $06 $06
    inc b                                         ; $5a9d: $04
    ld [bc], a                                    ; $5a9e: $02
    ld [bc], a                                    ; $5a9f: $02
    ld [bc], a                                    ; $5aa0: $02
    ld b, $02                                     ; $5aa1: $06 $02
    inc bc                                        ; $5aa3: $03
    inc b                                         ; $5aa4: $04
    ld bc, $4302                                  ; $5aa5: $01 $02 $43
    ld [bc], a                                    ; $5aa8: $02
    ld l, e                                       ; $5aa9: $6b
    inc b                                         ; $5aaa: $04
    nop                                           ; $5aab: $00
    ld [bc], a                                    ; $5aac: $02
    ld d, e                                       ; $5aad: $53
    ld [bc], a                                    ; $5aae: $02
    ld d, c                                       ; $5aaf: $51
    ld [bc], a                                    ; $5ab0: $02
    ld a, c                                       ; $5ab1: $79
    add h                                         ; $5ab2: $84
    cp a                                          ; $5ab3: $bf
    rst $38                                       ; $5ab4: $ff
    ld a, c                                       ; $5ab5: $79
    ld a, a                                       ; $5ab6: $7f
    ld [bc], a                                    ; $5ab7: $02
    rlca                                          ; $5ab8: $07
    jr jr_0ed_5abb                                ; $5ab9: $18 $00

jr_0ed_5abb:
    inc b                                         ; $5abb: $04
    ld bc, $0014                                  ; $5abc: $01 $14 $00
    rst $38                                       ; $5abf: $ff
    rlca                                          ; $5ac0: $07
    ld bc, $0af1                                  ; $5ac1: $01 $f1 $0a
    ld [$f501], a                                 ; $5ac4: $ea $01 $f5
    ld sp, hl                                     ; $5ac7: $f9
    adc e                                         ; $5ac8: $8b
    inc b                                         ; $5ac9: $04
    nop                                           ; $5aca: $00
    ld e, $00                                     ; $5acb: $1e $00
    ld [de], a                                    ; $5acd: $12
    nop                                           ; $5ace: $00
    ld b, $00                                     ; $5acf: $06 $00
    rra                                           ; $5ad1: $1f
    nop                                           ; $5ad2: $00
    inc e                                         ; $5ad3: $1c
    ld [bc], a                                    ; $5ad4: $02
    nop                                           ; $5ad5: $00
    add a                                         ; $5ad6: $87
    ld a, [bc]                                    ; $5ad7: $0a
    nop                                           ; $5ad8: $00
    ld d, $00                                     ; $5ad9: $16 $00
    ld d, $00                                     ; $5adb: $16 $00
    inc bc                                        ; $5add: $03
    inc c                                         ; $5ade: $0c
    nop                                           ; $5adf: $00
    rst $38                                       ; $5ae0: $ff
    dec c                                         ; $5ae1: $0d
    inc b                                         ; $5ae2: $04
    pop af                                        ; $5ae3: $f1
    ld a, [bc]                                    ; $5ae4: $0a
    ld [$eb01], a                                 ; $5ae5: $ea $01 $eb
    di                                            ; $5ae8: $f3
    db $eb                                        ; $5ae9: $eb
    ei                                            ; $5aea: $fb
    ei                                            ; $5aeb: $fb
    ld a, [$fbfb]                                 ; $5aec: $fa $fb $fb
    ld [bc], a                                    ; $5aef: $02
    ld bc, $0302                                  ; $5af0: $01 $02 $03
    add d                                         ; $5af3: $82
    inc c                                         ; $5af4: $0c
    rrca                                          ; $5af5: $0f
    ld [bc], a                                    ; $5af6: $02
    rlca                                          ; $5af7: $07
    sub h                                         ; $5af8: $94
    inc bc                                        ; $5af9: $03
    ld [bc], a                                    ; $5afa: $02
    rlca                                          ; $5afb: $07
    dec b                                         ; $5afc: $05
    inc bc                                        ; $5afd: $03
    ld [bc], a                                    ; $5afe: $02
    rlca                                          ; $5aff: $07
    ld b, $07                                     ; $5b00: $06 $07
    dec b                                         ; $5b02: $05
    ld h, e                                       ; $5b03: $63
    ld h, d                                       ; $5b04: $62
    pop af                                        ; $5b05: $f1
    sub c                                         ; $5b06: $91
    rst $38                                       ; $5b07: $ff
    cp a                                          ; $5b08: $bf
    ld a, a                                       ; $5b09: $7f
    ld b, b                                       ; $5b0a: $40
    ccf                                           ; $5b0b: $3f
    daa                                           ; $5b0c: $27
    ld [bc], a                                    ; $5b0d: $02
    jr jr_0ed_5b12                                ; $5b0e: $18 $02

    nop                                           ; $5b10: $00
    ld [bc], a                                    ; $5b11: $02

jr_0ed_5b12:
    jr nc, jr_0ed_5a96                            ; $5b12: $30 $82

    ret nc                                        ; $5b14: $d0

    ldh a, [rSC]                                  ; $5b15: $f0 $02
    db $fc                                        ; $5b17: $fc
    add e                                         ; $5b18: $83
    db $f4                                        ; $5b19: $f4
    db $fc                                        ; $5b1a: $fc
    xor $02                                       ; $5b1b: $ee $02
    cp $82                                        ; $5b1d: $fe $82
    ld a, $bc                                     ; $5b1f: $3e $bc
    ld [bc], a                                    ; $5b21: $02
    db $fc                                        ; $5b22: $fc
    add a                                         ; $5b23: $87
    sbc h                                         ; $5b24: $9c
    ld hl, sp-$58                                 ; $5b25: $f8 $a8
    ldh a, [rNR10]                                ; $5b27: $f0 $10
    add sp, $68                                   ; $5b29: $e8 $68
    ld [bc], a                                    ; $5b2b: $02
    add h                                         ; $5b2c: $84
    ld [bc], a                                    ; $5b2d: $02
    or [hl]                                       ; $5b2e: $b6
    add d                                         ; $5b2f: $82
    rst $20                                       ; $5b30: $e7
    push hl                                       ; $5b31: $e5
    ld [bc], a                                    ; $5b32: $02
    add e                                         ; $5b33: $83
    ld [bc], a                                    ; $5b34: $02
    adc [hl]                                      ; $5b35: $8e
    ld [bc], a                                    ; $5b36: $02
    ld l, e                                       ; $5b37: $6b
    ld [bc], a                                    ; $5b38: $02
    ld d, d                                       ; $5b39: $52
    ld [bc], a                                    ; $5b3a: $02
    ld d, e                                       ; $5b3b: $53
    ld [bc], a                                    ; $5b3c: $02
    ld a, c                                       ; $5b3d: $79
    add h                                         ; $5b3e: $84
    cp a                                          ; $5b3f: $bf
    rst $38                                       ; $5b40: $ff
    ld a, c                                       ; $5b41: $79
    ld a, a                                       ; $5b42: $7f
    ld [bc], a                                    ; $5b43: $02
    rlca                                          ; $5b44: $07
    jr jr_0ed_5b47                                ; $5b45: $18 $00

jr_0ed_5b47:
    inc b                                         ; $5b47: $04
    ld bc, $0016                                  ; $5b48: $01 $16 $00
    rst $38                                       ; $5b4b: $ff
    rlca                                          ; $5b4c: $07
    ld bc, $0af1                                  ; $5b4d: $01 $f1 $0a
    ld [$f601], a                                 ; $5b50: $ea $01 $f6
    ld a, [$028b]                                 ; $5b53: $fa $8b $02
    nop                                           ; $5b56: $00
    ld b, $00                                     ; $5b57: $06 $00
    inc d                                         ; $5b59: $14
    nop                                           ; $5b5a: $00
    ld [bc], a                                    ; $5b5b: $02
    nop                                           ; $5b5c: $00
    rlca                                          ; $5b5d: $07
    nop                                           ; $5b5e: $00
    inc c                                         ; $5b5f: $0c
    ld [bc], a                                    ; $5b60: $02
    nop                                           ; $5b61: $00
    add l                                         ; $5b62: $85
    ld b, $00                                     ; $5b63: $06 $00
    ld d, $00                                     ; $5b65: $16 $00
    inc bc                                        ; $5b67: $03
    ld c, $00                                     ; $5b68: $0e $00
    rst $38                                       ; $5b6a: $ff
    rrca                                          ; $5b6b: $0f
    dec b                                         ; $5b6c: $05
    pop af                                        ; $5b6d: $f1
    ld a, [bc]                                    ; $5b6e: $0a
    ld [$f601], a                                 ; $5b6f: $ea $01 $f6
    ldh a, [$ec]                                  ; $5b72: $f0 $ec
    ld hl, sp-$12                                 ; $5b74: $f8 $ee
    ei                                            ; $5b76: $fb
    db $fc                                        ; $5b77: $fc
    ld hl, sp-$04                                 ; $5b78: $f8 $fc
    db $fc                                        ; $5b7a: $fc
    ld [bc], a                                    ; $5b7b: $02
    ld h, b                                       ; $5b7c: $60
    adc h                                         ; $5b7d: $8c
    ldh a, [$90]                                  ; $5b7e: $f0 $90
    ld hl, sp-$68                                 ; $5b80: $f8 $98
    ld a, h                                       ; $5b82: $7c
    ld h, h                                       ; $5b83: $64
    inc a                                         ; $5b84: $3c
    inc h                                         ; $5b85: $24
    ld e, $1a                                     ; $5b86: $1e $1a
    rra                                           ; $5b88: $1f
    inc de                                        ; $5b89: $13
    ld [bc], a                                    ; $5b8a: $02
    inc c                                         ; $5b8b: $0c
    stop                                          ; $5b8c: $10 $00
    ld [bc], a                                    ; $5b8e: $02
    inc de                                        ; $5b8f: $13
    add h                                         ; $5b90: $84
    dec a                                         ; $5b91: $3d
    ccf                                           ; $5b92: $3f
    rst $08                                       ; $5b93: $cf
    rst $38                                       ; $5b94: $ff
    ld [bc], a                                    ; $5b95: $02
    ld a, a                                       ; $5b96: $7f
    adc [hl]                                      ; $5b97: $8e
    ld a, $2f                                     ; $5b98: $3e $2f
    ld a, a                                       ; $5b9a: $7f
    ld d, e                                       ; $5b9b: $53
    dec sp                                        ; $5b9c: $3b
    cpl                                           ; $5b9d: $2f
    ld a, a                                       ; $5b9e: $7f
    ld l, c                                       ; $5b9f: $69
    ld a, a                                       ; $5ba0: $7f
    ld e, d                                       ; $5ba1: $5a
    ccf                                           ; $5ba2: $3f
    ld hl, $131f                                  ; $5ba3: $21 $1f $13
    ld [bc], a                                    ; $5ba6: $02

jr_0ed_5ba7:
    ld c, $02                                     ; $5ba7: $0e $02
    ld a, [bc]                                    ; $5ba9: $0a
    add [hl]                                      ; $5baa: $86
    ld c, a                                       ; $5bab: $4f
    ld c, l                                       ; $5bac: $4d
    cp $ba                                        ; $5bad: $fe $ba
    db $fc                                        ; $5baf: $fc
    call nz, $0602                                ; $5bb0: $c4 $02 $06
    add d                                         ; $5bb3: $82
    ld [bc], a                                    ; $5bb4: $02
    ld b, $04                                     ; $5bb5: $06 $04
    rlca                                          ; $5bb7: $07
    inc b                                         ; $5bb8: $04
    ld b, $04                                     ; $5bb9: $06 $04
    inc b                                         ; $5bbb: $04
    inc b                                         ; $5bbc: $04
    ld [bc], a                                    ; $5bbd: $02
    ld [bc], a                                    ; $5bbe: $02
    ld b, $02                                     ; $5bbf: $06 $02
    ld [bc], a                                    ; $5bc1: $02
    ld [bc], a                                    ; $5bc2: $02
    ld bc, $0602                                  ; $5bc3: $01 $02 $06
    ld [bc], a                                    ; $5bc6: $02
    ld a, [c]                                     ; $5bc7: $f2
    ld [bc], a                                    ; $5bc8: $02
    ld d, d                                       ; $5bc9: $52
    add h                                         ; $5bca: $84
    ldh [rP1], a                                  ; $5bcb: $e0 $00
    ldh [$a0], a                                  ; $5bcd: $e0 $a0
    ld [bc], a                                    ; $5bcf: $02
    ld e, a                                       ; $5bd0: $5f
    add h                                         ; $5bd1: $84
    cpl                                           ; $5bd2: $2f
    ccf                                           ; $5bd3: $3f
    ld e, $1f                                     ; $5bd4: $1e $1f
    ld [bc], a                                    ; $5bd6: $02
    ld bc, $0018                                  ; $5bd7: $01 $18 $00
    ld [bc], a                                    ; $5bda: $02
    ld [bc], a                                    ; $5bdb: $02
    ld [bc], a                                    ; $5bdc: $02
    rrca                                          ; $5bdd: $0f
    add d                                         ; $5bde: $82
    inc bc                                        ; $5bdf: $03
    rrca                                          ; $5be0: $0f
    ld [bc], a                                    ; $5be1: $02
    ld c, $14                                     ; $5be2: $0e $14
    nop                                           ; $5be4: $00
    rst $38                                       ; $5be5: $ff
    rlca                                          ; $5be6: $07
    ld bc, $0af1                                  ; $5be7: $01 $f1 $0a
    ld [$f501], a                                 ; $5bea: $ea $01 $f5
    ei                                            ; $5bed: $fb
    adc l                                         ; $5bee: $8d
    ld [bc], a                                    ; $5bef: $02
    nop                                           ; $5bf0: $00
    ld b, $00                                     ; $5bf1: $06 $00
    ld a, [bc]                                    ; $5bf3: $0a
    nop                                           ; $5bf4: $00
    ld d, $00                                     ; $5bf5: $16 $00
    dec d                                         ; $5bf7: $15
    nop                                           ; $5bf8: $00
    inc bc                                        ; $5bf9: $03
    nop                                           ; $5bfa: $00
    rlca                                          ; $5bfb: $07
    ld [bc], a                                    ; $5bfc: $02
    nop                                           ; $5bfd: $00
    add l                                         ; $5bfe: $85
    ld [bc], a                                    ; $5bff: $02
    nop                                           ; $5c00: $00
    ld b, $00                                     ; $5c01: $06 $00
    inc de                                        ; $5c03: $13
    inc c                                         ; $5c04: $0c
    nop                                           ; $5c05: $00
    rst $38                                       ; $5c06: $ff
    rrca                                          ; $5c07: $0f
    dec b                                         ; $5c08: $05
    pop af                                        ; $5c09: $f1
    ld a, [bc]                                    ; $5c0a: $0a
    ld [$f701], a                                 ; $5c0b: $ea $01 $f7
    xor $eb                                       ; $5c0e: $ee $eb
    ld a, [$fded]                                 ; $5c10: $fa $ed $fd
    ei                                            ; $5c13: $fb
    or $fb                                        ; $5c14: $f6 $fb
    db $fc                                        ; $5c16: $fc
    ld [bc], a                                    ; $5c17: $02
    ld b, b                                       ; $5c18: $40
    add h                                         ; $5c19: $84
    ldh [$a0], a                                  ; $5c1a: $e0 $a0
    ld [hl], b                                    ; $5c1c: $70
    ld d, b                                       ; $5c1d: $50
    ld [bc], a                                    ; $5c1e: $02
    jr c, jr_0ed_5ba7                             ; $5c1f: $38 $86

    inc a                                         ; $5c21: $3c
    inc h                                         ; $5c22: $24
    dec a                                         ; $5c23: $3d
    dec h                                         ; $5c24: $25
    rra                                           ; $5c25: $1f
    ld e, $02                                     ; $5c26: $1e $02
    ld bc, $0010                                  ; $5c28: $01 $10 $00
    ld [bc], a                                    ; $5c2b: $02
    inc de                                        ; $5c2c: $13
    add h                                         ; $5c2d: $84
    dec a                                         ; $5c2e: $3d
    ccf                                           ; $5c2f: $3f
    rst $08                                       ; $5c30: $cf
    rst $38                                       ; $5c31: $ff
    ld [bc], a                                    ; $5c32: $02
    ld a, a                                       ; $5c33: $7f
    adc [hl]                                      ; $5c34: $8e
    ld a, $2f                                     ; $5c35: $3e $2f
    ld a, a                                       ; $5c37: $7f
    ld d, e                                       ; $5c38: $53
    dec sp                                        ; $5c39: $3b
    cpl                                           ; $5c3a: $2f
    ld a, a                                       ; $5c3b: $7f
    ld l, c                                       ; $5c3c: $69
    ld a, a                                       ; $5c3d: $7f
    ld e, d                                       ; $5c3e: $5a
    ccf                                           ; $5c3f: $3f
    ld hl, $121e                                  ; $5c40: $21 $1e $12
    ld [bc], a                                    ; $5c43: $02
    inc c                                         ; $5c44: $0c
    ld [bc], a                                    ; $5c45: $02
    ld a, [bc]                                    ; $5c46: $0a
    ld [bc], a                                    ; $5c47: $02
    inc d                                         ; $5c48: $14
    ld [bc], a                                    ; $5c49: $02
    dec d                                         ; $5c4a: $15
    add d                                         ; $5c4b: $82
    ld e, $1a                                     ; $5c4c: $1e $1a
    ld [bc], a                                    ; $5c4e: $02
    ld b, $82                                     ; $5c4f: $06 $82
    ld [bc], a                                    ; $5c51: $02
    ld b, $04                                     ; $5c52: $06 $04
    rlca                                          ; $5c54: $07
    inc b                                         ; $5c55: $04
    ld b, $02                                     ; $5c56: $06 $02
    inc b                                         ; $5c58: $04
    ld [bc], a                                    ; $5c59: $02
    nop                                           ; $5c5a: $00
    ld [$0404], sp                                ; $5c5b: $08 $04 $04
    ld [bc], a                                    ; $5c5e: $02
    add h                                         ; $5c5f: $84
    ld [c], a                                     ; $5c60: $e2
    and d                                         ; $5c61: $a2
    or $36                                        ; $5c62: $f6 $36
    ld [bc], a                                    ; $5c64: $02
    nop                                           ; $5c65: $00
    ld [bc], a                                    ; $5c66: $02
    ld [bc], a                                    ; $5c67: $02
    add [hl]                                      ; $5c68: $86
    add e                                         ; $5c69: $83
    add d                                         ; $5c6a: $82
    jp $8543                                      ; $5c6b: $c3 $43 $85


    add a                                         ; $5c6e: $87
    ld [bc], a                                    ; $5c6f: $02
    inc bc                                        ; $5c70: $03
    jr jr_0ed_5c73                                ; $5c71: $18 $00

jr_0ed_5c73:
    ld [bc], a                                    ; $5c73: $02
    inc sp                                        ; $5c74: $33
    ld [bc], a                                    ; $5c75: $02
    add hl, de                                    ; $5c76: $19
    ld [bc], a                                    ; $5c77: $02
    ccf                                           ; $5c78: $3f
    add d                                         ; $5c79: $82
    ld sp, $023f                                  ; $5c7a: $31 $3f $02
    rra                                           ; $5c7d: $1f
    ld [de], a                                    ; $5c7e: $12
    nop                                           ; $5c7f: $00
    rst $38                                       ; $5c80: $ff
    rlca                                          ; $5c81: $07
    ld bc, $0af1                                  ; $5c82: $01 $f1 $0a
    ld [$f501], a                                 ; $5c85: $ea $01 $f5
    db $fc                                        ; $5c88: $fc
    adc e                                         ; $5c89: $8b
    ld [bc], a                                    ; $5c8a: $02
    nop                                           ; $5c8b: $00
    ld c, $00                                     ; $5c8c: $0e $00
    ld a, [de]                                    ; $5c8e: $1a
    nop                                           ; $5c8f: $00

jr_0ed_5c90:
    ld a, [de]                                    ; $5c90: $1a
    nop                                           ; $5c91: $00
    stop                                          ; $5c92: $10 $00
    db $10                                        ; $5c94: $10
    ld b, $00                                     ; $5c95: $06 $00
    add e                                         ; $5c97: $83
    inc h                                         ; $5c98: $24
    nop                                           ; $5c99: $00
    rla                                           ; $5c9a: $17
    inc c                                         ; $5c9b: $0c
    nop                                           ; $5c9c: $00
    rst $38                                       ; $5c9d: $ff
    dec bc                                        ; $5c9e: $0b
    inc bc                                        ; $5c9f: $03
    ld hl, sp+$0f                                 ; $5ca0: $f8 $0f
    jp hl                                         ; $5ca2: $e9


    ld bc, $fbeb                                  ; $5ca3: $01 $eb $fb
    db $ec                                        ; $5ca6: $ec
    db $fd                                        ; $5ca7: $fd
    ei                                            ; $5ca8: $fb
    db $fc                                        ; $5ca9: $fc
    ld [bc], a                                    ; $5caa: $02
    ccf                                           ; $5cab: $3f
    sub b                                         ; $5cac: $90
    ld b, [hl]                                    ; $5cad: $46
    ld a, a                                       ; $5cae: $7f
    sub e                                         ; $5caf: $93
    rst $38                                       ; $5cb0: $ff
    xor a                                         ; $5cb1: $af
    db $fd                                        ; $5cb2: $fd
    rst $18                                       ; $5cb3: $df
    or $7f                                        ; $5cb4: $f6 $7f
    ld [hl], b                                    ; $5cb6: $70
    ld a, a                                       ; $5cb7: $7f
    ld d, b                                       ; $5cb8: $50
    ccf                                           ; $5cb9: $3f
    ld sp, $181f                                  ; $5cba: $31 $1f $18
    ld [bc], a                                    ; $5cbd: $02
    scf                                           ; $5cbe: $37
    ld [bc], a                                    ; $5cbf: $02
    ld hl, $2502                                  ; $5cc0: $21 $02 $25
    ld [bc], a                                    ; $5cc3: $02
    inc h                                         ; $5cc4: $24
    inc bc                                        ; $5cc5: $03
    inc a                                         ; $5cc6: $3c
    add e                                         ; $5cc7: $83
    inc l                                         ; $5cc8: $2c
    ld a, $36                                     ; $5cc9: $3e $36
    inc b                                         ; $5ccb: $04
    ld [bc], a                                    ; $5ccc: $02
    ld [bc], a                                    ; $5ccd: $02
    nop                                           ; $5cce: $00
    ld [bc], a                                    ; $5ccf: $02
    ld [bc], a                                    ; $5cd0: $02
    add d                                         ; $5cd1: $82
    inc bc                                        ; $5cd2: $03
    ld bc, $0206                                  ; $5cd3: $01 $06 $02
    ld b, $00                                     ; $5cd6: $06 $00
    ld [$8202], sp                                ; $5cd8: $08 $02 $82
    db $fc                                        ; $5cdb: $fc
    call z, $0002                                 ; $5cdc: $cc $02 $00
    add d                                         ; $5cdf: $82
    ccf                                           ; $5ce0: $3f
    add hl, hl                                    ; $5ce1: $29
    ld [bc], a                                    ; $5ce2: $02
    ld [hl], $02                                  ; $5ce3: $36 $02
    ld b, h                                       ; $5ce5: $44
    ld [bc], a                                    ; $5ce6: $02
    ld c, h                                       ; $5ce7: $4c
    ld [bc], a                                    ; $5ce8: $02
    ld [hl], d                                    ; $5ce9: $72
    ld [bc], a                                    ; $5cea: $02
    ld a, [hl]                                    ; $5ceb: $7e
    ld [de], a                                    ; $5cec: $12
    nop                                           ; $5ced: $00
    rst $38                                       ; $5cee: $ff
    rlca                                          ; $5cef: $07
    ld bc, $0ff8                                  ; $5cf0: $01 $f8 $0f
    jp hl                                         ; $5cf3: $e9


    ld bc, $fbf4                                  ; $5cf4: $01 $f4 $fb
    adc [hl]                                      ; $5cf7: $8e
    nop                                           ; $5cf8: $00
    ld [$1e00], sp                                ; $5cf9: $08 $00 $1e
    nop                                           ; $5cfc: $00
    ld a, [de]                                    ; $5cfd: $1a
    nop                                           ; $5cfe: $00
    dec de                                        ; $5cff: $1b
    nop                                           ; $5d00: $00
    inc bc                                        ; $5d01: $03
    nop                                           ; $5d02: $00
    inc bc                                        ; $5d03: $03
    nop                                           ; $5d04: $00

jr_0ed_5d05:
    ld bc, $0004                                  ; $5d05: $01 $04 $00
    ld [bc], a                                    ; $5d08: $02
    inc b                                         ; $5d09: $04
    ld [bc], a                                    ; $5d0a: $02
    inc e                                         ; $5d0b: $1c
    ld [bc], a                                    ; $5d0c: $02
    jr jr_0ed_5c90                                ; $5d0d: $18 $81

    ld b, $07                                     ; $5d0f: $06 $07
    nop                                           ; $5d11: $00
    rst $38                                       ; $5d12: $ff
    dec bc                                        ; $5d13: $0b
    inc bc                                        ; $5d14: $03
    ld hl, sp+$0f                                 ; $5d15: $f8 $0f
    jp hl                                         ; $5d17: $e9


    ld bc, $fbeb                                  ; $5d18: $01 $eb $fb
    db $ec                                        ; $5d1b: $ec
    db $fd                                        ; $5d1c: $fd
    ei                                            ; $5d1d: $fb
    db $fc                                        ; $5d1e: $fc
    ld [bc], a                                    ; $5d1f: $02
    ccf                                           ; $5d20: $3f
    sub b                                         ; $5d21: $90
    ld b, [hl]                                    ; $5d22: $46
    ld a, a                                       ; $5d23: $7f
    sub e                                         ; $5d24: $93
    rst $38                                       ; $5d25: $ff
    xor a                                         ; $5d26: $af
    db $fd                                        ; $5d27: $fd
    rst $18                                       ; $5d28: $df
    or $7f                                        ; $5d29: $f6 $7f
    ld [hl], b                                    ; $5d2b: $70
    ld a, a                                       ; $5d2c: $7f
    ld d, b                                       ; $5d2d: $50
    ccf                                           ; $5d2e: $3f
    ld sp, $181f                                  ; $5d2f: $31 $1f $18
    ld [bc], a                                    ; $5d32: $02
    scf                                           ; $5d33: $37
    ld [bc], a                                    ; $5d34: $02
    ld hl, $2502                                  ; $5d35: $21 $02 $25
    ld [bc], a                                    ; $5d38: $02
    inc h                                         ; $5d39: $24
    inc bc                                        ; $5d3a: $03
    inc a                                         ; $5d3b: $3c
    add e                                         ; $5d3c: $83
    inc l                                         ; $5d3d: $2c
    ld a, $36                                     ; $5d3e: $3e $36
    inc b                                         ; $5d40: $04
    ld [bc], a                                    ; $5d41: $02
    ld [bc], a                                    ; $5d42: $02
    nop                                           ; $5d43: $00
    ld [bc], a                                    ; $5d44: $02
    ld [bc], a                                    ; $5d45: $02
    add d                                         ; $5d46: $82
    inc bc                                        ; $5d47: $03
    ld bc, $0206                                  ; $5d48: $01 $06 $02
    ld b, $00                                     ; $5d4b: $06 $00
    ld [$8202], sp                                ; $5d4d: $08 $02 $82
    db $fc                                        ; $5d50: $fc
    call z, $0002                                 ; $5d51: $cc $02 $00
    add d                                         ; $5d54: $82
    ccf                                           ; $5d55: $3f
    add hl, hl                                    ; $5d56: $29
    ld [bc], a                                    ; $5d57: $02
    ld [hl], $02                                  ; $5d58: $36 $02
    ld b, h                                       ; $5d5a: $44
    ld [bc], a                                    ; $5d5b: $02
    ld c, h                                       ; $5d5c: $4c
    ld [bc], a                                    ; $5d5d: $02
    ld [hl], d                                    ; $5d5e: $72
    ld [bc], a                                    ; $5d5f: $02
    ld a, [hl]                                    ; $5d60: $7e
    ld [de], a                                    ; $5d61: $12
    nop                                           ; $5d62: $00
    rst $38                                       ; $5d63: $ff
    rlca                                          ; $5d64: $07
    ld bc, $0ff8                                  ; $5d65: $01 $f8 $0f
    jp hl                                         ; $5d68: $e9


    ld bc, $fbf4                                  ; $5d69: $01 $f4 $fb
    adc [hl]                                      ; $5d6c: $8e
    nop                                           ; $5d6d: $00
    ld [$1e00], sp                                ; $5d6e: $08 $00 $1e
    nop                                           ; $5d71: $00
    ld a, [de]                                    ; $5d72: $1a
    nop                                           ; $5d73: $00
    dec de                                        ; $5d74: $1b
    nop                                           ; $5d75: $00
    inc bc                                        ; $5d76: $03
    nop                                           ; $5d77: $00
    inc bc                                        ; $5d78: $03
    nop                                           ; $5d79: $00

jr_0ed_5d7a:
    ld bc, $0004                                  ; $5d7a: $01 $04 $00
    ld [bc], a                                    ; $5d7d: $02
    inc b                                         ; $5d7e: $04
    ld [bc], a                                    ; $5d7f: $02
    inc e                                         ; $5d80: $1c
    ld [bc], a                                    ; $5d81: $02
    jr jr_0ed_5d05                                ; $5d82: $18 $81

    ld b, $07                                     ; $5d84: $06 $07
    nop                                           ; $5d86: $00
    rst $38                                       ; $5d87: $ff
    dec bc                                        ; $5d88: $0b
    inc bc                                        ; $5d89: $03
    ld hl, sp+$0f                                 ; $5d8a: $f8 $0f
    jp hl                                         ; $5d8c: $e9


    ld bc, $fbeb                                  ; $5d8d: $01 $eb $fb
    db $ec                                        ; $5d90: $ec
    db $fd                                        ; $5d91: $fd
    ei                                            ; $5d92: $fb
    db $fc                                        ; $5d93: $fc
    ld [bc], a                                    ; $5d94: $02
    ccf                                           ; $5d95: $3f
    sub b                                         ; $5d96: $90
    ld b, [hl]                                    ; $5d97: $46
    ld a, a                                       ; $5d98: $7f
    sub e                                         ; $5d99: $93
    rst $38                                       ; $5d9a: $ff
    xor a                                         ; $5d9b: $af
    db $fd                                        ; $5d9c: $fd
    rst $18                                       ; $5d9d: $df
    or $7f                                        ; $5d9e: $f6 $7f
    ld [hl], b                                    ; $5da0: $70
    ld a, a                                       ; $5da1: $7f
    ld d, b                                       ; $5da2: $50
    ccf                                           ; $5da3: $3f
    ld sp, $181f                                  ; $5da4: $31 $1f $18
    ld [bc], a                                    ; $5da7: $02
    scf                                           ; $5da8: $37
    ld [bc], a                                    ; $5da9: $02
    ld hl, $2502                                  ; $5daa: $21 $02 $25
    ld [bc], a                                    ; $5dad: $02
    inc h                                         ; $5dae: $24
    inc bc                                        ; $5daf: $03
    inc a                                         ; $5db0: $3c
    add e                                         ; $5db1: $83
    inc l                                         ; $5db2: $2c
    ld a, $36                                     ; $5db3: $3e $36
    inc b                                         ; $5db5: $04
    ld [bc], a                                    ; $5db6: $02
    ld [bc], a                                    ; $5db7: $02
    nop                                           ; $5db8: $00
    ld [bc], a                                    ; $5db9: $02
    ld [bc], a                                    ; $5dba: $02
    add d                                         ; $5dbb: $82
    inc bc                                        ; $5dbc: $03
    ld bc, $0206                                  ; $5dbd: $01 $06 $02
    ld b, $00                                     ; $5dc0: $06 $00
    ld [$8202], sp                                ; $5dc2: $08 $02 $82
    db $fc                                        ; $5dc5: $fc
    call z, $0002                                 ; $5dc6: $cc $02 $00
    add d                                         ; $5dc9: $82
    ccf                                           ; $5dca: $3f
    add hl, hl                                    ; $5dcb: $29
    ld [bc], a                                    ; $5dcc: $02
    ld [hl], $02                                  ; $5dcd: $36 $02
    ld b, h                                       ; $5dcf: $44
    ld [bc], a                                    ; $5dd0: $02
    ld c, h                                       ; $5dd1: $4c
    ld [bc], a                                    ; $5dd2: $02
    ld [hl], d                                    ; $5dd3: $72
    ld [bc], a                                    ; $5dd4: $02
    ld a, [hl]                                    ; $5dd5: $7e
    ld [de], a                                    ; $5dd6: $12
    nop                                           ; $5dd7: $00
    rst $38                                       ; $5dd8: $ff
    rlca                                          ; $5dd9: $07
    ld bc, $0ff8                                  ; $5dda: $01 $f8 $0f
    jp hl                                         ; $5ddd: $e9


    ld bc, $fbf4                                  ; $5dde: $01 $f4 $fb
    adc [hl]                                      ; $5de1: $8e
    nop                                           ; $5de2: $00
    ld [$1e00], sp                                ; $5de3: $08 $00 $1e
    nop                                           ; $5de6: $00
    ld a, [de]                                    ; $5de7: $1a
    nop                                           ; $5de8: $00
    dec de                                        ; $5de9: $1b
    nop                                           ; $5dea: $00
    inc bc                                        ; $5deb: $03
    nop                                           ; $5dec: $00
    inc bc                                        ; $5ded: $03
    nop                                           ; $5dee: $00

jr_0ed_5def:
    ld bc, $0004                                  ; $5def: $01 $04 $00
    ld [bc], a                                    ; $5df2: $02
    inc b                                         ; $5df3: $04
    ld [bc], a                                    ; $5df4: $02
    inc e                                         ; $5df5: $1c
    ld [bc], a                                    ; $5df6: $02
    jr jr_0ed_5d7a                                ; $5df7: $18 $81

    ld b, $07                                     ; $5df9: $06 $07
    nop                                           ; $5dfb: $00
    rst $38                                       ; $5dfc: $ff
    dec bc                                        ; $5dfd: $0b
    inc bc                                        ; $5dfe: $03
    ld hl, sp+$0f                                 ; $5dff: $f8 $0f
    jp hl                                         ; $5e01: $e9


    ld bc, $fbeb                                  ; $5e02: $01 $eb $fb
    db $ec                                        ; $5e05: $ec
    db $fd                                        ; $5e06: $fd
    ei                                            ; $5e07: $fb
    db $fc                                        ; $5e08: $fc
    ld [bc], a                                    ; $5e09: $02
    ccf                                           ; $5e0a: $3f
    sub b                                         ; $5e0b: $90
    ld b, [hl]                                    ; $5e0c: $46
    ld a, a                                       ; $5e0d: $7f
    sub e                                         ; $5e0e: $93
    rst $38                                       ; $5e0f: $ff
    xor a                                         ; $5e10: $af
    db $fd                                        ; $5e11: $fd
    rst $18                                       ; $5e12: $df
    or $7f                                        ; $5e13: $f6 $7f
    ld [hl], b                                    ; $5e15: $70
    ld a, a                                       ; $5e16: $7f
    ld d, b                                       ; $5e17: $50
    ccf                                           ; $5e18: $3f
    ld sp, $181f                                  ; $5e19: $31 $1f $18
    ld [bc], a                                    ; $5e1c: $02
    scf                                           ; $5e1d: $37
    ld [bc], a                                    ; $5e1e: $02
    ld hl, $2502                                  ; $5e1f: $21 $02 $25
    ld [bc], a                                    ; $5e22: $02
    inc h                                         ; $5e23: $24
    inc bc                                        ; $5e24: $03
    inc a                                         ; $5e25: $3c
    add e                                         ; $5e26: $83
    inc l                                         ; $5e27: $2c
    ld a, $36                                     ; $5e28: $3e $36
    inc b                                         ; $5e2a: $04
    ld [bc], a                                    ; $5e2b: $02
    ld [bc], a                                    ; $5e2c: $02
    nop                                           ; $5e2d: $00
    ld [bc], a                                    ; $5e2e: $02
    ld [bc], a                                    ; $5e2f: $02
    add d                                         ; $5e30: $82
    inc bc                                        ; $5e31: $03
    ld bc, $0206                                  ; $5e32: $01 $06 $02
    ld b, $00                                     ; $5e35: $06 $00
    ld [$8202], sp                                ; $5e37: $08 $02 $82
    db $fc                                        ; $5e3a: $fc
    call z, $0002                                 ; $5e3b: $cc $02 $00
    add d                                         ; $5e3e: $82
    ccf                                           ; $5e3f: $3f
    add hl, hl                                    ; $5e40: $29
    ld [bc], a                                    ; $5e41: $02
    ld [hl], $02                                  ; $5e42: $36 $02
    ld b, h                                       ; $5e44: $44
    ld [bc], a                                    ; $5e45: $02
    ld c, h                                       ; $5e46: $4c
    ld [bc], a                                    ; $5e47: $02
    ld [hl], d                                    ; $5e48: $72
    ld [bc], a                                    ; $5e49: $02
    ld a, [hl]                                    ; $5e4a: $7e
    ld [de], a                                    ; $5e4b: $12
    nop                                           ; $5e4c: $00
    rst $38                                       ; $5e4d: $ff
    rlca                                          ; $5e4e: $07
    ld bc, $0ff8                                  ; $5e4f: $01 $f8 $0f
    jp hl                                         ; $5e52: $e9


    ld bc, $fbf4                                  ; $5e53: $01 $f4 $fb
    adc [hl]                                      ; $5e56: $8e
    nop                                           ; $5e57: $00
    ld [$1e00], sp                                ; $5e58: $08 $00 $1e
    nop                                           ; $5e5b: $00
    ld a, [de]                                    ; $5e5c: $1a
    nop                                           ; $5e5d: $00
    dec de                                        ; $5e5e: $1b
    nop                                           ; $5e5f: $00
    inc bc                                        ; $5e60: $03
    nop                                           ; $5e61: $00
    inc bc                                        ; $5e62: $03
    nop                                           ; $5e63: $00

jr_0ed_5e64:
    ld bc, $0004                                  ; $5e64: $01 $04 $00
    ld [bc], a                                    ; $5e67: $02
    inc b                                         ; $5e68: $04
    ld [bc], a                                    ; $5e69: $02
    inc e                                         ; $5e6a: $1c
    ld [bc], a                                    ; $5e6b: $02
    jr jr_0ed_5def                                ; $5e6c: $18 $81

    ld b, $07                                     ; $5e6e: $06 $07
    nop                                           ; $5e70: $00
    rst $38                                       ; $5e71: $ff
    dec bc                                        ; $5e72: $0b
    inc bc                                        ; $5e73: $03
    ld hl, sp+$0f                                 ; $5e74: $f8 $0f
    jp hl                                         ; $5e76: $e9


    ld bc, $fbeb                                  ; $5e77: $01 $eb $fb
    db $ec                                        ; $5e7a: $ec
    db $fd                                        ; $5e7b: $fd
    ei                                            ; $5e7c: $fb
    db $fc                                        ; $5e7d: $fc
    ld [bc], a                                    ; $5e7e: $02
    ccf                                           ; $5e7f: $3f
    sub b                                         ; $5e80: $90
    ld b, [hl]                                    ; $5e81: $46
    ld a, a                                       ; $5e82: $7f
    sub e                                         ; $5e83: $93
    rst $38                                       ; $5e84: $ff
    xor a                                         ; $5e85: $af
    db $fd                                        ; $5e86: $fd
    rst $18                                       ; $5e87: $df
    or $7f                                        ; $5e88: $f6 $7f
    ld [hl], b                                    ; $5e8a: $70
    ld a, a                                       ; $5e8b: $7f
    ld d, b                                       ; $5e8c: $50
    ccf                                           ; $5e8d: $3f
    ld sp, $181f                                  ; $5e8e: $31 $1f $18
    ld [bc], a                                    ; $5e91: $02
    scf                                           ; $5e92: $37
    ld [bc], a                                    ; $5e93: $02
    ld hl, $2502                                  ; $5e94: $21 $02 $25
    ld [bc], a                                    ; $5e97: $02
    inc h                                         ; $5e98: $24
    inc bc                                        ; $5e99: $03
    inc a                                         ; $5e9a: $3c
    add e                                         ; $5e9b: $83
    inc l                                         ; $5e9c: $2c
    ld a, $36                                     ; $5e9d: $3e $36
    inc b                                         ; $5e9f: $04
    ld [bc], a                                    ; $5ea0: $02
    ld [bc], a                                    ; $5ea1: $02
    nop                                           ; $5ea2: $00
    ld [bc], a                                    ; $5ea3: $02
    ld [bc], a                                    ; $5ea4: $02
    add d                                         ; $5ea5: $82
    inc bc                                        ; $5ea6: $03
    ld bc, $0206                                  ; $5ea7: $01 $06 $02
    ld b, $00                                     ; $5eaa: $06 $00
    ld [$8202], sp                                ; $5eac: $08 $02 $82
    db $fc                                        ; $5eaf: $fc
    call z, $0002                                 ; $5eb0: $cc $02 $00
    add d                                         ; $5eb3: $82
    ccf                                           ; $5eb4: $3f
    add hl, hl                                    ; $5eb5: $29
    ld [bc], a                                    ; $5eb6: $02
    ld [hl], $02                                  ; $5eb7: $36 $02
    ld b, h                                       ; $5eb9: $44
    ld [bc], a                                    ; $5eba: $02
    ld c, h                                       ; $5ebb: $4c
    ld [bc], a                                    ; $5ebc: $02
    ld [hl], d                                    ; $5ebd: $72
    ld [bc], a                                    ; $5ebe: $02
    ld a, [hl]                                    ; $5ebf: $7e
    ld [de], a                                    ; $5ec0: $12
    nop                                           ; $5ec1: $00
    rst $38                                       ; $5ec2: $ff
    rlca                                          ; $5ec3: $07
    ld bc, $0ff8                                  ; $5ec4: $01 $f8 $0f
    jp hl                                         ; $5ec7: $e9


    ld bc, $fbf4                                  ; $5ec8: $01 $f4 $fb
    adc [hl]                                      ; $5ecb: $8e
    nop                                           ; $5ecc: $00
    ld [$1e00], sp                                ; $5ecd: $08 $00 $1e
    nop                                           ; $5ed0: $00
    ld a, [de]                                    ; $5ed1: $1a
    nop                                           ; $5ed2: $00
    dec de                                        ; $5ed3: $1b
    nop                                           ; $5ed4: $00
    inc bc                                        ; $5ed5: $03
    nop                                           ; $5ed6: $00
    inc bc                                        ; $5ed7: $03
    nop                                           ; $5ed8: $00

jr_0ed_5ed9:
    ld bc, $0004                                  ; $5ed9: $01 $04 $00
    ld [bc], a                                    ; $5edc: $02
    inc b                                         ; $5edd: $04
    ld [bc], a                                    ; $5ede: $02
    inc e                                         ; $5edf: $1c
    ld [bc], a                                    ; $5ee0: $02
    jr jr_0ed_5e64                                ; $5ee1: $18 $81

    ld b, $07                                     ; $5ee3: $06 $07
    nop                                           ; $5ee5: $00
    rst $38                                       ; $5ee6: $ff
    dec bc                                        ; $5ee7: $0b
    inc bc                                        ; $5ee8: $03
    ld hl, sp+$0f                                 ; $5ee9: $f8 $0f
    jp hl                                         ; $5eeb: $e9


    ld bc, $fbeb                                  ; $5eec: $01 $eb $fb
    db $ec                                        ; $5eef: $ec
    db $fd                                        ; $5ef0: $fd
    ei                                            ; $5ef1: $fb
    db $fc                                        ; $5ef2: $fc
    ld [bc], a                                    ; $5ef3: $02
    ccf                                           ; $5ef4: $3f
    sub b                                         ; $5ef5: $90
    ld b, [hl]                                    ; $5ef6: $46
    ld a, a                                       ; $5ef7: $7f
    sub e                                         ; $5ef8: $93
    rst $38                                       ; $5ef9: $ff
    xor a                                         ; $5efa: $af
    db $fd                                        ; $5efb: $fd
    rst $18                                       ; $5efc: $df
    or $7f                                        ; $5efd: $f6 $7f
    ld [hl], b                                    ; $5eff: $70
    ld a, a                                       ; $5f00: $7f
    ld d, b                                       ; $5f01: $50
    ccf                                           ; $5f02: $3f
    ld sp, $181f                                  ; $5f03: $31 $1f $18
    ld [bc], a                                    ; $5f06: $02
    scf                                           ; $5f07: $37
    ld [bc], a                                    ; $5f08: $02
    ld hl, $2502                                  ; $5f09: $21 $02 $25
    ld [bc], a                                    ; $5f0c: $02
    inc h                                         ; $5f0d: $24
    inc bc                                        ; $5f0e: $03
    inc a                                         ; $5f0f: $3c
    add e                                         ; $5f10: $83
    inc l                                         ; $5f11: $2c
    ld a, $36                                     ; $5f12: $3e $36
    inc b                                         ; $5f14: $04
    ld [bc], a                                    ; $5f15: $02
    ld [bc], a                                    ; $5f16: $02
    nop                                           ; $5f17: $00
    ld [bc], a                                    ; $5f18: $02
    ld [bc], a                                    ; $5f19: $02
    add d                                         ; $5f1a: $82
    inc bc                                        ; $5f1b: $03
    ld bc, $0206                                  ; $5f1c: $01 $06 $02
    ld b, $00                                     ; $5f1f: $06 $00
    ld [$8202], sp                                ; $5f21: $08 $02 $82
    db $fc                                        ; $5f24: $fc
    call z, $0002                                 ; $5f25: $cc $02 $00
    add d                                         ; $5f28: $82
    ccf                                           ; $5f29: $3f
    add hl, hl                                    ; $5f2a: $29
    ld [bc], a                                    ; $5f2b: $02
    ld [hl], $02                                  ; $5f2c: $36 $02
    ld b, h                                       ; $5f2e: $44
    ld [bc], a                                    ; $5f2f: $02
    ld c, h                                       ; $5f30: $4c
    ld [bc], a                                    ; $5f31: $02
    ld [hl], d                                    ; $5f32: $72
    ld [bc], a                                    ; $5f33: $02
    ld a, [hl]                                    ; $5f34: $7e
    ld [de], a                                    ; $5f35: $12
    nop                                           ; $5f36: $00
    rst $38                                       ; $5f37: $ff
    rlca                                          ; $5f38: $07
    ld bc, $0ff8                                  ; $5f39: $01 $f8 $0f
    jp hl                                         ; $5f3c: $e9


    ld bc, $fbf4                                  ; $5f3d: $01 $f4 $fb
    adc [hl]                                      ; $5f40: $8e
    nop                                           ; $5f41: $00
    ld [$1e00], sp                                ; $5f42: $08 $00 $1e
    nop                                           ; $5f45: $00
    ld a, [de]                                    ; $5f46: $1a
    nop                                           ; $5f47: $00
    dec de                                        ; $5f48: $1b
    nop                                           ; $5f49: $00
    inc bc                                        ; $5f4a: $03
    nop                                           ; $5f4b: $00
    inc bc                                        ; $5f4c: $03
    nop                                           ; $5f4d: $00
    ld bc, $0004                                  ; $5f4e: $01 $04 $00
    ld [bc], a                                    ; $5f51: $02
    inc b                                         ; $5f52: $04
    ld [bc], a                                    ; $5f53: $02
    inc e                                         ; $5f54: $1c
    ld [bc], a                                    ; $5f55: $02
    jr jr_0ed_5ed9                                ; $5f56: $18 $81

    ld b, $07                                     ; $5f58: $06 $07
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    dec bc                                        ; $5f5c: $0b
    inc bc                                        ; $5f5d: $03
    ld hl, sp+$0f                                 ; $5f5e: $f8 $0f
    jp hl                                         ; $5f60: $e9


    ld bc, $fdeb                                  ; $5f61: $01 $eb $fd
    db $ec                                        ; $5f64: $ec
    rst $38                                       ; $5f65: $ff
    ei                                            ; $5f66: $fb
    db $fd                                        ; $5f67: $fd
    ld [bc], a                                    ; $5f68: $02
    ccf                                           ; $5f69: $3f
    sub b                                         ; $5f6a: $90
    ld b, [hl]                                    ; $5f6b: $46
    ld a, a                                       ; $5f6c: $7f
    sub e                                         ; $5f6d: $93
    rst $38                                       ; $5f6e: $ff
    xor a                                         ; $5f6f: $af
    db $fd                                        ; $5f70: $fd
    rst $18                                       ; $5f71: $df
    or $7f                                        ; $5f72: $f6 $7f
    ld [hl], b                                    ; $5f74: $70
    ld a, a                                       ; $5f75: $7f
    ld d, b                                       ; $5f76: $50
    ccf                                           ; $5f77: $3f
    ld sp, $181f                                  ; $5f78: $31 $1f $18
    ld [bc], a                                    ; $5f7b: $02
    scf                                           ; $5f7c: $37
    ld [bc], a                                    ; $5f7d: $02
    ld b, d                                       ; $5f7e: $42
    ld [bc], a                                    ; $5f7f: $02
    adc d                                         ; $5f80: $8a
    ld [bc], a                                    ; $5f81: $02
    reti                                          ; $5f82: $d9


    add [hl]                                      ; $5f83: $86
    pop af                                        ; $5f84: $f1
    or c                                          ; $5f85: $b1
    pop af                                        ; $5f86: $f1
    or c                                          ; $5f87: $b1
    ld a, c                                       ; $5f88: $79
    ld c, c                                       ; $5f89: $49
    inc b                                         ; $5f8a: $04
    ld [bc], a                                    ; $5f8b: $02
    ld [bc], a                                    ; $5f8c: $02
    nop                                           ; $5f8d: $00
    ld [bc], a                                    ; $5f8e: $02
    ld [bc], a                                    ; $5f8f: $02
    add d                                         ; $5f90: $82
    inc bc                                        ; $5f91: $03
    ld bc, $0206                                  ; $5f92: $01 $06 $02
    ld b, $00                                     ; $5f95: $06 $00
    ld [bc], a                                    ; $5f97: $02
    ld [bc], a                                    ; $5f98: $02
    add h                                         ; $5f99: $84
    inc bc                                        ; $5f9a: $03
    ld bc, $0103                                  ; $5f9b: $01 $03 $01
    ld [bc], a                                    ; $5f9e: $02
    ld [bc], a                                    ; $5f9f: $02
    add d                                         ; $5fa0: $82
    db $f4                                        ; $5fa1: $f4
    inc [hl]                                      ; $5fa2: $34
    ld [bc], a                                    ; $5fa3: $02
    ld b, b                                       ; $5fa4: $40
    ld [bc], a                                    ; $5fa5: $02
    dec [hl]                                      ; $5fa6: $35
    ld [bc], a                                    ; $5fa7: $02
    daa                                           ; $5fa8: $27
    ld [bc], a                                    ; $5fa9: $02
    ld b, [hl]                                    ; $5faa: $46
    ld [bc], a                                    ; $5fab: $02
    rst $18                                       ; $5fac: $df
    ld [bc], a                                    ; $5fad: $02
    ld h, [hl]                                    ; $5fae: $66
    ld [bc], a                                    ; $5faf: $02
    ld a, h                                       ; $5fb0: $7c
    ld [de], a                                    ; $5fb1: $12
    nop                                           ; $5fb2: $00
    rst $38                                       ; $5fb3: $ff
    rlca                                          ; $5fb4: $07
    ld bc, $0ff8                                  ; $5fb5: $01 $f8 $0f
    jp hl                                         ; $5fb8: $e9


    ld bc, $fcf4                                  ; $5fb9: $01 $f4 $fc
    adc [hl]                                      ; $5fbc: $8e
    nop                                           ; $5fbd: $00
    inc b                                         ; $5fbe: $04
    nop                                           ; $5fbf: $00
    ld e, $00                                     ; $5fc0: $1e $00
    ld a, [hl-]                                   ; $5fc2: $3a
    nop                                           ; $5fc3: $00
    inc de                                        ; $5fc4: $13
    nop                                           ; $5fc5: $00
    rlca                                          ; $5fc6: $07
    nop                                           ; $5fc7: $00
    rlca                                          ; $5fc8: $07
    nop                                           ; $5fc9: $00
    inc bc                                        ; $5fca: $03
    ld [bc], a                                    ; $5fcb: $02
    ld bc, $0502                                  ; $5fcc: $01 $02 $05
    ld [bc], a                                    ; $5fcf: $02
    inc c                                         ; $5fd0: $0c
    ld [bc], a                                    ; $5fd1: $02
    inc e                                         ; $5fd2: $1c
    ld [bc], a                                    ; $5fd3: $02
    db $10                                        ; $5fd4: $10
    add c                                         ; $5fd5: $81
    inc c                                         ; $5fd6: $0c
    rlca                                          ; $5fd7: $07
    nop                                           ; $5fd8: $00
    rst $38                                       ; $5fd9: $ff
    dec c                                         ; $5fda: $0d
    inc b                                         ; $5fdb: $04
    ld hl, sp+$0f                                 ; $5fdc: $f8 $0f
    jp hl                                         ; $5fde: $e9


    ld bc, $fdeb                                  ; $5fdf: $01 $eb $fd
    db $eb                                        ; $5fe2: $eb
    ld bc, $fefb                                  ; $5fe3: $01 $fb $fe
    ei                                            ; $5fe6: $fb
    rst $38                                       ; $5fe7: $ff
    ld [bc], a                                    ; $5fe8: $02
    rra                                           ; $5fe9: $1f
    sub b                                         ; $5fea: $90
    inc hl                                        ; $5feb: $23
    ccf                                           ; $5fec: $3f
    ld c, c                                       ; $5fed: $49
    ld a, a                                       ; $5fee: $7f
    ld d, a                                       ; $5fef: $57
    ld a, [hl]                                    ; $5ff0: $7e
    ld l, a                                       ; $5ff1: $6f
    ld a, e                                       ; $5ff2: $7b
    ccf                                           ; $5ff3: $3f
    jr c, jr_0ed_6035                             ; $5ff4: $38 $3f

    jr z, jr_0ed_6017                             ; $5ff6: $28 $1f

    jr jr_0ed_6009                                ; $5ff8: $18 $0f

    inc c                                         ; $5ffa: $0c
    ld [bc], a                                    ; $5ffb: $02
    scf                                           ; $5ffc: $37
    ld [bc], a                                    ; $5ffd: $02
    ld b, c                                       ; $5ffe: $41
    ld [bc], a                                    ; $5fff: $02
    ld h, l                                       ; $6000: $65
    add [hl]                                      ; $6001: $86
    ld hl, sp-$48                                 ; $6002: $f8 $b8
    ld a, h                                       ; $6004: $7c
    ld b, h                                       ; $6005: $44
    inc a                                         ; $6006: $3c
    inc h                                         ; $6007: $24
    ld [bc], a                                    ; $6008: $02

jr_0ed_6009:
    ld e, c                                       ; $6009: $59
    ld [bc], a                                    ; $600a: $02
    ld [$0481], sp                                ; $600b: $08 $81 $04
    inc bc                                        ; $600e: $03
    inc c                                         ; $600f: $0c
    ld [bc], a                                    ; $6010: $02
    ld [$0c86], sp                                ; $6011: $08 $86 $0c
    inc b                                         ; $6014: $04
    ld c, $02                                     ; $6015: $0e $02

jr_0ed_6017:
    inc c                                         ; $6017: $0c
    inc b                                         ; $6018: $04
    inc bc                                        ; $6019: $03
    inc c                                         ; $601a: $0c
    add c                                         ; $601b: $81
    inc b                                         ; $601c: $04
    ld [bc], a                                    ; $601d: $02
    ld [$0002], sp                                ; $601e: $08 $02 $00
    ld [bc], a                                    ; $6021: $02
    ld [bc], a                                    ; $6022: $02
    add h                                         ; $6023: $84
    rrca                                          ; $6024: $0f
    dec c                                         ; $6025: $0d
    rrca                                          ; $6026: $0f
    add hl, bc                                    ; $6027: $09
    ld [bc], a                                    ; $6028: $02
    ld c, $02                                     ; $6029: $0e $02
    ld [$7d02], sp                                ; $602b: $08 $02 $7d
    ld [bc], a                                    ; $602e: $02
    ld h, $02                                     ; $602f: $26 $02
    ld c, l                                       ; $6031: $4d
    ld [bc], a                                    ; $6032: $02
    ld c, [hl]                                    ; $6033: $4e
    ld [bc], a                                    ; $6034: $02

jr_0ed_6035:
    cp a                                          ; $6035: $bf
    ld [bc], a                                    ; $6036: $02
    ret z                                         ; $6037: $c8

    ld [bc], a                                    ; $6038: $02
    ld hl, sp+$12                                 ; $6039: $f8 $12
    nop                                           ; $603b: $00
    inc b                                         ; $603c: $04
    ld bc, $0002                                  ; $603d: $01 $02 $00
    inc b                                         ; $6040: $04
    ld bc, $0016                                  ; $6041: $01 $16 $00
    rst $38                                       ; $6044: $ff
    rlca                                          ; $6045: $07
    ld bc, $0ff8                                  ; $6046: $01 $f8 $0f
    jp hl                                         ; $6049: $e9


    ld bc, $fef4                                  ; $604a: $01 $f4 $fe
    adc [hl]                                      ; $604d: $8e
    nop                                           ; $604e: $00
    stop                                          ; $604f: $10 $00
    ld a, h                                       ; $6051: $7c
    nop                                           ; $6052: $00
    inc [hl]                                      ; $6053: $34
    nop                                           ; $6054: $00
    ld c, $00                                     ; $6055: $0e $00
    ld b, $00                                     ; $6057: $06 $00
    ld b, $00                                     ; $6059: $06 $00
    ld c, h                                       ; $605b: $4c
    ld [bc], a                                    ; $605c: $02
    ld [bc], a                                    ; $605d: $02
    ld [bc], a                                    ; $605e: $02
    add hl, de                                    ; $605f: $19
    ld [bc], a                                    ; $6060: $02
    ld [hl-], a                                   ; $6061: $32
    add d                                         ; $6062: $82
    ld sp, $0230                                  ; $6063: $31 $30 $02
    ld b, b                                       ; $6066: $40
    add c                                         ; $6067: $81
    jr nc, jr_0ed_6071                            ; $6068: $30 $07

    nop                                           ; $606a: $00
    rst $38                                       ; $606b: $ff
    dec c                                         ; $606c: $0d
    inc b                                         ; $606d: $04
    ld hl, sp+$0f                                 ; $606e: $f8 $0f
    jp hl                                         ; $6070: $e9


jr_0ed_6071:
    ld bc, $fceb                                  ; $6071: $01 $eb $fc
    db $eb                                        ; $6074: $eb
    nop                                           ; $6075: $00
    ei                                            ; $6076: $fb
    cp $fb                                        ; $6077: $fe $fb
    nop                                           ; $6079: $00
    ld [bc], a                                    ; $607a: $02
    rrca                                          ; $607b: $0f
    sub b                                         ; $607c: $90
    ld de, $241f                                  ; $607d: $11 $1f $24
    ccf                                           ; $6080: $3f
    dec hl                                        ; $6081: $2b
    ccf                                           ; $6082: $3f
    scf                                           ; $6083: $37
    dec a                                         ; $6084: $3d
    rra                                           ; $6085: $1f
    inc e                                         ; $6086: $1c
    rra                                           ; $6087: $1f
    inc d                                         ; $6088: $14
    rrca                                          ; $6089: $0f
    inc c                                         ; $608a: $0c
    rrca                                          ; $608b: $0f
    ld c, $02                                     ; $608c: $0e $02
    inc sp                                        ; $608e: $33
    ld [bc], a                                    ; $608f: $02
    ld a, b                                       ; $6090: $78
    add h                                         ; $6091: $84
    db $fc                                        ; $6092: $fc
    add h                                         ; $6093: $84
    ld a, h                                       ; $6094: $7c
    ld h, h                                       ; $6095: $64
    ld [bc], a                                    ; $6096: $02
    jr jr_0ed_609d                                ; $6097: $18 $04

    db $10                                        ; $6099: $10
    ld [bc], a                                    ; $609a: $02
    inc c                                         ; $609b: $0c
    add c                                         ; $609c: $81

jr_0ed_609d:
    ld a, [bc]                                    ; $609d: $0a
    inc bc                                        ; $609e: $03
    ld c, $8c                                     ; $609f: $0e $8c
    inc c                                         ; $60a1: $0c
    inc b                                         ; $60a2: $04
    ld c, $0a                                     ; $60a3: $0e $0a
    rrca                                          ; $60a5: $0f
    ld bc, $020e                                  ; $60a6: $01 $0e $02
    ld c, $06                                     ; $60a9: $0e $06
    ld c, $02                                     ; $60ab: $0e $02
    ld [bc], a                                    ; $60ad: $02
    inc c                                         ; $60ae: $0c
    ld [bc], a                                    ; $60af: $02
    ld [$0402], sp                                ; $60b0: $08 $02 $04
    ld [bc], a                                    ; $60b3: $02
    ld b, $84                                     ; $60b4: $06 $84
    rlca                                          ; $60b6: $07
    ld bc, $0507                                  ; $60b7: $01 $07 $05
    ld [bc], a                                    ; $60ba: $02
    ld b, $02                                     ; $60bb: $06 $02
    ld a, l                                       ; $60bd: $7d
    ld [bc], a                                    ; $60be: $02
    dec h                                         ; $60bf: $25
    ld [bc], a                                    ; $60c0: $02
    ld c, h                                       ; $60c1: $4c
    ld [bc], a                                    ; $60c2: $02
    ld c, l                                       ; $60c3: $4d
    ld [bc], a                                    ; $60c4: $02
    or [hl]                                       ; $60c5: $b6
    ld [bc], a                                    ; $60c6: $02
    rst $08                                       ; $60c7: $cf
    ld [bc], a                                    ; $60c8: $02
    ld hl, sp+$16                                 ; $60c9: $f8 $16
    nop                                           ; $60cb: $00
    inc b                                         ; $60cc: $04
    ld [bc], a                                    ; $60cd: $02
    add d                                         ; $60ce: $82
    inc bc                                        ; $60cf: $03
    ld bc, $0302                                  ; $60d0: $01 $02 $03
    inc d                                         ; $60d3: $14
    nop                                           ; $60d4: $00
    rst $38                                       ; $60d5: $ff
    rlca                                          ; $60d6: $07
    ld bc, $0ff8                                  ; $60d7: $01 $f8 $0f
    jp hl                                         ; $60da: $e9


    ld bc, $fef4                                  ; $60db: $01 $f4 $fe
    adc [hl]                                      ; $60de: $8e
    nop                                           ; $60df: $00
    jr nc, jr_0ed_60e2                            ; $60e0: $30 $00

jr_0ed_60e2:
    inc e                                         ; $60e2: $1c
    nop                                           ; $60e3: $00
    ld c, $00                                     ; $60e4: $0e $00
    ld c, $00                                     ; $60e6: $0e $00
    ld e, $00                                     ; $60e8: $1e $00
    ld a, $00                                     ; $60ea: $3e $00
    ld a, $02                                     ; $60ec: $3e $02
    ld [bc], a                                    ; $60ee: $02
    ld [bc], a                                    ; $60ef: $02
    ld a, [de]                                    ; $60f0: $1a
    ld [bc], a                                    ; $60f1: $02
    inc sp                                        ; $60f2: $33
    ld [bc], a                                    ; $60f3: $02
    ld [hl-], a                                   ; $60f4: $32
    add e                                         ; $60f5: $83
    ld c, c                                       ; $60f6: $49

jr_0ed_60f7:
    ld c, b                                       ; $60f7: $48
    jr nc, jr_0ed_6101                            ; $60f8: $30 $07

    nop                                           ; $60fa: $00
    rst $38                                       ; $60fb: $ff
    dec c                                         ; $60fc: $0d
    inc b                                         ; $60fd: $04
    ld hl, sp+$0f                                 ; $60fe: $f8 $0f
    jp hl                                         ; $6100: $e9


jr_0ed_6101:
    ld bc, $feec                                  ; $6101: $01 $ec $fe
    db $ec                                        ; $6104: $ec
    ld bc, $fefc                                  ; $6105: $01 $fc $fe
    db $fc                                        ; $6108: $fc
    rst $38                                       ; $6109: $ff
    ld [bc], a                                    ; $610a: $02
    rra                                           ; $610b: $1f
    adc [hl]                                      ; $610c: $8e
    ld sp, $4d3f                                  ; $610d: $31 $3f $4d
    ld a, a                                       ; $6110: $7f
    ld d, e                                       ; $6111: $53
    ld a, [hl]                                    ; $6112: $7e
    ld l, a                                       ; $6113: $6f
    ld a, l                                       ; $6114: $7d
    ccf                                           ; $6115: $3f
    jr c, @+$41                                   ; $6116: $38 $3f

    inc [hl]                                      ; $6118: $34
    rra                                           ; $6119: $1f
    jr jr_0ed_611e                                ; $611a: $18 $02

    rra                                           ; $611c: $1f
    add h                                         ; $611d: $84

jr_0ed_611e:
    ccf                                           ; $611e: $3f
    jr nz, @+$61                                  ; $611f: $20 $5f

    ld e, [hl]                                    ; $6121: $5e
    ld [bc], a                                    ; $6122: $02
    ld d, e                                       ; $6123: $53
    inc b                                         ; $6124: $04
    add c                                         ; $6125: $81
    add d                                         ; $6126: $82
    ld a, e                                       ; $6127: $7b
    ld a, d                                       ; $6128: $7a
    ld [bc], a                                    ; $6129: $02
    scf                                           ; $612a: $37
    ld [bc], a                                    ; $612b: $02
    inc b                                         ; $612c: $04
    add d                                         ; $612d: $82
    ld [bc], a                                    ; $612e: $02
    ld b, $04                                     ; $612f: $06 $04
    inc b                                         ; $6131: $04
    ld [bc], a                                    ; $6132: $02
    ld b, $86                                     ; $6133: $06 $86
    rlca                                          ; $6135: $07
    ld bc, $0206                                  ; $6136: $01 $06 $02
    ld b, $02                                     ; $6139: $06 $02
    inc bc                                        ; $613b: $03
    ld b, $83                                     ; $613c: $06 $83
    ld [bc], a                                    ; $613e: $02
    ld b, $02                                     ; $613f: $06 $02
    ld [bc], a                                    ; $6141: $02
    inc b                                         ; $6142: $04
    inc b                                         ; $6143: $04
    nop                                           ; $6144: $00
    ld [bc], a                                    ; $6145: $02
    inc b                                         ; $6146: $04
    ld [bc], a                                    ; $6147: $02
    nop                                           ; $6148: $00
    inc b                                         ; $6149: $04
    dec h                                         ; $614a: $25
    ld [bc], a                                    ; $614b: $02
    rst $00                                       ; $614c: $c7
    ld [bc], a                                    ; $614d: $02
    cp $02                                        ; $614e: $fe $02
    ld c, a                                       ; $6150: $4f
    ld [bc], a                                    ; $6151: $02
    jr c, jr_0ed_616e                             ; $6152: $38 $1a

    nop                                           ; $6154: $00
    inc b                                         ; $6155: $04
    ld bc, $0016                                  ; $6156: $01 $16 $00
    rst $38                                       ; $6159: $ff
    rlca                                          ; $615a: $07
    ld bc, $0ff8                                  ; $615b: $01 $f8 $0f
    jp hl                                         ; $615e: $e9


    ld bc, $fef6                                  ; $615f: $01 $f6 $fe
    adc d                                         ; $6162: $8a
    nop                                           ; $6163: $00
    jr nz, jr_0ed_6166                            ; $6164: $20 $00

jr_0ed_6166:
    inc l                                         ; $6166: $2c
    nop                                           ; $6167: $00
    ld a, [hl]                                    ; $6168: $7e
    nop                                           ; $6169: $00
    ld a, [hl]                                    ; $616a: $7e
    nop                                           ; $616b: $00
    inc b                                         ; $616c: $04
    ld [bc], a                                    ; $616d: $02

jr_0ed_616e:
    ld [$1a04], sp                                ; $616e: $08 $04 $1a
    ld [bc], a                                    ; $6171: $02
    jr c, jr_0ed_60f7                             ; $6172: $38 $83

    ld bc, $3000                                  ; $6174: $01 $00 $30
    dec bc                                        ; $6177: $0b
    nop                                           ; $6178: $00

jr_0ed_6179:
    rst $38                                       ; $6179: $ff
    dec c                                         ; $617a: $0d
    inc b                                         ; $617b: $04
    ld hl, sp+$0f                                 ; $617c: $f8 $0f
    jp hl                                         ; $617e: $e9


    ld bc, $ffec                                  ; $617f: $01 $ec $ff
    db $ec                                        ; $6182: $ec
    rlca                                          ; $6183: $07
    push af                                       ; $6184: $f5
    ld [$fffc], sp                                ; $6185: $08 $fc $ff
    ld [bc], a                                    ; $6188: $02
    ld b, $8b                                     ; $6189: $06 $8b
    add hl, bc                                    ; $618b: $09
    rrca                                          ; $618c: $0f
    inc d                                         ; $618d: $14
    rra                                           ; $618e: $1f
    db $10                                        ; $618f: $10
    rra                                           ; $6190: $1f
    dec e                                         ; $6191: $1d
    rra                                           ; $6192: $1f
    ld a, [de]                                    ; $6193: $1a
    rra                                           ; $6194: $1f
    dec c                                         ; $6195: $0d
    ld [bc], a                                    ; $6196: $02
    rrca                                          ; $6197: $0f
    add c                                         ; $6198: $81
    ld c, $02                                     ; $6199: $0e $02
    ccf                                           ; $619b: $3f
    add d                                         ; $619c: $82
    ld [hl], c                                    ; $619d: $71
    ld d, c                                       ; $619e: $51
    ld [bc], a                                    ; $619f: $02
    ld h, h                                       ; $61a0: $64
    ld [bc], a                                    ; $61a1: $02
    add e                                         ; $61a2: $83
    inc b                                         ; $61a3: $04
    ld b, c                                       ; $61a4: $41
    ld [bc], a                                    ; $61a5: $02
    ld [hl-], a                                   ; $61a6: $32
    ld [bc], a                                    ; $61a7: $02
    ld l, $02                                     ; $61a8: $2e $02
    ret nz                                        ; $61aa: $c0

    add c                                         ; $61ab: $81
    jr nz, jr_0ed_61b1                            ; $61ac: $20 $03

    ldh [$83], a                                  ; $61ae: $e0 $83
    and b                                         ; $61b0: $a0

jr_0ed_61b1:
    ldh [$60], a                                  ; $61b1: $e0 $60
    ld [bc], a                                    ; $61b3: $02
    ldh [$85], a                                  ; $61b4: $e0 $85
    and b                                         ; $61b6: $a0
    ldh [rNR41], a                                ; $61b7: $e0 $20
    ret nz                                        ; $61b9: $c0

    ld b, b                                       ; $61ba: $40
    inc bc                                        ; $61bb: $03
    rst $38                                       ; $61bc: $ff
    add e                                         ; $61bd: $83
    nop                                           ; $61be: $00
    rst $38                                       ; $61bf: $ff
    db $fc                                        ; $61c0: $fc
    ld [bc], a                                    ; $61c1: $02
    inc bc                                        ; $61c2: $03
    ld [$0400], sp                                ; $61c3: $08 $00 $04
    ld bc, $001c                                  ; $61c6: $01 $1c $00
    ld [bc], a                                    ; $61c9: $02
    ld [hl], $02                                  ; $61ca: $36 $02
    add $02                                       ; $61cc: $c6 $02
    adc $02                                       ; $61ce: $ce $02
    ld a, l                                       ; $61d0: $7d
    ld [bc], a                                    ; $61d1: $02
    ld e, a                                       ; $61d2: $5f
    ld [bc], a                                    ; $61d3: $02
    jr nc, jr_0ed_61ea                            ; $61d4: $30 $14

    nop                                           ; $61d6: $00
    rst $38                                       ; $61d7: $ff
    rlca                                          ; $61d8: $07
    ld bc, $0ff8                                  ; $61d9: $01 $f8 $0f
    jp hl                                         ; $61dc: $e9


    ld bc, $fff5                                  ; $61dd: $01 $f5 $ff
    adc h                                         ; $61e0: $8c
    nop                                           ; $61e1: $00
    ld c, $00                                     ; $61e2: $0e $00
    dec de                                        ; $61e4: $1b
    nop                                           ; $61e5: $00
    ld a, h                                       ; $61e6: $7c
    nop                                           ; $61e7: $00
    ld a, $00                                     ; $61e8: $3e $00

jr_0ed_61ea:
    ld a, $00                                     ; $61ea: $3e $00
    inc c                                         ; $61ec: $0c
    ld [bc], a                                    ; $61ed: $02
    db $10                                        ; $61ee: $10
    ld [bc], a                                    ; $61ef: $02
    ld [$3802], sp                                ; $61f0: $08 $02 $38
    ld [bc], a                                    ; $61f3: $02
    jr nc, jr_0ed_6179                            ; $61f4: $30 $83

    ld [bc], a                                    ; $61f6: $02
    nop                                           ; $61f7: $00
    jr nz, @+$0b                                  ; $61f8: $20 $09

    nop                                           ; $61fa: $00
    rst $38                                       ; $61fb: $ff

jr_0ed_61fc:
    dec c                                         ; $61fc: $0d
    inc b                                         ; $61fd: $04
    ld hl, sp+$0f                                 ; $61fe: $f8 $0f
    jp hl                                         ; $6200: $e9


    ld bc, $feec                                  ; $6201: $01 $ec $fe
    db $ec                                        ; $6204: $ec
    dec b                                         ; $6205: $05
    db $fc                                        ; $6206: $fc
    cp $fc                                        ; $6207: $fe $fc
    rst $38                                       ; $6209: $ff
    ld [bc], a                                    ; $620a: $02
    rra                                           ; $620b: $1f
    sub b                                         ; $620c: $90
    ld sp, $4d3f                                  ; $620d: $31 $3f $4d
    ld a, a                                       ; $6210: $7f
    ld d, e                                       ; $6211: $53
    ld a, [hl]                                    ; $6212: $7e
    ld l, a                                       ; $6213: $6f
    ld a, l                                       ; $6214: $7d
    ccf                                           ; $6215: $3f
    jr c, jr_0ed_6257                             ; $6216: $38 $3f

    inc [hl]                                      ; $6218: $34
    rra                                           ; $6219: $1f
    jr @+$21                                      ; $621a: $18 $1f

    add hl, de                                    ; $621c: $19
    ld [bc], a                                    ; $621d: $02
    daa                                           ; $621e: $27
    add d                                         ; $621f: $82
    inc hl                                        ; $6220: $23
    ld [hl+], a                                   ; $6221: $22
    ld [bc], a                                    ; $6222: $02
    cpl                                           ; $6223: $2f
    ld [bc], a                                    ; $6224: $02
    ld b, c                                       ; $6225: $41
    ld [bc], a                                    ; $6226: $02
    add c                                         ; $6227: $81
    add d                                         ; $6228: $82
    ld a, e                                       ; $6229: $7b
    ld a, d                                       ; $622a: $7a
    ld [bc], a                                    ; $622b: $02
    scf                                           ; $622c: $37
    ld [bc], a                                    ; $622d: $02
    ld b, b                                       ; $622e: $40
    add d                                         ; $622f: $82
    jr nz, jr_0ed_6292                            ; $6230: $20 $60

    inc b                                         ; $6232: $04
    ld b, b                                       ; $6233: $40
    ld [bc], a                                    ; $6234: $02
    ld h, b                                       ; $6235: $60
    add [hl]                                      ; $6236: $86
    ld [hl], b                                    ; $6237: $70
    db $10                                        ; $6238: $10
    ld h, b                                       ; $6239: $60
    jr nz, jr_0ed_629c                            ; $623a: $20 $60

    jr nz, @+$06                                  ; $623c: $20 $04

    ld b, b                                       ; $623e: $40
    adc b                                         ; $623f: $88
    ld a, b                                       ; $6240: $78
    jr c, jr_0ed_62c1                             ; $6241: $38 $7e

    ld b, [hl]                                    ; $6243: $46
    ld a, a                                       ; $6244: $7f
    ld a, c                                       ; $6245: $79
    rrca                                          ; $6246: $0f
    add hl, bc                                    ; $6247: $09
    ld [bc], a                                    ; $6248: $02
    ld b, a                                       ; $6249: $47
    ld [bc], a                                    ; $624a: $02
    nop                                           ; $624b: $00
    inc b                                         ; $624c: $04
    dec h                                         ; $624d: $25
    ld [bc], a                                    ; $624e: $02
    rst $00                                       ; $624f: $c7
    ld [bc], a                                    ; $6250: $02
    cp $02                                        ; $6251: $fe $02
    ld c, a                                       ; $6253: $4f
    ld [bc], a                                    ; $6254: $02
    jr c, jr_0ed_6271                             ; $6255: $38 $1a

jr_0ed_6257:
    nop                                           ; $6257: $00
    inc b                                         ; $6258: $04
    ld bc, $0016                                  ; $6259: $01 $16 $00
    rst $38                                       ; $625c: $ff
    rlca                                          ; $625d: $07
    ld bc, $0ff8                                  ; $625e: $01 $f8 $0f
    jp hl                                         ; $6261: $e9


    ld bc, $fef5                                  ; $6262: $01 $f5 $fe
    adc h                                         ; $6265: $8c
    nop                                           ; $6266: $00
    jr jr_0ed_6269                                ; $6267: $18 $00

jr_0ed_6269:
    inc e                                         ; $6269: $1c
    nop                                           ; $626a: $00
    stop                                          ; $626b: $10 $00
    ld a, $00                                     ; $626d: $3e $00
    ld a, [hl]                                    ; $626f: $7e
    nop                                           ; $6270: $00

jr_0ed_6271:
    inc b                                         ; $6271: $04
    ld [bc], a                                    ; $6272: $02
    ld [$1a04], sp                                ; $6273: $08 $04 $1a
    ld [bc], a                                    ; $6276: $02
    jr c, jr_0ed_61fc                             ; $6277: $38 $83

    ld bc, $3000                                  ; $6279: $01 $00 $30
    add hl, bc                                    ; $627c: $09
    nop                                           ; $627d: $00
    rst $38                                       ; $627e: $ff
    dec bc                                        ; $627f: $0b
    inc bc                                        ; $6280: $03
    ld hl, sp+$0f                                 ; $6281: $f8 $0f
    jp hl                                         ; $6283: $e9


    ld bc, $f9eb                                  ; $6284: $01 $eb $f9
    db $ed                                        ; $6287: $ed
    rst $38                                       ; $6288: $ff
    ei                                            ; $6289: $fb
    ei                                            ; $628a: $fb
    ld [bc], a                                    ; $628b: $02
    ld a, $83                                     ; $628c: $3e $83
    ld b, l                                       ; $628e: $45
    ld a, a                                       ; $628f: $7f
    cp d                                          ; $6290: $ba
    ld [bc], a                                    ; $6291: $02

jr_0ed_6292:
    rst $38                                       ; $6292: $ff
    adc l                                         ; $6293: $8d
    push bc                                       ; $6294: $c5
    rst $38                                       ; $6295: $ff
    cp e                                          ; $6296: $bb
    rst $38                                       ; $6297: $ff
    ret z                                         ; $6298: $c8

    rst $38                                       ; $6299: $ff
    push bc                                       ; $629a: $c5
    ld a, a                                       ; $629b: $7f

jr_0ed_629c:
    ld c, l                                       ; $629c: $4d
    ld a, a                                       ; $629d: $7f
    ld l, a                                       ; $629e: $6f
    ccf                                           ; $629f: $3f
    inc sp                                        ; $62a0: $33
    ld [bc], a                                    ; $62a1: $02
    inc e                                         ; $62a2: $1c
    ld [bc], a                                    ; $62a3: $02
    jr z, jr_0ed_62a8                             ; $62a4: $28 $02

    ld d, b                                       ; $62a6: $50
    inc bc                                        ; $62a7: $03

jr_0ed_62a8:
    ld a, b                                       ; $62a8: $78
    add e                                         ; $62a9: $83
    ld e, b                                       ; $62aa: $58
    jr c, @+$2a                                   ; $62ab: $38 $28

    ld a, [bc]                                    ; $62ad: $0a
    jr nz, jr_0ed_62b6                            ; $62ae: $20 $06

    nop                                           ; $62b0: $00
    inc b                                         ; $62b1: $04
    jr nz, jr_0ed_62b6                            ; $62b2: $20 $02

    ld e, $82                                     ; $62b4: $1e $82

jr_0ed_62b6:
    rra                                           ; $62b6: $1f
    add hl, de                                    ; $62b7: $19
    ld [bc], a                                    ; $62b8: $02
    ld c, $02                                     ; $62b9: $0e $02
    ld [$3002], sp                                ; $62bb: $08 $02 $30
    ld [bc], a                                    ; $62be: $02
    ret nc                                        ; $62bf: $d0

    add h                                         ; $62c0: $84

jr_0ed_62c1:
    ldh a, [$90]                                  ; $62c1: $f0 $90
    ldh a, [$a0]                                  ; $62c3: $f0 $a0
    ld [bc], a                                    ; $62c5: $02
    ld a, l                                       ; $62c6: $7d
    ld [bc], a                                    ; $62c7: $02
    ld b, a                                       ; $62c8: $47
    ld [bc], a                                    ; $62c9: $02
    ld c, [hl]                                    ; $62ca: $4e
    ld [bc], a                                    ; $62cb: $02
    inc sp                                        ; $62cc: $33
    ld [bc], a                                    ; $62cd: $02
    ld a, $12                                     ; $62ce: $3e $12
    nop                                           ; $62d0: $00
    rst $38                                       ; $62d1: $ff
    rlca                                          ; $62d2: $07
    ld bc, $0ff8                                  ; $62d3: $01 $f8 $0f
    jp hl                                         ; $62d6: $e9


    ld bc, $fbf5                                  ; $62d7: $01 $f5 $fb
    adc [hl]                                      ; $62da: $8e
    nop                                           ; $62db: $00
    inc c                                         ; $62dc: $0c
    nop                                           ; $62dd: $00
    ld e, h                                       ; $62de: $5c
    nop                                           ; $62df: $00
    cp [hl]                                       ; $62e0: $be
    nop                                           ; $62e1: $00
    ld e, $00                                     ; $62e2: $1e $00
    rra                                           ; $62e4: $1f
    nop                                           ; $62e5: $00
    rra                                           ; $62e6: $1f
    nop                                           ; $62e7: $00
    inc c                                         ; $62e8: $0c
    inc b                                         ; $62e9: $04
    ld [bc], a                                    ; $62ea: $02
    ld [bc], a                                    ; $62eb: $02
    jr c, jr_0ed_62f0                             ; $62ec: $38 $02

    jr nc, jr_0ed_6271                            ; $62ee: $30 $81

jr_0ed_62f0:
    inc c                                         ; $62f0: $0c
    add hl, bc                                    ; $62f1: $09
    nop                                           ; $62f2: $00
    rst $38                                       ; $62f3: $ff
    dec c                                         ; $62f4: $0d
    inc b                                         ; $62f5: $04
    ld hl, sp+$0f                                 ; $62f6: $f8 $0f
    jp hl                                         ; $62f8: $e9


    ld bc, $f8eb                                  ; $62f9: $01 $eb $f8
    db $eb                                        ; $62fc: $eb
    rst $38                                       ; $62fd: $ff
    ei                                            ; $62fe: $fb
    ei                                            ; $62ff: $fb

jr_0ed_6300:
    ei                                            ; $6300: $fb
    db $fc                                        ; $6301: $fc
    ld [bc], a                                    ; $6302: $02
    dec c                                         ; $6303: $0d
    add e                                         ; $6304: $83
    ld [de], a                                    ; $6305: $12
    rra                                           ; $6306: $1f
    ld l, $02                                     ; $6307: $2e $02
    ccf                                           ; $6309: $3f
    adc e                                         ; $630a: $8b
    ld sp, $2e3f                                  ; $630b: $31 $3f $2e
    ccf                                           ; $630e: $3f
    ld [hl-], a                                   ; $630f: $32
    ccf                                           ; $6310: $3f
    ld sp, $131f                                  ; $6311: $31 $1f $13
    rra                                           ; $6314: $1f
    jr jr_0ed_6319                                ; $6315: $18 $02

    rrca                                          ; $6317: $0f
    ld [bc], a                                    ; $6318: $02

jr_0ed_6319:
    inc sp                                        ; $6319: $33
    ld [bc], a                                    ; $631a: $02
    ld d, h                                       ; $631b: $54
    add [hl]                                      ; $631c: $86
    cp $ba                                        ; $631d: $fe $ba
    ld a, h                                       ; $631f: $7c
    ld b, h                                       ; $6320: $44
    jr c, jr_0ed_634b                             ; $6321: $38 $28

    ld [bc], a                                    ; $6323: $02
    db $10                                        ; $6324: $10
    ld [bc], a                                    ; $6325: $02
    ld b, b                                       ; $6326: $40
    add e                                         ; $6327: $83
    jr nz, jr_0ed_638a                            ; $6328: $20 $60

    ld d, b                                       ; $632a: $50
    ld [bc], a                                    ; $632b: $02
    ld [hl], b                                    ; $632c: $70
    add c                                         ; $632d: $81
    jr nc, jr_0ed_6332                            ; $632e: $30 $02

    ld [hl], b                                    ; $6330: $70
    adc h                                         ; $6331: $8c

jr_0ed_6332:
    ld [hl], h                                    ; $6332: $74
    inc d                                         ; $6333: $14
    ld a, [hl]                                    ; $6334: $7e
    ld a, [hl-]                                   ; $6335: $3a
    ld l, a                                       ; $6336: $6f
    add hl, hl                                    ; $6337: $29
    ld l, a                                       ; $6338: $6f
    ld l, l                                       ; $6339: $6d
    ld a, [hl]                                    ; $633a: $7e
    halt                                          ; $633b: $76
    jr c, jr_0ed_6366                             ; $633c: $38 $28

    ld [bc], a                                    ; $633e: $02
    ld [hl], b                                    ; $633f: $70
    inc b                                         ; $6340: $04
    jr nz, @+$06                                  ; $6341: $20 $04

    db $10                                        ; $6343: $10
    ld [bc], a                                    ; $6344: $02
    call $6e02                                    ; $6345: $cd $02 $6e
    ld [bc], a                                    ; $6348: $02
    ld l, l                                       ; $6349: $6d
    ld [bc], a                                    ; $634a: $02

jr_0ed_634b:
    ld b, [hl]                                    ; $634b: $46
    ld [bc], a                                    ; $634c: $02
    cp a                                          ; $634d: $bf
    ld [bc], a                                    ; $634e: $02
    call z, Call_0ed_7802                         ; $634f: $cc $02 $78
    inc d                                         ; $6352: $14
    nop                                           ; $6353: $00
    ld [bc], a                                    ; $6354: $02
    ld bc, $0002                                  ; $6355: $01 $02 $00
    inc b                                         ; $6358: $04
    ld bc, $0016                                  ; $6359: $01 $16 $00
    rst $38                                       ; $635c: $ff
    add hl, bc                                    ; $635d: $09
    ld [bc], a                                    ; $635e: $02
    ld hl, sp+$0f                                 ; $635f: $f8 $0f
    jp hl                                         ; $6361: $e9


    ld bc, $faf5                                  ; $6362: $01 $f5 $fa
    push af                                       ; $6365: $f5

jr_0ed_6366:
    ei                                            ; $6366: $fb
    adc [hl]                                      ; $6367: $8e
    nop                                           ; $6368: $00
    ld [hl-], a                                   ; $6369: $32
    nop                                           ; $636a: $00
    xor h                                         ; $636b: $ac
    nop                                           ; $636c: $00
    ld b, $00                                     ; $636d: $06 $00
    ld c, $00                                     ; $636f: $0e $00
    rra                                           ; $6371: $1f
    nop                                           ; $6372: $00
    ccf                                           ; $6373: $3f
    ld bc, $0219                                  ; $6374: $01 $19 $02
    ld [$0902], sp                                ; $6377: $08 $02 $09
    ld [bc], a                                    ; $637a: $02
    inc e                                         ; $637b: $1c
    ld [bc], a                                    ; $637c: $02
    jr nz, jr_0ed_6300                            ; $637d: $20 $81

    jr jr_0ed_6398                                ; $637f: $18 $17

    nop                                           ; $6381: $00
    ld [bc], a                                    ; $6382: $02
    ld bc, $0002                                  ; $6383: $01 $02 $00
    add c                                         ; $6386: $81
    ld bc, $000d                                  ; $6387: $01 $0d $00

jr_0ed_638a:
    rst $38                                       ; $638a: $ff
    dec c                                         ; $638b: $0d
    inc b                                         ; $638c: $04
    ld hl, sp+$0f                                 ; $638d: $f8 $0f
    jp hl                                         ; $638f: $e9


    ld bc, $f9ec                                  ; $6390: $01 $ec $f9
    db $ec                                        ; $6393: $ec
    db $fd                                        ; $6394: $fd
    db $fc                                        ; $6395: $fc
    ei                                            ; $6396: $fb
    db $fc                                        ; $6397: $fc

jr_0ed_6398:
    db $fc                                        ; $6398: $fc
    ld [bc], a                                    ; $6399: $02
    rra                                           ; $639a: $1f
    sub b                                         ; $639b: $90
    ld [hl+], a                                   ; $639c: $22
    ccf                                           ; $639d: $3f
    ld d, [hl]                                    ; $639e: $56
    ld a, a                                       ; $639f: $7f
    ld l, a                                       ; $63a0: $6f
    ld a, c                                       ; $63a1: $79
    ld e, a                                       ; $63a2: $5f
    ld a, [hl]                                    ; $63a3: $7e
    ccf                                           ; $63a4: $3f
    ld [hl-], a                                   ; $63a5: $32
    ccf                                           ; $63a6: $3f
    ld hl, $131f                                  ; $63a7: $21 $1f $13
    rra                                           ; $63aa: $1f
    jr jr_0ed_63af                                ; $63ab: $18 $02

    rla                                           ; $63ad: $17
    ld [bc], a                                    ; $63ae: $02

jr_0ed_63af:
    jr nz, jr_0ed_63b3                            ; $63af: $20 $02

    ld d, b                                       ; $63b1: $50
    add [hl]                                      ; $63b2: $86

jr_0ed_63b3:
    pop af                                        ; $63b3: $f1
    or c                                          ; $63b4: $b1
    db $f4                                        ; $63b5: $f4
    sub h                                         ; $63b6: $94
    ld a, [hl]                                    ; $63b7: $7e
    ld c, d                                       ; $63b8: $4a
    ld [bc], a                                    ; $63b9: $02
    inc [hl]                                      ; $63ba: $34
    ld [bc], a                                    ; $63bb: $02
    ld [$0481], sp                                ; $63bc: $08 $81 $04
    inc b                                         ; $63bf: $04
    inc c                                         ; $63c0: $0c
    add c                                         ; $63c1: $81
    inc b                                         ; $63c2: $04
    inc bc                                        ; $63c3: $03
    inc c                                         ; $63c4: $0c
    add l                                         ; $63c5: $85
    inc b                                         ; $63c6: $04
    inc c                                         ; $63c7: $0c
    inc b                                         ; $63c8: $04
    inc c                                         ; $63c9: $0c
    inc b                                         ; $63ca: $04
    inc b                                         ; $63cb: $04
    ld [$0e02], sp                                ; $63cc: $08 $02 $0e
    add h                                         ; $63cf: $84
    rrca                                          ; $63d0: $0f
    dec c                                         ; $63d1: $0d
    rrca                                          ; $63d2: $0f
    add hl, bc                                    ; $63d3: $09
    ld [bc], a                                    ; $63d4: $02
    ld c, $02                                     ; $63d5: $0e $02
    inc b                                         ; $63d7: $04
    ld [bc], a                                    ; $63d8: $02
    ld [$ed02], sp                                ; $63d9: $08 $02 $ed
    ld [bc], a                                    ; $63dc: $02
    ld h, l                                       ; $63dd: $65
    ld [bc], a                                    ; $63de: $02
    ld c, l                                       ; $63df: $4d
    ld [bc], a                                    ; $63e0: $02
    or [hl]                                       ; $63e1: $b6
    ld [bc], a                                    ; $63e2: $02
    rst $08                                       ; $63e3: $cf
    ld [bc], a                                    ; $63e4: $02
    ld a, b                                       ; $63e5: $78
    ld a, [de]                                    ; $63e6: $1a
    nop                                           ; $63e7: $00
    inc b                                         ; $63e8: $04
    ld bc, $0016                                  ; $63e9: $01 $16 $00
    rst $38                                       ; $63ec: $ff
    rlca                                          ; $63ed: $07
    ld bc, $0ff8                                  ; $63ee: $01 $f8 $0f
    jp hl                                         ; $63f1: $e9


    ld bc, $fbf5                                  ; $63f2: $01 $f5 $fb
    adc [hl]                                      ; $63f5: $8e
    nop                                           ; $63f6: $00
    jr nz, jr_0ed_63f9                            ; $63f7: $20 $00

jr_0ed_63f9:
    ld a, h                                       ; $63f9: $7c
    nop                                           ; $63fa: $00
    cp h                                          ; $63fb: $bc
    nop                                           ; $63fc: $00
    jr c, jr_0ed_63ff                             ; $63fd: $38 $00

jr_0ed_63ff:
    inc l                                         ; $63ff: $2c
    nop                                           ; $6400: $00
    ld b, $00                                     ; $6401: $06 $00
    inc l                                         ; $6403: $2c
    ld [bc], a                                    ; $6404: $02
    ld [de], a                                    ; $6405: $12
    ld [bc], a                                    ; $6406: $02
    ld a, [de]                                    ; $6407: $1a
    ld [bc], a                                    ; $6408: $02
    ld [hl-], a                                   ; $6409: $32
    add e                                         ; $640a: $83
    ld c, c                                       ; $640b: $49
    ld c, b                                       ; $640c: $48
    jr nc, @+$0b                                  ; $640d: $30 $09

    nop                                           ; $640f: $00
    rst $38                                       ; $6410: $ff
    dec bc                                        ; $6411: $0b
    inc bc                                        ; $6412: $03
    ld hl, sp+$0f                                 ; $6413: $f8 $0f
    jp hl                                         ; $6415: $e9


    ld bc, $fbec                                  ; $6416: $01 $ec $fb
    db $ed                                        ; $6419: $ed
    cp $fc                                        ; $641a: $fe $fc
    db $fc                                        ; $641c: $fc
    ld [bc], a                                    ; $641d: $02
    ccf                                           ; $641e: $3f
    sub b                                         ; $641f: $90
    ld b, [hl]                                    ; $6420: $46
    ld a, a                                       ; $6421: $7f
    sub e                                         ; $6422: $93
    rst $38                                       ; $6423: $ff
    xor a                                         ; $6424: $af
    db $fd                                        ; $6425: $fd
    rst $18                                       ; $6426: $df
    or $7f                                        ; $6427: $f6 $7f
    ld [hl], b                                    ; $6429: $70
    ld a, a                                       ; $642a: $7f
    ld d, b                                       ; $642b: $50
    ccf                                           ; $642c: $3f
    ld sp, $181f                                  ; $642d: $31 $1f $18
    ld [bc], a                                    ; $6430: $02
    scf                                           ; $6431: $37
    ld [bc], a                                    ; $6432: $02
    ld c, c                                       ; $6433: $49
    inc bc                                        ; $6434: $03
    ld [hl], b                                    ; $6435: $70
    add a                                         ; $6436: $87
    ld d, b                                       ; $6437: $50
    ld a, b                                       ; $6438: $78
    ld e, b                                       ; $6439: $58
    ccf                                           ; $643a: $3f
    daa                                           ; $643b: $27
    ccf                                           ; $643c: $3f
    add hl, hl                                    ; $643d: $29
    inc b                                         ; $643e: $04
    inc b                                         ; $643f: $04
    ld [bc], a                                    ; $6440: $02
    nop                                           ; $6441: $00
    ld [bc], a                                    ; $6442: $02
    inc b                                         ; $6443: $04
    add d                                         ; $6444: $82
    ld b, $02                                     ; $6445: $06 $02
    ld b, $04                                     ; $6447: $06 $04
    inc b                                         ; $6449: $04
    nop                                           ; $644a: $00
    inc b                                         ; $644b: $04
    inc b                                         ; $644c: $04
    ld [bc], a                                    ; $644d: $02
    ld b, $82                                     ; $644e: $06 $82
    rlca                                          ; $6450: $07
    dec b                                         ; $6451: $05
    ld [bc], a                                    ; $6452: $02
    ld b, $02                                     ; $6453: $06 $02
    ld hl, sp+$02                                 ; $6455: $f8 $02
    nop                                           ; $6457: $00
    ld [bc], a                                    ; $6458: $02
    ld h, d                                       ; $6459: $62
    ld [bc], a                                    ; $645a: $02
    ld e, [hl]                                    ; $645b: $5e
    ld [bc], a                                    ; $645c: $02
    ld h, a                                       ; $645d: $67
    ld [bc], a                                    ; $645e: $02
    ld e, $16                                     ; $645f: $1e $16
    nop                                           ; $6461: $00
    rst $38                                       ; $6462: $ff
    rlca                                          ; $6463: $07
    ld bc, $0ff8                                  ; $6464: $01 $f8 $0f
    jp hl                                         ; $6467: $e9


    ld bc, $fbf5                                  ; $6468: $01 $f5 $fb
    adc d                                         ; $646b: $8a
    nop                                           ; $646c: $00
    ld [$3600], sp                                ; $646d: $08 $00 $36
    nop                                           ; $6470: $00
    rrca                                          ; $6471: $0f
    nop                                           ; $6472: $00
    rrca                                          ; $6473: $0f
    nop                                           ; $6474: $00
    rlca                                          ; $6475: $07
    ld b, $00                                     ; $6476: $06 $00
    ld [bc], a                                    ; $6478: $02
    ld c, $83                                     ; $6479: $0e $83
    stop                                          ; $647b: $10 $00
    inc c                                         ; $647d: $0c
    dec bc                                        ; $647e: $0b
    nop                                           ; $647f: $00
    rst $38                                       ; $6480: $ff
    dec c                                         ; $6481: $0d
    inc b                                         ; $6482: $04
    ld hl, sp+$0f                                 ; $6483: $f8 $0f
    jp hl                                         ; $6485: $e9


    ld bc, $fceb                                  ; $6486: $01 $eb $fc
    db $ec                                        ; $6489: $ec
    rst $38                                       ; $648a: $ff
    ei                                            ; $648b: $fb
    db $fd                                        ; $648c: $fd
    ei                                            ; $648d: $fb
    nop                                           ; $648e: $00
    ld [bc], a                                    ; $648f: $02
    ccf                                           ; $6490: $3f
    sub b                                         ; $6491: $90
    ld b, [hl]                                    ; $6492: $46
    ld a, a                                       ; $6493: $7f
    sub e                                         ; $6494: $93
    rst $38                                       ; $6495: $ff
    xor a                                         ; $6496: $af
    db $fd                                        ; $6497: $fd
    rst $18                                       ; $6498: $df
    or $7f                                        ; $6499: $f6 $7f
    ld [hl], b                                    ; $649b: $70
    ld a, a                                       ; $649c: $7f
    ld d, b                                       ; $649d: $50
    ccf                                           ; $649e: $3f
    ld sp, $181f                                  ; $649f: $31 $1f $18
    ld [bc], a                                    ; $64a2: $02
    scf                                           ; $64a3: $37
    ld [bc], a                                    ; $64a4: $02
    dec h                                         ; $64a5: $25
    ld [bc], a                                    ; $64a6: $02
    inc [hl]                                      ; $64a7: $34
    add h                                         ; $64a8: $84
    ccf                                           ; $64a9: $3f
    dec sp                                        ; $64aa: $3b
    daa                                           ; $64ab: $27
    inc h                                         ; $64ac: $24
    ld [bc], a                                    ; $64ad: $02
    inc hl                                        ; $64ae: $23
    ld [bc], a                                    ; $64af: $02
    jr nz, jr_0ed_64b6                            ; $64b0: $20 $04

    inc b                                         ; $64b2: $04
    ld [bc], a                                    ; $64b3: $02
    nop                                           ; $64b4: $00
    ld [bc], a                                    ; $64b5: $02

jr_0ed_64b6:
    inc b                                         ; $64b6: $04
    add d                                         ; $64b7: $82
    ld b, $02                                     ; $64b8: $06 $02
    ld b, $04                                     ; $64ba: $06 $04
    inc b                                         ; $64bc: $04
    nop                                           ; $64bd: $00
    ld [bc], a                                    ; $64be: $02
    inc b                                         ; $64bf: $04
    inc b                                         ; $64c0: $04
    ld b, $84                                     ; $64c1: $06 $84
    rlca                                          ; $64c3: $07
    ld bc, $0507                                  ; $64c4: $01 $07 $05
    ld [bc], a                                    ; $64c7: $02
    rst $30                                       ; $64c8: $f7
    ld [bc], a                                    ; $64c9: $02
    ld b, b                                       ; $64ca: $40
    ld [bc], a                                    ; $64cb: $02
    dec h                                         ; $64cc: $25
    ld [bc], a                                    ; $64cd: $02
    daa                                           ; $64ce: $27
    ld [bc], a                                    ; $64cf: $02
    ld b, [hl]                                    ; $64d0: $46
    ld [bc], a                                    ; $64d1: $02
    rst $18                                       ; $64d2: $df
    ld [bc], a                                    ; $64d3: $02
    ld h, [hl]                                    ; $64d4: $66
    ld [bc], a                                    ; $64d5: $02
    ld a, h                                       ; $64d6: $7c
    inc d                                         ; $64d7: $14
    nop                                           ; $64d8: $00
    add d                                         ; $64d9: $82
    rlca                                          ; $64da: $07
    dec b                                         ; $64db: $05
    ld [bc], a                                    ; $64dc: $02
    ld [bc], a                                    ; $64dd: $02
    ld a, [de]                                    ; $64de: $1a
    nop                                           ; $64df: $00
    rst $38                                       ; $64e0: $ff
    rlca                                          ; $64e1: $07
    ld bc, $0ff8                                  ; $64e2: $01 $f8 $0f
    jp hl                                         ; $64e5: $e9


    ld bc, $fcf4                                  ; $64e6: $01 $f4 $fc
    add [hl]                                      ; $64e9: $86
    nop                                           ; $64ea: $00
    ld [$1a00], sp                                ; $64eb: $08 $00 $1a
    nop                                           ; $64ee: $00
    dec bc                                        ; $64ef: $0b
    inc bc                                        ; $64f0: $03
    nop                                           ; $64f1: $00
    add l                                         ; $64f2: $85
    jr jr_0ed_64f5                                ; $64f3: $18 $00

jr_0ed_64f5:
    inc e                                         ; $64f5: $1c
    nop                                           ; $64f6: $00
    rra                                           ; $64f7: $1f
    ld [bc], a                                    ; $64f8: $02
    ld bc, $0d02                                  ; $64f9: $01 $02 $0d
    ld [bc], a                                    ; $64fc: $02
    inc c                                         ; $64fd: $0c
    ld [bc], a                                    ; $64fe: $02
    inc e                                         ; $64ff: $1c
    ld [bc], a                                    ; $6500: $02
    db $10                                        ; $6501: $10
    add c                                         ; $6502: $81
    inc c                                         ; $6503: $0c
    rlca                                          ; $6504: $07
    nop                                           ; $6505: $00
    rst $38                                       ; $6506: $ff
    dec c                                         ; $6507: $0d
    inc b                                         ; $6508: $04
    ld hl, sp+$0f                                 ; $6509: $f8 $0f
    jp hl                                         ; $650b: $e9


    ld bc, $fdeb                                  ; $650c: $01 $eb $fd
    db $ec                                        ; $650f: $ec
    ld bc, $fefb                                  ; $6510: $01 $fb $fe
    ei                                            ; $6513: $fb
    rst $38                                       ; $6514: $ff
    ld [bc], a                                    ; $6515: $02
    ccf                                           ; $6516: $3f
    sub h                                         ; $6517: $94
    ld b, [hl]                                    ; $6518: $46
    ld a, a                                       ; $6519: $7f
    sub e                                         ; $651a: $93
    rst $38                                       ; $651b: $ff
    xor a                                         ; $651c: $af
    db $fd                                        ; $651d: $fd
    rst $18                                       ; $651e: $df
    or $7f                                        ; $651f: $f6 $7f
    ld [hl], b                                    ; $6521: $70
    ld a, a                                       ; $6522: $7f
    ld d, b                                       ; $6523: $50
    ccf                                           ; $6524: $3f
    ld sp, $1e1f                                  ; $6525: $31 $1f $1e
    cpl                                           ; $6528: $2f
    add hl, hl                                    ; $6529: $29
    ccf                                           ; $652a: $3f
    scf                                           ; $652b: $37
    ld [bc], a                                    ; $652c: $02
    dec l                                         ; $652d: $2d
    ld [bc], a                                    ; $652e: $02
    jr z, jr_0ed_6533                             ; $652f: $28 $02

    jr nz, jr_0ed_6535                            ; $6531: $20 $02

jr_0ed_6533:
    ld b, b                                       ; $6533: $40
    ld [bc], a                                    ; $6534: $02

jr_0ed_6535:
    ld b, c                                       ; $6535: $41
    ld [$8208], sp                                ; $6536: $08 $08 $82
    inc c                                         ; $6539: $0c
    inc b                                         ; $653a: $04
    inc b                                         ; $653b: $04
    inc c                                         ; $653c: $0c
    add [hl]                                      ; $653d: $86
    ld c, $02                                     ; $653e: $0e $02
    ld c, $0a                                     ; $6540: $0e $0a
    rrca                                          ; $6542: $0f
    dec c                                         ; $6543: $0d
    ld [bc], a                                    ; $6544: $02
    ld c, $02                                     ; $6545: $0e $02
    inc c                                         ; $6547: $0c
    add h                                         ; $6548: $84
    ld c, $0a                                     ; $6549: $0e $0a
    ld c, $0a                                     ; $654b: $0e $0a
    ld [bc], a                                    ; $654d: $02
    inc c                                         ; $654e: $0c
    ld [bc], a                                    ; $654f: $02
    db $ec                                        ; $6550: $ec
    ld [bc], a                                    ; $6551: $02
    ld h, b                                       ; $6552: $60
    ld [bc], a                                    ; $6553: $02
    ld h, $02                                     ; $6554: $26 $02
    ld c, l                                       ; $6556: $4d
    ld [bc], a                                    ; $6557: $02
    ld c, [hl]                                    ; $6558: $4e
    ld [bc], a                                    ; $6559: $02
    cp a                                          ; $655a: $bf
    ld [bc], a                                    ; $655b: $02
    ret z                                         ; $655c: $c8

    ld [bc], a                                    ; $655d: $02
    ld hl, sp+$14                                 ; $655e: $f8 $14
    nop                                           ; $6560: $00
    ld [bc], a                                    ; $6561: $02
    ld bc, $0002                                  ; $6562: $01 $02 $00
    inc b                                         ; $6565: $04
    ld bc, $0016                                  ; $6566: $01 $16 $00
    rst $38                                       ; $6569: $ff
    rlca                                          ; $656a: $07
    ld bc, $0ff8                                  ; $656b: $01 $f8 $0f
    jp hl                                         ; $656e: $e9


    ld bc, $fef4                                  ; $656f: $01 $f4 $fe
    add d                                         ; $6572: $82
    nop                                           ; $6573: $00
    jr nz, jr_0ed_6579                            ; $6574: $20 $03

    nop                                           ; $6576: $00
    adc c                                         ; $6577: $89
    inc h                                         ; $6578: $24

jr_0ed_6579:
    nop                                           ; $6579: $00
    ld l, $00                                     ; $657a: $2e $00
    ld a, $00                                     ; $657c: $3e $00
    ld a, [hl]                                    ; $657e: $7e
    nop                                           ; $657f: $00
    ld a, h                                       ; $6580: $7c
    ld [bc], a                                    ; $6581: $02
    ld [bc], a                                    ; $6582: $02
    ld [bc], a                                    ; $6583: $02
    add hl, de                                    ; $6584: $19
    ld [bc], a                                    ; $6585: $02
    ld [hl-], a                                   ; $6586: $32
    add d                                         ; $6587: $82
    ld sp, $0230                                  ; $6588: $31 $30 $02
    ld b, b                                       ; $658b: $40
    add c                                         ; $658c: $81
    jr nc, jr_0ed_6596                            ; $658d: $30 $07

    nop                                           ; $658f: $00
    rst $38                                       ; $6590: $ff
    dec c                                         ; $6591: $0d
    inc b                                         ; $6592: $04
    ld hl, sp+$0f                                 ; $6593: $f8 $0f
    jp hl                                         ; $6595: $e9


jr_0ed_6596:
    ld bc, $fdeb                                  ; $6596: $01 $eb $fd
    db $ec                                        ; $6599: $ec
    ld [bc], a                                    ; $659a: $02
    ei                                            ; $659b: $fb
    cp $fb                                        ; $659c: $fe $fb
    nop                                           ; $659e: $00
    ld [bc], a                                    ; $659f: $02
    ccf                                           ; $65a0: $3f
    sub d                                         ; $65a1: $92
    ld b, [hl]                                    ; $65a2: $46
    ld a, a                                       ; $65a3: $7f
    sub e                                         ; $65a4: $93
    rst $38                                       ; $65a5: $ff
    xor a                                         ; $65a6: $af
    db $fd                                        ; $65a7: $fd
    rst $18                                       ; $65a8: $df
    rst $30                                       ; $65a9: $f7
    ld a, a                                       ; $65aa: $7f
    ld [hl], h                                    ; $65ab: $74
    ld a, a                                       ; $65ac: $7f
    ld d, h                                       ; $65ad: $54
    ccf                                           ; $65ae: $3f
    dec sp                                        ; $65af: $3b
    rra                                           ; $65b0: $1f
    inc d                                         ; $65b1: $14
    ccf                                           ; $65b2: $3f
    cpl                                           ; $65b3: $2f
    ld [bc], a                                    ; $65b4: $02
    dec [hl]                                      ; $65b5: $35
    ld [bc], a                                    ; $65b6: $02
    dec h                                         ; $65b7: $25
    ld [bc], a                                    ; $65b8: $02
    jr z, jr_0ed_65bf                             ; $65b9: $28 $04

    jr nz, jr_0ed_65bf                            ; $65bb: $20 $02

    ld b, b                                       ; $65bd: $40
    inc b                                         ; $65be: $04

jr_0ed_65bf:
    db $10                                        ; $65bf: $10
    ld [bc], a                                    ; $65c0: $02
    ld [$1c84], sp                                ; $65c1: $08 $84 $1c
    inc d                                         ; $65c4: $14
    jr @+$0a                                      ; $65c5: $18 $08

    ld b, $10                                     ; $65c7: $06 $10
    inc b                                         ; $65c9: $04
    nop                                           ; $65ca: $00
    ld [bc], a                                    ; $65cb: $02
    inc d                                         ; $65cc: $14
    add h                                         ; $65cd: $84
    ld e, $1a                                     ; $65ce: $1e $1a
    rra                                           ; $65d0: $1f
    ld de, $1e02                                  ; $65d1: $11 $02 $1e
    ld [bc], a                                    ; $65d4: $02
    db $10                                        ; $65d5: $10
    ld [bc], a                                    ; $65d6: $02
    ret nc                                        ; $65d7: $d0

    ld [bc], a                                    ; $65d8: $02
    ld [hl], b                                    ; $65d9: $70
    ld [bc], a                                    ; $65da: $02
    dec h                                         ; $65db: $25
    ld [bc], a                                    ; $65dc: $02
    ld c, h                                       ; $65dd: $4c
    ld [bc], a                                    ; $65de: $02
    ld c, l                                       ; $65df: $4d
    ld [bc], a                                    ; $65e0: $02
    or [hl]                                       ; $65e1: $b6
    ld [bc], a                                    ; $65e2: $02
    rst $08                                       ; $65e3: $cf
    ld [bc], a                                    ; $65e4: $02
    ld hl, sp+$16                                 ; $65e5: $f8 $16
    nop                                           ; $65e7: $00
    inc b                                         ; $65e8: $04
    ld [bc], a                                    ; $65e9: $02
    add d                                         ; $65ea: $82
    inc bc                                        ; $65eb: $03
    ld bc, $0302                                  ; $65ec: $01 $02 $03
    inc d                                         ; $65ef: $14
    nop                                           ; $65f0: $00
    rst $38                                       ; $65f1: $ff
    rlca                                          ; $65f2: $07
    ld bc, $0ff8                                  ; $65f3: $01 $f8 $0f
    jp hl                                         ; $65f6: $e9


    ld bc, $fef5                                  ; $65f7: $01 $f5 $fe
    adc h                                         ; $65fa: $8c
    nop                                           ; $65fb: $00
    inc d                                         ; $65fc: $14
    nop                                           ; $65fd: $00
    inc [hl]                                      ; $65fe: $34
    nop                                           ; $65ff: $00
    ld l, $00                                     ; $6600: $2e $00
    ld a, $00                                     ; $6602: $3e $00
    ld a, $00                                     ; $6604: $3e $00
    ld a, [hl]                                    ; $6606: $7e
    ld [bc], a                                    ; $6607: $02
    ld [bc], a                                    ; $6608: $02
    ld [bc], a                                    ; $6609: $02
    ld a, [de]                                    ; $660a: $1a
    ld [bc], a                                    ; $660b: $02
    inc sp                                        ; $660c: $33
    ld [bc], a                                    ; $660d: $02
    ld [hl-], a                                   ; $660e: $32
    add e                                         ; $660f: $83
    ld c, c                                       ; $6610: $49
    ld c, b                                       ; $6611: $48
    jr nc, @+$0b                                  ; $6612: $30 $09

    nop                                           ; $6614: $00
    rst $38                                       ; $6615: $ff
    dec c                                         ; $6616: $0d
    inc b                                         ; $6617: $04
    ld hl, sp+$0f                                 ; $6618: $f8 $0f
    jp hl                                         ; $661a: $e9


    ld bc, $fde9                                  ; $661b: $01 $e9 $fd
    db $ec                                        ; $661e: $ec
    ld [bc], a                                    ; $661f: $02
    ld sp, hl                                     ; $6620: $f9
    cp $f9                                        ; $6621: $fe $f9
    nop                                           ; $6623: $00
    ld [bc], a                                    ; $6624: $02
    ld b, b                                       ; $6625: $40
    sub h                                         ; $6626: $94
    ldh a, [$b0]                                  ; $6627: $f0 $b0
    ld a, a                                       ; $6629: $7f
    ld e, a                                       ; $662a: $5f
    ld a, [hl]                                    ; $662b: $7e
    ld h, a                                       ; $662c: $67
    cp a                                          ; $662d: $bf
    rst $20                                       ; $662e: $e7
    cp a                                          ; $662f: $bf
    push af                                       ; $6630: $f5
    rst $18                                       ; $6631: $df
    or $7f                                        ; $6632: $f6 $7f
    ld [hl], h                                    ; $6634: $74
    ld a, a                                       ; $6635: $7f
    ld l, b                                       ; $6636: $68
    ccf                                           ; $6637: $3f
    dec hl                                        ; $6638: $2b
    ccf                                           ; $6639: $3f
    jr z, jr_0ed_663e                             ; $663a: $28 $02

    scf                                           ; $663c: $37
    ld [bc], a                                    ; $663d: $02

jr_0ed_663e:
    dec h                                         ; $663e: $25
    ld [bc], a                                    ; $663f: $02
    add hl, hl                                    ; $6640: $29
    inc b                                         ; $6641: $04
    jr nz, jr_0ed_6648                            ; $6642: $20 $04

    db $10                                        ; $6644: $10
    ld [bc], a                                    ; $6645: $02
    nop                                           ; $6646: $00
    ld [bc], a                                    ; $6647: $02

jr_0ed_6648:
    db $10                                        ; $6648: $10
    add d                                         ; $6649: $82
    jr jr_0ed_6654                                ; $664a: $18 $08

    ld [bc], a                                    ; $664c: $02
    db $10                                        ; $664d: $10
    ld [bc], a                                    ; $664e: $02
    inc d                                         ; $664f: $14
    adc b                                         ; $6650: $88
    ld e, $1a                                     ; $6651: $1e $1a
    rrca                                          ; $6653: $0f

jr_0ed_6654:
    add hl, bc                                    ; $6654: $09
    ld e, $1a                                     ; $6655: $1e $1a
    inc e                                         ; $6657: $1c
    inc b                                         ; $6658: $04
    ld [bc], a                                    ; $6659: $02
    jr jr_0ed_6660                                ; $665a: $18 $04

jr_0ed_665c:
    db $10                                        ; $665c: $10
    ld [bc], a                                    ; $665d: $02
    ld [hl], b                                    ; $665e: $70
    ld [bc], a                                    ; $665f: $02

jr_0ed_6660:
    ret nc                                        ; $6660: $d0

    inc b                                         ; $6661: $04
    ld b, b                                       ; $6662: $40
    ld [bc], a                                    ; $6663: $02
    ld [hl], b                                    ; $6664: $70
    ld [bc], a                                    ; $6665: $02
    dec h                                         ; $6666: $25
    ld [bc], a                                    ; $6667: $02
    ld c, h                                       ; $6668: $4c
    ld [bc], a                                    ; $6669: $02
    ld c, l                                       ; $666a: $4d
    ld [bc], a                                    ; $666b: $02
    or [hl]                                       ; $666c: $b6
    ld [bc], a                                    ; $666d: $02
    rst $08                                       ; $666e: $cf
    ld [bc], a                                    ; $666f: $02
    ld hl, sp+$16                                 ; $6670: $f8 $16
    nop                                           ; $6672: $00
    inc b                                         ; $6673: $04
    ld [bc], a                                    ; $6674: $02
    add d                                         ; $6675: $82
    inc bc                                        ; $6676: $03
    ld bc, $0302                                  ; $6677: $01 $02 $03
    stop                                          ; $667a: $10 $00
    rst $38                                       ; $667c: $ff
    rlca                                          ; $667d: $07
    ld bc, $0ff8                                  ; $667e: $01 $f8 $0f
    jp hl                                         ; $6681: $e9


    ld bc, $fef4                                  ; $6682: $01 $f4 $fe
    adc [hl]                                      ; $6685: $8e
    nop                                           ; $6686: $00
    stop                                          ; $6687: $10 $00
    inc [hl]                                      ; $6689: $34
    nop                                           ; $668a: $00
    inc l                                         ; $668b: $2c
    nop                                           ; $668c: $00
    ld a, $00                                     ; $668d: $3e $00
    ld a, $00                                     ; $668f: $3e $00
    ld a, $00                                     ; $6691: $3e $00
    jr c, jr_0ed_6697                             ; $6693: $38 $02

    ld [bc], a                                    ; $6695: $02
    ld [bc], a                                    ; $6696: $02

jr_0ed_6697:
    ld a, [de]                                    ; $6697: $1a
    ld [bc], a                                    ; $6698: $02
    inc sp                                        ; $6699: $33
    ld [bc], a                                    ; $669a: $02
    ld [hl-], a                                   ; $669b: $32
    add e                                         ; $669c: $83
    ld c, c                                       ; $669d: $49
    ld c, b                                       ; $669e: $48
    jr nc, jr_0ed_66a8                            ; $669f: $30 $07

    nop                                           ; $66a1: $00
    rst $38                                       ; $66a2: $ff
    dec c                                         ; $66a3: $0d
    inc b                                         ; $66a4: $04
    ld hl, sp+$0f                                 ; $66a5: $f8 $0f
    jp hl                                         ; $66a7: $e9


jr_0ed_66a8:
    ld bc, $fbeb                                  ; $66a8: $01 $eb $fb
    db $eb                                        ; $66ab: $eb
    ld bc, $fefb                                  ; $66ac: $01 $fb $fe
    ei                                            ; $66af: $fb
    nop                                           ; $66b0: $00
    ld [bc], a                                    ; $66b1: $02
    rra                                           ; $66b2: $1f
    adc [hl]                                      ; $66b3: $8e
    ld a, l                                       ; $66b4: $7d
    ld h, a                                       ; $66b5: $67
    db $fc                                        ; $66b6: $fc
    and a                                         ; $66b7: $a7
    rst $38                                       ; $66b8: $ff
    rst $30                                       ; $66b9: $f7
    ccf                                           ; $66ba: $3f
    dec [hl]                                      ; $66bb: $35
    rra                                           ; $66bc: $1f
    ld a, [de]                                    ; $66bd: $1a
    rra                                           ; $66be: $1f
    ld a, [de]                                    ; $66bf: $1a
    rrca                                          ; $66c0: $0f
    ld a, [bc]                                    ; $66c1: $0a
    ld [bc], a                                    ; $66c2: $02
    rlca                                          ; $66c3: $07
    ld [bc], a                                    ; $66c4: $02
    add hl, bc                                    ; $66c5: $09
    ld [bc], a                                    ; $66c6: $02
    dec bc                                        ; $66c7: $0b
    ld [bc], a                                    ; $66c8: $02
    ld a, [bc]                                    ; $66c9: $0a
    ld b, $08                                     ; $66ca: $06 $08
    ld [bc], a                                    ; $66cc: $02
    add hl, bc                                    ; $66cd: $09
    ld [bc], a                                    ; $66ce: $02
    jr nc, @-$7d                                  ; $66cf: $30 $81

    jr z, jr_0ed_66d7                             ; $66d1: $28 $04

    jr c, jr_0ed_665c                             ; $66d3: $38 $87

    jr jr_0ed_6713                                ; $66d5: $18 $3c

jr_0ed_66d7:
    inc h                                         ; $66d7: $24
    jr c, jr_0ed_66e2                             ; $66d8: $38 $08

    jr nc, @+$12                                  ; $66da: $30 $10

    ld [bc], a                                    ; $66dc: $02
    ld a, $88                                     ; $66dd: $3e $88
    ccf                                           ; $66df: $3f
    add hl, bc                                    ; $66e0: $09
    ccf                                           ; $66e1: $3f

jr_0ed_66e2:
    add hl, sp                                    ; $66e2: $39
    rra                                           ; $66e3: $1f
    dec e                                         ; $66e4: $1d
    ld c, $0a                                     ; $66e5: $0e $0a
    ld [bc], a                                    ; $66e7: $02
    inc c                                         ; $66e8: $0c
    inc b                                         ; $66e9: $04
    ld [$3802], sp                                ; $66ea: $08 $02 $38
    ld [bc], a                                    ; $66ed: $02
    ld a, l                                       ; $66ee: $7d
    ld [bc], a                                    ; $66ef: $02
    dec h                                         ; $66f0: $25
    ld [bc], a                                    ; $66f1: $02
    ld c, h                                       ; $66f2: $4c
    ld [bc], a                                    ; $66f3: $02
    ld c, l                                       ; $66f4: $4d
    ld [bc], a                                    ; $66f5: $02
    or [hl]                                       ; $66f6: $b6
    ld [bc], a                                    ; $66f7: $02
    rst $08                                       ; $66f8: $cf
    ld [bc], a                                    ; $66f9: $02
    ld hl, sp+$16                                 ; $66fa: $f8 $16
    nop                                           ; $66fc: $00
    inc b                                         ; $66fd: $04
    ld [bc], a                                    ; $66fe: $02
    add d                                         ; $66ff: $82
    inc bc                                        ; $6700: $03
    ld bc, $0302                                  ; $6701: $01 $02 $03
    inc d                                         ; $6704: $14
    nop                                           ; $6705: $00
    rst $38                                       ; $6706: $ff
    rlca                                          ; $6707: $07
    ld bc, $0ff8                                  ; $6708: $01 $f8 $0f
    jp hl                                         ; $670b: $e9


    ld bc, $fef4                                  ; $670c: $01 $f4 $fe
    adc [hl]                                      ; $670f: $8e
    nop                                           ; $6710: $00
    jr nc, jr_0ed_6713                            ; $6711: $30 $00

jr_0ed_6713:
    inc h                                         ; $6713: $24
    nop                                           ; $6714: $00
    ld l, $00                                     ; $6715: $2e $00
    ld a, $00                                     ; $6717: $3e $00
    ld a, $00                                     ; $6719: $3e $00
    ld a, $00                                     ; $671b: $3e $00
    jr nc, jr_0ed_6721                            ; $671d: $30 $02

    ld [bc], a                                    ; $671f: $02
    ld [bc], a                                    ; $6720: $02

jr_0ed_6721:
    ld a, [de]                                    ; $6721: $1a
    ld [bc], a                                    ; $6722: $02
    inc sp                                        ; $6723: $33
    ld [bc], a                                    ; $6724: $02
    ld [hl-], a                                   ; $6725: $32
    add e                                         ; $6726: $83
    ld c, c                                       ; $6727: $49
    ld c, b                                       ; $6728: $48
    jr nc, jr_0ed_6732                            ; $6729: $30 $07

    nop                                           ; $672b: $00
    rst $38                                       ; $672c: $ff
    dec c                                         ; $672d: $0d
    inc b                                         ; $672e: $04
    ld hl, sp+$0f                                 ; $672f: $f8 $0f
    jp hl                                         ; $6731: $e9


jr_0ed_6732:
    ld bc, $f8f2                                  ; $6732: $01 $f2 $f8
    db $eb                                        ; $6735: $eb
    nop                                           ; $6736: $00
    ei                                            ; $6737: $fb
    nop                                           ; $6738: $00
    db $ec                                        ; $6739: $ec
    ld [HeaderLogo], sp                           ; $673a: $08 $04 $01
    ld b, $00                                     ; $673d: $06 $00
    ld b, $01                                     ; $673f: $06 $01
    inc b                                         ; $6741: $04
    nop                                           ; $6742: $00
    ld [bc], a                                    ; $6743: $02
    ld bc, $0302                                  ; $6744: $01 $02 $03
    ld [bc], a                                    ; $6747: $02
    ld [bc], a                                    ; $6748: $02
    inc b                                         ; $6749: $04
    inc bc                                        ; $674a: $03
    ld [bc], a                                    ; $674b: $02
    ld bc, $3f02                                  ; $674c: $01 $02 $3f
    adc [hl]                                      ; $674f: $8e
    ld b, [hl]                                    ; $6750: $46
    ld a, a                                       ; $6751: $7f
    and a                                         ; $6752: $a7
    rst $38                                       ; $6753: $ff
    rst $18                                       ; $6754: $df
    ld sp, hl                                     ; $6755: $f9
    rst $18                                       ; $6756: $df
    or $7f                                        ; $6757: $f6 $7f
    ld [hl], b                                    ; $6759: $70
    rst $38                                       ; $675a: $ff
    db $d3                                        ; $675b: $d3
    rst $38                                       ; $675c: $ff
    ld [hl], e                                    ; $675d: $73
    ld [bc], a                                    ; $675e: $02
    rst $38                                       ; $675f: $ff
    add d                                         ; $6760: $82
    rst $08                                       ; $6761: $cf
    ret z                                         ; $6762: $c8

    ld [bc], a                                    ; $6763: $02
    ld d, a                                       ; $6764: $57
    ld [bc], a                                    ; $6765: $02
    adc a                                         ; $6766: $8f
    ld [bc], a                                    ; $6767: $02
    inc bc                                        ; $6768: $03
    ld [bc], a                                    ; $6769: $02
    ld [bc], a                                    ; $676a: $02
    ld [bc], a                                    ; $676b: $02
    and $02                                       ; $676c: $e6 $02
    db $fc                                        ; $676e: $fc
    ld [bc], a                                    ; $676f: $02
    or h                                          ; $6770: $b4
    ld [bc], a                                    ; $6771: $02
    sbc d                                         ; $6772: $9a
    ld [bc], a                                    ; $6773: $02
    ld [hl-], a                                   ; $6774: $32
    ld [bc], a                                    ; $6775: $02
    inc [hl]                                      ; $6776: $34
    ld [bc], a                                    ; $6777: $02
    ei                                            ; $6778: $fb
    ld [bc], a                                    ; $6779: $02
    ld a, $02                                     ; $677a: $3e $02
    ret nz                                        ; $677c: $c0

    ld [de], a                                    ; $677d: $12
    nop                                           ; $677e: $00
    ld b, $80                                     ; $677f: $06 $80
    add d                                         ; $6781: $82
    ret nz                                        ; $6782: $c0

    ld b, b                                       ; $6783: $40
    ld [bc], a                                    ; $6784: $02
    add b                                         ; $6785: $80
    ld [bc], a                                    ; $6786: $02
    nop                                           ; $6787: $00
    ld [bc], a                                    ; $6788: $02
    ldh a, [$84]                                  ; $6789: $f0 $84
    cp $0e                                        ; $678b: $fe $0e
    rst $38                                       ; $678d: $ff
    ret                                           ; $678e: $c9


    ld [bc], a                                    ; $678f: $02
    ld [hl], $0c                                  ; $6790: $36 $0c
    nop                                           ; $6792: $00
    rst $38                                       ; $6793: $ff
    rlca                                          ; $6794: $07
    ld bc, $0ff8                                  ; $6795: $01 $f8 $0f
    jp hl                                         ; $6798: $e9


    ld bc, $fef4                                  ; $6799: $01 $f4 $fe
    adc h                                         ; $679c: $8c
    nop                                           ; $679d: $00
    inc c                                         ; $679e: $0c
    nop                                           ; $679f: $00
    ld a, [bc]                                    ; $67a0: $0a
    nop                                           ; $67a1: $00
    inc e                                         ; $67a2: $1c
    nop                                           ; $67a3: $00
    ccf                                           ; $67a4: $3f
    nop                                           ; $67a5: $00
    ccf                                           ; $67a6: $3f
    nop                                           ; $67a7: $00
    ld b, $02                                     ; $67a8: $06 $02
    nop                                           ; $67aa: $00
    ld [bc], a                                    ; $67ab: $02
    ld [de], a                                    ; $67ac: $12
    ld [bc], a                                    ; $67ad: $02
    add hl, de                                    ; $67ae: $19
    ld [bc], a                                    ; $67af: $02
    inc sp                                        ; $67b0: $33
    ld [bc], a                                    ; $67b1: $02
    ld [hl], d                                    ; $67b2: $72
    add e                                         ; $67b3: $83
    ld bc, $3000                                  ; $67b4: $01 $00 $30
    rlca                                          ; $67b7: $07
    nop                                           ; $67b8: $00
    rst $38                                       ; $67b9: $ff
    dec c                                         ; $67ba: $0d
    inc b                                         ; $67bb: $04
    ld hl, sp+$0f                                 ; $67bc: $f8 $0f
    jp hl                                         ; $67be: $e9


    ld bc, $fdeb                                  ; $67bf: $01 $eb $fd
    db $ec                                        ; $67c2: $ec
    ld [bc], a                                    ; $67c3: $02
    ei                                            ; $67c4: $fb
    cp $fb                                        ; $67c5: $fe $fb
    rst $38                                       ; $67c7: $ff
    ld [bc], a                                    ; $67c8: $02
    ccf                                           ; $67c9: $3f
    sub h                                         ; $67ca: $94
    ld b, [hl]                                    ; $67cb: $46
    ld a, a                                       ; $67cc: $7f
    and a                                         ; $67cd: $a7
    rst $38                                       ; $67ce: $ff
    rst $18                                       ; $67cf: $df
    ld sp, hl                                     ; $67d0: $f9
    rst $18                                       ; $67d1: $df
    or $7f                                        ; $67d2: $f6 $7f
    ld [hl], b                                    ; $67d4: $70
    ld a, a                                       ; $67d5: $7f
    ld d, b                                       ; $67d6: $50
    ccf                                           ; $67d7: $3f
    inc sp                                        ; $67d8: $33
    ccf                                           ; $67d9: $3f
    inc a                                         ; $67da: $3c
    ld e, a                                       ; $67db: $5f
    ld d, e                                       ; $67dc: $53
    ld a, a                                       ; $67dd: $7f
    ld l, a                                       ; $67de: $6f
    ld [bc], a                                    ; $67df: $02
    db $db                                        ; $67e0: $db
    ld [bc], a                                    ; $67e1: $02
    pop de                                        ; $67e2: $d1
    ld [bc], a                                    ; $67e3: $02
    ld b, c                                       ; $67e4: $41
    inc b                                         ; $67e5: $04
    jr nz, jr_0ed_67ec                            ; $67e6: $20 $04

    db $10                                        ; $67e8: $10
    ld [bc], a                                    ; $67e9: $02
    nop                                           ; $67ea: $00
    ld [bc], a                                    ; $67eb: $02

jr_0ed_67ec:
    db $10                                        ; $67ec: $10
    add d                                         ; $67ed: $82
    jr jr_0ed_67f8                                ; $67ee: $18 $08

    ld [bc], a                                    ; $67f0: $02
    ld [de], a                                    ; $67f1: $12
    add [hl]                                      ; $67f2: $86
    rra                                           ; $67f3: $1f
    dec e                                         ; $67f4: $1d
    ld e, $06                                     ; $67f5: $1e $06
    inc e                                         ; $67f7: $1c

jr_0ed_67f8:
    inc b                                         ; $67f8: $04
    ld [bc], a                                    ; $67f9: $02
    jr jr_0ed_6800                                ; $67fa: $18 $04

    nop                                           ; $67fc: $00
    ld b, $10                                     ; $67fd: $06 $10
    ld [bc], a                                    ; $67ff: $02

jr_0ed_6800:
    ret nc                                        ; $6800: $d0

    ld [bc], a                                    ; $6801: $02
    ld h, b                                       ; $6802: $60
    ld [bc], a                                    ; $6803: $02
    ld h, l                                       ; $6804: $65
    ld [bc], a                                    ; $6805: $02
    call $8a02                                    ; $6806: $cd $02 $8a
    ld [bc], a                                    ; $6809: $02
    cp [hl]                                       ; $680a: $be
    ld [bc], a                                    ; $680b: $02
    rst $08                                       ; $680c: $cf
    ld [bc], a                                    ; $680d: $02
    ld a, b                                       ; $680e: $78
    ld a, [de]                                    ; $680f: $1a
    nop                                           ; $6810: $00
    inc b                                         ; $6811: $04
    ld bc, $0014                                  ; $6812: $01 $14 $00
    rst $38                                       ; $6815: $ff
    rlca                                          ; $6816: $07
    ld bc, $0ff8                                  ; $6817: $01 $f8 $0f
    jp hl                                         ; $681a: $e9


    ld bc, $fef4                                  ; $681b: $01 $f4 $fe
    add d                                         ; $681e: $82
    nop                                           ; $681f: $00
    ld b, b                                       ; $6820: $40
    inc bc                                        ; $6821: $03
    nop                                           ; $6822: $00
    adc c                                         ; $6823: $89
    ld c, b                                       ; $6824: $48
    nop                                           ; $6825: $00
    ld e, h                                       ; $6826: $5c
    nop                                           ; $6827: $00
    ld a, h                                       ; $6828: $7c
    nop                                           ; $6829: $00
    ld a, $00                                     ; $682a: $3e $00
    ld a, $02                                     ; $682c: $3e $02
    ld [de], a                                    ; $682e: $12
    ld [bc], a                                    ; $682f: $02
    ld a, [de]                                    ; $6830: $1a
    ld [bc], a                                    ; $6831: $02
    ld [hl-], a                                   ; $6832: $32
    ld [bc], a                                    ; $6833: $02
    ld [hl], h                                    ; $6834: $74
    add e                                         ; $6835: $83
    ld b, c                                       ; $6836: $41
    ld b, b                                       ; $6837: $40

jr_0ed_6838:
    jr nc, jr_0ed_6841                            ; $6838: $30 $07

    nop                                           ; $683a: $00
    rst $38                                       ; $683b: $ff
    dec bc                                        ; $683c: $0b
    inc bc                                        ; $683d: $03
    ld hl, sp+$0f                                 ; $683e: $f8 $0f
    jp hl                                         ; $6840: $e9


jr_0ed_6841:
    ld bc, $fceb                                  ; $6841: $01 $eb $fc
    db $ec                                        ; $6844: $ec
    nop                                           ; $6845: $00
    ei                                            ; $6846: $fb
    cp $02                                        ; $6847: $fe $02
    ccf                                           ; $6849: $3f
    sub b                                         ; $684a: $90
    ld b, [hl]                                    ; $684b: $46
    ld a, a                                       ; $684c: $7f
    sub e                                         ; $684d: $93
    rst $38                                       ; $684e: $ff
    xor a                                         ; $684f: $af
    db $fd                                        ; $6850: $fd
    rst $18                                       ; $6851: $df
    or $7f                                        ; $6852: $f6 $7f
    ld [hl], b                                    ; $6854: $70
    ld a, a                                       ; $6855: $7f
    ld d, b                                       ; $6856: $50
    ccf                                           ; $6857: $3f
    ld sp, $181f                                  ; $6858: $31 $1f $18
    ld [bc], a                                    ; $685b: $02
    cpl                                           ; $685c: $2f
    ld [bc], a                                    ; $685d: $02
    inc h                                         ; $685e: $24
    ld [bc], a                                    ; $685f: $02
    inc [hl]                                      ; $6860: $34
    add h                                         ; $6861: $84
    ccf                                           ; $6862: $3f
    dec sp                                        ; $6863: $3b
    daa                                           ; $6864: $27
    inc h                                         ; $6865: $24
    ld [bc], a                                    ; $6866: $02
    inc hl                                        ; $6867: $23
    ld [bc], a                                    ; $6868: $02
    jr nc, jr_0ed_686f                            ; $6869: $30 $04

    ld [$0002], sp                                ; $686b: $08 $02 $00
    ld [bc], a                                    ; $686e: $02

jr_0ed_686f:
    ld [$0c82], sp                                ; $686f: $08 $82 $0c
    inc b                                         ; $6872: $04
    ld b, $08                                     ; $6873: $06 $08
    ld [bc], a                                    ; $6875: $02
    nop                                           ; $6876: $00
    inc b                                         ; $6877: $04
    ld [$0a02], sp                                ; $6878: $08 $02 $0a
    add h                                         ; $687b: $84
    rrca                                          ; $687c: $0f
    dec b                                         ; $687d: $05
    ld c, $02                                     ; $687e: $0e $02
    ld [bc], a                                    ; $6880: $02
    inc c                                         ; $6881: $0c
    ld [bc], a                                    ; $6882: $02
    cp b                                          ; $6883: $b8
    ld [bc], a                                    ; $6884: $02
    ld b, b                                       ; $6885: $40
    ld [bc], a                                    ; $6886: $02
    ld l, d                                       ; $6887: $6a
    ld [bc], a                                    ; $6888: $02
    ld c, d                                       ; $6889: $4a
    ld [bc], a                                    ; $688a: $02
    adc a                                         ; $688b: $8f
    ld [bc], a                                    ; $688c: $02
    cp l                                          ; $688d: $bd
    ld [bc], a                                    ; $688e: $02
    adc $02                                       ; $688f: $ce $02
    ld a, b                                       ; $6891: $78
    ld [de], a                                    ; $6892: $12
    nop                                           ; $6893: $00
    rst $38                                       ; $6894: $ff
    rlca                                          ; $6895: $07
    ld bc, $0ff8                                  ; $6896: $01 $f8 $0f
    jp hl                                         ; $6899: $e9


    ld bc, $fdf4                                  ; $689a: $01 $f4 $fd
    add [hl]                                      ; $689d: $86
    nop                                           ; $689e: $00
    jr nz, jr_0ed_68a1                            ; $689f: $20 $00

jr_0ed_68a1:
    ld [hl], $00                                  ; $68a1: $36 $00
    ld d, $03                                     ; $68a3: $16 $03
    nop                                           ; $68a5: $00
    add l                                         ; $68a6: $85
    jr nc, jr_0ed_68a9                            ; $68a7: $30 $00

jr_0ed_68a9:
    jr c, jr_0ed_68ab                             ; $68a9: $38 $00

jr_0ed_68ab:
    ld e, $02                                     ; $68ab: $1e $02
    ld [$0a02], sp                                ; $68ad: $08 $02 $0a
    ld [bc], a                                    ; $68b0: $02
    ld a, [de]                                    ; $68b1: $1a
    ld [bc], a                                    ; $68b2: $02
    jr c, jr_0ed_6838                             ; $68b3: $38 $83

    ld hl, $1820                                  ; $68b5: $21 $20 $18
    rlca                                          ; $68b8: $07
    nop                                           ; $68b9: $00
    rst $38                                       ; $68ba: $ff
    add hl, bc                                    ; $68bb: $09
    ld [bc], a                                    ; $68bc: $02
    rst $38                                       ; $68bd: $ff
    ld b, $fc                                     ; $68be: $06 $fc
    inc bc                                        ; $68c0: $03
    ei                                            ; $68c1: $fb
    cp $fb                                        ; $68c2: $fe $fb
    nop                                           ; $68c4: $00
    ld [bc], a                                    ; $68c5: $02
    nop                                           ; $68c6: $00
    ld [bc], a                                    ; $68c7: $02
    ld bc, $138c                                  ; $68c8: $01 $8c $13
    ld [de], a                                    ; $68cb: $12
    ld [hl], $2c                                  ; $68cc: $36 $2c
    sbc [hl]                                      ; $68ce: $9e
    sub b                                         ; $68cf: $90
    ld e, h                                       ; $68d0: $5c
    ld h, b                                       ; $68d1: $60
    ld e, $08                                     ; $68d2: $1e $08
    ld d, $35                                     ; $68d4: $16 $35
    ld [bc], a                                    ; $68d6: $02
    ld hl, $000e                                  ; $68d7: $21 $0e $00
    ld [bc], a                                    ; $68da: $02
    ld bc, $0082                                  ; $68db: $01 $82 $00
    ld [bc], a                                    ; $68de: $02
    inc e                                         ; $68df: $1c
    nop                                           ; $68e0: $00
    rst $38                                       ; $68e1: $ff
    add hl, bc                                    ; $68e2: $09
    ld [bc], a                                    ; $68e3: $02
    rst $38                                       ; $68e4: $ff
    ld b, $fc                                     ; $68e5: $06 $fc
    inc bc                                        ; $68e7: $03
    db $fd                                        ; $68e8: $fd
    db $fd                                        ; $68e9: $fd
    db $fd                                        ; $68ea: $fd
    cp $02                                        ; $68eb: $fe $02
    nop                                           ; $68ed: $00
    ld [bc], a                                    ; $68ee: $02
    ld [$5a86], sp                                ; $68ef: $08 $86 $5a
    ld d, [hl]                                    ; $68f2: $56
    db $fc                                        ; $68f3: $fc
    and d                                         ; $68f4: $a2
    ld e, a                                       ; $68f5: $5f
    ld d, l                                       ; $68f6: $55
    ld [bc], a                                    ; $68f7: $02
    ld a, [bc]                                    ; $68f8: $0a
    inc d                                         ; $68f9: $14
    nop                                           ; $68fa: $00
    ld [bc], a                                    ; $68fb: $02
    ld bc, $001e                                  ; $68fc: $01 $1e $00
    rst $38                                       ; $68ff: $ff
    add hl, bc                                    ; $6900: $09
    ld [bc], a                                    ; $6901: $02
    rst $38                                       ; $6902: $ff
    ld b, $fc                                     ; $6903: $06 $fc
    inc bc                                        ; $6905: $03
    db $fc                                        ; $6906: $fc
    rst $38                                       ; $6907: $ff
    db $fc                                        ; $6908: $fc
    rlca                                          ; $6909: $07
    ld [bc], a                                    ; $690a: $02
    ld [bc], a                                    ; $690b: $02
    ld [bc], a                                    ; $690c: $02
    ld bc, $4186                                  ; $690d: $01 $86 $41
    ld b, b                                       ; $6910: $40
    rst $10                                       ; $6911: $d7
    sbc b                                         ; $6912: $98
    db $fc                                        ; $6913: $fc
    ld b, h                                       ; $6914: $44
    ld [bc], a                                    ; $6915: $02
    sub b                                         ; $6916: $90
    ld [bc], a                                    ; $6917: $02
    ld [$0016], sp                                ; $6918: $08 $16 $00
    ld [bc], a                                    ; $691b: $02
    add b                                         ; $691c: $80
    add h                                         ; $691d: $84
    jp nz, Jump_0ed_6942                          ; $691e: $c2 $42 $69

    ld c, c                                       ; $6921: $49
    ld [bc], a                                    ; $6922: $02
    db $10                                        ; $6923: $10
    inc d                                         ; $6924: $14
    nop                                           ; $6925: $00
    rst $38                                       ; $6926: $ff
    add hl, bc                                    ; $6927: $09
    ld [bc], a                                    ; $6928: $02
    rst $38                                       ; $6929: $ff
    ld b, $fc                                     ; $692a: $06 $fc
    inc bc                                        ; $692c: $03
    ei                                            ; $692d: $fb
    rst $38                                       ; $692e: $ff
    ei                                            ; $692f: $fb
    rlca                                          ; $6930: $07
    ld b, $00                                     ; $6931: $06 $00
    ld [bc], a                                    ; $6933: $02
    inc b                                         ; $6934: $04
    add [hl]                                      ; $6935: $86
    ld e, [hl]                                    ; $6936: $5e
    ld d, e                                       ; $6937: $53
    rst $18                                       ; $6938: $df
    xor l                                         ; $6939: $ad
    ld [hl], b                                    ; $693a: $70
    ld d, b                                       ; $693b: $50
    ld [bc], a                                    ; $693c: $02
    ld [hl+], a                                   ; $693d: $22
    ld [bc], a                                    ; $693e: $02
    ld [bc], a                                    ; $693f: $02
    ld c, $00                                     ; $6940: $0e $00

Jump_0ed_6942:
    ld [bc], a                                    ; $6942: $02
    jr nz, jr_0ed_6947                            ; $6943: $20 $02

    nop                                           ; $6945: $00
    ld [bc], a                                    ; $6946: $02

jr_0ed_6947:
    db $10                                        ; $6947: $10
    add [hl]                                      ; $6948: $86
    ld [hl], b                                    ; $6949: $70
    ld d, b                                       ; $694a: $50
    ldh a, [rNR10]                                ; $694b: $f0 $10
    dec bc                                        ; $694d: $0b
    dec de                                        ; $694e: $1b
    ld [bc], a                                    ; $694f: $02
    inc b                                         ; $6950: $04
    ld [de], a                                    ; $6951: $12
    nop                                           ; $6952: $00
    rst $38                                       ; $6953: $ff
    dec bc                                        ; $6954: $0b
    inc bc                                        ; $6955: $03
    rst $38                                       ; $6956: $ff
    ld b, $fc                                     ; $6957: $06 $fc
    inc bc                                        ; $6959: $03
    db $fd                                        ; $695a: $fd
    rst $38                                       ; $695b: $ff
    db $fd                                        ; $695c: $fd
    dec b                                         ; $695d: $05
    db $fd                                        ; $695e: $fd
    ld [$0004], sp                                ; $695f: $08 $04 $00
    ld [bc], a                                    ; $6962: $02
    add e                                         ; $6963: $83
    add h                                         ; $6964: $84
    db $fd                                        ; $6965: $fd
    ld a, $7e                                     ; $6966: $3e $7e
    ld b, d                                       ; $6968: $42
    ld [bc], a                                    ; $6969: $02
    ld [$0014], sp                                ; $696a: $08 $14 $00
    ld [bc], a                                    ; $696d: $02
    ld bc, $2602                                  ; $696e: $01 $02 $26
    add d                                         ; $6971: $82
    ccf                                           ; $6972: $3f
    dec c                                         ; $6973: $0d
    ld [bc], a                                    ; $6974: $02
    inc bc                                        ; $6975: $03
    inc b                                         ; $6976: $04
    nop                                           ; $6977: $00
    ld [bc], a                                    ; $6978: $02
    jr nz, jr_0ed_6993                            ; $6979: $20 $18

    nop                                           ; $697b: $00
    ld [bc], a                                    ; $697c: $02
    ld bc, $0018                                  ; $697d: $01 $18 $00
    rst $38                                       ; $6980: $ff
    add hl, bc                                    ; $6981: $09
    ld [bc], a                                    ; $6982: $02
    rst $38                                       ; $6983: $ff
    ld b, $fc                                     ; $6984: $06 $fc
    inc bc                                        ; $6986: $03
    db $fc                                        ; $6987: $fc
    rst $38                                       ; $6988: $ff
    db $fc                                        ; $6989: $fc
    ld b, $02                                     ; $698a: $06 $02
    db $10                                        ; $698c: $10
    adc d                                         ; $698d: $8a
    nop                                           ; $698e: $00
    jr nz, jr_0ed_69a1                            ; $698f: $20 $10

    nop                                           ; $6991: $00
    ld a, h                                       ; $6992: $7c

jr_0ed_6993:
    ld b, h                                       ; $6993: $44
    db $ed                                        ; $6994: $ed
    xor e                                         ; $6995: $ab
    ld b, e                                       ; $6996: $43
    ld b, d                                       ; $6997: $42
    ld a, [de]                                    ; $6998: $1a
    nop                                           ; $6999: $00
    add h                                         ; $699a: $84
    add hl, sp                                    ; $699b: $39
    add hl, hl                                    ; $699c: $29
    ld [hl], $52                                  ; $699d: $36 $52

jr_0ed_699f:
    ld [bc], a                                    ; $699f: $02
    ld b, b                                       ; $69a0: $40

jr_0ed_69a1:
    ld [bc], a                                    ; $69a1: $02
    nop                                           ; $69a2: $00
    ld [bc], a                                    ; $69a3: $02
    jr nz, @+$12                                  ; $69a4: $20 $10

    nop                                           ; $69a6: $00
    rst $38                                       ; $69a7: $ff
    rlca                                          ; $69a8: $07
    ld bc, $06ff                                  ; $69a9: $01 $ff $06
    db $fc                                        ; $69ac: $fc
    inc bc                                        ; $69ad: $03
    ld a, [$02ff]                                 ; $69ae: $fa $ff $02
    ld [bc], a                                    ; $69b1: $02
    add l                                         ; $69b2: $85
    inc b                                         ; $69b3: $04
    inc c                                         ; $69b4: $0c
    jr nz, jr_0ed_69c7                            ; $69b5: $20 $10

    nop                                           ; $69b7: $00
    ld [bc], a                                    ; $69b8: $02
    ld b, b                                       ; $69b9: $40
    adc e                                         ; $69ba: $8b
    add b                                         ; $69bb: $80
    ret nz                                        ; $69bc: $c0

    jr nz, jr_0ed_699f                            ; $69bd: $20 $e0

    nop                                           ; $69bf: $00
    ld e, b                                       ; $69c0: $58
    adc b                                         ; $69c1: $88
    nop                                           ; $69c2: $00
    ld b, h                                       ; $69c3: $44
    ld bc, $0c21                                  ; $69c4: $01 $21 $0c

jr_0ed_69c7:
    nop                                           ; $69c7: $00
    rst $38                                       ; $69c8: $ff
    add hl, bc                                    ; $69c9: $09
    ld [bc], a                                    ; $69ca: $02
    rst $38                                       ; $69cb: $ff
    ld b, $fc                                     ; $69cc: $06 $fc
    inc bc                                        ; $69ce: $03
    ld hl, sp-$01                                 ; $69cf: $f8 $ff
    ld hl, sp+$01                                 ; $69d1: $f8 $01
    ld [bc], a                                    ; $69d3: $02
    ld bc, $0282                                  ; $69d4: $01 $82 $02
    nop                                           ; $69d7: $00
    ld [bc], a                                    ; $69d8: $02
    inc b                                         ; $69d9: $04
    sub b                                         ; $69da: $90
    jr c, jr_0ed_69fd                             ; $69db: $38 $20

    ld h, b                                       ; $69dd: $60
    ld b, b                                       ; $69de: $40
    ld [hl], b                                    ; $69df: $70
    jr nc, @-$36                                  ; $69e0: $30 $c8

    xor b                                         ; $69e2: $a8
    add b                                         ; $69e3: $80
    ld h, b                                       ; $69e4: $60
    ldh a, [rNR10]                                ; $69e5: $f0 $10
    ret c                                         ; $69e7: $d8

    xor b                                         ; $69e8: $a8
    ld l, a                                       ; $69e9: $6f
    dec h                                         ; $69ea: $25
    ld [bc], a                                    ; $69eb: $02
    ld b, b                                       ; $69ec: $40
    add d                                         ; $69ed: $82
    jr nc, jr_0ed_6a00                            ; $69ee: $30 $10

    inc e                                         ; $69f0: $1c
    nop                                           ; $69f1: $00
    inc bc                                        ; $69f2: $03
    ld [bc], a                                    ; $69f3: $02
    add c                                         ; $69f4: $81
    nop                                           ; $69f5: $00
    ld [bc], a                                    ; $69f6: $02
    ld bc, $0004                                  ; $69f7: $01 $04 $00
    rst $38                                       ; $69fa: $ff
    add hl, bc                                    ; $69fb: $09
    ld [bc], a                                    ; $69fc: $02

jr_0ed_69fd:
    rst $38                                       ; $69fd: $ff
    ld b, $fc                                     ; $69fe: $06 $fc

jr_0ed_6a00:
    inc bc                                        ; $6a00: $03
    rst $30                                       ; $6a01: $f7
    rst $38                                       ; $6a02: $ff
    rst $30                                       ; $6a03: $f7
    ld [bc], a                                    ; $6a04: $02
    ld [bc], a                                    ; $6a05: $02
    nop                                           ; $6a06: $00
    inc b                                         ; $6a07: $04
    ld bc, $0202                                  ; $6a08: $01 $02 $02
    ld [bc], a                                    ; $6a0b: $02
    ld [$2002], sp                                ; $6a0c: $08 $02 $20
    ld [bc], a                                    ; $6a0f: $02
    ld e, b                                       ; $6a10: $58
    inc b                                         ; $6a11: $04
    call nz, $c004                                ; $6a12: $c4 $04 $c0
    ld [bc], a                                    ; $6a15: $02
    ld [hl+], a                                   ; $6a16: $22
    ld [bc], a                                    ; $6a17: $02
    ld bc, $2402                                  ; $6a18: $01 $02 $24
    ld [bc], a                                    ; $6a1b: $02
    ld [$0002], sp                                ; $6a1c: $08 $02 $00
    ld [bc], a                                    ; $6a1f: $02
    ld b, $16                                     ; $6a20: $06 $16
    nop                                           ; $6a22: $00
    ld [bc], a                                    ; $6a23: $02
    inc b                                         ; $6a24: $04
    ld [bc], a                                    ; $6a25: $02
    nop                                           ; $6a26: $00
    ld [bc], a                                    ; $6a27: $02
    ld [bc], a                                    ; $6a28: $02
    ld [bc], a                                    ; $6a29: $02
    ld bc, $0fff                                  ; $6a2a: $01 $ff $0f
    dec b                                         ; $6a2d: $05
    ld hl, sp+$12                                 ; $6a2e: $f8 $12
    ld [$ec01], a                                 ; $6a30: $ea $01 $ec
    inc b                                         ; $6a33: $04
    db $eb                                        ; $6a34: $eb
    rlca                                          ; $6a35: $07
    ei                                            ; $6a36: $fb
    ld hl, sp-$05                                 ; $6a37: $f8 $fb
    nop                                           ; $6a39: $00
    ei                                            ; $6a3a: $fb
    ld b, $02                                     ; $6a3b: $06 $02
    ld bc, $0302                                  ; $6a3d: $01 $02 $03
    sbc h                                         ; $6a40: $9c
    dec b                                         ; $6a41: $05
    rlca                                          ; $6a42: $07
    dec de                                        ; $6a43: $1b
    ld e, $2d                                     ; $6a44: $1e $2d
    ccf                                           ; $6a46: $3f
    ld e, [hl]                                    ; $6a47: $5e
    ld a, d                                       ; $6a48: $7a
    ld l, h                                       ; $6a49: $6c
    ld a, h                                       ; $6a4a: $7c
    adc h                                         ; $6a4b: $8c
    db $fc                                        ; $6a4c: $fc
    adc [hl]                                      ; $6a4d: $8e
    ld a, [$face]                                 ; $6a4e: $fa $ce $fa
    xor l                                         ; $6a51: $ad
    ei                                            ; $6a52: $fb
    adc e                                         ; $6a53: $8b
    db $fd                                        ; $6a54: $fd
    ld e, a                                       ; $6a55: $5f
    ld a, h                                       ; $6a56: $7c
    ld h, a                                       ; $6a57: $67
    ld a, h                                       ; $6a58: $7c
    dec h                                         ; $6a59: $25
    ld a, $33                                     ; $6a5a: $3e $33
    ld a, $02                                     ; $6a5c: $3e $02
    inc b                                         ; $6a5e: $04
    ld [bc], a                                    ; $6a5f: $02
    nop                                           ; $6a60: $00
    ld [bc], a                                    ; $6a61: $02
    inc bc                                        ; $6a62: $03
    ld [bc], a                                    ; $6a63: $02
    ld b, $04                                     ; $6a64: $06 $04
    inc b                                         ; $6a66: $04
    ld c, $00                                     ; $6a67: $0e $00
    ld b, $04                                     ; $6a69: $06 $04
    inc b                                         ; $6a6b: $04
    nop                                           ; $6a6c: $00
    ld [bc], a                                    ; $6a6d: $02
    inc bc                                        ; $6a6e: $03
    add [hl]                                      ; $6a6f: $86
    ld a, $3f                                     ; $6a70: $3e $3f
    ldh [rIE], a                                  ; $6a72: $e0 $ff
    ld a, a                                       ; $6a74: $7f
    ld a, c                                       ; $6a75: $79
    ld [bc], a                                    ; $6a76: $02
    ld c, $14                                     ; $6a77: $0e $14
    nop                                           ; $6a79: $00
    add a                                         ; $6a7a: $87
    dec c                                         ; $6a7b: $0d
    rrca                                          ; $6a7c: $0f
    or $ff                                        ; $6a7d: $f6 $ff
    inc d                                         ; $6a7f: $14
    rst $38                                       ; $6a80: $ff
    nop                                           ; $6a81: $00
    ld [bc], a                                    ; $6a82: $02
    rst $38                                       ; $6a83: $ff
    add c                                         ; $6a84: $81
    jr z, jr_0ed_6a89                             ; $6a85: $28 $02

    rst $30                                       ; $6a87: $f7
    ld [de], a                                    ; $6a88: $12

jr_0ed_6a89:
    nop                                           ; $6a89: $00
    adc d                                         ; $6a8a: $8a
    ld bc, $0f03                                  ; $6a8b: $01 $03 $0f
    add hl, sp                                    ; $6a8e: $39
    rrca                                          ; $6a8f: $0f
    add hl, sp                                    ; $6a90: $39
    dec e                                         ; $6a91: $1d
    dec hl                                        ; $6a92: $2b
    ld [hl], $1e                                  ; $6a93: $36 $1e
    ld [bc], a                                    ; $6a95: $02
    inc a                                         ; $6a96: $3c
    ld [bc], a                                    ; $6a97: $02
    jr c, @+$14                                   ; $6a98: $38 $12

    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    rrca                                          ; $6a9c: $0f
    dec b                                         ; $6a9d: $05
    ld hl, sp+$12                                 ; $6a9e: $f8 $12
    ld [$ed01], a                                 ; $6aa0: $ea $01 $ed
    inc b                                         ; $6aa3: $04
    db $ec                                        ; $6aa4: $ec
    ld [$f8fc], sp                                ; $6aa5: $08 $fc $f8
    db $fc                                        ; $6aa8: $fc
    nop                                           ; $6aa9: $00
    db $fc                                        ; $6aaa: $fc
    ld b, $02                                     ; $6aab: $06 $02
    ld bc, $029e                                  ; $6aad: $01 $9e $02
    inc bc                                        ; $6ab0: $03
    dec c                                         ; $6ab1: $0d
    rrca                                          ; $6ab2: $0f
    scf                                           ; $6ab3: $37
    ccf                                           ; $6ab4: $3f
    ld l, a                                       ; $6ab5: $6f
    ld a, l                                       ; $6ab6: $7d
    ld d, [hl]                                    ; $6ab7: $56
    ld a, [hl]                                    ; $6ab8: $7e
    jp z, $8efe                                   ; $6ab9: $ca $fe $8e

    ld a, [$faee]                                 ; $6abc: $fa $ee $fa
    xor l                                         ; $6abf: $ad
    ei                                            ; $6ac0: $fb
    adc a                                         ; $6ac1: $8f
    db $fd                                        ; $6ac2: $fd
    ld d, a                                       ; $6ac3: $57
    ld a, h                                       ; $6ac4: $7c
    daa                                           ; $6ac5: $27
    inc a                                         ; $6ac6: $3c
    inc hl                                        ; $6ac7: $23
    ld a, $73                                     ; $6ac8: $3e $73
    ld a, [hl]                                    ; $6aca: $7e
    jp $02fe                                      ; $6acb: $c3 $fe $02


    inc c                                         ; $6ace: $0c
    ld [bc], a                                    ; $6acf: $02
    dec bc                                        ; $6ad0: $0b
    ld [bc], a                                    ; $6ad1: $02
    ld c, $82                                     ; $6ad2: $0e $82
    inc c                                         ; $6ad4: $0c
    inc b                                         ; $6ad5: $04
    ld [bc], a                                    ; $6ad6: $02
    inc c                                         ; $6ad7: $0c
    ld c, $00                                     ; $6ad8: $0e $00

jr_0ed_6ada:
    inc b                                         ; $6ada: $04
    ld [$0484], sp                                ; $6adb: $08 $84 $04
    inc c                                         ; $6ade: $0c
    inc b                                         ; $6adf: $04
    inc c                                         ; $6ae0: $0c
    ld [bc], a                                    ; $6ae1: $02
    nop                                           ; $6ae2: $00
    ld [bc], a                                    ; $6ae3: $02
    inc bc                                        ; $6ae4: $03
    ld [bc], a                                    ; $6ae5: $02
    ccf                                           ; $6ae6: $3f
    add h                                         ; $6ae7: $84
    ldh [rIE], a                                  ; $6ae8: $e0 $ff
    ld a, a                                       ; $6aea: $7f
    ld a, b                                       ; $6aeb: $78
    ld [bc], a                                    ; $6aec: $02
    rrca                                          ; $6aed: $0f
    ld d, $00                                     ; $6aee: $16 $00
    add l                                         ; $6af0: $85
    rst $30                                       ; $6af1: $f7
    rst $38                                       ; $6af2: $ff
    ld a, [bc]                                    ; $6af3: $0a
    rst $38                                       ; $6af4: $ff
    nop                                           ; $6af5: $00
    ld [bc], a                                    ; $6af6: $02
    rst $38                                       ; $6af7: $ff
    add c                                         ; $6af8: $81
    call nz, Call_0ed_7f02                        ; $6af9: $c4 $02 $7f
    inc d                                         ; $6afc: $14
    nop                                           ; $6afd: $00
    adc b                                         ; $6afe: $88
    inc bc                                        ; $6aff: $03
    ld bc, $390f                                  ; $6b00: $01 $0f $39
    dec e                                         ; $6b03: $1d
    dec hl                                        ; $6b04: $2b
    ld [hl], $1e                                  ; $6b05: $36 $1e
    ld [bc], a                                    ; $6b07: $02
    inc a                                         ; $6b08: $3c
    ld [bc], a                                    ; $6b09: $02
    jr c, @+$16                                   ; $6b0a: $38 $14

    nop                                           ; $6b0c: $00
    rst $38                                       ; $6b0d: $ff
    rrca                                          ; $6b0e: $0f
    dec b                                         ; $6b0f: $05
    ld hl, sp+$12                                 ; $6b10: $f8 $12
    ld [$ef01], a                                 ; $6b12: $ea $01 $ef
    inc b                                         ; $6b15: $04
    db $ed                                        ; $6b16: $ed
    ld a, [bc]                                    ; $6b17: $0a
    db $fd                                        ; $6b18: $fd
    ld hl, sp-$03                                 ; $6b19: $f8 $fd
    nop                                           ; $6b1b: $00
    db $fd                                        ; $6b1c: $fd
    ld b, $02                                     ; $6b1d: $06 $02
    ld bc, $069e                                  ; $6b1f: $01 $9e $06
    rlca                                          ; $6b22: $07
    dec de                                        ; $6b23: $1b
    rra                                           ; $6b24: $1f
    scf                                           ; $6b25: $37
    ld a, $2b                                     ; $6b26: $3e $2b
    ccf                                           ; $6b28: $3f
    ld h, l                                       ; $6b29: $65
    ld a, a                                       ; $6b2a: $7f
    ld b, a                                       ; $6b2b: $47
    ld a, l                                       ; $6b2c: $7d
    halt                                          ; $6b2d: $76
    ld a, l                                       ; $6b2e: $7d
    ld d, a                                       ; $6b2f: $57
    ld a, h                                       ; $6b30: $7c
    ld c, l                                       ; $6b31: $4d
    ld a, [hl]                                    ; $6b32: $7e
    dec [hl]                                      ; $6b33: $35
    ld a, $23                                     ; $6b34: $3e $23
    ld a, $73                                     ; $6b36: $3e $73
    ld a, [hl]                                    ; $6b38: $7e
    jp Jump_0ed_77fe                              ; $6b39: $c3 $fe $77


    ld a, [$fba6]                                 ; $6b3c: $fa $a6 $fb
    ld [bc], a                                    ; $6b3f: $02
    jr jr_0ed_6b44                                ; $6b40: $18 $02

    inc sp                                        ; $6b42: $33
    add h                                         ; $6b43: $84

jr_0ed_6b44:
    inc e                                         ; $6b44: $1c
    inc a                                         ; $6b45: $3c
    jr c, jr_0ed_6b70                             ; $6b46: $38 $28

    ld [bc], a                                    ; $6b48: $02
    jr c, jr_0ed_6b4d                             ; $6b49: $38 $02

    jr nz, @+$08                                  ; $6b4b: $20 $06

jr_0ed_6b4d:
    nop                                           ; $6b4d: $00
    ld b, $20                                     ; $6b4e: $06 $20
    add e                                         ; $6b50: $83
    db $10                                        ; $6b51: $10
    jr nc, jr_0ed_6b64                            ; $6b52: $30 $10

    ld [bc], a                                    ; $6b54: $02
    jr nc, jr_0ed_6ada                            ; $6b55: $30 $83

    db $10                                        ; $6b57: $10
    jr nc, jr_0ed_6b6a                            ; $6b58: $30 $10

    ld [bc], a                                    ; $6b5a: $02
    inc bc                                        ; $6b5b: $03
    ld [bc], a                                    ; $6b5c: $02
    ccf                                           ; $6b5d: $3f
    add h                                         ; $6b5e: $84
    ldh a, [rIE]                                  ; $6b5f: $f0 $ff
    ld a, a                                       ; $6b61: $7f
    ld a, b                                       ; $6b62: $78
    ld [bc], a                                    ; $6b63: $02

jr_0ed_6b64:
    rlca                                          ; $6b64: $07
    ld d, $00                                     ; $6b65: $16 $00
    ld [bc], a                                    ; $6b67: $02
    ldh a, [$83]                                  ; $6b68: $f0 $83

jr_0ed_6b6a:
    nop                                           ; $6b6a: $00
    ldh a, [rP1]                                  ; $6b6b: $f0 $00
    ld [bc], a                                    ; $6b6d: $02
    rst $38                                       ; $6b6e: $ff
    add c                                         ; $6b6f: $81

jr_0ed_6b70:
    jp nz, Jump_0ed_7f02                          ; $6b70: $c2 $02 $7f

    ld d, $00                                     ; $6b73: $16 $00
    add c                                         ; $6b75: $81
    ld bc, $0303                                  ; $6b76: $01 $03 $03
    add d                                         ; $6b79: $82
    ld [hl], $1e                                  ; $6b7a: $36 $1e
    ld [bc], a                                    ; $6b7c: $02
    inc a                                         ; $6b7d: $3c
    ld [bc], a                                    ; $6b7e: $02
    jr nc, jr_0ed_6b97                            ; $6b7f: $30 $16

    nop                                           ; $6b81: $00
    rst $38                                       ; $6b82: $ff
    rrca                                          ; $6b83: $0f
    dec b                                         ; $6b84: $05
    ld hl, sp+$12                                 ; $6b85: $f8 $12
    ld [$ee01], a                                 ; $6b87: $ea $01 $ee
    inc b                                         ; $6b8a: $04
    db $ec                                        ; $6b8b: $ec
    ld [$f8fc], sp                                ; $6b8c: $08 $fc $f8
    db $fc                                        ; $6b8f: $fc
    nop                                           ; $6b90: $00
    db $fc                                        ; $6b91: $fc
    ld b, $02                                     ; $6b92: $06 $02
    ld bc, $029e                                  ; $6b94: $01 $9e $02

jr_0ed_6b97:
    inc bc                                        ; $6b97: $03
    dec c                                         ; $6b98: $0d
    rrca                                          ; $6b99: $0f
    scf                                           ; $6b9a: $37
    ccf                                           ; $6b9b: $3f
    ld l, a                                       ; $6b9c: $6f
    ld a, l                                       ; $6b9d: $7d
    ld d, [hl]                                    ; $6b9e: $56
    ld a, [hl]                                    ; $6b9f: $7e
    jp z, $8efe                                   ; $6ba0: $ca $fe $8e

    ld a, [$fbed]                                 ; $6ba3: $fa $ed $fb
    ld l, e                                       ; $6ba6: $6b
    ld a, l                                       ; $6ba7: $7d
    ld c, a                                       ; $6ba8: $4f
    ld a, h                                       ; $6ba9: $7c
    dec hl                                        ; $6baa: $2b
    ld a, $33                                     ; $6bab: $3e $33
    ld a, $63                                     ; $6bad: $3e $63
    ld a, [hl]                                    ; $6baf: $7e
    db $d3                                        ; $6bb0: $d3
    cp $67                                        ; $6bb1: $fe $67
    ld a, [$0402]                                 ; $6bb3: $fa $02 $04
    inc b                                         ; $6bb6: $04
    ld [$0f02], sp                                ; $6bb7: $08 $02 $0f
    add d                                         ; $6bba: $82
    inc c                                         ; $6bbb: $0c
    inc b                                         ; $6bbc: $04
    ld [bc], a                                    ; $6bbd: $02
    inc c                                         ; $6bbe: $0c
    inc c                                         ; $6bbf: $0c
    nop                                           ; $6bc0: $00
    inc b                                         ; $6bc1: $04
    ld [$0c84], sp                                ; $6bc2: $08 $84 $0c
    inc b                                         ; $6bc5: $04
    inc c                                         ; $6bc6: $0c
    inc b                                         ; $6bc7: $04
    ld [bc], a                                    ; $6bc8: $02
    nop                                           ; $6bc9: $00
    ld [bc], a                                    ; $6bca: $02
    ld bc, $3f02                                  ; $6bcb: $01 $02 $3f
    add h                                         ; $6bce: $84
    ldh a, [rIE]                                  ; $6bcf: $f0 $ff
    ld a, a                                       ; $6bd1: $7f
    ld a, h                                       ; $6bd2: $7c
    ld [bc], a                                    ; $6bd3: $02
    rlca                                          ; $6bd4: $07
    ld d, $00                                     ; $6bd5: $16 $00
    ld [bc], a                                    ; $6bd7: $02
    ldh a, [$83]                                  ; $6bd8: $f0 $83
    ld a, [bc]                                    ; $6bda: $0a
    rst $38                                       ; $6bdb: $ff
    nop                                           ; $6bdc: $00
    ld [bc], a                                    ; $6bdd: $02
    rst $38                                       ; $6bde: $ff
    add c                                         ; $6bdf: $81
    and d                                         ; $6be0: $a2
    ld [bc], a                                    ; $6be1: $02
    ld a, a                                       ; $6be2: $7f
    inc d                                         ; $6be3: $14
    nop                                           ; $6be4: $00
    add c                                         ; $6be5: $81
    inc bc                                        ; $6be6: $03
    ld [bc], a                                    ; $6be7: $02
    ld bc, $0385                                  ; $6be8: $01 $85 $03
    dec de                                        ; $6beb: $1b
    cpl                                           ; $6bec: $2f
    ld [hl], $1e                                  ; $6bed: $36 $1e
    ld [bc], a                                    ; $6bef: $02
    inc a                                         ; $6bf0: $3c
    ld [bc], a                                    ; $6bf1: $02
    jr nc, @+$16                                  ; $6bf2: $30 $14

    nop                                           ; $6bf4: $00
    rst $38                                       ; $6bf5: $ff
    rrca                                          ; $6bf6: $0f
    dec b                                         ; $6bf7: $05
    ld hl, sp+$12                                 ; $6bf8: $f8 $12
    ld [$ee01], a                                 ; $6bfa: $ea $01 $ee
    inc bc                                        ; $6bfd: $03
    db $ec                                        ; $6bfe: $ec
    rlca                                          ; $6bff: $07
    db $fc                                        ; $6c00: $fc
    ld hl, sp-$04                                 ; $6c01: $f8 $fc
    nop                                           ; $6c03: $00
    db $fc                                        ; $6c04: $fc
    ld b, $02                                     ; $6c05: $06 $02
    ld bc, $029e                                  ; $6c07: $01 $9e $02
    inc bc                                        ; $6c0a: $03
    dec c                                         ; $6c0b: $0d
    rrca                                          ; $6c0c: $0f
    ld [hl], $3f                                  ; $6c0d: $36 $3f
    ld l, a                                       ; $6c0f: $6f
    ld a, l                                       ; $6c10: $7d
    ld d, [hl]                                    ; $6c11: $56
    ld a, [hl]                                    ; $6c12: $7e
    jp z, $8efe                                   ; $6c13: $ca $fe $8e

    ld a, [$fbed]                                 ; $6c16: $fa $ed $fb
    ld l, e                                       ; $6c19: $6b
    ld a, l                                       ; $6c1a: $7d
    ld c, a                                       ; $6c1b: $4f
    ld a, h                                       ; $6c1c: $7c
    inc sp                                        ; $6c1d: $33
    ld a, $19                                     ; $6c1e: $3e $19
    rra                                           ; $6c20: $1f
    ld sp, $e93f                                  ; $6c21: $31 $3f $e9
    rst $38                                       ; $6c24: $ff
    or e                                          ; $6c25: $b3
    db $fd                                        ; $6c26: $fd
    ld b, $08                                     ; $6c27: $06 $08
    ld [bc], a                                    ; $6c29: $02
    rrca                                          ; $6c2a: $0f
    add d                                         ; $6c2b: $82
    inc c                                         ; $6c2c: $0c
    inc b                                         ; $6c2d: $04
    ld [bc], a                                    ; $6c2e: $02
    inc c                                         ; $6c2f: $0c
    inc c                                         ; $6c30: $0c
    nop                                           ; $6c31: $00
    ld [bc], a                                    ; $6c32: $02
    ld [$0c86], sp                                ; $6c33: $08 $86 $0c
    inc b                                         ; $6c36: $04
    ld a, [bc]                                    ; $6c37: $0a
    ld b, $0e                                     ; $6c38: $06 $0e
    ld [bc], a                                    ; $6c3a: $02
    ld [bc], a                                    ; $6c3b: $02
    nop                                           ; $6c3c: $00
    ld [bc], a                                    ; $6c3d: $02
    ld bc, $3f02                                  ; $6c3e: $01 $02 $3f
    add h                                         ; $6c41: $84
    ldh a, [rIE]                                  ; $6c42: $f0 $ff
    ld a, a                                       ; $6c44: $7f
    ld a, l                                       ; $6c45: $7d
    ld [bc], a                                    ; $6c46: $02
    rlca                                          ; $6c47: $07
    ld d, $00                                     ; $6c48: $16 $00
    ld [bc], a                                    ; $6c4a: $02
    ldh [$83], a                                  ; $6c4b: $e0 $83
    ld a, [bc]                                    ; $6c4d: $0a
    rst $38                                       ; $6c4e: $ff
    nop                                           ; $6c4f: $00
    ld [bc], a                                    ; $6c50: $02
    rst $38                                       ; $6c51: $ff
    add c                                         ; $6c52: $81
    inc d                                         ; $6c53: $14
    ld [bc], a                                    ; $6c54: $02
    rst $38                                       ; $6c55: $ff
    inc d                                         ; $6c56: $14
    nop                                           ; $6c57: $00
    adc b                                         ; $6c58: $88
    rlca                                          ; $6c59: $07
    ld bc, $0305                                  ; $6c5a: $01 $05 $03
    dec de                                        ; $6c5d: $1b
    cpl                                           ; $6c5e: $2f
    ld [hl], $1e                                  ; $6c5f: $36 $1e
    ld [bc], a                                    ; $6c61: $02
    inc a                                         ; $6c62: $3c
    ld [bc], a                                    ; $6c63: $02
    jr nc, @+$16                                  ; $6c64: $30 $14

    nop                                           ; $6c66: $00
    rst $38                                       ; $6c67: $ff
    rrca                                          ; $6c68: $0f
    dec b                                         ; $6c69: $05
    ld hl, sp+$12                                 ; $6c6a: $f8 $12
    ld [$ec01], a                                 ; $6c6c: $ea $01 $ec
    inc bc                                        ; $6c6f: $03
    xor $07                                       ; $6c70: $ee $07
    db $fc                                        ; $6c72: $fc
    ld hl, sp-$04                                 ; $6c73: $f8 $fc
    nop                                           ; $6c75: $00
    db $fc                                        ; $6c76: $fc
    ld b, $04                                     ; $6c77: $06 $04
    ld bc, $0302                                  ; $6c79: $01 $02 $03
    sbc d                                         ; $6c7c: $9a
    dec b                                         ; $6c7d: $05
    rlca                                          ; $6c7e: $07
    dec de                                        ; $6c7f: $1b
    ld e, $2e                                     ; $6c80: $1e $2e
    ccf                                           ; $6c82: $3f
    ld l, a                                       ; $6c83: $6f
    ld a, l                                       ; $6c84: $7d
    ld e, d                                       ; $6c85: $5a
    ld a, [hl]                                    ; $6c86: $7e
    jp z, $8efe                                   ; $6c87: $ca $fe $8e

    ld a, [$fbed]                                 ; $6c8a: $fa $ed $fb
    xor e                                         ; $6c8d: $ab
    db $fd                                        ; $6c8e: $fd
    ld c, a                                       ; $6c8f: $4f
    ld a, h                                       ; $6c90: $7c
    inc sp                                        ; $6c91: $33
    ld a, $1a                                     ; $6c92: $3e $1a
    rra                                           ; $6c94: $1f
    ld de, $021f                                  ; $6c95: $11 $1f $02
    inc bc                                        ; $6c98: $03
    ld [bc], a                                    ; $6c99: $02
    inc c                                         ; $6c9a: $0c
    inc b                                         ; $6c9b: $04
    ld [$000c], sp                                ; $6c9c: $08 $0c $00
    ld [bc], a                                    ; $6c9f: $02
    ld [$0c8a], sp                                ; $6ca0: $08 $8a $0c
    inc b                                         ; $6ca3: $04
    inc c                                         ; $6ca4: $0c
    inc b                                         ; $6ca5: $04
    ld c, $02                                     ; $6ca6: $0e $02
    sbc [hl]                                      ; $6ca8: $9e
    ld a, [c]                                     ; $6ca9: $f2
    ld a, [de]                                    ; $6caa: $1a
    or $02                                        ; $6cab: $f6 $02
    nop                                           ; $6cad: $00
    ld [bc], a                                    ; $6cae: $02
    inc bc                                        ; $6caf: $03
    add [hl]                                      ; $6cb0: $86
    ld a, $3f                                     ; $6cb1: $3e $3f
    ldh a, [rIE]                                  ; $6cb3: $f0 $ff
    ld a, a                                       ; $6cb5: $7f
    ld a, c                                       ; $6cb6: $79
    ld [bc], a                                    ; $6cb7: $02
    rrca                                          ; $6cb8: $0f
    inc d                                         ; $6cb9: $14
    nop                                           ; $6cba: $00
    add a                                         ; $6cbb: $87
    inc e                                         ; $6cbc: $1c
    ld e, $f6                                     ; $6cbd: $1e $f6
    cp $14                                        ; $6cbf: $fe $14
    rst $38                                       ; $6cc1: $ff
    nop                                           ; $6cc2: $00
    ld [bc], a                                    ; $6cc3: $02
    rst $38                                       ; $6cc4: $ff
    add c                                         ; $6cc5: $81
    jr @+$04                                      ; $6cc6: $18 $02

    rst $28                                       ; $6cc8: $ef
    jr jr_0ed_6ccb                                ; $6cc9: $18 $00

jr_0ed_6ccb:
    add h                                         ; $6ccb: $84
    dec e                                         ; $6ccc: $1d
    dec hl                                        ; $6ccd: $2b
    ld [hl], $1e                                  ; $6cce: $36 $1e
    ld [bc], a                                    ; $6cd0: $02
    inc a                                         ; $6cd1: $3c
    ld [bc], a                                    ; $6cd2: $02
    jr c, @+$16                                   ; $6cd3: $38 $14

    nop                                           ; $6cd5: $00
    rst $38                                       ; $6cd6: $ff
    rrca                                          ; $6cd7: $0f
    dec b                                         ; $6cd8: $05
    ld hl, sp+$12                                 ; $6cd9: $f8 $12
    ld [$eb01], a                                 ; $6cdb: $ea $01 $eb
    inc bc                                        ; $6cde: $03
    xor $06                                       ; $6cdf: $ee $06
    ei                                            ; $6ce1: $fb
    ld hl, sp-$05                                 ; $6ce2: $f8 $fb
    nop                                           ; $6ce4: $00
    ei                                            ; $6ce5: $fb
    ld b, $04                                     ; $6ce6: $06 $04
    ld bc, $0302                                  ; $6ce8: $01 $02 $03
    sbc d                                         ; $6ceb: $9a
    dec b                                         ; $6cec: $05
    rlca                                          ; $6ced: $07
    dec de                                        ; $6cee: $1b
    ld e, $27                                     ; $6cef: $1e $27
    dec a                                         ; $6cf1: $3d
    ld e, [hl]                                    ; $6cf2: $5e
    ld a, d                                       ; $6cf3: $7a
    ld l, d                                       ; $6cf4: $6a
    ld a, [hl]                                    ; $6cf5: $7e
    sbc d                                         ; $6cf6: $9a
    cp $96                                        ; $6cf7: $fe $96
    ld a, [$fad6]                                 ; $6cf9: $fa $d6 $fa
    or [hl]                                       ; $6cfc: $b6
    ld a, [$7d4b]                                 ; $6cfd: $fa $4b $7d
    ld c, a                                       ; $6d00: $4f
    ld a, h                                       ; $6d01: $7c
    scf                                           ; $6d02: $37
    ld a, $32                                     ; $6d03: $3e $32
    ccf                                           ; $6d05: $3f
    ld [bc], a                                    ; $6d06: $02
    rlca                                          ; $6d07: $07
    inc b                                         ; $6d08: $04
    inc b                                         ; $6d09: $04
    ld c, $00                                     ; $6d0a: $0e $00
    ld [bc], a                                    ; $6d0c: $02
    inc b                                         ; $6d0d: $04
    adc d                                         ; $6d0e: $8a
    ld b, $02                                     ; $6d0f: $06 $02
    ld b, $02                                     ; $6d11: $06 $02
    adc a                                         ; $6d13: $8f
    ld sp, hl                                     ; $6d14: $f9
    ld c, a                                       ; $6d15: $4f
    ld sp, hl                                     ; $6d16: $f9
    sbc l                                         ; $6d17: $9d
    db $eb                                        ; $6d18: $eb
    inc b                                         ; $6d19: $04
    nop                                           ; $6d1a: $00
    ld [bc], a                                    ; $6d1b: $02
    ld bc, $1f02                                  ; $6d1c: $01 $02 $1f
    add h                                         ; $6d1f: $84
    ldh a, [rIE]                                  ; $6d20: $f0 $ff
    ld a, a                                       ; $6d22: $7f
    ld a, l                                       ; $6d23: $7d
    ld [bc], a                                    ; $6d24: $02
    ld b, $14                                     ; $6d25: $06 $14
    nop                                           ; $6d27: $00
    ld [bc], a                                    ; $6d28: $02
    inc e                                         ; $6d29: $1c
    add l                                         ; $6d2a: $85
    db $f4                                        ; $6d2b: $f4
    db $fc                                        ; $6d2c: $fc
    ld a, [bc]                                    ; $6d2d: $0a
    rst $38                                       ; $6d2e: $ff
    nop                                           ; $6d2f: $00
    ld [bc], a                                    ; $6d30: $02
    rst $38                                       ; $6d31: $ff
    add c                                         ; $6d32: $81
    jr z, @+$04                                   ; $6d33: $28 $02

    rst $38                                       ; $6d35: $ff
    jr jr_0ed_6d38                                ; $6d36: $18 $00

jr_0ed_6d38:
    add h                                         ; $6d38: $84
    dec de                                        ; $6d39: $1b
    cpl                                           ; $6d3a: $2f
    ld [hl], $1e                                  ; $6d3b: $36 $1e
    ld [bc], a                                    ; $6d3d: $02
    inc a                                         ; $6d3e: $3c
    ld [bc], a                                    ; $6d3f: $02
    jr nc, jr_0ed_6d54                            ; $6d40: $30 $12

    nop                                           ; $6d42: $00
    rst $38                                       ; $6d43: $ff
    rrca                                          ; $6d44: $0f
    dec b                                         ; $6d45: $05
    ld hl, sp+$12                                 ; $6d46: $f8 $12
    ld [$ea01], a                                 ; $6d48: $ea $01 $ea
    ld [bc], a                                    ; $6d4b: $02
    db $ec                                        ; $6d4c: $ec
    dec b                                         ; $6d4d: $05
    ld a, [$faf9]                                 ; $6d4e: $fa $f9 $fa
    ld bc, $06fa                                  ; $6d51: $01 $fa $06

jr_0ed_6d54:
    inc b                                         ; $6d54: $04
    ld [bc], a                                    ; $6d55: $02
    ld [bc], a                                    ; $6d56: $02
    ld b, $9a                                     ; $6d57: $06 $9a
    dec bc                                        ; $6d59: $0b
    rrca                                          ; $6d5a: $0f
    rla                                           ; $6d5b: $17
    dec e                                         ; $6d5c: $1d
    cpl                                           ; $6d5d: $2f
    dec sp                                        ; $6d5e: $3b
    ld c, d                                       ; $6d5f: $4a
    ld a, [hl]                                    ; $6d60: $7e
    ld c, d                                       ; $6d61: $4a
    ld a, [hl]                                    ; $6d62: $7e
    sub [hl]                                      ; $6d63: $96
    ld a, [$fa96]                                 ; $6d64: $fa $96 $fa
    sub $fa                                       ; $6d67: $d6 $fa
    db $dd                                        ; $6d69: $dd
    ei                                            ; $6d6a: $fb
    sbc a                                         ; $6d6b: $9f
    ld sp, hl                                     ; $6d6c: $f9
    adc [hl]                                      ; $6d6d: $8e
    db $fd                                        ; $6d6e: $fd
    ld d, a                                       ; $6d6f: $57
    ld a, h                                       ; $6d70: $7c
    inc hl                                        ; $6d71: $23
    ld a, $02                                     ; $6d72: $3e $02
    ld [bc], a                                    ; $6d74: $02
    ld [bc], a                                    ; $6d75: $02
    inc b                                         ; $6d76: $04
    ld [de], a                                    ; $6d77: $12
    nop                                           ; $6d78: $00
    ld [bc], a                                    ; $6d79: $02
    inc b                                         ; $6d7a: $04
    add c                                         ; $6d7b: $81
    ld [bc], a                                    ; $6d7c: $02
    ld [bc], a                                    ; $6d7d: $02
    ld b, $85                                     ; $6d7e: $06 $85
    ld [bc], a                                    ; $6d80: $02
    adc a                                         ; $6d81: $8f
    ld sp, hl                                     ; $6d82: $f9
    adc e                                         ; $6d83: $8b
    db $fd                                        ; $6d84: $fd
    ld b, $00                                     ; $6d85: $06 $00
    ld [bc], a                                    ; $6d87: $02
    ld bc, $0e86                                  ; $6d88: $01 $86 $0e
    rrca                                          ; $6d8b: $0f
    ldh a, [rIE]                                  ; $6d8c: $f0 $ff
    ld a, a                                       ; $6d8e: $7f
    halt                                          ; $6d8f: $76
    ld [bc], a                                    ; $6d90: $02
    dec bc                                        ; $6d91: $0b
    stop                                          ; $6d92: $10 $00
    ld [bc], a                                    ; $6d94: $02
    db $10                                        ; $6d95: $10
    ld [bc], a                                    ; $6d96: $02
    nop                                           ; $6d97: $00
    adc d                                         ; $6d98: $8a
    inc a                                         ; $6d99: $3c
    ccf                                           ; $6d9a: $3f
    ret c                                         ; $6d9b: $d8

    rst $38                                       ; $6d9c: $ff
    jr z, @+$01                                   ; $6d9d: $28 $ff

    ld bc, $fffe                                  ; $6d9f: $01 $fe $ff
    ld d, c                                       ; $6da2: $51
    ld [bc], a                                    ; $6da3: $02
    rst $38                                       ; $6da4: $ff
    inc d                                         ; $6da5: $14
    nop                                           ; $6da6: $00
    adc b                                         ; $6da7: $88
    dec e                                         ; $6da8: $1d
    dec bc                                        ; $6da9: $0b
    dec e                                         ; $6daa: $1d
    dec bc                                        ; $6dab: $0b
    ld a, [de]                                    ; $6dac: $1a
    ld c, $16                                     ; $6dad: $0e $16
    ld e, $02                                     ; $6daf: $1e $02
    inc e                                         ; $6db1: $1c
    ld [bc], a                                    ; $6db2: $02
    db $10                                        ; $6db3: $10
    stop                                          ; $6db4: $10 $00
    rst $38                                       ; $6db6: $ff
    rrca                                          ; $6db7: $0f
    dec b                                         ; $6db8: $05
    ld hl, sp+$12                                 ; $6db9: $f8 $12
    ld [$ea01], a                                 ; $6dbb: $ea $01 $ea
    ld [bc], a                                    ; $6dbe: $02
    db $ec                                        ; $6dbf: $ec
    ld b, $fa                                     ; $6dc0: $06 $fa
    ld sp, hl                                     ; $6dc2: $f9
    ld a, [$fa01]                                 ; $6dc3: $fa $01 $fa
    ld b, $02                                     ; $6dc6: $06 $02
    ld [$0402], sp                                ; $6dc8: $08 $02 $04
    ld [bc], a                                    ; $6dcb: $02
    inc c                                         ; $6dcc: $0c
    sbc d                                         ; $6dcd: $9a
    rla                                           ; $6dce: $17
    rra                                           ; $6dcf: $1f
    ld l, $3a                                     ; $6dd0: $2e $3a
    ld e, [hl]                                    ; $6dd2: $5e
    halt                                          ; $6dd3: $76
    ld e, d                                       ; $6dd4: $5a
    ld a, [hl]                                    ; $6dd5: $7e
    sbc d                                         ; $6dd6: $9a
    cp $95                                        ; $6dd7: $fe $95
    ei                                            ; $6dd9: $fb
    rst $10                                       ; $6dda: $d7
    ld sp, hl                                     ; $6ddb: $f9
    rst $10                                       ; $6ddc: $d7
    ld sp, hl                                     ; $6ddd: $f9
    adc [hl]                                      ; $6dde: $8e
    ld sp, hl                                     ; $6ddf: $f9
    sub a                                         ; $6de0: $97
    db $fc                                        ; $6de1: $fc
    sub a                                         ; $6de2: $97
    db $fc                                        ; $6de3: $fc
    ld h, e                                       ; $6de4: $63
    ld a, [hl]                                    ; $6de5: $7e
    inc hl                                        ; $6de6: $23
    ld a, $02                                     ; $6de7: $3e $02
    ld [$0010], sp                                ; $6de9: $08 $10 $00
    inc b                                         ; $6dec: $04
    ld [$0481], sp                                ; $6ded: $08 $81 $04
    ld [bc], a                                    ; $6df0: $02
    inc c                                         ; $6df1: $0c
    add a                                         ; $6df2: $87
    inc b                                         ; $6df3: $04
    ld a, [bc]                                    ; $6df4: $0a
    ld b, $1e                                     ; $6df5: $06 $1e
    ld a, [c]                                     ; $6df7: $f2
    dec d                                         ; $6df8: $15
    ei                                            ; $6df9: $fb
    ld b, $00                                     ; $6dfa: $06 $00
    ld [bc], a                                    ; $6dfc: $02
    ld bc, $0e86                                  ; $6dfd: $01 $86 $0e
    rrca                                          ; $6e00: $0f
    ldh a, [rIE]                                  ; $6e01: $f0 $ff
    ld a, a                                       ; $6e03: $7f
    ld [hl], h                                    ; $6e04: $74
    ld [bc], a                                    ; $6e05: $02
    dec bc                                        ; $6e06: $0b
    stop                                          ; $6e07: $10 $00
    add d                                         ; $6e09: $82
    db $10                                        ; $6e0a: $10
    jr @+$04                                      ; $6e0b: $18 $02

    ld [$388a], sp                                ; $6e0d: $08 $8a $38
    ccf                                           ; $6e10: $3f
    ret c                                         ; $6e11: $d8

    rst $38                                       ; $6e12: $ff
    jr z, @+$01                                   ; $6e13: $28 $ff

    ld bc, $fffe                                  ; $6e15: $01 $fe $ff
    ld e, c                                       ; $6e18: $59
    ld [bc], a                                    ; $6e19: $02
    rst $30                                       ; $6e1a: $f7
    inc d                                         ; $6e1b: $14
    nop                                           ; $6e1c: $00
    adc b                                         ; $6e1d: $88
    dec e                                         ; $6e1e: $1d
    dec bc                                        ; $6e1f: $0b
    add hl, de                                    ; $6e20: $19
    rrca                                          ; $6e21: $0f
    ld a, [de]                                    ; $6e22: $1a
    ld c, $14                                     ; $6e23: $0e $14
    inc e                                         ; $6e25: $1c
    ld [bc], a                                    ; $6e26: $02
    jr @+$04                                      ; $6e27: $18 $02

    db $10                                        ; $6e29: $10
    stop                                          ; $6e2a: $10 $00
    rst $38                                       ; $6e2c: $ff
    dec c                                         ; $6e2d: $0d
    inc b                                         ; $6e2e: $04
    ld hl, sp+$12                                 ; $6e2f: $f8 $12
    ld [$ea01], a                                 ; $6e31: $ea $01 $ea
    inc b                                         ; $6e34: $04
    rst $30                                       ; $6e35: $f7
    ld b, $fa                                     ; $6e36: $06 $fa
    ld sp, hl                                     ; $6e38: $f9
    ld a, [$02fe]                                 ; $6e39: $fa $fe $02
    db $10                                        ; $6e3c: $10
    ld [bc], a                                    ; $6e3d: $02
    ld [$1902], sp                                ; $6e3e: $08 $02 $19
    add h                                         ; $6e41: $84
    ld l, $3e                                     ; $6e42: $2e $3e
    ld e, h                                       ; $6e44: $5c
    ld [hl], h                                    ; $6e45: $74
    ld [bc], a                                    ; $6e46: $02
    ld a, h                                       ; $6e47: $7c
    sub h                                         ; $6e48: $94
    sub h                                         ; $6e49: $94
    db $fc                                        ; $6e4a: $fc
    sbc h                                         ; $6e4b: $9c
    db $f4                                        ; $6e4c: $f4
    sbc [hl]                                      ; $6e4d: $9e
    ld a, [c]                                     ; $6e4e: $f2
    sub [hl]                                      ; $6e4f: $96
    ld a, [$fad6]                                 ; $6e50: $fa $d6 $fa
    db $dd                                        ; $6e53: $dd
    ei                                            ; $6e54: $fb
    sbc a                                         ; $6e55: $9f
    ld sp, hl                                     ; $6e56: $f9
    adc [hl]                                      ; $6e57: $8e
    db $fd                                        ; $6e58: $fd
    ld d, a                                       ; $6e59: $57
    ld a, h                                       ; $6e5a: $7c
    inc hl                                        ; $6e5b: $23
    ld a, $02                                     ; $6e5c: $3e $02
    ld [bc], a                                    ; $6e5e: $02
    add c                                         ; $6e5f: $81
    ld bc, $0302                                  ; $6e60: $01 $02 $03
    adc a                                         ; $6e63: $8f
    ld bc, $f98f                                  ; $6e64: $01 $8f $f9
    adc a                                         ; $6e67: $8f
    ld sp, hl                                     ; $6e68: $f9

jr_0ed_6e69:
    sbc l                                         ; $6e69: $9d
    db $eb                                        ; $6e6a: $eb
    dec e                                         ; $6e6b: $1d
    db $eb                                        ; $6e6c: $eb
    ld a, [de]                                    ; $6e6d: $1a
    xor $36                                       ; $6e6e: $ee $36
    sbc $fc                                       ; $6e70: $de $fc
    inc a                                         ; $6e72: $3c
    ld [bc], a                                    ; $6e73: $02
    ldh a, [rNR10]                                ; $6e74: $f0 $10
    nop                                           ; $6e76: $00
    ld [bc], a                                    ; $6e77: $02
    ld bc, $0e86                                  ; $6e78: $01 $86 $0e
    rrca                                          ; $6e7b: $0f
    ldh a, [rIE]                                  ; $6e7c: $f0 $ff
    ld a, a                                       ; $6e7e: $7f
    halt                                          ; $6e7f: $76
    ld [bc], a                                    ; $6e80: $02
    dec bc                                        ; $6e81: $0b
    inc d                                         ; $6e82: $14
    nop                                           ; $6e83: $00
    ld [bc], a                                    ; $6e84: $02
    rlca                                          ; $6e85: $07
    add l                                         ; $6e86: $85
    dec de                                        ; $6e87: $1b
    rra                                           ; $6e88: $1f
    dec b                                         ; $6e89: $05
    rra                                           ; $6e8a: $1f
    nop                                           ; $6e8b: $00
    ld [bc], a                                    ; $6e8c: $02
    rra                                           ; $6e8d: $1f
    add c                                         ; $6e8e: $81
    ld a, [bc]                                    ; $6e8f: $0a
    ld [bc], a                                    ; $6e90: $02
    rra                                           ; $6e91: $1f
    stop                                          ; $6e92: $10 $00
    rst $38                                       ; $6e94: $ff
    rrca                                          ; $6e95: $0f
    dec b                                         ; $6e96: $05
    ld hl, sp+$12                                 ; $6e97: $f8 $12
    ld [$f201], a                                 ; $6e99: $ea $01 $f2
    inc b                                         ; $6e9c: $04
    db $ed                                        ; $6e9d: $ed
    dec bc                                        ; $6e9e: $0b
    db $fd                                        ; $6e9f: $fd
    ld hl, sp-$03                                 ; $6ea0: $f8 $fd
    db $fc                                        ; $6ea2: $fc
    db $fd                                        ; $6ea3: $fd
    ld b, $02                                     ; $6ea4: $06 $02
    inc bc                                        ; $6ea6: $03
    sbc h                                         ; $6ea7: $9c
    ld b, $07                                     ; $6ea8: $06 $07
    inc c                                         ; $6eaa: $0c
    rrca                                          ; $6eab: $0f
    ld [$160f], sp                                ; $6eac: $08 $0f $16
    rra                                           ; $6eaf: $1f
    ld [de], a                                    ; $6eb0: $12
    rra                                           ; $6eb1: $1f
    ld de, $1b1f                                  ; $6eb2: $11 $1f $1b
    rra                                           ; $6eb5: $1f
    inc sp                                        ; $6eb6: $33
    ld a, $23                                     ; $6eb7: $3e $23
    ld a, $d3                                     ; $6eb9: $3e $d3
    cp $e3                                        ; $6ebb: $fe $e3
    cp $46                                        ; $6ebd: $fe $46
    ei                                            ; $6ebf: $fb
    inc c                                         ; $6ec0: $0c
    rst $30                                       ; $6ec1: $f7
    rst $38                                       ; $6ec2: $ff
    ld c, a                                       ; $6ec3: $4f
    ld [bc], a                                    ; $6ec4: $02
    cp $02                                        ; $6ec5: $fe $02
    jr nz, jr_0ed_6ecb                            ; $6ec7: $20 $02

    ld a, [de]                                    ; $6ec9: $1a
    ld [bc], a                                    ; $6eca: $02

jr_0ed_6ecb:
    dec c                                         ; $6ecb: $0d
    adc l                                         ; $6ecc: $8d
    rla                                           ; $6ecd: $17
    rra                                           ; $6ece: $1f
    ld l, [hl]                                    ; $6ecf: $6e
    ld a, d                                       ; $6ed0: $7a
    ld e, $7e                                     ; $6ed1: $1e $7e
    ld l, b                                       ; $6ed3: $68
    ld a, b                                       ; $6ed4: $78
    jr c, jr_0ed_6f3f                             ; $6ed5: $38 $68

    ld c, b                                       ; $6ed7: $48
    ld a, b                                       ; $6ed8: $78
    ld d, b                                       ; $6ed9: $50
    ld [bc], a                                    ; $6eda: $02
    ld [hl], b                                    ; $6edb: $70
    adc b                                         ; $6edc: $88
    ld d, b                                       ; $6edd: $50
    jr nc, jr_0ed_6f30                            ; $6ede: $30 $50

    ld [hl], b                                    ; $6ee0: $70
    db $10                                        ; $6ee1: $10
    ld d, b                                       ; $6ee2: $50
    jr nc, jr_0ed_6f45                            ; $6ee3: $30 $60

    ld [bc], a                                    ; $6ee5: $02
    jr nz, jr_0ed_6e69                            ; $6ee6: $20 $81

    ld h, b                                       ; $6ee8: $60
    ld [bc], a                                    ; $6ee9: $02
    ld bc, $1f02                                  ; $6eea: $01 $02 $1f
    add h                                         ; $6eed: $84
    ldh a, [rIE]                                  ; $6eee: $f0 $ff
    ccf                                           ; $6ef0: $3f
    add hl, sp                                    ; $6ef1: $39
    ld [bc], a                                    ; $6ef2: $02
    ld b, $16                                     ; $6ef3: $06 $16
    nop                                           ; $6ef5: $00
    ld [bc], a                                    ; $6ef6: $02
    rrca                                          ; $6ef7: $0f
    add e                                         ; $6ef8: $83
    ld bc, $000f                                  ; $6ef9: $01 $0f $00
    ld [bc], a                                    ; $6efc: $02
    rrca                                          ; $6efd: $0f
    add c                                         ; $6efe: $81
    ld [bc], a                                    ; $6eff: $02
    ld [bc], a                                    ; $6f00: $02
    rrca                                          ; $6f01: $0f
    ld d, $00                                     ; $6f02: $16 $00
    add e                                         ; $6f04: $83
    ld bc, $0103                                  ; $6f05: $01 $03 $01
    inc bc                                        ; $6f08: $03
    inc bc                                        ; $6f09: $03
    ld [bc], a                                    ; $6f0a: $02
    ld [bc], a                                    ; $6f0b: $02
    jr jr_0ed_6f0e                                ; $6f0c: $18 $00

jr_0ed_6f0e:
    rst $38                                       ; $6f0e: $ff
    dec c                                         ; $6f0f: $0d
    inc b                                         ; $6f10: $04
    ld hl, sp+$12                                 ; $6f11: $f8 $12
    ld [$fd01], a                                 ; $6f13: $ea $01 $fd
    ld hl, sp-$0e                                 ; $6f16: $f8 $f2
    nop                                           ; $6f18: $00
    db $ec                                        ; $6f19: $ec
    ld [$08fc], sp                                ; $6f1a: $08 $fc $08
    ld [bc], a                                    ; $6f1d: $02
    inc bc                                        ; $6f1e: $03
    ld [bc], a                                    ; $6f1f: $02
    ccf                                           ; $6f20: $3f
    add h                                         ; $6f21: $84
    ldh a, [rIE]                                  ; $6f22: $f0 $ff
    ld a, a                                       ; $6f24: $7f
    ld a, l                                       ; $6f25: $7d
    ld [bc], a                                    ; $6f26: $02
    ld b, $16                                     ; $6f27: $06 $16
    nop                                           ; $6f29: $00
    inc b                                         ; $6f2a: $04
    ld bc, $0281                                  ; $6f2b: $01 $81 $02
    dec b                                         ; $6f2e: $05
    inc bc                                        ; $6f2f: $03

jr_0ed_6f30:
    add e                                         ; $6f30: $83
    ld [bc], a                                    ; $6f31: $02
    inc bc                                        ; $6f32: $03
    ld [bc], a                                    ; $6f33: $02
    inc bc                                        ; $6f34: $03
    inc bc                                        ; $6f35: $03
    adc e                                         ; $6f36: $8b
    ld [bc], a                                    ; $6f37: $02
    inc bc                                        ; $6f38: $03
    ld [bc], a                                    ; $6f39: $02
    inc bc                                        ; $6f3a: $03
    dec c                                         ; $6f3b: $0d
    rrca                                          ; $6f3c: $0f
    or $ff                                        ; $6f3d: $f6 $ff

jr_0ed_6f3f:
    ld a, [bc]                                    ; $6f3f: $0a
    rst $38                                       ; $6f40: $ff
    nop                                           ; $6f41: $00
    ld [bc], a                                    ; $6f42: $02
    rst $38                                       ; $6f43: $ff
    add c                                         ; $6f44: $81

jr_0ed_6f45:
    inc h                                         ; $6f45: $24
    ld [bc], a                                    ; $6f46: $02
    rst $38                                       ; $6f47: $ff
    ld [bc], a                                    ; $6f48: $02
    inc b                                         ; $6f49: $04
    ld [bc], a                                    ; $6f4a: $02
    ld [$1802], sp                                ; $6f4b: $08 $02 $18
    add h                                         ; $6f4e: $84
    cpl                                           ; $6f4f: $2f
    ccf                                           ; $6f50: $3f
    ld e, h                                       ; $6f51: $5c
    ld [hl], h                                    ; $6f52: $74
    ld [bc], a                                    ; $6f53: $02
    db $fc                                        ; $6f54: $fc
    sbc h                                         ; $6f55: $9c
    ld a, b                                       ; $6f56: $78
    add sp, $58                                   ; $6f57: $e8 $58
    ld hl, sp+$28                                 ; $6f59: $f8 $28
    ld hl, sp+$38                                 ; $6f5b: $f8 $38
    add sp, -$48                                  ; $6f5d: $e8 $b8
    add sp, $58                                   ; $6f5f: $e8 $58
    add sp, -$0c                                  ; $6f61: $e8 $f4
    db $ec                                        ; $6f63: $ec
    ld [hl], h                                    ; $6f64: $74
    db $ec                                        ; $6f65: $ec
    inc a                                         ; $6f66: $3c
    db $e4                                        ; $6f67: $e4
    inc a                                         ; $6f68: $3c
    db $e4                                        ; $6f69: $e4
    inc [hl]                                      ; $6f6a: $34
    db $ec                                        ; $6f6b: $ec
    inc h                                         ; $6f6c: $24
    db $fc                                        ; $6f6d: $fc
    ld l, h                                       ; $6f6e: $6c
    cp h                                          ; $6f6f: $bc
    ret c                                         ; $6f70: $d8

    ld a, b                                       ; $6f71: $78
    ld [bc], a                                    ; $6f72: $02
    ldh a, [rSC]                                  ; $6f73: $f0 $02
    ret nz                                        ; $6f75: $c0

    inc d                                         ; $6f76: $14
    nop                                           ; $6f77: $00
    rst $38                                       ; $6f78: $ff
    dec c                                         ; $6f79: $0d
    inc b                                         ; $6f7a: $04
    ld hl, sp+$12                                 ; $6f7b: $f8 $12
    ld [$ea01], a                                 ; $6f7d: $ea $01 $ea
    inc bc                                        ; $6f80: $03
    push af                                       ; $6f81: $f5
    dec b                                         ; $6f82: $05
    ld a, [$faf9]                                 ; $6f83: $fa $f9 $fa
    db $fd                                        ; $6f86: $fd
    ld [bc], a                                    ; $6f87: $02
    sbc b                                         ; $6f88: $98
    ld [bc], a                                    ; $6f89: $02
    and b                                         ; $6f8a: $a0
    sbc h                                         ; $6f8b: $9c
    ret nc                                        ; $6f8c: $d0

    ldh a, [$e8]                                  ; $6f8d: $f0 $e8
    cp b                                          ; $6f8f: $b8
    or h                                          ; $6f90: $b4
    call c, $6c5c                                 ; $6f91: $dc $5c $6c
    ld a, [hl]                                    ; $6f94: $7e
    ld h, [hl]                                    ; $6f95: $66
    ld l, d                                       ; $6f96: $6a
    halt                                          ; $6f97: $76
    ld e, [hl]                                    ; $6f98: $5e
    ld [hl], d                                    ; $6f99: $72
    ld d, l                                       ; $6f9a: $55
    ld a, e                                       ; $6f9b: $7b
    ld l, a                                       ; $6f9c: $6f
    ld a, c                                       ; $6f9d: $79
    ld l, [hl]                                    ; $6f9e: $6e
    ld a, c                                       ; $6f9f: $79
    ld c, a                                       ; $6fa0: $4f
    ld a, b                                       ; $6fa1: $78
    dec hl                                        ; $6fa2: $2b
    inc a                                         ; $6fa3: $3c
    dec sp                                        ; $6fa4: $3b
    inc a                                         ; $6fa5: $3c
    daa                                           ; $6fa6: $27
    inc a                                         ; $6fa7: $3c
    ld [$9002], sp                                ; $6fa8: $08 $02 $90
    ld bc, $9f03                                  ; $6fab: $01 $03 $9f
    pop af                                        ; $6fae: $f1
    rra                                           ; $6faf: $1f
    pop af                                        ; $6fb0: $f1
    sbc a                                         ; $6fb1: $9f
    pop af                                        ; $6fb2: $f1
    xor l                                         ; $6fb3: $ad
    di                                            ; $6fb4: $f3
    dec a                                         ; $6fb5: $3d
    db $e3                                        ; $6fb6: $e3
    or $4e                                        ; $6fb7: $f6 $4e
    sbc h                                         ; $6fb9: $9c
    db $fc                                        ; $6fba: $fc
    ld [bc], a                                    ; $6fbb: $02
    ld hl, sp+$0c                                 ; $6fbc: $f8 $0c
    nop                                           ; $6fbe: $00
    ld [bc], a                                    ; $6fbf: $02
    ld bc, $3e86                                  ; $6fc0: $01 $86 $3e
    ccf                                           ; $6fc3: $3f
    ldh [rIE], a                                  ; $6fc4: $e0 $ff
    ld a, a                                       ; $6fc6: $7f
    ld [hl], d                                    ; $6fc7: $72
    ld [bc], a                                    ; $6fc8: $02
    dec e                                         ; $6fc9: $1d
    stop                                          ; $6fca: $10 $00
    inc b                                         ; $6fcc: $04
    ld bc, $0302                                  ; $6fcd: $01 $02 $03
    add l                                         ; $6fd0: $85
    ld c, $0f                                     ; $6fd1: $0e $0f
    inc b                                         ; $6fd3: $04
    rrca                                          ; $6fd4: $0f
    nop                                           ; $6fd5: $00
    ld [bc], a                                    ; $6fd6: $02
    rrca                                          ; $6fd7: $0f
    add c                                         ; $6fd8: $81
    dec b                                         ; $6fd9: $05
    ld [bc], a                                    ; $6fda: $02
    rrca                                          ; $6fdb: $0f
    stop                                          ; $6fdc: $10 $00
    rst $38                                       ; $6fde: $ff
    dec bc                                        ; $6fdf: $0b
    inc bc                                        ; $6fe0: $03
    ld hl, sp+$12                                 ; $6fe1: $f8 $12
    ld [$f101], a                                 ; $6fe3: $ea $01 $f1
    or $f4                                        ; $6fe6: $f6 $f4
    cp $f6                                        ; $6fe8: $fe $f6
    ld b, $02                                     ; $6fea: $06 $02
    ld bc, $0204                                  ; $6fec: $01 $04 $02
    ld [bc], a                                    ; $6fef: $02
    rra                                           ; $6ff0: $1f
    add d                                         ; $6ff1: $82
    dec b                                         ; $6ff2: $05
    rlca                                          ; $6ff3: $07
    ld [bc], a                                    ; $6ff4: $02
    inc bc                                        ; $6ff5: $03
    stop                                          ; $6ff6: $10 $00
    inc b                                         ; $6ff8: $04
    rlca                                          ; $6ff9: $07
    ld [bc], a                                    ; $6ffa: $02
    ldh a, [$8d]                                  ; $6ffb: $f0 $8d
    adc [hl]                                      ; $6ffd: $8e
    cp $e1                                        ; $6ffe: $fe $e1
    ld a, a                                       ; $7000: $7f
    ld hl, sp-$21                                 ; $7001: $f8 $df
    ld a, $27                                     ; $7003: $3e $27
    rla                                           ; $7005: $17
    add hl, de                                    ; $7006: $19
    dec bc                                        ; $7007: $0b
    inc c                                         ; $7008: $0c
    dec b                                         ; $7009: $05
    ld [bc], a                                    ; $700a: $02
    ld b, $81                                     ; $700b: $06 $81
    rlca                                          ; $700d: $07
    ld [bc], a                                    ; $700e: $02
    rra                                           ; $700f: $1f
    add [hl]                                      ; $7010: $86
    db $ed                                        ; $7011: $ed
    rst $38                                       ; $7012: $ff
    dec d                                         ; $7013: $15
    rst $38                                       ; $7014: $ff
    ei                                            ; $7015: $fb
    ld h, $02                                     ; $7016: $26 $02
    rst $18                                       ; $7018: $df
    inc b                                         ; $7019: $04
    nop                                           ; $701a: $00
    ld [bc], a                                    ; $701b: $02
    add b                                         ; $701c: $80
    sub h                                         ; $701d: $94
    ld h, b                                       ; $701e: $60
    ldh [$30], a                                  ; $701f: $e0 $30
    ldh a, [$28]                                  ; $7021: $f0 $28
    ld hl, sp-$3c                                 ; $7023: $f8 $c4
    db $fc                                        ; $7025: $fc
    db $e4                                        ; $7026: $e4

jr_0ed_7027:
    ld a, h                                       ; $7027: $7c
    jp nc, $ea3e                                  ; $7028: $d2 $3e $ea

    ld e, $96                                     ; $702b: $1e $96
    xor $f6                                       ; $702d: $ee $f6
    ld c, $8c                                     ; $702f: $0e $8c
    db $fc                                        ; $7031: $fc
    ld [bc], a                                    ; $7032: $02
    ld hl, sp+$08                                 ; $7033: $f8 $08
    nop                                           ; $7035: $00
    rst $38                                       ; $7036: $ff
    dec bc                                        ; $7037: $0b
    inc bc                                        ; $7038: $03
    ld hl, sp+$12                                 ; $7039: $f8 $12
    ld [$f601], a                                 ; $703b: $ea $01 $f6
    ld sp, hl                                     ; $703e: $f9
    or $01                                        ; $703f: $f6 $01
    or $05                                        ; $7041: $f6 $05
    inc b                                         ; $7043: $04
    nop                                           ; $7044: $00
    ld [bc], a                                    ; $7045: $02
    ld [hl], c                                    ; $7046: $71
    add [hl]                                      ; $7047: $86
    ld c, $0f                                     ; $7048: $0e $0f
    dec de                                        ; $704a: $1b
    rra                                           ; $704b: $1f
    daa                                           ; $704c: $27
    ld h, $04                                     ; $704d: $26 $04
    ld bc, $3e86                                  ; $704f: $01 $86 $3e
    ccf                                           ; $7052: $3f
    ldh [rIE], a                                  ; $7053: $e0 $ff
    ld a, a                                       ; $7055: $7f
    ld [hl], d                                    ; $7056: $72
    ld [bc], a                                    ; $7057: $02
    dec e                                         ; $7058: $1d
    ld [$0200], sp                                ; $7059: $08 $00 $02
    ld a, $94                                     ; $705c: $3e $94
    pop bc                                        ; $705e: $c1
    rst $38                                       ; $705f: $ff
    dec c                                         ; $7060: $0d
    rst $38                                       ; $7061: $ff
    inc sp                                        ; $7062: $33
    rst $38                                       ; $7063: $ff
    sbc $e1                                       ; $7064: $de $e1
    rst $38                                       ; $7066: $ff
    add h                                         ; $7067: $84
    ei                                            ; $7068: $fb
    db $fc                                        ; $7069: $fc
    db $ed                                        ; $706a: $ed
    rst $38                                       ; $706b: $ff
    ld e, a                                       ; $706c: $5f
    ld hl, sp+$3f                                 ; $706d: $f8 $3f
    or $fc                                        ; $706f: $f6 $fc
    ld e, e                                       ; $7071: $5b
    ld [bc], a                                    ; $7072: $02
    rst $38                                       ; $7073: $ff
    ld a, [bc]                                    ; $7074: $0a
    nop                                           ; $7075: $00
    ld [bc], a                                    ; $7076: $02
    ld [$048f], sp                                ; $7077: $08 $8f $04
    inc c                                         ; $707a: $0c
    ld [bc], a                                    ; $707b: $02
    ld c, $0a                                     ; $707c: $0e $0a
    ld c, $05                                     ; $707e: $0e $05
    rrca                                          ; $7080: $0f
    dec c                                         ; $7081: $0d
    rlca                                          ; $7082: $07
    dec c                                         ; $7083: $0d
    rlca                                          ; $7084: $07
    dec bc                                        ; $7085: $0b
    rlca                                          ; $7086: $07
    ld a, [bc]                                    ; $7087: $0a
    ld [bc], a                                    ; $7088: $02
    ld b, $81                                     ; $7089: $06 $81
    ld c, $02                                     ; $708b: $0e $02
    inc c                                         ; $708d: $0c
    ld [$ff00], sp                                ; $708e: $08 $00 $ff
    dec c                                         ; $7091: $0d
    inc b                                         ; $7092: $04
    ld hl, sp+$12                                 ; $7093: $f8 $12
    ld [$ed01], a                                 ; $7095: $ea $01 $ed
    ld bc, $05f5                                  ; $7098: $01 $f5 $05
    db $fd                                        ; $709b: $fd
    ld hl, sp-$03                                 ; $709c: $f8 $fd
    db $fd                                        ; $709e: $fd
    ld [bc], a                                    ; $709f: $02
    db $10                                        ; $70a0: $10
    ld [bc], a                                    ; $70a1: $02
    ret z                                         ; $70a2: $c8

    ld [bc], a                                    ; $70a3: $02
    jr c, jr_0ed_7027                             ; $70a4: $38 $81

    inc l                                         ; $70a6: $2c
    ld [bc], a                                    ; $70a7: $02
    inc a                                         ; $70a8: $3c
    sub a                                         ; $70a9: $97
    inc [hl]                                      ; $70aa: $34
    ld a, h                                       ; $70ab: $7c
    ld [hl], h                                    ; $70ac: $74
    ld e, [hl]                                    ; $70ad: $5e
    halt                                          ; $70ae: $76
    ld e, a                                       ; $70af: $5f
    ld [hl], e                                    ; $70b0: $73
    ld d, [hl]                                    ; $70b1: $56
    ld a, c                                       ; $70b2: $79
    ld d, a                                       ; $70b3: $57
    ld a, b                                       ; $70b4: $78
    cpl                                           ; $70b5: $2f
    jr c, @+$2d                                   ; $70b6: $38 $2b

    inc a                                         ; $70b8: $3c
    ld d, $1f                                     ; $70b9: $16 $1f
    dec bc                                        ; $70bb: $0b
    ld c, $13                                     ; $70bc: $0e $13
    ld e, $37                                     ; $70be: $1e $37
    ld a, $02                                     ; $70c0: $3e $02
    ld [$0481], sp                                ; $70c2: $08 $81 $04
    ld [bc], a                                    ; $70c5: $02
    inc c                                         ; $70c6: $0c
    sub e                                         ; $70c7: $93
    inc b                                         ; $70c8: $04
    ld a, [bc]                                    ; $70c9: $0a
    ld b, $0e                                     ; $70ca: $06 $0e
    ld [bc], a                                    ; $70cc: $02
    dec c                                         ; $70cd: $0d
    inc bc                                        ; $70ce: $03
    rrca                                          ; $70cf: $0f
    ld bc, $010f                                  ; $70d0: $01 $0f $01
    call Call_0ed_59f3                            ; $70d3: $cd $f3 $59
    rst $20                                       ; $70d6: $e7
    and $5e                                       ; $70d7: $e6 $5e
    cp [hl]                                       ; $70d9: $be
    cp $02                                        ; $70da: $fe $02
    db $fc                                        ; $70dc: $fc
    ld b, $00                                     ; $70dd: $06 $00
    ld [bc], a                                    ; $70df: $02
    inc bc                                        ; $70e0: $03
    add [hl]                                      ; $70e1: $86
    ld a, $3f                                     ; $70e2: $3e $3f
    ldh [rIE], a                                  ; $70e4: $e0 $ff
    ld a, a                                       ; $70e6: $7f
    ld a, c                                       ; $70e7: $79
    ld [bc], a                                    ; $70e8: $02
    ld c, $16                                     ; $70e9: $0e $16
    nop                                           ; $70eb: $00
    add l                                         ; $70ec: $85
    dec e                                         ; $70ed: $1d
    rra                                           ; $70ee: $1f
    dec b                                         ; $70ef: $05
    rra                                           ; $70f0: $1f
    nop                                           ; $70f1: $00
    ld [bc], a                                    ; $70f2: $02
    rra                                           ; $70f3: $1f
    add c                                         ; $70f4: $81
    ld a, [bc]                                    ; $70f5: $0a
    ld [bc], a                                    ; $70f6: $02
    rra                                           ; $70f7: $1f
    ld d, $00                                     ; $70f8: $16 $00
    rst $38                                       ; $70fa: $ff
    rlca                                          ; $70fb: $07
    ld bc, $0cfe                                  ; $70fc: $01 $fe $0c
    db $fd                                        ; $70ff: $fd
    ld [bc], a                                    ; $7100: $02
    cp $fe                                        ; $7101: $fe $fe
    adc b                                         ; $7103: $88
    nop                                           ; $7104: $00
    inc c                                         ; $7105: $0c
    inc b                                         ; $7106: $04
    ld a, [de]                                    ; $7107: $1a
    rra                                           ; $7108: $1f
    ld hl, $161e                                  ; $7109: $21 $1e $16
    ld [bc], a                                    ; $710c: $02
    inc c                                         ; $710d: $0c
    ld d, $00                                     ; $710e: $16 $00
    rst $38                                       ; $7110: $ff
    add hl, bc                                    ; $7111: $09
    ld [bc], a                                    ; $7112: $02
    cp $0c                                        ; $7113: $fe $0c
    db $fd                                        ; $7115: $fd
    ld [bc], a                                    ; $7116: $02
    cp $ff                                        ; $7117: $fe $ff
    cp $03                                        ; $7119: $fe $03
    adc b                                         ; $711b: $88
    nop                                           ; $711c: $00
    inc e                                         ; $711d: $1c
    dec de                                        ; $711e: $1b
    ld h, a                                       ; $711f: $67
    ld a, d                                       ; $7120: $7a
    add l                                         ; $7121: $85
    ld b, e                                       ; $7122: $43
    ld a, a                                       ; $7123: $7f
    ld a, [de]                                    ; $7124: $1a
    nop                                           ; $7125: $00
    ld [bc], a                                    ; $7126: $02
    inc b                                         ; $7127: $04
    add d                                         ; $7128: $82
    add hl, bc                                    ; $7129: $09
    rlca                                          ; $712a: $07
    ld [bc], a                                    ; $712b: $02
    ld a, [bc]                                    ; $712c: $0a
    jr jr_0ed_712f                                ; $712d: $18 $00

jr_0ed_712f:
    rst $38                                       ; $712f: $ff
    add hl, bc                                    ; $7130: $09
    ld [bc], a                                    ; $7131: $02
    cp $0c                                        ; $7132: $fe $0c
    db $fd                                        ; $7134: $fd
    ld [bc], a                                    ; $7135: $02
    db $fd                                        ; $7136: $fd
    rst $38                                       ; $7137: $ff
    db $fd                                        ; $7138: $fd
    ld bc, $008c                                  ; $7139: $01 $8c $00
    inc e                                         ; $713c: $1c
    ld a, [de]                                    ; $713d: $1a
    ld h, [hl]                                    ; $713e: $66
    ld a, e                                       ; $713f: $7b
    add a                                         ; $7140: $87
    ld [hl], h                                    ; $7141: $74
    adc a                                         ; $7142: $8f
    ld [hl], a                                    ; $7143: $77
    ld l, e                                       ; $7144: $6b
    inc [hl]                                      ; $7145: $34
    inc a                                         ; $7146: $3c
    jr jr_0ed_7149                                ; $7147: $18 $00

jr_0ed_7149:
    ld [bc], a                                    ; $7149: $02
    ld [bc], a                                    ; $714a: $02
    add d                                         ; $714b: $82
    inc bc                                        ; $714c: $03
    ld bc, $0202                                  ; $714d: $01 $02 $02
    ld d, $00                                     ; $7150: $16 $00
    rst $38                                       ; $7152: $ff
    add hl, bc                                    ; $7153: $09
    ld [bc], a                                    ; $7154: $02
    cp $0c                                        ; $7155: $fe $0c
    db $fd                                        ; $7157: $fd
    ld [bc], a                                    ; $7158: $02
    db $fd                                        ; $7159: $fd
    cp $fd                                        ; $715a: $fe $fd
    inc bc                                        ; $715c: $03
    adc h                                         ; $715d: $8c
    ld [bc], a                                    ; $715e: $02
    ld a, $3c                                     ; $715f: $3e $3c
    ld b, e                                       ; $7161: $43
    ld a, e                                       ; $7162: $7b
    add a                                         ; $7163: $87
    ld a, [hl]                                    ; $7164: $7e
    add l                                         ; $7165: $85
    dec c                                         ; $7166: $0d
    ld a, e                                       ; $7167: $7b
    dec de                                        ; $7168: $1b
    rra                                           ; $7169: $1f
    jr jr_0ed_716c                                ; $716a: $18 $00

jr_0ed_716c:
    add h                                         ; $716c: $84
    jr jr_0ed_7189                                ; $716d: $18 $1a

    inc de                                        ; $716f: $13
    dec c                                         ; $7170: $0d
    ld [bc], a                                    ; $7171: $02
    ld a, [de]                                    ; $7172: $1a
    ld d, $00                                     ; $7173: $16 $00
    rst $38                                       ; $7175: $ff
    add hl, bc                                    ; $7176: $09
    ld [bc], a                                    ; $7177: $02
    cp $0c                                        ; $7178: $fe $0c
    db $fd                                        ; $717a: $fd
    ld [bc], a                                    ; $717b: $02
    db $fd                                        ; $717c: $fd
    cp $fd                                        ; $717d: $fe $fd
    dec b                                         ; $717f: $05
    adc h                                         ; $7180: $8c
    jr nz, jr_0ed_71b3                            ; $7181: $20 $30

    halt                                          ; $7183: $76
    ld c, [hl]                                    ; $7184: $4e
    ld h, l                                       ; $7185: $65
    sbc e                                         ; $7186: $9b
    ld [hl], b                                    ; $7187: $70
    sbc a                                         ; $7188: $9f

jr_0ed_7189:
    rra                                           ; $7189: $1f
    ld [hl], e                                    ; $718a: $73
    jr nz, @+$3e                                  ; $718b: $20 $3c

    jr jr_0ed_718f                                ; $718d: $18 $00

jr_0ed_718f:
    add [hl]                                      ; $718f: $86
    ld b, b                                       ; $7190: $40
    ld b, [hl]                                    ; $7191: $46
    ld h, a                                       ; $7192: $67
    add hl, hl                                    ; $7193: $29
    ld b, d                                       ; $7194: $42
    ld b, [hl]                                    ; $7195: $46
    ld d, $00                                     ; $7196: $16 $00
    rst $38                                       ; $7198: $ff
    add hl, bc                                    ; $7199: $09
    ld [bc], a                                    ; $719a: $02
    cp $0c                                        ; $719b: $fe $0c
    db $fd                                        ; $719d: $fd
    ld [bc], a                                    ; $719e: $02
    db $fd                                        ; $719f: $fd
    cp $fd                                        ; $71a0: $fe $fd
    ld bc, $008c                                  ; $71a2: $01 $8c $00
    inc c                                         ; $71a5: $0c
    dec sp                                        ; $71a6: $3b
    ld a, a                                       ; $71a7: $7f
    ld l, l                                       ; $71a8: $6d
    sbc e                                         ; $71a9: $9b
    ld a, [hl]                                    ; $71aa: $7e
    add l                                         ; $71ab: $85
    cp e                                          ; $71ac: $bb
    rst $00                                       ; $71ad: $c7
    ld b, b                                       ; $71ae: $40
    ld a, a                                       ; $71af: $7f
    jr jr_0ed_71b2                                ; $71b0: $18 $00

jr_0ed_71b2:
    ld [bc], a                                    ; $71b2: $02

jr_0ed_71b3:
    ld b, $82                                     ; $71b3: $06 $82
    dec b                                         ; $71b5: $05
    inc bc                                        ; $71b6: $03
    ld [bc], a                                    ; $71b7: $02
    ld b, $16                                     ; $71b8: $06 $16
    nop                                           ; $71ba: $00
    rst $38                                       ; $71bb: $ff
    add hl, bc                                    ; $71bc: $09
    ld [bc], a                                    ; $71bd: $02
    cp $0c                                        ; $71be: $fe $0c
    db $fd                                        ; $71c0: $fd
    ld [bc], a                                    ; $71c1: $02
    db $fd                                        ; $71c2: $fd
    cp $fd                                        ; $71c3: $fe $fd
    ld [bc], a                                    ; $71c5: $02
    adc h                                         ; $71c6: $8c
    ld [$1a3c], sp                                ; $71c7: $08 $3c $1a
    halt                                          ; $71ca: $76
    ld a, l                                       ; $71cb: $7d
    adc e                                         ; $71cc: $8b
    halt                                          ; $71cd: $76
    adc a                                         ; $71ce: $8f
    add hl, sp                                    ; $71cf: $39
    ld b, a                                       ; $71d0: $47
    inc b                                         ; $71d1: $04
    inc a                                         ; $71d2: $3c
    jr jr_0ed_71d5                                ; $71d3: $18 $00

jr_0ed_71d5:
    add h                                         ; $71d5: $84
    ld [$0b0a], sp                                ; $71d6: $08 $0a $0b
    dec b                                         ; $71d9: $05
    ld [bc], a                                    ; $71da: $02
    ld a, [bc]                                    ; $71db: $0a
    ld d, $00                                     ; $71dc: $16 $00
    rst $38                                       ; $71de: $ff
    add hl, bc                                    ; $71df: $09
    ld [bc], a                                    ; $71e0: $02
    cp $0c                                        ; $71e1: $fe $0c
    db $fd                                        ; $71e3: $fd
    ld [bc], a                                    ; $71e4: $02
    db $fd                                        ; $71e5: $fd
    cp $fd                                        ; $71e6: $fe $fd
    ld b, $8c                                     ; $71e8: $06 $8c
    inc b                                         ; $71ea: $04
    inc e                                         ; $71eb: $1c
    rra                                           ; $71ec: $1f
    ld a, e                                       ; $71ed: $7b
    ld a, a                                       ; $71ee: $7f
    add a                                         ; $71ef: $87
    ld a, [hl]                                    ; $71f0: $7e
    add c                                         ; $71f1: $81
    ld a, a                                       ; $71f2: $7f
    ld b, e                                       ; $71f3: $43
    ld [hl+], a                                   ; $71f4: $22
    ld a, $18                                     ; $71f5: $3e $18
    nop                                           ; $71f7: $00
    add [hl]                                      ; $71f8: $86
    ret nz                                        ; $71f9: $c0

    add $a7                                       ; $71fa: $c6 $a7
    ld l, c                                       ; $71fc: $69
    jp nz, $16c6                                  ; $71fd: $c2 $c6 $16

    nop                                           ; $7200: $00
    rst $38                                       ; $7201: $ff
    rlca                                          ; $7202: $07
    ld bc, $0cfe                                  ; $7203: $01 $fe $0c
    db $fd                                        ; $7206: $fd
    ld [bc], a                                    ; $7207: $02
    db $fc                                        ; $7208: $fc
    db $fd                                        ; $7209: $fd
    sub b                                         ; $720a: $90
    db $10                                        ; $720b: $10
    jr jr_0ed_7236                                ; $720c: $18 $28

    inc [hl]                                      ; $720e: $34
    ld d, b                                       ; $720f: $50
    ld l, b                                       ; $7210: $68
    ld a, h                                       ; $7211: $7c
    ld c, [hl]                                    ; $7212: $4e
    ld d, h                                       ; $7213: $54
    ld l, e                                       ; $7214: $6b
    jr c, @+$78                                   ; $7215: $38 $76

    ld l, b                                       ; $7217: $68
    ld e, b                                       ; $7218: $58
    inc h                                         ; $7219: $24
    inc a                                         ; $721a: $3c
    ld [bc], a                                    ; $721b: $02

jr_0ed_721c:
    jr @+$10                                      ; $721c: $18 $0e

    nop                                           ; $721e: $00
    rst $38                                       ; $721f: $ff
    rlca                                          ; $7220: $07
    ld bc, $0cfe                                  ; $7221: $01 $fe $0c
    db $fd                                        ; $7224: $fd
    ld [bc], a                                    ; $7225: $02
    ld a, [$98fc]                                 ; $7226: $fa $fc $98
    nop                                           ; $7229: $00
    ld [bc], a                                    ; $722a: $02
    ld b, $05                                     ; $722b: $06 $05
    ld [hl+], a                                   ; $722d: $22
    inc h                                         ; $722e: $24
    inc l                                         ; $722f: $2c
    jr z, jr_0ed_7236                             ; $7230: $28 $04

    jr z, @+$4a                                   ; $7232: $28 $48

    halt                                          ; $7234: $76
    ld e, d                                       ; $7235: $5a

jr_0ed_7236:
    ld l, l                                       ; $7236: $6d
    db $10                                        ; $7237: $10
    ld l, $20                                     ; $7238: $2e $20
    inc a                                         ; $723a: $3c
    nop                                           ; $723b: $00
    ld d, $14                                     ; $723c: $16 $14
    rla                                           ; $723e: $17
    ld [bc], a                                    ; $723f: $02
    inc bc                                        ; $7240: $03
    ld [$ff00], sp                                ; $7241: $08 $00 $ff
    add hl, bc                                    ; $7244: $09
    ld [bc], a                                    ; $7245: $02
    cp $0c                                        ; $7246: $fe $0c
    db $fd                                        ; $7248: $fd
    ld [bc], a                                    ; $7249: $02
    ld sp, hl                                     ; $724a: $f9
    db $fc                                        ; $724b: $fc
    ld sp, hl                                     ; $724c: $f9
    cp $89                                        ; $724d: $fe $89
    ld b, b                                       ; $724f: $40
    ld h, b                                       ; $7250: $60
    ld b, c                                       ; $7251: $41
    ld h, c                                       ; $7252: $61
    nop                                           ; $7253: $00
    ld sp, $3221                                  ; $7254: $31 $21 $32
    ld [de], a                                    ; $7257: $12
    ld [bc], a                                    ; $7258: $02
    nop                                           ; $7259: $00
    adc a                                         ; $725a: $8f
    inc d                                         ; $725b: $14
    ld d, h                                       ; $725c: $54
    add b                                         ; $725d: $80
    adc b                                         ; $725e: $88
    db $e4                                        ; $725f: $e4
    ld d, b                                       ; $7260: $50
    ld l, l                                       ; $7261: $6d
    db $10                                        ; $7262: $10
    inc c                                         ; $7263: $0c
    nop                                           ; $7264: $00
    inc d                                         ; $7265: $14
    jr nz, jr_0ed_729a                            ; $7266: $20 $32

    ld [bc], a                                    ; $7268: $02
    inc sp                                        ; $7269: $33
    ld [bc], a                                    ; $726a: $02
    ld hl, $0102                                  ; $726b: $21 $02 $01
    inc bc                                        ; $726e: $03
    nop                                           ; $726f: $00
    ld [bc], a                                    ; $7270: $02
    ld [bc], a                                    ; $7271: $02
    add d                                         ; $7272: $82
    ld bc, $0a02                                  ; $7273: $01 $02 $0a
    nop                                           ; $7276: $00
    ld [bc], a                                    ; $7277: $02
    ld [bc], a                                    ; $7278: $02
    add e                                         ; $7279: $83
    ld bc, $0200                                  ; $727a: $01 $00 $02
    rlca                                          ; $727d: $07
    nop                                           ; $727e: $00
    add e                                         ; $727f: $83
    ld [bc], a                                    ; $7280: $02
    nop                                           ; $7281: $00
    ld [bc], a                                    ; $7282: $02
    ld [bc], a                                    ; $7283: $02
    nop                                           ; $7284: $00
    rst $38                                       ; $7285: $ff
    dec bc                                        ; $7286: $0b
    inc bc                                        ; $7287: $03
    cp $0c                                        ; $7288: $fe $0c
    db $fd                                        ; $728a: $fd
    ld [bc], a                                    ; $728b: $02
    ld hl, sp-$05                                 ; $728c: $f8 $fb
    ld hl, sp-$01                                 ; $728e: $f8 $ff
    ld [$02fd], sp                                ; $7290: $08 $fd $02
    jr nz, jr_0ed_721c                            ; $7293: $20 $87

    ld b, b                                       ; $7295: $40
    ld [hl], b                                    ; $7296: $70
    db $10                                        ; $7297: $10
    jr nz, jr_0ed_729a                            ; $7298: $20 $00

jr_0ed_729a:
    db $10                                        ; $729a: $10
    ld [$0002], sp                                ; $729b: $08 $02 $00
    sub [hl]                                      ; $729e: $96
    ld [$4000], sp                                ; $729f: $08 $00 $40
    ld h, b                                       ; $72a2: $60
    add d                                         ; $72a3: $82
    ld b, d                                       ; $72a4: $42
    ld h, b                                       ; $72a5: $60
    ld [bc], a                                    ; $72a6: $02
    inc d                                         ; $72a7: $14
    inc b                                         ; $72a8: $04
    ld [bc], a                                    ; $72a9: $02
    nop                                           ; $72aa: $00
    ld [$0900], sp                                ; $72ab: $08 $00 $09
    db $10                                        ; $72ae: $10
    jr jr_0ed_72c1                                ; $72af: $18 $10

    jr jr_0ed_72b3                                ; $72b1: $18 $00

jr_0ed_72b3:
    stop                                          ; $72b3: $10 $00
    ld [bc], a                                    ; $72b5: $02
    ld [bc], a                                    ; $72b6: $02
    add h                                         ; $72b7: $84
    dec b                                         ; $72b8: $05
    ld b, $00                                     ; $72b9: $06 $00
    inc b                                         ; $72bb: $04
    ld c, $00                                     ; $72bc: $0e $00
    add c                                         ; $72be: $81
    ld [bc], a                                    ; $72bf: $02
    dec b                                         ; $72c0: $05

jr_0ed_72c1:
    nop                                           ; $72c1: $00
    add l                                         ; $72c2: $85
    ld [$0c00], sp                                ; $72c3: $08 $00 $0c
    ld [$020e], sp                                ; $72c6: $08 $0e $02
    ld bc, $001e                                  ; $72c9: $01 $1e $00
    rst $38                                       ; $72cc: $ff
    dec c                                         ; $72cd: $0d
    inc b                                         ; $72ce: $04
    db $eb                                        ; $72cf: $eb
    ld c, $ea                                     ; $72d0: $0e $ea
    inc bc                                        ; $72d2: $03
    ld a, [c]                                     ; $72d3: $f2
    ld a, [c]                                     ; $72d4: $f2
    ld a, [c]                                     ; $72d5: $f2
    ld a, [$02f2]                                 ; $72d6: $fa $f2 $02
    ld a, [c]                                     ; $72d9: $f2
    inc b                                         ; $72da: $04
    ld [bc], a                                    ; $72db: $02
    ld bc, $0e88                                  ; $72dc: $01 $88 $0e
    rrca                                          ; $72df: $0f
    ld sp, $4f3f                                  ; $72e0: $31 $3f $4f
    ld a, a                                       ; $72e3: $7f
    cp [hl]                                       ; $72e4: $be
    rst $38                                       ; $72e5: $ff
    ld [bc], a                                    ; $72e6: $02
    ld b, c                                       ; $72e7: $41
    inc d                                         ; $72e8: $14
    nop                                           ; $72e9: $00
    ld [bc], a                                    ; $72ea: $02
    add b                                         ; $72eb: $80
    sub b                                         ; $72ec: $90
    ld b, [hl]                                    ; $72ed: $46
    add $a5                                       ; $72ee: $c6 $a5
    rst $20                                       ; $72f0: $e7
    rra                                           ; $72f1: $1f
    cp $e3                                        ; $72f2: $fe $e3
    rst $38                                       ; $72f4: $ff
    ld sp, hl                                     ; $72f5: $f9
    rst $38                                       ; $72f6: $ff
    inc a                                         ; $72f7: $3c
    ccf                                           ; $72f8: $3f
    add hl, bc                                    ; $72f9: $09
    rrca                                          ; $72fa: $0f
    dec bc                                        ; $72fb: $0b
    rrca                                          ; $72fc: $0f
    ld [bc], a                                    ; $72fd: $02
    dec b                                         ; $72fe: $05
    ld c, $00                                     ; $72ff: $0e $00
    ld [bc], a                                    ; $7301: $02
    add b                                         ; $7302: $80
    ld [bc], a                                    ; $7303: $02
    add $88                                       ; $7304: $c6 $88
    ld a, c                                       ; $7306: $79
    cp a                                          ; $7307: $bf
    ld b, d                                       ; $7308: $42
    rst $38                                       ; $7309: $ff
    rst $30                                       ; $730a: $f7
    rst $38                                       ; $730b: $ff
    ld a, a                                       ; $730c: $7f
    rst $38                                       ; $730d: $ff
    ld [bc], a                                    ; $730e: $02
    add b                                         ; $730f: $80
    jr jr_0ed_7312                                ; $7310: $18 $00

jr_0ed_7312:
    ld [bc], a                                    ; $7312: $02
    ld [bc], a                                    ; $7313: $02
    add h                                         ; $7314: $84
    ld bc, $0103                                  ; $7315: $01 $03 $01
    inc bc                                        ; $7318: $03
    ld [bc], a                                    ; $7319: $02
    ld [bc], a                                    ; $731a: $02
    stop                                          ; $731b: $10 $00
    rst $38                                       ; $731d: $ff
    dec c                                         ; $731e: $0d
    inc b                                         ; $731f: $04
    db $eb                                        ; $7320: $eb
    ld c, $ea                                     ; $7321: $0e $ea
    inc bc                                        ; $7323: $03
    pop af                                        ; $7324: $f1
    pop af                                        ; $7325: $f1
    pop af                                        ; $7326: $f1
    ld sp, hl                                     ; $7327: $f9
    pop af                                        ; $7328: $f1
    ld bc, $05f1                                  ; $7329: $01 $f1 $05
    ld [$0200], sp                                ; $732c: $08 $00 $02
    ld bc, $1e84                                  ; $732f: $01 $84 $1e
    rra                                           ; $7332: $1f
    ldh [rIE], a                                  ; $7333: $e0 $ff
    ld [bc], a                                    ; $7335: $02
    ld a, a                                       ; $7336: $7f
    stop                                          ; $7337: $10 $00
    ld [bc], a                                    ; $7339: $02
    inc bc                                        ; $733a: $03
    add d                                         ; $733b: $82
    ld [bc], a                                    ; $733c: $02
    inc bc                                        ; $733d: $03
    ld [bc], a                                    ; $733e: $02
    rlca                                          ; $733f: $07
    adc b                                         ; $7340: $88
    dec de                                        ; $7341: $1b
    rra                                           ; $7342: $1f
    and $ff                                       ; $7343: $e6 $ff
    rra                                           ; $7345: $1f
    rst $38                                       ; $7346: $ff
    ld h, d                                       ; $7347: $62
    ld [c], a                                     ; $7348: $e2
    ld [bc], a                                    ; $7349: $02
    add b                                         ; $734a: $80
    stop                                          ; $734b: $10 $00
    ld [bc], a                                    ; $734d: $02
    ld b, b                                       ; $734e: $40
    ld [bc], a                                    ; $734f: $02
    ldh [$8a], a                                  ; $7350: $e0 $8a
    or b                                          ; $7352: $b0
    ld d, b                                       ; $7353: $50
    or b                                          ; $7354: $b0
    ldh a, [$6c]                                  ; $7355: $f0 $6c
    db $fc                                        ; $7357: $fc
    db $d3                                        ; $7358: $d3
    rst $18                                       ; $7359: $df
    adc h                                         ; $735a: $8c
    adc a                                         ; $735b: $8f
    ld [bc], a                                    ; $735c: $02
    inc bc                                        ; $735d: $03
    ld a, [de]                                    ; $735e: $1a
    nop                                           ; $735f: $00
    ld [bc], a                                    ; $7360: $02
    ld [$0782], sp                                ; $7361: $08 $82 $07
    rrca                                          ; $7364: $0f
    ld [bc], a                                    ; $7365: $02

jr_0ed_7366:
    ld c, $10                                     ; $7366: $0e $10
    nop                                           ; $7368: $00
    rst $38                                       ; $7369: $ff
    add hl, bc                                    ; $736a: $09
    ld [bc], a                                    ; $736b: $02
    db $eb                                        ; $736c: $eb
    ld c, $ea                                     ; $736d: $0e $ea
    inc bc                                        ; $736f: $03
    db $f4                                        ; $7370: $f4
    rst $30                                       ; $7371: $f7
    ldh a, [rIE]                                  ; $7372: $f0 $ff
    inc b                                         ; $7374: $04
    ld bc, $0294                                  ; $7375: $01 $94 $02
    inc bc                                        ; $7378: $03
    ld [bc], a                                    ; $7379: $02
    inc bc                                        ; $737a: $03
    dec b                                         ; $737b: $05
    rlca                                          ; $737c: $07
    ld b, $07                                     ; $737d: $06 $07
    ld b, $07                                     ; $737f: $06 $07
    inc b                                         ; $7381: $04
    rlca                                          ; $7382: $07
    inc b                                         ; $7383: $04
    rlca                                          ; $7384: $07
    ld [$080f], sp                                ; $7385: $08 $0f $08
    rrca                                          ; $7388: $0f
    ld de, $021f                                  ; $7389: $11 $1f $02
    ld e, $06                                     ; $738c: $1e $06
    nop                                           ; $738e: $00
    ld [bc], a                                    ; $738f: $02
    ret nc                                        ; $7390: $d0

    sbc h                                         ; $7391: $9c
    cp b                                          ; $7392: $b8
    ld hl, sp+$6c                                 ; $7393: $f8 $6c
    ld d, h                                       ; $7395: $54
    add sp, -$08                                  ; $7396: $e8 $f8
    ld a, b                                       ; $7398: $78
    ld hl, sp+$58                                 ; $7399: $f8 $58
    ld hl, sp+$74                                 ; $739b: $f8 $74
    db $fc                                        ; $739d: $fc
    ld d, h                                       ; $739e: $54
    call c, $dc54                                 ; $739f: $dc $54 $dc
    ld d, h                                       ; $73a2: $54
    call c, $fc74                                 ; $73a3: $dc $74 $fc
    ld [hl], h                                    ; $73a6: $74
    db $fc                                        ; $73a7: $fc
    ld [hl], h                                    ; $73a8: $74
    db $fc                                        ; $73a9: $fc
    call nc, $a8fc                                ; $73aa: $d4 $fc $a8
    cp b                                          ; $73ad: $b8
    ld [bc], a                                    ; $73ae: $02
    jr nc, @+$01                                  ; $73af: $30 $ff

    add hl, bc                                    ; $73b1: $09
    ld [bc], a                                    ; $73b2: $02
    db $eb                                        ; $73b3: $eb
    ld c, $ea                                     ; $73b4: $0e $ea
    inc bc                                        ; $73b6: $03
    ldh a, [$fa]                                  ; $73b7: $f0 $fa
    ldh a, [rIE]                                  ; $73b9: $f0 $ff
    ld [bc], a                                    ; $73bb: $02
    ld b, $81                                     ; $73bc: $06 $81
    dec b                                         ; $73be: $05
    ld [bc], a                                    ; $73bf: $02
    rlca                                          ; $73c0: $07
    sub l                                         ; $73c1: $95
    ld b, $0b                                     ; $73c2: $06 $0b
    rrca                                          ; $73c4: $0f
    rla                                           ; $73c5: $17
    rra                                           ; $73c6: $1f
    ld h, $3f                                     ; $73c7: $26 $3f
    ld c, a                                       ; $73c9: $4f
    ld a, a                                       ; $73ca: $7f
    adc [hl]                                      ; $73cb: $8e
    cp $88                                        ; $73cc: $fe $88
    ld hl, sp-$78                                 ; $73ce: $f8 $88
    ld hl, sp-$78                                 ; $73d0: $f8 $88
    ld hl, sp+$48                                 ; $73d2: $f8 $48
    ld a, b                                       ; $73d4: $78
    ld l, b                                       ; $73d5: $68
    ld a, b                                       ; $73d6: $78
    ld [bc], a                                    ; $73d7: $02
    jr nc, jr_0ed_73dc                            ; $73d8: $30 $02

    jr nz, jr_0ed_73de                            ; $73da: $20 $02

jr_0ed_73dc:
    nop                                           ; $73dc: $00
    ld [bc], a                                    ; $73dd: $02

jr_0ed_73de:
    db $10                                        ; $73de: $10
    ld [bc], a                                    ; $73df: $02
    jr jr_0ed_7366                                ; $73e0: $18 $84

    inc c                                         ; $73e2: $0c
    inc d                                         ; $73e3: $14
    ld [$0218], sp                                ; $73e4: $08 $18 $02
    inc e                                         ; $73e7: $1c
    sub b                                         ; $73e8: $90
    ld a, [de]                                    ; $73e9: $1a
    ld e, $15                                     ; $73ea: $1e $15
    rla                                           ; $73ec: $17
    dec b                                         ; $73ed: $05
    rlca                                          ; $73ee: $07
    dec c                                         ; $73ef: $0d
    rrca                                          ; $73f0: $0f
    dec c                                         ; $73f1: $0d
    rrca                                          ; $73f2: $0f
    dec c                                         ; $73f3: $0d
    rrca                                          ; $73f4: $0f
    ld a, [bc]                                    ; $73f5: $0a
    ld c, $0a                                     ; $73f6: $0e $0a
    ld c, $02                                     ; $73f8: $0e $02
    inc c                                         ; $73fa: $0c
    inc b                                         ; $73fb: $04
    nop                                           ; $73fc: $00
    rst $38                                       ; $73fd: $ff
    add hl, bc                                    ; $73fe: $09
    ld [bc], a                                    ; $73ff: $02
    db $eb                                        ; $7400: $eb
    ld c, $ea                                     ; $7401: $0e $ea
    inc bc                                        ; $7403: $03
    pop af                                        ; $7404: $f1
    ld sp, hl                                     ; $7405: $f9
    pop af                                        ; $7406: $f1
    nop                                           ; $7407: $00
    ld [bc], a                                    ; $7408: $02
    inc bc                                        ; $7409: $03
    adc [hl]                                      ; $740a: $8e
    ld [de], a                                    ; $740b: $12
    inc de                                        ; $740c: $13
    add hl, hl                                    ; $740d: $29
    add hl, sp                                    ; $740e: $39
    ld d, a                                       ; $740f: $57
    ld a, a                                       ; $7410: $7f
    sbc c                                         ; $7411: $99
    rst $38                                       ; $7412: $ff
    sbc a                                         ; $7413: $9f
    rst $38                                       ; $7414: $ff
    cp a                                          ; $7415: $bf
    rst $38                                       ; $7416: $ff
    and l                                         ; $7417: $a5
    rst $20                                       ; $7418: $e7
    ld [bc], a                                    ; $7419: $02
    jp Jump_0ed_4002                              ; $741a: $c3 $02 $40


    inc c                                         ; $741d: $0c
    nop                                           ; $741e: $00
    ld [bc], a                                    ; $741f: $02
    jr nz, jr_0ed_7424                            ; $7420: $20 $02

    ld [hl], b                                    ; $7422: $70
    adc h                                         ; $7423: $8c

jr_0ed_7424:
    ld e, h                                       ; $7424: $5c
    inc l                                         ; $7425: $2c
    ld e, d                                       ; $7426: $5a
    ld a, [hl]                                    ; $7427: $7e
    ld h, l                                       ; $7428: $65
    ld a, a                                       ; $7429: $7f
    dec e                                         ; $742a: $1d
    ld a, a                                       ; $742b: $7f
    ld a, l                                       ; $742c: $7d
    ld a, a                                       ; $742d: $7f
    ld h, l                                       ; $742e: $65
    ld h, a                                       ; $742f: $67
    ld [bc], a                                    ; $7430: $02
    inc bc                                        ; $7431: $03
    ld [bc], a                                    ; $7432: $02
    ld [bc], a                                    ; $7433: $02
    inc c                                         ; $7434: $0c
    nop                                           ; $7435: $00
    rst $38                                       ; $7436: $ff
    dec bc                                        ; $7437: $0b
    inc bc                                        ; $7438: $03
    db $eb                                        ; $7439: $eb
    ld c, $ea                                     ; $743a: $0e $ea
    inc bc                                        ; $743c: $03
    pop af                                        ; $743d: $f1
    or $f1                                        ; $743e: $f6 $f1
    cp $f1                                        ; $7440: $fe $f1
    ld bc, $0602                                  ; $7442: $01 $02 $06
    adc d                                         ; $7445: $8a
    ld a, [de]                                    ; $7446: $1a
    ld e, $25                                     ; $7447: $1e $25
    ccf                                           ; $7449: $3f
    ld c, h                                       ; $744a: $4c
    ld a, a                                       ; $744b: $7f
    ld e, e                                       ; $744c: $5b
    ld a, a                                       ; $744d: $7f
    or a                                          ; $744e: $b7
    rst $38                                       ; $744f: $ff
    ld [bc], a                                    ; $7450: $02
    rst $08                                       ; $7451: $cf
    inc d                                         ; $7452: $14
    nop                                           ; $7453: $00
    ld [bc], a                                    ; $7454: $02
    ld l, b                                       ; $7455: $68
    adc [hl]                                      ; $7456: $8e
    ld e, h                                       ; $7457: $5c
    ld a, h                                       ; $7458: $7c
    rst $30                                       ; $7459: $f7
    db $eb                                        ; $745a: $eb
    inc [hl]                                      ; $745b: $34
    rst $38                                       ; $745c: $ff
    cp [hl]                                       ; $745d: $be
    rst $38                                       ; $745e: $ff
    rst $00                                       ; $745f: $c7
    rst $38                                       ; $7460: $ff
    db $ec                                        ; $7461: $ec
    db $fc                                        ; $7462: $fc
    or b                                          ; $7463: $b0
    ldh a, [rSC]                                  ; $7464: $f0 $02
    ld d, b                                       ; $7466: $50
    stop                                          ; $7467: $10 $00
    ld [bc], a                                    ; $7469: $02
    inc b                                         ; $746a: $04
    adc b                                         ; $746b: $88
    ld [bc], a                                    ; $746c: $02
    ld b, $05                                     ; $746d: $06 $05
    rlca                                          ; $746f: $07
    dec b                                         ; $7470: $05
    rlca                                          ; $7471: $07
    dec b                                         ; $7472: $05
    rlca                                          ; $7473: $07
    ld [bc], a                                    ; $7474: $02
    ld [bc], a                                    ; $7475: $02
    stop                                          ; $7476: $10 $00
    rst $38                                       ; $7478: $ff
    dec c                                         ; $7479: $0d
    inc b                                         ; $747a: $04
    db $ec                                        ; $747b: $ec
    rrca                                          ; $747c: $0f
    ld [$f203], a                                 ; $747d: $ea $03 $f2
    di                                            ; $7480: $f3
    ld a, [c]                                     ; $7481: $f2
    ei                                            ; $7482: $fb
    ld a, [c]                                     ; $7483: $f2
    inc bc                                        ; $7484: $03
    ld a, [c]                                     ; $7485: $f2
    dec b                                         ; $7486: $05
    ld [bc], a                                    ; $7487: $02
    ld bc, $0e88                                  ; $7488: $01 $88 $0e
    rrca                                          ; $748b: $0f
    ld sp, $4f3f                                  ; $748c: $31 $3f $4f
    ld a, a                                       ; $748f: $7f
    cp [hl]                                       ; $7490: $be
    rst $38                                       ; $7491: $ff
    ld [bc], a                                    ; $7492: $02
    ld b, c                                       ; $7493: $41
    inc d                                         ; $7494: $14
    nop                                           ; $7495: $00
    ld [bc], a                                    ; $7496: $02
    adc [hl]                                      ; $7497: $8e
    sub b                                         ; $7498: $90
    ld d, e                                       ; $7499: $53
    db $dd                                        ; $749a: $dd
    xor [hl]                                      ; $749b: $ae
    rst $28                                       ; $749c: $ef
    rra                                           ; $749d: $1f
    rst $38                                       ; $749e: $ff
    db $e3                                        ; $749f: $e3
    rst $38                                       ; $74a0: $ff
    ld hl, sp-$01                                 ; $74a1: $f8 $ff
    inc a                                         ; $74a3: $3c
    ccf                                           ; $74a4: $3f
    add hl, bc                                    ; $74a5: $09
    rrca                                          ; $74a6: $0f
    dec bc                                        ; $74a7: $0b
    rrca                                          ; $74a8: $0f
    ld [bc], a                                    ; $74a9: $02
    dec b                                         ; $74aa: $05
    inc c                                         ; $74ab: $0c
    nop                                           ; $74ac: $00
    ld [bc], a                                    ; $74ad: $02
    add b                                         ; $74ae: $80
    add d                                         ; $74af: $82
    ret nz                                        ; $74b0: $c0

    ld b, b                                       ; $74b1: $40
    ld [bc], a                                    ; $74b2: $02
    add $88                                       ; $74b3: $c6 $88
    cp c                                          ; $74b5: $b9
    cp a                                          ; $74b6: $bf
    jp nz, Jump_0ed_77ff                          ; $74b7: $c2 $ff $77

    rst $38                                       ; $74ba: $ff
    ld a, a                                       ; $74bb: $7f
    rst $38                                       ; $74bc: $ff
    ld [bc], a                                    ; $74bd: $02
    add b                                         ; $74be: $80
    jr jr_0ed_74c1                                ; $74bf: $18 $00

jr_0ed_74c1:
    ld [bc], a                                    ; $74c1: $02
    ld [bc], a                                    ; $74c2: $02
    add h                                         ; $74c3: $84
    ld bc, $0103                                  ; $74c4: $01 $03 $01
    inc bc                                        ; $74c7: $03
    ld [bc], a                                    ; $74c8: $02
    ld [bc], a                                    ; $74c9: $02
    stop                                          ; $74ca: $10 $00
    rst $38                                       ; $74cc: $ff
    dec c                                         ; $74cd: $0d
    inc b                                         ; $74ce: $04
    rst $28                                       ; $74cf: $ef
    ld [de], a                                    ; $74d0: $12
    ld [$f003], a                                 ; $74d1: $ea $03 $f0
    rst $30                                       ; $74d4: $f7
    ldh a, [rIE]                                  ; $74d5: $f0 $ff
    ldh a, [rTAC]                                 ; $74d7: $f0 $07
    ldh a, [$0b]                                  ; $74d9: $f0 $0b
    ld a, [bc]                                    ; $74db: $0a
    nop                                           ; $74dc: $00
    ld [bc], a                                    ; $74dd: $02
    ld bc, $1e84                                  ; $74de: $01 $84 $1e
    rra                                           ; $74e1: $1f
    ldh [rIE], a                                  ; $74e2: $e0 $ff
    ld [bc], a                                    ; $74e4: $02
    ld a, a                                       ; $74e5: $7f
    ld c, $00                                     ; $74e6: $0e $00
    ld [bc], a                                    ; $74e8: $02
    rlca                                          ; $74e9: $07
    add d                                         ; $74ea: $82
    add hl, bc                                    ; $74eb: $09
    ld c, $04                                     ; $74ec: $0e $04
    rlca                                          ; $74ee: $07
    adc b                                         ; $74ef: $88
    dec de                                        ; $74f0: $1b
    rra                                           ; $74f1: $1f
    and $ff                                       ; $74f2: $e6 $ff
    rra                                           ; $74f4: $1f
    rst $38                                       ; $74f5: $ff
    ld h, d                                       ; $74f6: $62
    ld [c], a                                     ; $74f7: $e2
    ld [bc], a                                    ; $74f8: $02
    add b                                         ; $74f9: $80
    ld c, $00                                     ; $74fa: $0e $00
    ld [bc], a                                    ; $74fc: $02
    ld b, b                                       ; $74fd: $40
    add [hl]                                      ; $74fe: $86
    ldh [$a0], a                                  ; $74ff: $e0 $a0
    ld h, b                                       ; $7501: $60
    ldh [$c0], a                                  ; $7502: $e0 $c0
    ld b, b                                       ; $7504: $40
    ld [bc], a                                    ; $7505: $02
    ldh a, [$86]                                  ; $7506: $f0 $86
    ld l, h                                       ; $7508: $6c
    db $fc                                        ; $7509: $fc
    db $d3                                        ; $750a: $d3
    rst $18                                       ; $750b: $df
    adc h                                         ; $750c: $8c
    adc a                                         ; $750d: $8f
    ld [bc], a                                    ; $750e: $02
    inc bc                                        ; $750f: $03
    ld a, [de]                                    ; $7510: $1a
    nop                                           ; $7511: $00
    ld [bc], a                                    ; $7512: $02
    ld [$0782], sp                                ; $7513: $08 $82 $07
    rrca                                          ; $7516: $0f
    ld [bc], a                                    ; $7517: $02
    ld c, $0e                                     ; $7518: $0e $0e
    nop                                           ; $751a: $00
    rst $38                                       ; $751b: $ff
    add hl, bc                                    ; $751c: $09
    ld [bc], a                                    ; $751d: $02
    ld a, [c]                                     ; $751e: $f2
    dec d                                         ; $751f: $15
    ld [$f303], a                                 ; $7520: $ea $03 $f3
    inc bc                                        ; $7523: $03
    di                                            ; $7524: $f3
    rlca                                          ; $7525: $07
    ld [bc], a                                    ; $7526: $02
    inc bc                                        ; $7527: $03
    sbc d                                         ; $7528: $9a
    ld b, $07                                     ; $7529: $06 $07
    dec bc                                        ; $752b: $0b
    rrca                                          ; $752c: $0f
    dec bc                                        ; $752d: $0b
    rrca                                          ; $752e: $0f
    inc de                                        ; $752f: $13
    rra                                           ; $7530: $1f
    ld [de], a                                    ; $7531: $12
    ld e, $2a                                     ; $7532: $1e $2a
    ld a, $32                                     ; $7534: $3e $32
    ld a, $33                                     ; $7536: $3e $33
    ccf                                           ; $7538: $3f
    inc hl                                        ; $7539: $23
    ccf                                           ; $753a: $3f
    inc hl                                        ; $753b: $23
    ccf                                           ; $753c: $3f
    ld b, [hl]                                    ; $753d: $46
    ld a, a                                       ; $753e: $7f
    ld b, l                                       ; $753f: $45
    ld a, l                                       ; $7540: $7d
    adc c                                         ; $7541: $89
    ld sp, hl                                     ; $7542: $f9
    ld [bc], a                                    ; $7543: $02
    ldh a, [rSC]                                  ; $7544: $f0 $02
    nop                                           ; $7546: $00
    ld [bc], a                                    ; $7547: $02
    inc b                                         ; $7548: $04
    add [hl]                                      ; $7549: $86
    ld a, [bc]                                    ; $754a: $0a
    ld c, $01                                     ; $754b: $0e $01
    rrca                                          ; $754d: $0f
    ld c, $0a                                     ; $754e: $0e $0a
    ld [bc], a                                    ; $7550: $02
    ld c, $90                                     ; $7551: $0e $90
    ld a, [bc]                                    ; $7553: $0a
    ld c, $0a                                     ; $7554: $0e $0a
    ld c, $0a                                     ; $7556: $0e $0a
    ld c, $0a                                     ; $7558: $0e $0a
    ld c, $0a                                     ; $755a: $0e $0a
    ld c, $0a                                     ; $755c: $0e $0a
    ld c, $0a                                     ; $755e: $0e $0a
    ld c, $04                                     ; $7560: $0e $04
    inc c                                         ; $7562: $0c
    ld [bc], a                                    ; $7563: $02
    ld [$0004], sp                                ; $7564: $08 $04 $00
    rst $38                                       ; $7567: $ff
    add hl, bc                                    ; $7568: $09
    ld [bc], a                                    ; $7569: $02
    di                                            ; $756a: $f3
    ld d, $ea                                     ; $756b: $16 $ea
    inc bc                                        ; $756d: $03
    pop af                                        ; $756e: $f1
    inc bc                                        ; $756f: $03
    pop af                                        ; $7570: $f1
    ld [$0602], sp                                ; $7571: $08 $02 $06
    sub [hl]                                      ; $7574: $96
    dec b                                         ; $7575: $05
    rlca                                          ; $7576: $07
    ld c, $0f                                     ; $7577: $0e $0f
    rla                                           ; $7579: $17
    rra                                           ; $757a: $1f
    daa                                           ; $757b: $27
    ccf                                           ; $757c: $3f
    ld c, a                                       ; $757d: $4f
    ld a, a                                       ; $757e: $7f
    adc [hl]                                      ; $757f: $8e
    cp $88                                        ; $7580: $fe $88
    ld hl, sp-$78                                 ; $7582: $f8 $88
    ld hl, sp-$78                                 ; $7584: $f8 $88
    ld hl, sp+$48                                 ; $7586: $f8 $48
    ld a, b                                       ; $7588: $78
    ld l, b                                       ; $7589: $68
    ld a, b                                       ; $758a: $78
    ld [bc], a                                    ; $758b: $02
    jr nc, jr_0ed_7590                            ; $758c: $30 $02

    jr nz, jr_0ed_7594                            ; $758e: $20 $04

jr_0ed_7590:
    nop                                           ; $7590: $00
    ld [bc], a                                    ; $7591: $02
    db $10                                        ; $7592: $10
    ld [bc], a                                    ; $7593: $02

jr_0ed_7594:
    jr @-$6a                                      ; $7594: $18 $94

    inc b                                         ; $7596: $04
    inc e                                         ; $7597: $1c
    inc c                                         ; $7598: $0c
    inc e                                         ; $7599: $1c
    ld a, [de]                                    ; $759a: $1a
    ld e, $15                                     ; $759b: $1e $15
    rla                                           ; $759d: $17
    dec b                                         ; $759e: $05
    rlca                                          ; $759f: $07
    dec c                                         ; $75a0: $0d
    rrca                                          ; $75a1: $0f
    dec c                                         ; $75a2: $0d
    rrca                                          ; $75a3: $0f
    dec c                                         ; $75a4: $0d
    rrca                                          ; $75a5: $0f
    ld a, [bc]                                    ; $75a6: $0a
    ld c, $0a                                     ; $75a7: $0e $0a
    ld c, $02                                     ; $75a9: $0e $02
    inc c                                         ; $75ab: $0c
    ld b, $00                                     ; $75ac: $06 $00
    rst $38                                       ; $75ae: $ff
    add hl, bc                                    ; $75af: $09
    ld [bc], a                                    ; $75b0: $02
    ld a, [c]                                     ; $75b1: $f2
    dec d                                         ; $75b2: $15
    ld [$f103], a                                 ; $75b3: $ea $03 $f1
    nop                                           ; $75b6: $00
    pop af                                        ; $75b7: $f1
    rlca                                          ; $75b8: $07
    ld [bc], a                                    ; $75b9: $02
    inc bc                                        ; $75ba: $03
    adc [hl]                                      ; $75bb: $8e
    ld [de], a                                    ; $75bc: $12
    inc de                                        ; $75bd: $13
    add hl, hl                                    ; $75be: $29
    add hl, sp                                    ; $75bf: $39
    ld d, a                                       ; $75c0: $57
    ld a, a                                       ; $75c1: $7f
    sbc c                                         ; $75c2: $99
    rst $38                                       ; $75c3: $ff
    sbc a                                         ; $75c4: $9f
    rst $38                                       ; $75c5: $ff
    cp a                                          ; $75c6: $bf
    rst $38                                       ; $75c7: $ff
    and l                                         ; $75c8: $a5
    rst $20                                       ; $75c9: $e7
    ld [bc], a                                    ; $75ca: $02
    jp Jump_0ed_4002                              ; $75cb: $c3 $02 $40


    inc c                                         ; $75ce: $0c
    nop                                           ; $75cf: $00
    ld [bc], a                                    ; $75d0: $02
    jr nz, jr_0ed_75d5                            ; $75d1: $20 $02

    ld [hl], b                                    ; $75d3: $70
    adc h                                         ; $75d4: $8c

jr_0ed_75d5:
    ld e, h                                       ; $75d5: $5c
    inc l                                         ; $75d6: $2c
    ld e, d                                       ; $75d7: $5a
    ld a, [hl]                                    ; $75d8: $7e
    ld h, l                                       ; $75d9: $65
    ld a, a                                       ; $75da: $7f
    dec e                                         ; $75db: $1d
    ld a, a                                       ; $75dc: $7f
    ld a, l                                       ; $75dd: $7d
    ld a, a                                       ; $75de: $7f
    ld h, l                                       ; $75df: $65
    ld h, a                                       ; $75e0: $67
    ld [bc], a                                    ; $75e1: $02
    inc bc                                        ; $75e2: $03
    ld [bc], a                                    ; $75e3: $02
    ld [bc], a                                    ; $75e4: $02
    inc c                                         ; $75e5: $0c
    nop                                           ; $75e6: $00
    rst $38                                       ; $75e7: $ff
    dec bc                                        ; $75e8: $0b
    inc bc                                        ; $75e9: $03
    rst $28                                       ; $75ea: $ef
    ld [de], a                                    ; $75eb: $12
    ld [$f103], a                                 ; $75ec: $ea $03 $f1
    ld sp, hl                                     ; $75ef: $f9
    pop af                                        ; $75f0: $f1
    ld bc, $04f1                                  ; $75f1: $01 $f1 $04
    ld [bc], a                                    ; $75f4: $02
    ld b, $8a                                     ; $75f5: $06 $8a
    ld a, [de]                                    ; $75f7: $1a
    ld e, $25                                     ; $75f8: $1e $25
    ccf                                           ; $75fa: $3f
    ld c, h                                       ; $75fb: $4c
    ld a, a                                       ; $75fc: $7f
    ld e, e                                       ; $75fd: $5b
    ld a, a                                       ; $75fe: $7f
    or a                                          ; $75ff: $b7
    rst $38                                       ; $7600: $ff
    ld [bc], a                                    ; $7601: $02
    rst $08                                       ; $7602: $cf
    inc d                                         ; $7603: $14
    nop                                           ; $7604: $00
    ld [bc], a                                    ; $7605: $02
    ld l, b                                       ; $7606: $68
    adc [hl]                                      ; $7607: $8e
    ld e, h                                       ; $7608: $5c
    ld a, h                                       ; $7609: $7c
    rst $30                                       ; $760a: $f7
    db $eb                                        ; $760b: $eb
    inc [hl]                                      ; $760c: $34
    rst $38                                       ; $760d: $ff
    cp [hl]                                       ; $760e: $be
    rst $38                                       ; $760f: $ff
    rst $00                                       ; $7610: $c7
    rst $38                                       ; $7611: $ff
    db $ec                                        ; $7612: $ec
    db $fc                                        ; $7613: $fc
    or b                                          ; $7614: $b0
    ldh a, [rSC]                                  ; $7615: $f0 $02
    ld d, b                                       ; $7617: $50
    stop                                          ; $7618: $10 $00
    ld [bc], a                                    ; $761a: $02
    inc b                                         ; $761b: $04
    adc b                                         ; $761c: $88
    ld [bc], a                                    ; $761d: $02
    ld b, $05                                     ; $761e: $06 $05
    rlca                                          ; $7620: $07
    dec b                                         ; $7621: $05
    rlca                                          ; $7622: $07
    dec b                                         ; $7623: $05
    rlca                                          ; $7624: $07
    ld [bc], a                                    ; $7625: $02
    ld [bc], a                                    ; $7626: $02
    stop                                          ; $7627: $10 $00
    rst $38                                       ; $7629: $ff
    dec bc                                        ; $762a: $0b
    inc bc                                        ; $762b: $03
    db $eb                                        ; $762c: $eb
    ld c, $ea                                     ; $762d: $0e $ea
    inc bc                                        ; $762f: $03
    ld [$f1f3], a                                 ; $7630: $ea $f3 $f1
    ei                                            ; $7633: $fb
    ldh a, [$03]                                  ; $7634: $f0 $03
    ld [bc], a                                    ; $7636: $02
    ldh [$96], a                                  ; $7637: $e0 $96
    ld e, b                                       ; $7639: $58
    ld a, b                                       ; $763a: $78
    inc h                                         ; $763b: $24
    inc a                                         ; $763c: $3c
    ld a, [hl-]                                   ; $763d: $3a
    ld a, $62                                     ; $763e: $3e $62
    ld a, [hl]                                    ; $7640: $7e
    dec sp                                        ; $7641: $3b
    ccf                                           ; $7642: $3f
    ld a, [hl-]                                   ; $7643: $3a
    ld a, $14                                     ; $7644: $3e $14
    inc e                                         ; $7646: $1c
    inc d                                         ; $7647: $14
    inc e                                         ; $7648: $1c
    ld a, [de]                                    ; $7649: $1a
    ld e, $0d                                     ; $764a: $1e $0d
    rrca                                          ; $764c: $0f
    ld b, $07                                     ; $764d: $06 $07
    inc b                                         ; $764f: $04
    inc bc                                        ; $7650: $03
    ld [bc], a                                    ; $7651: $02
    ld bc, $0002                                  ; $7652: $01 $02 $00
    ld [bc], a                                    ; $7655: $02
    ld bc, $e902                                  ; $7656: $01 $02 $e9
    adc [hl]                                      ; $7659: $8e
    cp [hl]                                       ; $765a: $be
    rst $10                                       ; $765b: $d7

jr_0ed_765c:
    db $ed                                        ; $765c: $ed
    rst $38                                       ; $765d: $ff
    ei                                            ; $765e: $fb
    rst $28                                       ; $765f: $ef
    inc a                                         ; $7660: $3c
    db $fc                                        ; $7661: $fc
    jr jr_0ed_765c                                ; $7662: $18 $f8

    db $10                                        ; $7664: $10
    ldh a, [$b8]                                  ; $7665: $f0 $b8
    ld hl, sp+$02                                 ; $7667: $f8 $02
    ld h, b                                       ; $7669: $60
    ld [bc], a                                    ; $766a: $02
    jr nz, jr_0ed_7677                            ; $766b: $20 $0a

    nop                                           ; $766d: $00
    ld [bc], a                                    ; $766e: $02
    add b                                         ; $766f: $80
    ld [bc], a                                    ; $7670: $02
    ld hl, sp-$7a                                 ; $7671: $f8 $86
    ld b, $fe                                     ; $7673: $06 $fe
    ld a, a                                       ; $7675: $7f
    rst $38                                       ; $7676: $ff

jr_0ed_7677:
    ld h, b                                       ; $7677: $60

jr_0ed_7678:
    ldh [rSC], a                                  ; $7678: $e0 $02
    add b                                         ; $767a: $80
    inc d                                         ; $767b: $14
    nop                                           ; $767c: $00
    rst $38                                       ; $767d: $ff
    dec c                                         ; $767e: $0d
    inc b                                         ; $767f: $04
    db $eb                                        ; $7680: $eb
    ld c, $ea                                     ; $7681: $0e $ea
    inc bc                                        ; $7683: $03
    ld [$f2f5], a                                 ; $7684: $ea $f5 $f2
    db $fd                                        ; $7687: $fd
    pop af                                        ; $7688: $f1
    nop                                           ; $7689: $00
    ld a, [$02f5]                                 ; $768a: $fa $f5 $02
    inc bc                                        ; $768d: $03
    ld [bc], a                                    ; $768e: $02
    ld b, $9c                                     ; $768f: $06 $9c
    ld a, [bc]                                    ; $7691: $0a
    ld c, $12                                     ; $7692: $0e $12
    ld e, $17                                     ; $7694: $1e $17
    rra                                           ; $7696: $1f
    ld [hl+], a                                   ; $7697: $22
    ld a, $22                                     ; $7698: $3e $22
    ld a, $52                                     ; $769a: $3e $52
    ld a, [hl]                                    ; $769c: $7e
    ld c, h                                       ; $769d: $4c
    ld a, h                                       ; $769e: $7c
    ld b, h                                       ; $769f: $44
    ld a, h                                       ; $76a0: $7c
    ld c, b                                       ; $76a1: $48
    ld a, b                                       ; $76a2: $78
    adc b                                         ; $76a3: $88
    ld hl, sp-$6c                                 ; $76a4: $f8 $94
    db $f4                                        ; $76a6: $f4
    sbc l                                         ; $76a7: $9d
    ld sp, hl                                     ; $76a8: $f9
    or [hl]                                       ; $76a9: $b6
    rst $38                                       ; $76aa: $ff
    cp l                                          ; $76ab: $bd
    rst $30                                       ; $76ac: $f7
    ld [bc], a                                    ; $76ad: $02
    inc bc                                        ; $76ae: $03
    adc d                                         ; $76af: $8a
    inc c                                         ; $76b0: $0c
    rrca                                          ; $76b1: $0f

jr_0ed_76b2:
    inc sp                                        ; $76b2: $33
    ccf                                           ; $76b3: $3f
    ld c, [hl]                                    ; $76b4: $4e
    ld a, [hl]                                    ; $76b5: $7e
    sub h                                         ; $76b6: $94
    db $fc                                        ; $76b7: $fc
    jr c, jr_0ed_76b2                             ; $76b8: $38 $f8

    ld [bc], a                                    ; $76ba: $02
    ldh a, [rSC]                                  ; $76bb: $f0 $02
    ret nz                                        ; $76bd: $c0

    ld [bc], a                                    ; $76be: $02
    nop                                           ; $76bf: $00
    ld [bc], a                                    ; $76c0: $02
    add b                                         ; $76c1: $80
    inc c                                         ; $76c2: $0c
    nop                                           ; $76c3: $00
    ld [bc], a                                    ; $76c4: $02
    rlca                                          ; $76c5: $07
    add d                                         ; $76c6: $82
    ld [bc], a                                    ; $76c7: $02
    ld b, $02                                     ; $76c8: $06 $02
    inc b                                         ; $76ca: $04
    ld a, [de]                                    ; $76cb: $1a
    nop                                           ; $76cc: $00
    add h                                         ; $76cd: $84
    db $e3                                        ; $76ce: $e3
    rst $38                                       ; $76cf: $ff
    ld a, c                                       ; $76d0: $79
    ld a, a                                       ; $76d1: $7f
    ld [bc], a                                    ; $76d2: $02
    ld e, $02                                     ; $76d3: $1e $02
    inc bc                                        ; $76d5: $03
    jr jr_0ed_76d8                                ; $76d6: $18 $00

jr_0ed_76d8:
    rst $38                                       ; $76d8: $ff
    dec bc                                        ; $76d9: $0b
    inc bc                                        ; $76da: $03
    db $eb                                        ; $76db: $eb
    ld c, $ea                                     ; $76dc: $0e $ea
    inc bc                                        ; $76de: $03
    or $f1                                        ; $76df: $f6 $f1
    or $f9                                        ; $76e1: $f6 $f9
    or $fd                                        ; $76e3: $f6 $fd
    ld [bc], a                                    ; $76e5: $02
    inc b                                         ; $76e6: $04
    ld [bc], a                                    ; $76e7: $02
    jr jr_0ed_7678                                ; $76e8: $18 $8e

    jr z, @+$3a                                   ; $76ea: $28 $38

    ld c, h                                       ; $76ec: $4c
    ld a, h                                       ; $76ed: $7c
    add a                                         ; $76ee: $87
    rst $38                                       ; $76ef: $ff
    add [hl]                                      ; $76f0: $86
    rst $38                                       ; $76f1: $ff
    ld b, a                                       ; $76f2: $47
    ld a, a                                       ; $76f3: $7f
    ld b, a                                       ; $76f4: $47
    ld a, a                                       ; $76f5: $7f
    dec h                                         ; $76f6: $25
    dec a                                         ; $76f7: $3d
    ld [bc], a                                    ; $76f8: $02
    jr @+$04                                      ; $76f9: $18 $02

    ld [$000e], sp                                ; $76fb: $08 $0e $00
    ld [bc], a                                    ; $76fe: $02
    add sp, -$72                                  ; $76ff: $e8 $8e
    cp c                                          ; $7701: $b9
    pop de                                        ; $7702: $d1
    jp hl                                         ; $7703: $e9


    ld sp, hl                                     ; $7704: $f9
    rst $38                                       ; $7705: $ff
    rst $28                                       ; $7706: $ef
    dec sp                                        ; $7707: $3b
    rst $38                                       ; $7708: $ff
    rra                                           ; $7709: $1f
    rst $38                                       ; $770a: $ff
    sub b                                         ; $770b: $90
    ldh a, [$b8]                                  ; $770c: $f0 $b8
    ld hl, sp+$02                                 ; $770e: $f8 $02
    ld h, b                                       ; $7710: $60
    ld [bc], a                                    ; $7711: $02
    jr nz, jr_0ed_771e                            ; $7712: $20 $0a

    nop                                           ; $7714: $00
    ld [bc], a                                    ; $7715: $02
    ld [$0c02], sp                                ; $7716: $08 $02 $0c
    adc b                                         ; $7719: $88
    ld a, [bc]                                    ; $771a: $0a
    ld c, $09                                     ; $771b: $0e $09
    rrca                                          ; $771d: $0f

jr_0ed_771e:
    dec c                                         ; $771e: $0d
    rrca                                          ; $771f: $0f
    dec c                                         ; $7720: $0d
    rrca                                          ; $7721: $0f
    ld [bc], a                                    ; $7722: $02
    ld b, $02                                     ; $7723: $06 $02
    inc b                                         ; $7725: $04
    ld c, $00                                     ; $7726: $0e $00
    rst $38                                       ; $7728: $ff
    dec c                                         ; $7729: $0d
    inc b                                         ; $772a: $04
    db $eb                                        ; $772b: $eb
    ld c, $ea                                     ; $772c: $0e $ea
    inc bc                                        ; $772e: $03

jr_0ed_772f:
    di                                            ; $772f: $f3
    db $eb                                        ; $7730: $eb
    or $f3                                        ; $7731: $f6 $f3
    rst $30                                       ; $7733: $f7
    ei                                            ; $7734: $fb
    db $f4                                        ; $7735: $f4
    nop                                           ; $7736: $00
    ld [bc], a                                    ; $7737: $02
    ld hl, sp-$74                                 ; $7738: $f8 $8c
    ld b, [hl]                                    ; $773a: $46
    ld a, [hl]                                    ; $773b: $7e
    add hl, sp                                    ; $773c: $39
    ccf                                           ; $773d: $3f
    ld a, $3f                                     ; $773e: $3e $3f
    inc e                                         ; $7740: $1c
    rra                                           ; $7741: $1f
    dec c                                         ; $7742: $0d
    rrca                                          ; $7743: $0f
    dec bc                                        ; $7744: $0b
    rrca                                          ; $7745: $0f
    ld [bc], a                                    ; $7746: $02
    rlca                                          ; $7747: $07
    stop                                          ; $7748: $10 $00
    ld [bc], a                                    ; $774a: $02
    ret nz                                        ; $774b: $c0

    sub l                                         ; $774c: $95
    jr nz, jr_0ed_772f                            ; $774d: $20 $e0

    sub b                                         ; $774f: $90
    ldh a, [$d0]                                  ; $7750: $f0 $d0
    ldh a, [$c9]                                  ; $7752: $f0 $c9
    ld sp, hl                                     ; $7754: $f9
    jp hl                                         ; $7755: $e9


    ld sp, hl                                     ; $7756: $f9
    dec [hl]                                      ; $7757: $35
    dec a                                         ; $7758: $3d
    dec de                                        ; $7759: $1b
    rra                                           ; $775a: $1f
    inc c                                         ; $775b: $0c

jr_0ed_775c:
    rrca                                          ; $775c: $0f
    inc b                                         ; $775d: $04
    rlca                                          ; $775e: $07
    ld b, $07                                     ; $775f: $06 $07
    ld [bc], a                                    ; $7761: $02
    inc bc                                        ; $7762: $03
    inc bc                                        ; $7763: $03
    ld [bc], a                                    ; $7764: $02
    ld bc, $0004                                  ; $7765: $01 $04 $00
    ld [bc], a                                    ; $7768: $02
    ld bc, $028c                                  ; $7769: $01 $8c $02
    inc bc                                        ; $776c: $03
    dec b                                         ; $776d: $05
    rlca                                          ; $776e: $07
    xor d                                         ; $776f: $aa
    xor [hl]                                      ; $7770: $ae
    ld a, h                                       ; $7771: $7c
    db $fc                                        ; $7772: $fc
    ret c                                         ; $7773: $d8

    xor b                                         ; $7774: $a8
    ret nc                                        ; $7775: $d0

    ldh a, [rSC]                                  ; $7776: $f0 $02
    ldh [$84], a                                  ; $7778: $e0 $84
    jr nz, jr_0ed_775c                            ; $777a: $20 $e0

    ld h, b                                       ; $777c: $60
    ldh [rDIV], a                                 ; $777d: $e0 $04
    ret nz                                        ; $777f: $c0

    ld [bc], a                                    ; $7780: $02
    ld b, b                                       ; $7781: $40
    ld b, $00                                     ; $7782: $06 $00
    ld [bc], a                                    ; $7784: $02
    inc bc                                        ; $7785: $03
    ld [bc], a                                    ; $7786: $02
    ld c, $84                                     ; $7787: $0e $84
    inc d                                         ; $7789: $14
    inc e                                         ; $778a: $1c
    ld [$0218], sp                                ; $778b: $08 $18 $02
    db $10                                        ; $778e: $10
    ld d, $00                                     ; $778f: $16 $00
    rst $38                                       ; $7791: $ff
    rrca                                          ; $7792: $0f
    dec b                                         ; $7793: $05
    ldh a, [rNR51]                                ; $7794: $f0 $25
    db $e3                                        ; $7796: $e3
    inc b                                         ; $7797: $04
    db $ed                                        ; $7798: $ed
    rst $30                                       ; $7799: $f7
    xor $ff                                       ; $779a: $ee $ff
    ldh a, [rSB]                                  ; $779c: $f0 $01
    db $fd                                        ; $779e: $fd
    ei                                            ; $779f: $fb
    db $fd                                        ; $77a0: $fd
    ld bc, $3c02                                  ; $77a1: $01 $02 $3c
    sub [hl]                                      ; $77a4: $96
    ld d, b                                       ; $77a5: $50
    ld [hl], b                                    ; $77a6: $70
    and c                                         ; $77a7: $a1
    pop hl                                        ; $77a8: $e1
    and e                                         ; $77a9: $a3
    ld [c], a                                     ; $77aa: $e2
    sbc l                                         ; $77ab: $9d
    db $fd                                        ; $77ac: $fd
    ld b, d                                       ; $77ad: $42
    ld a, [hl]                                    ; $77ae: $7e
    dec sp                                        ; $77af: $3b
    ccf                                           ; $77b0: $3f
    rlca                                          ; $77b1: $07
    inc b                                         ; $77b2: $04
    rra                                           ; $77b3: $1f
    inc e                                         ; $77b4: $1c
    ccf                                           ; $77b5: $3f
    inc hl                                        ; $77b6: $23
    ccf                                           ; $77b7: $3f
    daa                                           ; $77b8: $27
    ld e, $1f                                     ; $77b9: $1e $1f
    ld [bc], a                                    ; $77bb: $02
    rlca                                          ; $77bc: $07
    add [hl]                                      ; $77bd: $86
    inc b                                         ; $77be: $04
    rlca                                          ; $77bf: $07
    ld [$0e0f], sp                                ; $77c0: $08 $0f $0e
    rrca                                          ; $77c3: $0f
    ld [bc], a                                    ; $77c4: $02
    ld b, c                                       ; $77c5: $41
    ld [bc], a                                    ; $77c6: $02
    dec sp                                        ; $77c7: $3b
    adc b                                         ; $77c8: $88
    rst $38                                       ; $77c9: $ff
    db $ed                                        ; $77ca: $ed
    rst $38                                       ; $77cb: $ff
    ld b, b                                       ; $77cc: $40
    rst $38                                       ; $77cd: $ff
    rst $00                                       ; $77ce: $c7
    ld a, a                                       ; $77cf: $7f
    ld l, c                                       ; $77d0: $69
    ld [bc], a                                    ; $77d1: $02
    rst $38                                       ; $77d2: $ff
    sub d                                         ; $77d3: $92
    or [hl]                                       ; $77d4: $b6
    cp $d3                                        ; $77d5: $fe $d3
    ld a, a                                       ; $77d7: $7f
    rst $30                                       ; $77d8: $f7
    cp h                                          ; $77d9: $bc
    rst $38                                       ; $77da: $ff
    ret z                                         ; $77db: $c8

    rst $38                                       ; $77dc: $ff
    rst $08                                       ; $77dd: $cf
    db $fc                                        ; $77de: $fc
    db $f4                                        ; $77df: $f4
    ld e, [hl]                                    ; $77e0: $5e
    ld a, [$fdef]                                 ; $77e1: $fa $ef $fd
    sbc a                                         ; $77e4: $9f
    sbc e                                         ; $77e5: $9b
    ld [bc], a                                    ; $77e6: $02
    ld [bc], a                                    ; $77e7: $02
    add d                                         ; $77e8: $82
    inc bc                                        ; $77e9: $03
    ld bc, $0202                                  ; $77ea: $01 $02 $02
    ld [bc], a                                    ; $77ed: $02
    nop                                           ; $77ee: $00
    ld [bc], a                                    ; $77ef: $02
    ld [bc], a                                    ; $77f0: $02
    inc b                                         ; $77f1: $04
    nop                                           ; $77f2: $00
    inc b                                         ; $77f3: $04
    ld [bc], a                                    ; $77f4: $02
    ld a, [bc]                                    ; $77f5: $0a
    nop                                           ; $77f6: $00
    ld [bc], a                                    ; $77f7: $02
    jr nc, jr_0ed_77fc                            ; $77f8: $30 $02

    ld h, c                                       ; $77fa: $61
    add d                                         ; $77fb: $82

jr_0ed_77fc:
    ld [hl], b                                    ; $77fc: $70
    ld d, b                                       ; $77fd: $50

Jump_0ed_77fe:
    ld [bc], a                                    ; $77fe: $02

Jump_0ed_77ff:
    ld h, b                                       ; $77ff: $60
    ld [bc], a                                    ; $7800: $02
    ld d, b                                       ; $7801: $50

Call_0ed_7802:
    add c                                         ; $7802: $81
    or c                                          ; $7803: $b1
    inc bc                                        ; $7804: $03
    pop af                                        ; $7805: $f1
    inc e                                         ; $7806: $1c
    nop                                           ; $7807: $00
    add d                                         ; $7808: $82
    rra                                           ; $7809: $1f
    ccf                                           ; $780a: $3f
    ld [bc], a                                    ; $780b: $02
    ld a, $16                                     ; $780c: $3e $16
    nop                                           ; $780e: $00
    rst $38                                       ; $780f: $ff
    rrca                                          ; $7810: $0f
    dec b                                         ; $7811: $05
    ldh a, [rNR51]                                ; $7812: $f0 $25
    db $e3                                        ; $7814: $e3
    inc b                                         ; $7815: $04
    xor $f7                                       ; $7816: $ee $f7
    rst $28                                       ; $7818: $ef
    rst $38                                       ; $7819: $ff
    pop af                                        ; $781a: $f1
    ld bc, $fbfe                                  ; $781b: $01 $fe $fb
    cp $00                                        ; $781e: $fe $00
    ld [bc], a                                    ; $7820: $02
    inc a                                         ; $7821: $3c
    sub [hl]                                      ; $7822: $96
    ld d, b                                       ; $7823: $50
    ld [hl], b                                    ; $7824: $70
    and c                                         ; $7825: $a1
    pop hl                                        ; $7826: $e1
    and e                                         ; $7827: $a3
    ld [c], a                                     ; $7828: $e2
    sbc l                                         ; $7829: $9d
    db $fd                                        ; $782a: $fd
    ld b, d                                       ; $782b: $42
    ld a, [hl]                                    ; $782c: $7e
    dec sp                                        ; $782d: $3b
    ccf                                           ; $782e: $3f
    rlca                                          ; $782f: $07
    inc b                                         ; $7830: $04
    rra                                           ; $7831: $1f
    jr jr_0ed_7873                                ; $7832: $18 $3f

    inc hl                                        ; $7834: $23
    ccf                                           ; $7835: $3f
    daa                                           ; $7836: $27
    ld e, $1f                                     ; $7837: $1e $1f
    ld [bc], a                                    ; $7839: $02
    rlca                                          ; $783a: $07
    add [hl]                                      ; $783b: $86
    inc c                                         ; $783c: $0c
    rrca                                          ; $783d: $0f
    ld a, [bc]                                    ; $783e: $0a
    rrca                                          ; $783f: $0f
    rlca                                          ; $7840: $07
    dec b                                         ; $7841: $05
    ld [bc], a                                    ; $7842: $02
    ld b, c                                       ; $7843: $41
    ld [bc], a                                    ; $7844: $02
    dec sp                                        ; $7845: $3b
    adc b                                         ; $7846: $88
    rst $38                                       ; $7847: $ff
    db $ed                                        ; $7848: $ed
    rst $38                                       ; $7849: $ff
    ld b, b                                       ; $784a: $40
    rst $38                                       ; $784b: $ff
    rst $00                                       ; $784c: $c7
    ld a, a                                       ; $784d: $7f
    ld l, c                                       ; $784e: $69
    ld [bc], a                                    ; $784f: $02
    rst $38                                       ; $7850: $ff
    sub d                                         ; $7851: $92
    or [hl]                                       ; $7852: $b6
    cp $d1                                        ; $7853: $fe $d1
    ld a, a                                       ; $7855: $7f
    rst $30                                       ; $7856: $f7
    cp h                                          ; $7857: $bc
    rst $38                                       ; $7858: $ff
    ret z                                         ; $7859: $c8

    rst $38                                       ; $785a: $ff
    rst $08                                       ; $785b: $cf
    ld a, h                                       ; $785c: $7c
    db $f4                                        ; $785d: $f4
    ld c, [hl]                                    ; $785e: $4e
    ld a, [$fdf7]                                 ; $785f: $fa $f7 $fd
    rra                                           ; $7862: $1f
    dec de                                        ; $7863: $1b
    ld [bc], a                                    ; $7864: $02
    ld [bc], a                                    ; $7865: $02
    add d                                         ; $7866: $82
    inc bc                                        ; $7867: $03
    ld bc, $0202                                  ; $7868: $01 $02 $02
    ld [bc], a                                    ; $786b: $02
    nop                                           ; $786c: $00
    ld [bc], a                                    ; $786d: $02
    ld [bc], a                                    ; $786e: $02
    inc b                                         ; $786f: $04
    nop                                           ; $7870: $00
    inc b                                         ; $7871: $04
    ld [bc], a                                    ; $7872: $02

jr_0ed_7873:
    ld a, [bc]                                    ; $7873: $0a
    nop                                           ; $7874: $00
    ld [bc], a                                    ; $7875: $02
    ld sp, $4f82                                  ; $7876: $31 $82 $4f
    ld a, a                                       ; $7879: $7f
    inc b                                         ; $787a: $04
    ld [hl], b                                    ; $787b: $70
    add d                                         ; $787c: $82
    or b                                          ; $787d: $b0
    ldh a, [rSC]                                  ; $787e: $f0 $02
    pop af                                        ; $7880: $f1
    ld e, $00                                     ; $7881: $1e $00
    ld [bc], a                                    ; $7883: $02
    rra                                           ; $7884: $1f
    jr jr_0ed_7887                                ; $7885: $18 $00

jr_0ed_7887:
    rst $38                                       ; $7887: $ff
    rrca                                          ; $7888: $0f
    dec b                                         ; $7889: $05
    ldh a, [rNR51]                                ; $788a: $f0 $25
    db $e3                                        ; $788c: $e3
    inc b                                         ; $788d: $04
    rst $28                                       ; $788e: $ef
    or $ef                                        ; $788f: $f6 $ef
    cp $ef                                        ; $7891: $fe $ef
    ld bc, $fbff                                  ; $7893: $01 $ff $fb
    rst $38                                       ; $7896: $ff
    ld bc, $3c02                                  ; $7897: $01 $02 $3c
    sub h                                         ; $789a: $94
    ld d, b                                       ; $789b: $50
    ld [hl], b                                    ; $789c: $70
    and c                                         ; $789d: $a1
    pop hl                                        ; $789e: $e1
    and b                                         ; $789f: $a0
    ldh [$bc], a                                  ; $78a0: $e0 $bc
    db $fc                                        ; $78a2: $fc
    ld b, e                                       ; $78a3: $43
    ld a, a                                       ; $78a4: $7f
    dec a                                         ; $78a5: $3d
    ccf                                           ; $78a6: $3f
    inc bc                                        ; $78a7: $03
    ld [bc], a                                    ; $78a8: $02
    rrca                                          ; $78a9: $0f
    inc c                                         ; $78aa: $0c
    rra                                           ; $78ab: $1f
    ld de, $131f                                  ; $78ac: $11 $1f $13
    ld [bc], a                                    ; $78af: $02
    rrca                                          ; $78b0: $0f
    add e                                         ; $78b1: $83
    ld [bc], a                                    ; $78b2: $02
    inc bc                                        ; $78b3: $03
    dec b                                         ; $78b4: $05
    ld [bc], a                                    ; $78b5: $02
    rlca                                          ; $78b6: $07
    add c                                         ; $78b7: $81
    ld b, $02                                     ; $78b8: $06 $02
    inc bc                                        ; $78ba: $03
    ld [bc], a                                    ; $78bb: $02
    jr nz, jr_0ed_78c0                            ; $78bc: $20 $02

    sbc l                                         ; $78be: $9d
    adc b                                         ; $78bf: $88

jr_0ed_78c0:
    rst $38                                       ; $78c0: $ff
    halt                                          ; $78c1: $76
    rst $38                                       ; $78c2: $ff
    and b                                         ; $78c3: $a0
    ld a, a                                       ; $78c4: $7f
    ld h, e                                       ; $78c5: $63
    ccf                                           ; $78c6: $3f
    inc [hl]                                      ; $78c7: $34
    ld [bc], a                                    ; $78c8: $02
    rst $38                                       ; $78c9: $ff
    sub d                                         ; $78ca: $92
    db $db                                        ; $78cb: $db
    ld a, a                                       ; $78cc: $7f
    add sp, $7f                                   ; $78cd: $e8 $7f
    ld sp, hl                                     ; $78cf: $f9
    sbc a                                         ; $78d0: $9f
    ld a, a                                       ; $78d1: $7f
    xor $ff                                       ; $78d2: $ee $ff
    pop af                                        ; $78d4: $f1
    ld a, a                                       ; $78d5: $7f
    ld sp, hl                                     ; $78d6: $f9
    ccf                                           ; $78d7: $3f
    cp $bb                                        ; $78d8: $fe $bb
    rst $38                                       ; $78da: $ff
    rst $08                                       ; $78db: $cf
    call Call_000_0404                            ; $78dc: $cd $04 $04
    ld [bc], a                                    ; $78df: $02
    ld b, $82                                     ; $78e0: $06 $82
    rlca                                          ; $78e2: $07
    ld bc, $0602                                  ; $78e3: $01 $02 $06
    ld [bc], a                                    ; $78e6: $02
    inc b                                         ; $78e7: $04
    ld [bc], a                                    ; $78e8: $02
    ld b, $02                                     ; $78e9: $06 $02
    nop                                           ; $78eb: $00
    ld [bc], a                                    ; $78ec: $02
    inc b                                         ; $78ed: $04
    add [hl]                                      ; $78ee: $86
    ld b, $02                                     ; $78ef: $06 $02
    rlca                                          ; $78f1: $07
    ld bc, $0206                                  ; $78f2: $01 $06 $02
    ld [bc], a                                    ; $78f5: $02
    inc b                                         ; $78f6: $04
    ld [bc], a                                    ; $78f7: $02
    ld b, $82                                     ; $78f8: $06 $82
    rlca                                          ; $78fa: $07
    ld bc, $0602                                  ; $78fb: $01 $02 $06
    ld [bc], a                                    ; $78fe: $02
    ld [hl], b                                    ; $78ff: $70
    add c                                         ; $7900: $81
    or c                                          ; $7901: $b1
    inc bc                                        ; $7902: $03
    pop af                                        ; $7903: $f1
    ld a, [de]                                    ; $7904: $1a
    nop                                           ; $7905: $00
    ld [bc], a                                    ; $7906: $02
    ld sp, $0f82                                  ; $7907: $31 $82 $0f
    ccf                                           ; $790a: $3f
    ld [bc], a                                    ; $790b: $02
    ld a, $1a                                     ; $790c: $3e $1a
    nop                                           ; $790e: $00
    rst $38                                       ; $790f: $ff
    rrca                                          ; $7910: $0f
    dec b                                         ; $7911: $05
    ldh a, [rNR51]                                ; $7912: $f0 $25
    db $e3                                        ; $7914: $e3
    inc b                                         ; $7915: $04
    rst $28                                       ; $7916: $ef
    or $ef                                        ; $7917: $f6 $ef
    cp $ef                                        ; $7919: $fe $ef
    ld bc, $fbff                                  ; $791b: $01 $ff $fb
    rst $38                                       ; $791e: $ff
    ld bc, $3c02                                  ; $791f: $01 $02 $3c
    sub h                                         ; $7922: $94
    ld d, b                                       ; $7923: $50
    ld [hl], b                                    ; $7924: $70
    and c                                         ; $7925: $a1
    pop hl                                        ; $7926: $e1
    and b                                         ; $7927: $a0
    ldh [$bc], a                                  ; $7928: $e0 $bc
    db $fc                                        ; $792a: $fc
    ld b, e                                       ; $792b: $43
    ld a, a                                       ; $792c: $7f
    dec a                                         ; $792d: $3d
    ccf                                           ; $792e: $3f
    inc bc                                        ; $792f: $03
    ld [bc], a                                    ; $7930: $02
    rrca                                          ; $7931: $0f
    inc c                                         ; $7932: $0c
    rra                                           ; $7933: $1f
    ld de, $131f                                  ; $7934: $11 $1f $13
    ld [bc], a                                    ; $7937: $02
    rrca                                          ; $7938: $0f
    add e                                         ; $7939: $83
    ld [bc], a                                    ; $793a: $02
    inc bc                                        ; $793b: $03
    dec b                                         ; $793c: $05
    ld [bc], a                                    ; $793d: $02
    rlca                                          ; $793e: $07
    add c                                         ; $793f: $81
    ld b, $02                                     ; $7940: $06 $02
    inc bc                                        ; $7942: $03
    ld [bc], a                                    ; $7943: $02
    jr nz, jr_0ed_7948                            ; $7944: $20 $02

    sbc l                                         ; $7946: $9d
    adc b                                         ; $7947: $88

jr_0ed_7948:
    rst $38                                       ; $7948: $ff
    halt                                          ; $7949: $76
    rst $38                                       ; $794a: $ff
    and b                                         ; $794b: $a0
    ld a, a                                       ; $794c: $7f
    ld h, e                                       ; $794d: $63
    ccf                                           ; $794e: $3f
    inc [hl]                                      ; $794f: $34
    ld [bc], a                                    ; $7950: $02
    rst $38                                       ; $7951: $ff
    sub d                                         ; $7952: $92
    db $db                                        ; $7953: $db
    ld a, a                                       ; $7954: $7f
    add sp, $7f                                   ; $7955: $e8 $7f
    ld sp, hl                                     ; $7957: $f9
    sbc a                                         ; $7958: $9f
    ld a, a                                       ; $7959: $7f
    xor $ff                                       ; $795a: $ee $ff
    pop af                                        ; $795c: $f1
    ld a, a                                       ; $795d: $7f
    ld sp, hl                                     ; $795e: $f9
    ccf                                           ; $795f: $3f
    cp $bb                                        ; $7960: $fe $bb
    rst $38                                       ; $7962: $ff
    rst $08                                       ; $7963: $cf
    call Call_000_0404                            ; $7964: $cd $04 $04
    ld [bc], a                                    ; $7967: $02
    ld b, $82                                     ; $7968: $06 $82
    rlca                                          ; $796a: $07
    ld bc, $0602                                  ; $796b: $01 $02 $06
    ld [bc], a                                    ; $796e: $02
    inc b                                         ; $796f: $04
    ld [bc], a                                    ; $7970: $02
    ld b, $02                                     ; $7971: $06 $02
    nop                                           ; $7973: $00
    ld [bc], a                                    ; $7974: $02
    inc b                                         ; $7975: $04
    add [hl]                                      ; $7976: $86
    ld b, $02                                     ; $7977: $06 $02
    rlca                                          ; $7979: $07
    ld bc, $0206                                  ; $797a: $01 $06 $02
    ld [bc], a                                    ; $797d: $02
    inc b                                         ; $797e: $04
    ld [bc], a                                    ; $797f: $02
    ld b, $82                                     ; $7980: $06 $82
    rlca                                          ; $7982: $07
    ld bc, $0602                                  ; $7983: $01 $02 $06
    ld [bc], a                                    ; $7986: $02
    ld [hl], b                                    ; $7987: $70
    add c                                         ; $7988: $81
    or c                                          ; $7989: $b1
    inc bc                                        ; $798a: $03
    pop af                                        ; $798b: $f1
    ld a, [de]                                    ; $798c: $1a
    nop                                           ; $798d: $00
    ld [bc], a                                    ; $798e: $02
    ld sp, $0f82                                  ; $798f: $31 $82 $0f
    ccf                                           ; $7992: $3f
    ld [bc], a                                    ; $7993: $02
    ld a, $1a                                     ; $7994: $3e $1a
    nop                                           ; $7996: $00
    rst $38                                       ; $7997: $ff
    rrca                                          ; $7998: $0f
    dec b                                         ; $7999: $05
    ldh a, [rNR51]                                ; $799a: $f0 $25
    db $e3                                        ; $799c: $e3
    inc b                                         ; $799d: $04
    xor $f6                                       ; $799e: $ee $f6
    xor $fe                                       ; $79a0: $ee $fe
    xor $01                                       ; $79a2: $ee $01
    cp $fb                                        ; $79a4: $fe $fb
    cp $01                                        ; $79a6: $fe $01
    ld [bc], a                                    ; $79a8: $02
    inc a                                         ; $79a9: $3c
    sub h                                         ; $79aa: $94
    ld d, b                                       ; $79ab: $50
    ld [hl], b                                    ; $79ac: $70
    and c                                         ; $79ad: $a1
    pop hl                                        ; $79ae: $e1
    and b                                         ; $79af: $a0
    ldh [$bc], a                                  ; $79b0: $e0 $bc
    db $fc                                        ; $79b2: $fc
    ld b, e                                       ; $79b3: $43
    ld a, a                                       ; $79b4: $7f
    dec a                                         ; $79b5: $3d
    ccf                                           ; $79b6: $3f
    inc bc                                        ; $79b7: $03
    ld [bc], a                                    ; $79b8: $02
    rrca                                          ; $79b9: $0f
    inc c                                         ; $79ba: $0c
    rra                                           ; $79bb: $1f
    ld de, $131f                                  ; $79bc: $11 $1f $13
    ld [bc], a                                    ; $79bf: $02
    rrca                                          ; $79c0: $0f
    add l                                         ; $79c1: $85
    ld [bc], a                                    ; $79c2: $02
    inc bc                                        ; $79c3: $03
    ld [bc], a                                    ; $79c4: $02
    inc bc                                        ; $79c5: $03
    dec b                                         ; $79c6: $05
    ld [bc], a                                    ; $79c7: $02
    rlca                                          ; $79c8: $07
    add c                                         ; $79c9: $81
    ld b, $02                                     ; $79ca: $06 $02
    jr nz, jr_0ed_79d0                            ; $79cc: $20 $02

    sbc l                                         ; $79ce: $9d
    adc b                                         ; $79cf: $88

jr_0ed_79d0:
    rst $38                                       ; $79d0: $ff
    halt                                          ; $79d1: $76
    rst $38                                       ; $79d2: $ff
    and b                                         ; $79d3: $a0
    ld a, a                                       ; $79d4: $7f
    ld h, e                                       ; $79d5: $63
    ccf                                           ; $79d6: $3f
    inc [hl]                                      ; $79d7: $34
    ld [bc], a                                    ; $79d8: $02
    rst $38                                       ; $79d9: $ff
    sub d                                         ; $79da: $92
    db $db                                        ; $79db: $db
    ld a, a                                       ; $79dc: $7f
    add sp, $7f                                   ; $79dd: $e8 $7f
    ld sp, hl                                     ; $79df: $f9
    sbc a                                         ; $79e0: $9f
    ld a, a                                       ; $79e1: $7f
    xor $ff                                       ; $79e2: $ee $ff
    pop af                                        ; $79e4: $f1
    ld a, a                                       ; $79e5: $7f
    ld sp, hl                                     ; $79e6: $f9
    ccf                                           ; $79e7: $3f
    cp $3b                                        ; $79e8: $fe $3b
    rst $38                                       ; $79ea: $ff
    rst $08                                       ; $79eb: $cf
    call Call_000_0404                            ; $79ec: $cd $04 $04
    ld [bc], a                                    ; $79ef: $02
    ld b, $82                                     ; $79f0: $06 $82
    rlca                                          ; $79f2: $07
    ld bc, $0602                                  ; $79f3: $01 $02 $06
    ld [bc], a                                    ; $79f6: $02
    inc b                                         ; $79f7: $04
    ld [bc], a                                    ; $79f8: $02
    ld b, $02                                     ; $79f9: $06 $02
    nop                                           ; $79fb: $00
    ld [bc], a                                    ; $79fc: $02
    inc b                                         ; $79fd: $04
    add [hl]                                      ; $79fe: $86
    ld b, $02                                     ; $79ff: $06 $02
    rlca                                          ; $7a01: $07
    ld bc, $0206                                  ; $7a02: $01 $06 $02
    ld [bc], a                                    ; $7a05: $02
    inc b                                         ; $7a06: $04
    ld [bc], a                                    ; $7a07: $02
    ld b, $82                                     ; $7a08: $06 $82
    rlca                                          ; $7a0a: $07
    ld bc, $0602                                  ; $7a0b: $01 $02 $06
    ld [bc], a                                    ; $7a0e: $02
    ld h, b                                       ; $7a0f: $60
    ld [bc], a                                    ; $7a10: $02
    ld d, c                                       ; $7a11: $51
    add c                                         ; $7a12: $81
    or c                                          ; $7a13: $b1
    inc bc                                        ; $7a14: $03
    pop af                                        ; $7a15: $f1
    jr jr_0ed_7a18                                ; $7a16: $18 $00

jr_0ed_7a18:
    ld [bc], a                                    ; $7a18: $02
    jr nc, @+$04                                  ; $7a19: $30 $02

    ld hl, $1f82                                  ; $7a1b: $21 $82 $1f
    ccf                                           ; $7a1e: $3f
    ld [bc], a                                    ; $7a1f: $02
    ld a, $18                                     ; $7a20: $3e $18
    nop                                           ; $7a22: $00
    rst $38                                       ; $7a23: $ff
    rrca                                          ; $7a24: $0f
    dec b                                         ; $7a25: $05
    ldh a, [rNR51]                                ; $7a26: $f0 $25
    db $e3                                        ; $7a28: $e3
    inc b                                         ; $7a29: $04
    db $ed                                        ; $7a2a: $ed
    rst $30                                       ; $7a2b: $f7
    xor $ff                                       ; $7a2c: $ee $ff
    ldh a, [rSB]                                  ; $7a2e: $f0 $01
    db $fd                                        ; $7a30: $fd
    ei                                            ; $7a31: $fb
    db $fd                                        ; $7a32: $fd
    ld bc, $3c02                                  ; $7a33: $01 $02 $3c
    sub [hl]                                      ; $7a36: $96
    ld d, b                                       ; $7a37: $50
    ld [hl], b                                    ; $7a38: $70
    and c                                         ; $7a39: $a1
    pop hl                                        ; $7a3a: $e1
    and e                                         ; $7a3b: $a3
    ld [c], a                                     ; $7a3c: $e2
    sbc l                                         ; $7a3d: $9d
    db $fd                                        ; $7a3e: $fd
    ld b, d                                       ; $7a3f: $42
    ld a, [hl]                                    ; $7a40: $7e
    dec sp                                        ; $7a41: $3b
    ccf                                           ; $7a42: $3f
    rlca                                          ; $7a43: $07
    inc b                                         ; $7a44: $04
    rra                                           ; $7a45: $1f
    inc e                                         ; $7a46: $1c
    ccf                                           ; $7a47: $3f
    inc hl                                        ; $7a48: $23
    ccf                                           ; $7a49: $3f
    daa                                           ; $7a4a: $27
    ld e, $1f                                     ; $7a4b: $1e $1f
    ld [bc], a                                    ; $7a4d: $02
    rlca                                          ; $7a4e: $07
    add [hl]                                      ; $7a4f: $86
    inc b                                         ; $7a50: $04
    rlca                                          ; $7a51: $07
    ld [$0e0f], sp                                ; $7a52: $08 $0f $0e
    rrca                                          ; $7a55: $0f
    ld [bc], a                                    ; $7a56: $02
    ld b, c                                       ; $7a57: $41
    ld [bc], a                                    ; $7a58: $02
    dec sp                                        ; $7a59: $3b
    adc b                                         ; $7a5a: $88
    rst $38                                       ; $7a5b: $ff
    db $ed                                        ; $7a5c: $ed
    rst $38                                       ; $7a5d: $ff
    ld b, b                                       ; $7a5e: $40
    rst $38                                       ; $7a5f: $ff
    rst $00                                       ; $7a60: $c7
    ld a, a                                       ; $7a61: $7f
    ld l, c                                       ; $7a62: $69
    ld [bc], a                                    ; $7a63: $02
    rst $38                                       ; $7a64: $ff
    sub d                                         ; $7a65: $92
    or [hl]                                       ; $7a66: $b6
    cp $d3                                        ; $7a67: $fe $d3
    ld a, a                                       ; $7a69: $7f
    rst $30                                       ; $7a6a: $f7
    cp h                                          ; $7a6b: $bc
    rst $38                                       ; $7a6c: $ff
    ret z                                         ; $7a6d: $c8

    rst $38                                       ; $7a6e: $ff
    rst $08                                       ; $7a6f: $cf
    db $fc                                        ; $7a70: $fc
    db $f4                                        ; $7a71: $f4
    ld e, [hl]                                    ; $7a72: $5e
    ld a, [$fdef]                                 ; $7a73: $fa $ef $fd
    sbc a                                         ; $7a76: $9f
    sbc e                                         ; $7a77: $9b
    ld [bc], a                                    ; $7a78: $02
    ld [bc], a                                    ; $7a79: $02
    add d                                         ; $7a7a: $82
    inc bc                                        ; $7a7b: $03
    ld bc, $0202                                  ; $7a7c: $01 $02 $02
    ld [bc], a                                    ; $7a7f: $02
    nop                                           ; $7a80: $00
    ld [bc], a                                    ; $7a81: $02
    ld [bc], a                                    ; $7a82: $02
    inc b                                         ; $7a83: $04
    nop                                           ; $7a84: $00
    inc b                                         ; $7a85: $04
    ld [bc], a                                    ; $7a86: $02
    ld a, [bc]                                    ; $7a87: $0a
    nop                                           ; $7a88: $00
    ld [bc], a                                    ; $7a89: $02
    jr nc, jr_0ed_7a8e                            ; $7a8a: $30 $02

    ld h, c                                       ; $7a8c: $61
    add d                                         ; $7a8d: $82

jr_0ed_7a8e:
    ld [hl], b                                    ; $7a8e: $70
    ld d, b                                       ; $7a8f: $50
    ld [bc], a                                    ; $7a90: $02
    ld h, b                                       ; $7a91: $60
    ld [bc], a                                    ; $7a92: $02
    ld d, b                                       ; $7a93: $50
    add c                                         ; $7a94: $81
    or c                                          ; $7a95: $b1
    inc bc                                        ; $7a96: $03
    pop af                                        ; $7a97: $f1
    inc e                                         ; $7a98: $1c
    nop                                           ; $7a99: $00
    add d                                         ; $7a9a: $82
    rra                                           ; $7a9b: $1f
    ccf                                           ; $7a9c: $3f
    ld [bc], a                                    ; $7a9d: $02
    ld a, $16                                     ; $7a9e: $3e $16
    nop                                           ; $7aa0: $00
    rst $38                                       ; $7aa1: $ff
    rrca                                          ; $7aa2: $0f
    dec b                                         ; $7aa3: $05
    ldh a, [rNR51]                                ; $7aa4: $f0 $25
    db $e3                                        ; $7aa6: $e3
    inc b                                         ; $7aa7: $04
    rst $28                                       ; $7aa8: $ef
    or $f0                                        ; $7aa9: $f6 $f0
    cp $f0                                        ; $7aab: $fe $f0
    ld bc, $fbff                                  ; $7aad: $01 $ff $fb
    rst $38                                       ; $7ab0: $ff
    ld bc, $3c02                                  ; $7ab1: $01 $02 $3c
    sub h                                         ; $7ab4: $94
    ld d, b                                       ; $7ab5: $50
    ld [hl], b                                    ; $7ab6: $70
    and b                                         ; $7ab7: $a0
    ldh [$a1], a                                  ; $7ab8: $e0 $a1
    pop hl                                        ; $7aba: $e1
    cp h                                          ; $7abb: $bc
    db $fc                                        ; $7abc: $fc
    ld b, e                                       ; $7abd: $43
    ld a, a                                       ; $7abe: $7f
    dec a                                         ; $7abf: $3d
    ccf                                           ; $7ac0: $3f
    inc bc                                        ; $7ac1: $03
    ld [bc], a                                    ; $7ac2: $02
    rrca                                          ; $7ac3: $0f
    inc c                                         ; $7ac4: $0c

jr_0ed_7ac5:
    rra                                           ; $7ac5: $1f
    ld de, $131f                                  ; $7ac6: $11 $1f $13
    ld [bc], a                                    ; $7ac9: $02
    rrca                                          ; $7aca: $0f
    add [hl]                                      ; $7acb: $86
    ld b, $07                                     ; $7acc: $06 $07
    dec b                                         ; $7ace: $05
    rlca                                          ; $7acf: $07
    inc bc                                        ; $7ad0: $03
    ld [bc], a                                    ; $7ad1: $02
    ld [bc], a                                    ; $7ad2: $02
    inc bc                                        ; $7ad3: $03
    ld [bc], a                                    ; $7ad4: $02
    db $10                                        ; $7ad5: $10
    ld [bc], a                                    ; $7ad6: $02
    sbc l                                         ; $7ad7: $9d
    sbc d                                         ; $7ad8: $9a
    rst $38                                       ; $7ad9: $ff
    halt                                          ; $7ada: $76
    rst $38                                       ; $7adb: $ff
    and b                                         ; $7adc: $a0
    ld a, a                                       ; $7add: $7f
    ld h, e                                       ; $7ade: $63
    cp a                                          ; $7adf: $bf
    db $f4                                        ; $7ae0: $f4
    rst $18                                       ; $7ae1: $df
    ld a, a                                       ; $7ae2: $7f
    add sp, $7f                                   ; $7ae3: $e8 $7f
    ld sp, hl                                     ; $7ae5: $f9
    sbc a                                         ; $7ae6: $9f
    ld a, a                                       ; $7ae7: $7f
    xor $ff                                       ; $7ae8: $ee $ff
    pop af                                        ; $7aea: $f1
    ccf                                           ; $7aeb: $3f
    ld sp, hl                                     ; $7aec: $f9
    ccf                                           ; $7aed: $3f
    cp $fb                                        ; $7aee: $fe $fb
    rst $38                                       ; $7af0: $ff
    add a                                         ; $7af1: $87
    add l                                         ; $7af2: $85

jr_0ed_7af3:
    ld [bc], a                                    ; $7af3: $02
    add [hl]                                      ; $7af4: $86
    inc b                                         ; $7af5: $04
    inc b                                         ; $7af6: $04
    ld [bc], a                                    ; $7af7: $02
    ld b, $82                                     ; $7af8: $06 $82
    rlca                                          ; $7afa: $07
    ld bc, $0602                                  ; $7afb: $01 $02 $06
    ld [bc], a                                    ; $7afe: $02
    inc b                                         ; $7aff: $04
    ld [bc], a                                    ; $7b00: $02
    ld b, $02                                     ; $7b01: $06 $02
    inc b                                         ; $7b03: $04
    add [hl]                                      ; $7b04: $86
    ld b, $02                                     ; $7b05: $06 $02
    rlca                                          ; $7b07: $07
    ld bc, $0206                                  ; $7b08: $01 $06 $02
    ld [bc], a                                    ; $7b0b: $02
    inc b                                         ; $7b0c: $04
    ld [bc], a                                    ; $7b0d: $02
    ld b, $82                                     ; $7b0e: $06 $82
    rlca                                          ; $7b10: $07
    ld bc, $0602                                  ; $7b11: $01 $02 $06
    ld [bc], a                                    ; $7b14: $02
    ld bc, $6002                                  ; $7b15: $01 $02 $60
    add c                                         ; $7b18: $81
    or c                                          ; $7b19: $b1
    inc bc                                        ; $7b1a: $03
    pop af                                        ; $7b1b: $f1
    inc e                                         ; $7b1c: $1c
    nop                                           ; $7b1d: $00
    add d                                         ; $7b1e: $82
    rrca                                          ; $7b1f: $0f
    ccf                                           ; $7b20: $3f
    ld [bc], a                                    ; $7b21: $02
    ld a, $1a                                     ; $7b22: $3e $1a
    nop                                           ; $7b24: $00
    rst $38                                       ; $7b25: $ff
    rrca                                          ; $7b26: $0f
    dec b                                         ; $7b27: $05
    ldh a, [rNR51]                                ; $7b28: $f0 $25
    db $e3                                        ; $7b2a: $e3
    inc b                                         ; $7b2b: $04
    db $eb                                        ; $7b2c: $eb
    pop af                                        ; $7b2d: $f1
    db $ec                                        ; $7b2e: $ec
    ld sp, hl                                     ; $7b2f: $f9
    db $ec                                        ; $7b30: $ec
    nop                                           ; $7b31: $00
    ei                                            ; $7b32: $fb
    ei                                            ; $7b33: $fb
    ei                                            ; $7b34: $fb
    nop                                           ; $7b35: $00
    ld [bc], a                                    ; $7b36: $02
    jr c, jr_0ed_7ac5                             ; $7b37: $38 $8c

    ld d, b                                       ; $7b39: $50
    ld [hl], b                                    ; $7b3a: $70
    and b                                         ; $7b3b: $a0
    ldh [$a3], a                                  ; $7b3c: $e0 $a3
    db $e3                                        ; $7b3e: $e3
    and l                                         ; $7b3f: $a5
    rst $20                                       ; $7b40: $e7
    ld e, e                                       ; $7b41: $5b
    ld a, a                                       ; $7b42: $7f
    dec h                                         ; $7b43: $25
    dec a                                         ; $7b44: $3d
    ld [bc], a                                    ; $7b45: $02
    jr jr_0ed_7b58                                ; $7b46: $18 $10

    nop                                           ; $7b48: $00
    ld [bc], a                                    ; $7b49: $02
    inc b                                         ; $7b4a: $04
    ld [bc], a                                    ; $7b4b: $02
    rlca                                          ; $7b4c: $07
    sub l                                         ; $7b4d: $95
    ccf                                           ; $7b4e: $3f
    dec a                                         ; $7b4f: $3d
    rst $38                                       ; $7b50: $ff
    add sp, -$01                                  ; $7b51: $e8 $ff
    sbc l                                         ; $7b53: $9d
    rst $38                                       ; $7b54: $ff
    sub e                                         ; $7b55: $93
    rst $38                                       ; $7b56: $ff
    cp h                                          ; $7b57: $bc

jr_0ed_7b58:
    rst $38                                       ; $7b58: $ff
    sbc a                                         ; $7b59: $9f
    db $f4                                        ; $7b5a: $f4
    sbc a                                         ; $7b5b: $9f
    ld a, b                                       ; $7b5c: $78
    ld e, a                                       ; $7b5d: $5f
    ld sp, $103f                                  ; $7b5e: $31 $3f $10
    rra                                           ; $7b61: $1f
    add hl, de                                    ; $7b62: $19
    inc bc                                        ; $7b63: $03
    rra                                           ; $7b64: $1f
    add h                                         ; $7b65: $84
    inc de                                        ; $7b66: $13
    rra                                           ; $7b67: $1f
    ld hl, $023f                                  ; $7b68: $21 $3f $02
    jr nz, jr_0ed_7b6f                            ; $7b6b: $20 $02

    jr nc, jr_0ed_7af3                            ; $7b6d: $30 $84

jr_0ed_7b6f:
    ld a, b                                       ; $7b6f: $78
    ld e, b                                       ; $7b70: $58
    ld a, h                                       ; $7b71: $7c
    inc b                                         ; $7b72: $04
    ld [bc], a                                    ; $7b73: $02
    ld a, b                                       ; $7b74: $78
    ld [bc], a                                    ; $7b75: $02
    ld [hl], b                                    ; $7b76: $70
    add h                                         ; $7b77: $84
    ld a, h                                       ; $7b78: $7c
    ld c, h                                       ; $7b79: $4c
    ld a, [hl]                                    ; $7b7a: $7e
    ld c, d                                       ; $7b7b: $4a
    inc bc                                        ; $7b7c: $03
    ld a, a                                       ; $7b7d: $7f
    add [hl]                                      ; $7b7e: $86
    ld [hl], e                                    ; $7b7f: $73
    ld e, [hl]                                    ; $7b80: $5e
    ld a, [hl]                                    ; $7b81: $7e
    ld c, b                                       ; $7b82: $48
    ld a, b                                       ; $7b83: $78
    jr jr_0ed_7b89                                ; $7b84: $18 $03

jr_0ed_7b86:
    ld a, b                                       ; $7b86: $78
    add h                                         ; $7b87: $84
    ld b, h                                       ; $7b88: $44

jr_0ed_7b89:
    ld a, h                                       ; $7b89: $7c
    ld l, h                                       ; $7b8a: $6c
    ld a, h                                       ; $7b8b: $7c
    ld [bc], a                                    ; $7b8c: $02
    nop                                           ; $7b8d: $00
    add h                                         ; $7b8e: $84
    xor a                                         ; $7b8f: $af
    rst $38                                       ; $7b90: $ff

jr_0ed_7b91:
    ld hl, sp-$28                                 ; $7b91: $f8 $d8
    inc b                                         ; $7b93: $04
    ld [hl], c                                    ; $7b94: $71

jr_0ed_7b95:
    add d                                         ; $7b95: $82
    or c                                          ; $7b96: $b1
    pop af                                        ; $7b97: $f1
    ld [bc], a                                    ; $7b98: $02
    ldh a, [rNR14]                                ; $7b99: $f0 $14
    nop                                           ; $7b9b: $00
    add d                                         ; $7b9c: $82
    inc e                                         ; $7b9d: $1c
    inc d                                         ; $7b9e: $14
    ld [bc], a                                    ; $7b9f: $02
    jr jr_0ed_7ba4                                ; $7ba0: $18 $02

    db $10                                        ; $7ba2: $10
    add h                                         ; $7ba3: $84

jr_0ed_7ba4:
    dec c                                         ; $7ba4: $0d
    dec e                                         ; $7ba5: $1d
    rla                                           ; $7ba6: $17
    rra                                           ; $7ba7: $1f
    ld [bc], a                                    ; $7ba8: $02
    ld c, $12                                     ; $7ba9: $0e $12
    nop                                           ; $7bab: $00
    rst $38                                       ; $7bac: $ff
    ld de, $f006                                  ; $7bad: $11 $06 $f0
    dec h                                         ; $7bb0: $25
    db $e3                                        ; $7bb1: $e3
    inc b                                         ; $7bb2: $04
    db $ed                                        ; $7bb3: $ed
    rst $38                                       ; $7bb4: $ff
    db $e4                                        ; $7bb5: $e4
    rlca                                          ; $7bb6: $07
    db $e3                                        ; $7bb7: $e3
    dec c                                         ; $7bb8: $0d
    di                                            ; $7bb9: $f3
    ei                                            ; $7bba: $fb
    di                                            ; $7bbb: $f3
    inc bc                                        ; $7bbc: $03
    di                                            ; $7bbd: $f3
    inc b                                         ; $7bbe: $04
    ld [bc], a                                    ; $7bbf: $02
    ld [de], a                                    ; $7bc0: $12
    ld [bc], a                                    ; $7bc1: $02
    rra                                           ; $7bc2: $1f
    sub h                                         ; $7bc3: $94
    rst $38                                       ; $7bc4: $ff
    di                                            ; $7bc5: $f3
    rst $38                                       ; $7bc6: $ff
    sbc c                                         ; $7bc7: $99
    ld a, a                                       ; $7bc8: $7f
    ld [hl], a                                    ; $7bc9: $77
    ld a, e                                       ; $7bca: $7b
    ld a, h                                       ; $7bcb: $7c
    and a                                         ; $7bcc: $a7
    db $fc                                        ; $7bcd: $fc
    ld a, a                                       ; $7bce: $7f
    rst $38                                       ; $7bcf: $ff
    ld [hl], a                                    ; $7bd0: $77
    cp $a7                                        ; $7bd1: $fe $a7
    rst $38                                       ; $7bd3: $ff
    ld b, l                                       ; $7bd4: $45
    rst $38                                       ; $7bd5: $ff
    adc e                                         ; $7bd6: $8b
    rst $38                                       ; $7bd7: $ff
    ld [bc], a                                    ; $7bd8: $02
    cp $86                                        ; $7bd9: $fe $86
    ld a, [de]                                    ; $7bdb: $1a
    cp $13                                        ; $7bdc: $fe $13
    rst $38                                       ; $7bde: $ff
    ccf                                           ; $7bdf: $3f
    db $fd                                        ; $7be0: $fd
    ld [bc], a                                    ; $7be1: $02
    inc bc                                        ; $7be2: $03
    add [hl]                                      ; $7be3: $86
    inc b                                         ; $7be4: $04
    rlca                                          ; $7be5: $07
    dec b                                         ; $7be6: $05
    rlca                                          ; $7be7: $07
    ld [bc], a                                    ; $7be8: $02
    inc bc                                        ; $7be9: $03
    ld [bc], a                                    ; $7bea: $02
    ld bc, $0002                                  ; $7beb: $01 $02 $00
    ld b, $01                                     ; $7bee: $06 $01
    adc [hl]                                      ; $7bf0: $8e
    inc bc                                        ; $7bf1: $03
    ld [bc], a                                    ; $7bf2: $02
    add e                                         ; $7bf3: $83
    add d                                         ; $7bf4: $82
    rst $08                                       ; $7bf5: $cf
    ld c, l                                       ; $7bf6: $4d
    rst $38                                       ; $7bf7: $ff
    inc sp                                        ; $7bf8: $33
    cp $c2                                        ; $7bf9: $fe $c2
    db $fc                                        ; $7bfb: $fc
    inc e                                         ; $7bfc: $1c
    db $fc                                        ; $7bfd: $fc
    db $e4                                        ; $7bfe: $e4
    ld [bc], a                                    ; $7bff: $02
    jr c, jr_0ed_7b86                             ; $7c00: $38 $84

    ld b, $3e                                     ; $7c02: $06 $3e
    dec a                                         ; $7c04: $3d
    ccf                                           ; $7c05: $3f
    ld [bc], a                                    ; $7c06: $02
    inc bc                                        ; $7c07: $03
    ld [bc], a                                    ; $7c08: $02
    jr nc, jr_0ed_7b91                            ; $7c09: $30 $86

    ld [$2838], sp                                ; $7c0b: $08 $38 $28
    jr c, @+$1a                                   ; $7c0e: $38 $18

    jr c, jr_0ed_7c15                             ; $7c10: $38 $03

    jr nc, jr_0ed_7b95                            ; $7c12: $30 $81

    db $10                                        ; $7c14: $10

jr_0ed_7c15:
    inc b                                         ; $7c15: $04
    jr nz, jr_0ed_7c22                            ; $7c16: $20 $0a

    nop                                           ; $7c18: $00
    inc c                                         ; $7c19: $0c
    db $10                                        ; $7c1a: $10
    ld [bc], a                                    ; $7c1b: $02
    jr nc, jr_0ed_7ba4                            ; $7c1c: $30 $86

    jr nz, jr_0ed_7c50                            ; $7c1e: $20 $30

    ld d, b                                       ; $7c20: $50
    ld [hl], b                                    ; $7c21: $70

jr_0ed_7c22:
    ld a, [hl]                                    ; $7c22: $7e
    ld l, [hl]                                    ; $7c23: $6e
    ld [bc], a                                    ; $7c24: $02
    jr c, jr_0ed_7c29                             ; $7c25: $38 $02

    ldh a, [$82]                                  ; $7c27: $f0 $82

jr_0ed_7c29:
    cp b                                          ; $7c29: $b8
    ld hl, sp+$02                                 ; $7c2a: $f8 $02
    ld [hl], b                                    ; $7c2c: $70
    inc b                                         ; $7c2d: $04
    nop                                           ; $7c2e: $00
    add h                                         ; $7c2f: $84
    rrca                                          ; $7c30: $0f
    dec c                                         ; $7c31: $0d
    ld c, $06                                     ; $7c32: $0e $06
    ld [bc], a                                    ; $7c34: $02
    ld [$000c], sp                                ; $7c35: $08 $0c $00
    ld [bc], a                                    ; $7c38: $02
    ld h, b                                       ; $7c39: $60
    ld [bc], a                                    ; $7c3a: $02
    ret nz                                        ; $7c3b: $c0

    add h                                         ; $7c3c: $84
    and b                                         ; $7c3d: $a0
    ldh [$dc], a                                  ; $7c3e: $e0 $dc
    db $fc                                        ; $7c40: $fc
    ld [bc], a                                    ; $7c41: $02
    ld a, b                                       ; $7c42: $78
    inc b                                         ; $7c43: $04
    nop                                           ; $7c44: $00
    ld [bc], a                                    ; $7c45: $02
    ld bc, $001c                                  ; $7c46: $01 $1c $00
    rst $38                                       ; $7c49: $ff
    inc de                                        ; $7c4a: $13
    rlca                                          ; $7c4b: $07
    ldh a, [rNR51]                                ; $7c4c: $f0 $25
    db $e3                                        ; $7c4e: $e3
    inc b                                         ; $7c4f: $04

jr_0ed_7c50:
    di                                            ; $7c50: $f3
    ei                                            ; $7c51: $fb
    rst $28                                       ; $7c52: $ef
    inc bc                                        ; $7c53: $03
    rst $38                                       ; $7c54: $ff
    inc bc                                        ; $7c55: $03
    ldh a, [$0b]                                  ; $7c56: $f0 $0b
    ld hl, sp+$13                                 ; $7c58: $f8 $13
    or $1b                                        ; $7c5a: $f6 $1b
    rst $30                                       ; $7c5c: $f7
    inc hl                                        ; $7c5d: $23
    ld [bc], a                                    ; $7c5e: $02
    ld bc, $0294                                  ; $7c5f: $01 $94 $02
    inc bc                                        ; $7c62: $03
    dec b                                         ; $7c63: $05
    rlca                                          ; $7c64: $07
    inc b                                         ; $7c65: $04
    rlca                                          ; $7c66: $07
    dec bc                                        ; $7c67: $0b
    rrca                                          ; $7c68: $0f
    inc c                                         ; $7c69: $0c
    rrca                                          ; $7c6a: $0f
    ld c, $0f                                     ; $7c6b: $0e $0f
    dec de                                        ; $7c6d: $1b
    rra                                           ; $7c6e: $1f
    ld hl, $533f                                  ; $7c6f: $21 $3f $53
    ld a, a                                       ; $7c72: $7f
    ld a, e                                       ; $7c73: $7b
    ld l, a                                       ; $7c74: $6f
    ld [bc], a                                    ; $7c75: $02
    inc a                                         ; $7c76: $3c
    ld [bc], a                                    ; $7c77: $02
    ldh a, [$82]                                  ; $7c78: $f0 $82
    cp b                                          ; $7c7a: $b8
    ld hl, sp+$02                                 ; $7c7b: $f8 $02
    ld [hl], b                                    ; $7c7d: $70
    ld [bc], a                                    ; $7c7e: $02
    nop                                           ; $7c7f: $00
    ld [bc], a                                    ; $7c80: $02
    inc d                                         ; $7c81: $14
    ld [bc], a                                    ; $7c82: $02
    rra                                           ; $7c83: $1f
    sub d                                         ; $7c84: $92
    rst $38                                       ; $7c85: $ff
    di                                            ; $7c86: $f3
    rst $38                                       ; $7c87: $ff
    sbc c                                         ; $7c88: $99
    ld a, a                                       ; $7c89: $7f
    ei                                            ; $7c8a: $fb
    rst $08                                       ; $7c8b: $cf
    db $fc                                        ; $7c8c: $fc
    db $e3                                        ; $7c8d: $e3
    rst $38                                       ; $7c8e: $ff
    rst $18                                       ; $7c8f: $df
    db $fc                                        ; $7c90: $fc
    rra                                           ; $7c91: $1f
    cp $3f                                        ; $7c92: $fe $3f
    db $fd                                        ; $7c94: $fd
    ld [hl], e                                    ; $7c95: $73
    di                                            ; $7c96: $f3
    ld [bc], a                                    ; $7c97: $02
    ldh [$86], a                                  ; $7c98: $e0 $86
    sub b                                         ; $7c9a: $90
    ldh a, [rSVBK]                                ; $7c9b: $f0 $70
    ldh a, [$f8]                                  ; $7c9d: $f0 $f8
    add sp, $02                                   ; $7c9f: $e8 $02
    ld [hl], b                                    ; $7ca1: $70
    add h                                         ; $7ca2: $84
    and b                                         ; $7ca3: $a0
    ldh [$dc], a                                  ; $7ca4: $e0 $dc
    db $fc                                        ; $7ca6: $fc
    ld [bc], a                                    ; $7ca7: $02
    ld a, b                                       ; $7ca8: $78
    ld a, [de]                                    ; $7ca9: $1a
    nop                                           ; $7caa: $00
    ld [bc], a                                    ; $7cab: $02
    add b                                         ; $7cac: $80
    add h                                         ; $7cad: $84
    ret nz                                        ; $7cae: $c0

    ld b, b                                       ; $7caf: $40
    ldh [rNR41], a                                ; $7cb0: $e0 $20
    ld [bc], a                                    ; $7cb2: $02
    ret nz                                        ; $7cb3: $c0

    ld [bc], a                                    ; $7cb4: $02
    add b                                         ; $7cb5: $80
    ld [bc], a                                    ; $7cb6: $02
    ret nz                                        ; $7cb7: $c0

    adc d                                         ; $7cb8: $8a
    ldh [$60], a                                  ; $7cb9: $e0 $60
    db $fc                                        ; $7cbb: $fc
    inc e                                         ; $7cbc: $1c
    rst $38                                       ; $7cbd: $ff
    rst $20                                       ; $7cbe: $e7
    rst $38                                       ; $7cbf: $ff
    and d                                         ; $7cc0: $a2
    rst $38                                       ; $7cc1: $ff
    sbc a                                         ; $7cc2: $9f
    ld [bc], a                                    ; $7cc3: $02
    ld [hl], b                                    ; $7cc4: $70
    ld [$0200], sp                                ; $7cc5: $08 $00 $02
    ret nz                                        ; $7cc8: $c0

    add h                                         ; $7cc9: $84
    rst $38                                       ; $7cca: $ff
    ccf                                           ; $7ccb: $3f
    rst $38                                       ; $7ccc: $ff
    ret nz                                        ; $7ccd: $c0

    ld [bc], a                                    ; $7cce: $02
    ccf                                           ; $7ccf: $3f
    jr jr_0ed_7cd2                                ; $7cd0: $18 $00

jr_0ed_7cd2:
    ld [bc], a                                    ; $7cd2: $02
    rlca                                          ; $7cd3: $07
    adc b                                         ; $7cd4: $88
    ld [$170f], sp                                ; $7cd5: $08 $0f $17
    rra                                           ; $7cd8: $1f
    add sp, -$08                                  ; $7cd9: $e8 $f8
    adc b                                         ; $7cdb: $88
    ld hl, sp+$02                                 ; $7cdc: $f8 $02
    pop af                                        ; $7cde: $f1
    ld [bc], a                                    ; $7cdf: $02
    ld bc, $0012                                  ; $7ce0: $01 $12 $00
    ld [bc], a                                    ; $7ce3: $02
    add b                                         ; $7ce4: $80
    adc b                                         ; $7ce5: $88
    ld b, b                                       ; $7ce6: $40
    ret nz                                        ; $7ce7: $c0

    and b                                         ; $7ce8: $a0
    ldh [$a0], a                                  ; $7ce9: $e0 $a0
    ldh [rLCDC], a                                ; $7ceb: $e0 $40
    ret nz                                        ; $7ced: $c0

    ld [bc], a                                    ; $7cee: $02
    add b                                         ; $7cef: $80
    inc d                                         ; $7cf0: $14
    nop                                           ; $7cf1: $00
    rst $38                                       ; $7cf2: $ff
    rrca                                          ; $7cf3: $0f
    dec b                                         ; $7cf4: $05
    ldh a, [rNR51]                                ; $7cf5: $f0 $25
    db $e3                                        ; $7cf7: $e3
    inc b                                         ; $7cf8: $04
    ldh a, [$fc]                                  ; $7cf9: $f0 $fc
    ldh a, [rDIV]                                 ; $7cfb: $f0 $04
    rst $30                                       ; $7cfd: $f7
    inc c                                         ; $7cfe: $0c
    nop                                           ; $7cff: $00
    ei                                            ; $7d00: $fb
    nop                                           ; $7d01: $00
    ld bc, HeaderLogo                             ; $7d02: $01 $04 $01
    inc bc                                        ; $7d05: $03
    rra                                           ; $7d06: $1f
    adc [hl]                                      ; $7d07: $8e
    ld [de], a                                    ; $7d08: $12
    rrca                                          ; $7d09: $0f
    ld c, $11                                     ; $7d0a: $0e $11
    rra                                           ; $7d0c: $1f
    ld d, $1f                                     ; $7d0d: $16 $1f
    cpl                                           ; $7d0f: $2f
    ccf                                           ; $7d10: $3f
    dec l                                         ; $7d11: $2d
    ccf                                           ; $7d12: $3f
    inc [hl]                                      ; $7d13: $34
    ccf                                           ; $7d14: $3f
    ld a, [hl-]                                   ; $7d15: $3a
    inc bc                                        ; $7d16: $03
    ccf                                           ; $7d17: $3f
    add [hl]                                      ; $7d18: $86
    ld h, e                                       ; $7d19: $63
    ld a, a                                       ; $7d1a: $7f
    di                                            ; $7d1b: $f3
    rst $18                                       ; $7d1c: $df
    ld [hl], h                                    ; $7d1d: $74
    ld e, h                                       ; $7d1e: $5c
    ld [bc], a                                    ; $7d1f: $02
    ld sp, hl                                     ; $7d20: $f9
    ld [bc], a                                    ; $7d21: $02
    db $10                                        ; $7d22: $10
    ld [bc], a                                    ; $7d23: $02
    ret c                                         ; $7d24: $d8

    adc a                                         ; $7d25: $8f
    db $fc                                        ; $7d26: $fc
    ld l, h                                       ; $7d27: $6c
    cp $02                                        ; $7d28: $fe $02
    db $fc                                        ; $7d2a: $fc
    ld a, h                                       ; $7d2b: $7c
    cp $9a                                        ; $7d2c: $fe $9a
    rst $38                                       ; $7d2e: $ff
    db $fd                                        ; $7d2f: $fd
    ld a, a                                       ; $7d30: $7f
    db $fc                                        ; $7d31: $fc
    or a                                          ; $7d32: $b7
    db $f4                                        ; $7d33: $f4
    ld h, e                                       ; $7d34: $63
    ld [bc], a                                    ; $7d35: $02
    db $e3                                        ; $7d36: $e3
    adc e                                         ; $7d37: $8b
    and d                                         ; $7d38: $a2
    rst $38                                       ; $7d39: $ff
    rra                                           ; $7d3a: $1f
    rst $38                                       ; $7d3b: $ff
    pop hl                                        ; $7d3c: $e1
    rst $38                                       ; $7d3d: $ff
    rst $18                                       ; $7d3e: $df
    ldh [$a0], a                                  ; $7d3f: $e0 $a0
    ld c, b                                       ; $7d41: $48
    ret z                                         ; $7d42: $c8

    ld b, $80                                     ; $7d43: $06 $80
    ld [bc], a                                    ; $7d45: $02
    ret nz                                        ; $7d46: $c0

    add h                                         ; $7d47: $84
    ldh [$a0], a                                  ; $7d48: $e0 $a0
    ldh a, [$d0]                                  ; $7d4a: $f0 $d0
    inc b                                         ; $7d4c: $04
    ldh [$8a], a                                  ; $7d4d: $e0 $8a
    ld d, b                                       ; $7d4f: $50
    ld [hl], b                                    ; $7d50: $70
    adc b                                         ; $7d51: $88
    ld hl, sp-$4e                                 ; $7d52: $f8 $b2
    ld a, [c]                                     ; $7d54: $f2
    ld c, l                                       ; $7d55: $4d
    ld a, a                                       ; $7d56: $7f
    ld [hl-], a                                   ; $7d57: $32
    ld a, $02                                     ; $7d58: $3e $02
    inc c                                         ; $7d5a: $0c
    inc b                                         ; $7d5b: $04
    nop                                           ; $7d5c: $00
    add c                                         ; $7d5d: $81
    or b                                          ; $7d5e: $b0
    inc bc                                        ; $7d5f: $03
    ldh a, [rNR32]                                ; $7d60: $f0 $1c
    nop                                           ; $7d62: $00
    add d                                         ; $7d63: $82
    scf                                           ; $7d64: $37
    ccf                                           ; $7d65: $3f
    ld [bc], a                                    ; $7d66: $02
    ld a, $1c                                     ; $7d67: $3e $1c
    nop                                           ; $7d69: $00
    rst $38                                       ; $7d6a: $ff
    ld de, $f006                                  ; $7d6b: $11 $06 $f0
    dec h                                         ; $7d6e: $25
    db $e3                                        ; $7d6f: $e3
    inc b                                         ; $7d70: $04
    ld hl, sp-$0d                                 ; $7d71: $f8 $f3
    ldh a, [$fb]                                  ; $7d73: $f0 $fb
    ldh a, [$03]                                  ; $7d75: $f0 $03
    ld sp, hl                                     ; $7d77: $f9
    dec b                                         ; $7d78: $05
    nop                                           ; $7d79: $00
    ei                                            ; $7d7a: $fb
    nop                                           ; $7d7b: $00
    db $fd                                        ; $7d7c: $fd
    ld [bc], a                                    ; $7d7d: $02
    ld bc, $7f02                                  ; $7d7e: $01 $02 $7f
    add h                                         ; $7d81: $84
    and [hl]                                      ; $7d82: $a6
    rst $38                                       ; $7d83: $ff
    ld e, a                                       ; $7d84: $5f
    ld a, a                                       ; $7d85: $7f
    ld [bc], a                                    ; $7d86: $02
    jr nc, jr_0ed_7d9f                            ; $7d87: $30 $16

    nop                                           ; $7d89: $00
    ld [bc], a                                    ; $7d8a: $02
    ld [bc], a                                    ; $7d8b: $02
    ld [bc], a                                    ; $7d8c: $02
    inc de                                        ; $7d8d: $13
    adc [hl]                                      ; $7d8e: $8e
    ccf                                           ; $7d8f: $3f
    ld l, $1f                                     ; $7d90: $2e $1f
    inc d                                         ; $7d92: $14
    rrca                                          ; $7d93: $0f
    inc c                                         ; $7d94: $0c
    scf                                           ; $7d95: $37
    ld a, $53                                     ; $7d96: $3e $53
    ld a, a                                       ; $7d98: $7f
    pop de                                        ; $7d99: $d1
    rst $38                                       ; $7d9a: $ff
    pop af                                        ; $7d9b: $f1
    cp a                                          ; $7d9c: $bf
    ld [bc], a                                    ; $7d9d: $02
    rst $38                                       ; $7d9e: $ff

jr_0ed_7d9f:
    adc b                                         ; $7d9f: $88
    ld a, a                                       ; $7da0: $7f
    jp nc, $f3ff                                  ; $7da1: $d2 $ff $f3

    xor a                                         ; $7da4: $af
    rst $38                                       ; $7da5: $ff
    ld a, a                                       ; $7da6: $7f
    ld e, a                                       ; $7da7: $5f
    inc b                                         ; $7da8: $04
    ld [hl], b                                    ; $7da9: $70
    ld [bc], a                                    ; $7daa: $02
    db $10                                        ; $7dab: $10
    ld [bc], a                                    ; $7dac: $02
    or b                                          ; $7dad: $b0
    adc b                                         ; $7dae: $88
    ld hl, sp-$28                                 ; $7daf: $f8 $d8
    db $fc                                        ; $7db1: $fc
    inc b                                         ; $7db2: $04
    ld hl, sp+$78                                 ; $7db3: $f8 $78
    ldh a, [$90]                                  ; $7db5: $f0 $90
    ld [bc], a                                    ; $7db7: $02
    ld hl, sp-$78                                 ; $7db8: $f8 $88
    jr @-$06                                      ; $7dba: $18 $f8

jr_0ed_7dbc:
    rra                                           ; $7dbc: $1f
    rst $30                                       ; $7dbd: $f7
    rst $38                                       ; $7dbe: $ff
    db $fc                                        ; $7dbf: $fc
    rst $38                                       ; $7dc0: $ff
    inc b                                         ; $7dc1: $04
    ld [bc], a                                    ; $7dc2: $02
    rst $38                                       ; $7dc3: $ff
    add e                                         ; $7dc4: $83
    or b                                          ; $7dc5: $b0
    ldh a, [rSVBK]                                ; $7dc6: $f0 $70
    ld [bc], a                                    ; $7dc8: $02
    ldh a, [$81]                                  ; $7dc9: $f0 $81
    or b                                          ; $7dcb: $b0
    ld [bc], a                                    ; $7dcc: $02
    call nz, $0202                                ; $7dcd: $c4 $02 $02
    ld [bc], a                                    ; $7dd0: $02
    inc bc                                        ; $7dd1: $03
    ld [bc], a                                    ; $7dd2: $02
    ld [bc], a                                    ; $7dd3: $02
    ld [$0200], sp                                ; $7dd4: $08 $00 $02
    ldh a, [rSC]                                  ; $7dd7: $f0 $02
    ldh [$0e], a                                  ; $7dd9: $e0 $0e
    nop                                           ; $7ddb: $00
    add c                                         ; $7ddc: $81
    or c                                          ; $7ddd: $b1
    inc bc                                        ; $7dde: $03
    pop af                                        ; $7ddf: $f1
    dec e                                         ; $7de0: $1d
    nop                                           ; $7de1: $00
    inc bc                                        ; $7de2: $03
    inc bc                                        ; $7de3: $03
    inc e                                         ; $7de4: $1c
    nop                                           ; $7de5: $00
    rst $38                                       ; $7de6: $ff
    rrca                                          ; $7de7: $0f
    dec b                                         ; $7de8: $05
    ldh a, [rNR51]                                ; $7de9: $f0 $25
    db $e3                                        ; $7deb: $e3
    inc b                                         ; $7dec: $04
    db $ed                                        ; $7ded: $ed
    ldh a, [$ed]                                  ; $7dee: $f0 $ed
    ld hl, sp-$13                                 ; $7df0: $f8 $ed
    db $fd                                        ; $7df2: $fd
    db $fd                                        ; $7df3: $fd
    ei                                            ; $7df4: $fb
    db $fd                                        ; $7df5: $fd
    rst $38                                       ; $7df6: $ff
    ld [bc], a                                    ; $7df7: $02
    inc a                                         ; $7df8: $3c
    sub h                                         ; $7df9: $94
    ld d, b                                       ; $7dfa: $50
    ld [hl], b                                    ; $7dfb: $70
    and b                                         ; $7dfc: $a0
    ldh [$a0], a                                  ; $7dfd: $e0 $a0
    ldh [$bc], a                                  ; $7dff: $e0 $bc
    db $fc                                        ; $7e01: $fc
    ld b, e                                       ; $7e02: $43
    ld a, a                                       ; $7e03: $7f
    ccf                                           ; $7e04: $3f
    ld a, $03                                     ; $7e05: $3e $03
    ld [bc], a                                    ; $7e07: $02
    rlca                                          ; $7e08: $07
    dec b                                         ; $7e09: $05
    rlca                                          ; $7e0a: $07
    inc b                                         ; $7e0b: $04
    rlca                                          ; $7e0c: $07
    inc b                                         ; $7e0d: $04
    ld [bc], a                                    ; $7e0e: $02
    inc bc                                        ; $7e0f: $03
    ld [$0200], sp                                ; $7e10: $08 $00 $02
    ld [$0e02], sp                                ; $7e13: $08 $02 $0e
    sbc h                                         ; $7e16: $9c
    rst $38                                       ; $7e17: $ff
    ld sp, hl                                     ; $7e18: $f9
    rst $38                                       ; $7e19: $ff
    sub h                                         ; $7e1a: $94
    ld a, a                                       ; $7e1b: $7f
    ld [hl], e                                    ; $7e1c: $73
    sbc a                                         ; $7e1d: $9f
    sub a                                         ; $7e1e: $97
    rst $18                                       ; $7e1f: $df
    ld e, d                                       ; $7e20: $5a
    rst $38                                       ; $7e21: $ff
    cp a                                          ; $7e22: $bf
    ld a, [$ffcf]                                 ; $7e23: $fa $cf $ff
    rst $30                                       ; $7e26: $f7
    cp a                                          ; $7e27: $bf
    db $fc                                        ; $7e28: $fc
    rst $28                                       ; $7e29: $ef
    db $fd                                        ; $7e2a: $fd
    scf                                           ; $7e2b: $37
    ccf                                           ; $7e2c: $3f
    cpl                                           ; $7e2d: $2f
    ccf                                           ; $7e2e: $3f
    ld hl, $373f                                  ; $7e2f: $21 $3f $37
    ccf                                           ; $7e32: $3f
    ld [bc], a                                    ; $7e33: $02
    inc b                                         ; $7e34: $04
    ld [bc], a                                    ; $7e35: $02
    jr jr_0ed_7dbc                                ; $7e36: $18 $84

    inc e                                         ; $7e38: $1c
    inc b                                         ; $7e39: $04
    ld e, $02                                     ; $7e3a: $1e $02
    ld [bc], a                                    ; $7e3c: $02
    inc e                                         ; $7e3d: $1c
    add d                                         ; $7e3e: $82
    jr jr_0ed_7e49                                ; $7e3f: $18 $08

    ld [bc], a                                    ; $7e41: $02
    db $10                                        ; $7e42: $10
    ld [bc], a                                    ; $7e43: $02
    inc e                                         ; $7e44: $1c
    add [hl]                                      ; $7e45: $86
    ld b, $1e                                     ; $7e46: $06 $1e
    rrca                                          ; $7e48: $0f

jr_0ed_7e49:
    add hl, de                                    ; $7e49: $19
    rra                                           ; $7e4a: $1f
    ld de, $1e02                                  ; $7e4b: $11 $02 $1e
    adc [hl]                                      ; $7e4e: $8e
    inc e                                         ; $7e4f: $1c
    inc b                                         ; $7e50: $04
    ld e, $1a                                     ; $7e51: $1e $1a
    ld c, $1e                                     ; $7e53: $0e $1e
    ld b, $1e                                     ; $7e55: $06 $1e
    rst $38                                       ; $7e57: $ff
    sbc $b3                                       ; $7e58: $de $b3

jr_0ed_7e5a:
    di                                            ; $7e5a: $f3
    ld a, d                                       ; $7e5b: $7a
    ld a, e                                       ; $7e5c: $7b
    ld [bc], a                                    ; $7e5d: $02
    inc sp                                        ; $7e5e: $33
    jr jr_0ed_7e61                                ; $7e5f: $18 $00

jr_0ed_7e61:
    ld [bc], a                                    ; $7e61: $02
    ld [$0002], sp                                ; $7e62: $08 $02 $00
    ld [bc], a                                    ; $7e65: $02
    add hl, bc                                    ; $7e66: $09
    add d                                         ; $7e67: $82
    rlca                                          ; $7e68: $07
    rrca                                          ; $7e69: $0f
    ld [bc], a                                    ; $7e6a: $02
    ld c, $16                                     ; $7e6b: $0e $16
    nop                                           ; $7e6d: $00
    rst $38                                       ; $7e6e: $ff
    dec c                                         ; $7e6f: $0d
    inc b                                         ; $7e70: $04
    ldh a, [rNR51]                                ; $7e71: $f0 $25
    db $e3                                        ; $7e73: $e3
    inc b                                         ; $7e74: $04
    db $ed                                        ; $7e75: $ed
    push af                                       ; $7e76: $f5
    db $ed                                        ; $7e77: $ed
    db $fd                                        ; $7e78: $fd
    rst $30                                       ; $7e79: $f7
    cp $fd                                        ; $7e7a: $fe $fd
    or $02                                        ; $7e7c: $f6 $02
    inc a                                         ; $7e7e: $3c
    sub [hl]                                      ; $7e7f: $96
    ld d, b                                       ; $7e80: $50
    ld [hl], b                                    ; $7e81: $70
    xor a                                         ; $7e82: $af
    rst $28                                       ; $7e83: $ef
    xor a                                         ; $7e84: $af
    jp hl                                         ; $7e85: $e9


    sub a                                         ; $7e86: $97
    rst $30                                       ; $7e87: $f7
    ld c, l                                       ; $7e88: $4d
    ld a, l                                       ; $7e89: $7d
    scf                                           ; $7e8a: $37
    ccf                                           ; $7e8b: $3f
    rrca                                          ; $7e8c: $0f
    inc c                                         ; $7e8d: $0c
    rra                                           ; $7e8e: $1f
    inc e                                         ; $7e8f: $1c
    ccf                                           ; $7e90: $3f
    inc hl                                        ; $7e91: $23
    ccf                                           ; $7e92: $3f
    daa                                           ; $7e93: $27
    ld e, $1f                                     ; $7e94: $1e $1f
    ld [bc], a                                    ; $7e96: $02
    rlca                                          ; $7e97: $07
    add [hl]                                      ; $7e98: $86
    inc b                                         ; $7e99: $04
    rlca                                          ; $7e9a: $07
    ld [$0a0f], sp                                ; $7e9b: $08 $0f $0a
    rrca                                          ; $7e9e: $0f
    ld [bc], a                                    ; $7e9f: $02
    add d                                         ; $7ea0: $82
    ld [bc], a                                    ; $7ea1: $02
    db $ec                                        ; $7ea2: $ec
    adc d                                         ; $7ea3: $8a
    cp $92                                        ; $7ea4: $fe $92
    rst $38                                       ; $7ea6: $ff
    ld b, c                                       ; $7ea7: $41
    cp $3e                                        ; $7ea8: $fe $3e
    db $fc                                        ; $7eaa: $fc
    ld [hl], h                                    ; $7eab: $74
    db $fc                                        ; $7eac: $fc
    xor h                                         ; $7ead: $ac
    ld [bc], a                                    ; $7eae: $02
    cp $90                                        ; $7eaf: $fe $90
    or [hl]                                       ; $7eb1: $b6
    cp $d3                                        ; $7eb2: $fe $d3
    ld a, a                                       ; $7eb4: $7f
    rst $30                                       ; $7eb5: $f7
    cp h                                          ; $7eb6: $bc
    rst $38                                       ; $7eb7: $ff
    ret z                                         ; $7eb8: $c8

    rst $38                                       ; $7eb9: $ff
    rst $08                                       ; $7eba: $cf
    db $fc                                        ; $7ebb: $fc
    db $f4                                        ; $7ebc: $f4
    ld e, [hl]                                    ; $7ebd: $5e
    ld a, [$fdef]                                 ; $7ebe: $fa $ef $fd
    inc b                                         ; $7ec1: $04
    ld bc, $0008                                  ; $7ec2: $01 $08 $00
    add [hl]                                      ; $7ec5: $86
    ld a, $36                                     ; $7ec6: $3e $36
    add hl, hl                                    ; $7ec8: $29
    add hl, sp                                    ; $7ec9: $39
    scf                                           ; $7eca: $37
    ccf                                           ; $7ecb: $3f
    ld [bc], a                                    ; $7ecc: $02
    ld c, $0c                                     ; $7ecd: $0e $0c
    nop                                           ; $7ecf: $00
    add d                                         ; $7ed0: $82
    rra                                           ; $7ed1: $1f
    dec de                                        ; $7ed2: $1b
    ld [bc], a                                    ; $7ed3: $02
    inc c                                         ; $7ed4: $0c
    ld [bc], a                                    ; $7ed5: $02
    jr jr_0ed_7e5a                                ; $7ed6: $18 $82

    inc l                                         ; $7ed8: $2c
    inc a                                         ; $7ed9: $3c
    ld [bc], a                                    ; $7eda: $02
    jr c, jr_0ed_7ef3                             ; $7edb: $38 $16

    nop                                           ; $7edd: $00
    rst $38                                       ; $7ede: $ff
    rrca                                          ; $7edf: $0f
    dec b                                         ; $7ee0: $05
    ldh a, [rNR51]                                ; $7ee1: $f0 $25
    db $e3                                        ; $7ee3: $e3
    inc b                                         ; $7ee4: $04
    rst $28                                       ; $7ee5: $ef
    ld a, [c]                                     ; $7ee6: $f2
    rst $28                                       ; $7ee7: $ef
    ld a, [$fdef]                                 ; $7ee8: $fa $ef $fd
    rst $38                                       ; $7eeb: $ff
    rst $30                                       ; $7eec: $f7
    rst $38                                       ; $7eed: $ff
    db $fd                                        ; $7eee: $fd
    ld [bc], a                                    ; $7eef: $02
    inc a                                         ; $7ef0: $3c
    sub h                                         ; $7ef1: $94
    ld d, b                                       ; $7ef2: $50

jr_0ed_7ef3:
    ld [hl], b                                    ; $7ef3: $70
    and c                                         ; $7ef4: $a1
    pop hl                                        ; $7ef5: $e1
    and b                                         ; $7ef6: $a0
    ldh [$bc], a                                  ; $7ef7: $e0 $bc
    db $fc                                        ; $7ef9: $fc
    ld b, e                                       ; $7efa: $43
    ld a, a                                       ; $7efb: $7f
    dec a                                         ; $7efc: $3d
    ccf                                           ; $7efd: $3f
    inc bc                                        ; $7efe: $03
    ld [bc], a                                    ; $7eff: $02
    rrca                                          ; $7f00: $0f
    inc c                                         ; $7f01: $0c

Call_0ed_7f02:
Jump_0ed_7f02:
    rra                                           ; $7f02: $1f
    ld de, $131f                                  ; $7f03: $11 $1f $13
    ld [bc], a                                    ; $7f06: $02
    rrca                                          ; $7f07: $0f
    add e                                         ; $7f08: $83
    ld [bc], a                                    ; $7f09: $02
    inc bc                                        ; $7f0a: $03
    dec b                                         ; $7f0b: $05
    ld [bc], a                                    ; $7f0c: $02
    rlca                                          ; $7f0d: $07
    add c                                         ; $7f0e: $81
    ld b, $02                                     ; $7f0f: $06 $02
    inc bc                                        ; $7f11: $03
    ld [bc], a                                    ; $7f12: $02
    jr nz, jr_0ed_7f17                            ; $7f13: $20 $02

    sbc l                                         ; $7f15: $9d
    adc b                                         ; $7f16: $88

jr_0ed_7f17:
    rst $38                                       ; $7f17: $ff
    halt                                          ; $7f18: $76
    rst $38                                       ; $7f19: $ff
    and b                                         ; $7f1a: $a0
    ld a, a                                       ; $7f1b: $7f
    ld h, e                                       ; $7f1c: $63
    ccf                                           ; $7f1d: $3f
    inc [hl]                                      ; $7f1e: $34
    ld [bc], a                                    ; $7f1f: $02
    rst $38                                       ; $7f20: $ff
    sub d                                         ; $7f21: $92
    db $db                                        ; $7f22: $db
    ld a, a                                       ; $7f23: $7f
    add sp, $7f                                   ; $7f24: $e8 $7f
    ld sp, hl                                     ; $7f26: $f9
    sbc a                                         ; $7f27: $9f
    ld a, a                                       ; $7f28: $7f
    xor $ff                                       ; $7f29: $ee $ff
    pop af                                        ; $7f2b: $f1
    ld a, a                                       ; $7f2c: $7f
    ld sp, hl                                     ; $7f2d: $f9
    ccf                                           ; $7f2e: $3f
    cp $bb                                        ; $7f2f: $fe $bb
    rst $38                                       ; $7f31: $ff
    rst $08                                       ; $7f32: $cf
    call Call_000_0404                            ; $7f33: $cd $04 $04
    ld [bc], a                                    ; $7f36: $02
    ld b, $82                                     ; $7f37: $06 $82
    rlca                                          ; $7f39: $07
    ld bc, $0602                                  ; $7f3a: $01 $02 $06
    ld [bc], a                                    ; $7f3d: $02
    inc b                                         ; $7f3e: $04
    ld [bc], a                                    ; $7f3f: $02
    ld b, $02                                     ; $7f40: $06 $02
    nop                                           ; $7f42: $00
    ld [bc], a                                    ; $7f43: $02
    inc b                                         ; $7f44: $04
    add [hl]                                      ; $7f45: $86
    ld b, $02                                     ; $7f46: $06 $02
    rlca                                          ; $7f48: $07
    ld bc, $0206                                  ; $7f49: $01 $06 $02
    ld [bc], a                                    ; $7f4c: $02
    inc b                                         ; $7f4d: $04
    ld [bc], a                                    ; $7f4e: $02
    ld b, $82                                     ; $7f4f: $06 $82
    rlca                                          ; $7f51: $07
    ld bc, $0602                                  ; $7f52: $01 $02 $06
    ld [bc], a                                    ; $7f55: $02
    ld [hl], b                                    ; $7f56: $70
    add c                                         ; $7f57: $81
    or c                                          ; $7f58: $b1
    inc bc                                        ; $7f59: $03
    pop af                                        ; $7f5a: $f1
    ld a, [de]                                    ; $7f5b: $1a
    nop                                           ; $7f5c: $00
    ld [bc], a                                    ; $7f5d: $02
    ld sp, $0f82                                  ; $7f5e: $31 $82 $0f
    ccf                                           ; $7f61: $3f
    ld [bc], a                                    ; $7f62: $02
    ld a, $1a                                     ; $7f63: $3e $1a
    nop                                           ; $7f65: $00
    rst $38                                       ; $7f66: $ff
    rrca                                          ; $7f67: $0f
    dec b                                         ; $7f68: $05
    ldh a, [rNR51]                                ; $7f69: $f0 $25
    db $e3                                        ; $7f6b: $e3
    inc b                                         ; $7f6c: $04
    db $ed                                        ; $7f6d: $ed
    or $ee                                        ; $7f6e: $f6 $ee
    cp $f0                                        ; $7f70: $fe $f0
    nop                                           ; $7f72: $00
    db $fd                                        ; $7f73: $fd
    or $fd                                        ; $7f74: $f6 $fd
    db $fd                                        ; $7f76: $fd
    ld [bc], a                                    ; $7f77: $02
    inc a                                         ; $7f78: $3c
    sub [hl]                                      ; $7f79: $96
    ld d, b                                       ; $7f7a: $50
    ld [hl], b                                    ; $7f7b: $70
    and c                                         ; $7f7c: $a1
    pop hl                                        ; $7f7d: $e1
    and e                                         ; $7f7e: $a3
    ld [c], a                                     ; $7f7f: $e2
    sbc l                                         ; $7f80: $9d
    db $fd                                        ; $7f81: $fd
    ld b, d                                       ; $7f82: $42
    ld a, [hl]                                    ; $7f83: $7e
    dec sp                                        ; $7f84: $3b
    ccf                                           ; $7f85: $3f
    rlca                                          ; $7f86: $07
    inc b                                         ; $7f87: $04
    rra                                           ; $7f88: $1f
    inc e                                         ; $7f89: $1c
    ccf                                           ; $7f8a: $3f
    inc hl                                        ; $7f8b: $23
    ccf                                           ; $7f8c: $3f
    daa                                           ; $7f8d: $27
    ld e, $1f                                     ; $7f8e: $1e $1f
    ld [bc], a                                    ; $7f90: $02
    rlca                                          ; $7f91: $07
    add [hl]                                      ; $7f92: $86
    inc c                                         ; $7f93: $0c
    rrca                                          ; $7f94: $0f
    ld [$1e0f], sp                                ; $7f95: $08 $0f $1e
    rra                                           ; $7f98: $1f
    ld [bc], a                                    ; $7f99: $02
    ld b, c                                       ; $7f9a: $41
    ld [bc], a                                    ; $7f9b: $02
    dec sp                                        ; $7f9c: $3b
    adc b                                         ; $7f9d: $88
    rst $38                                       ; $7f9e: $ff
    db $ed                                        ; $7f9f: $ed
    rst $38                                       ; $7fa0: $ff
    ld b, b                                       ; $7fa1: $40
    rst $38                                       ; $7fa2: $ff
    rst $00                                       ; $7fa3: $c7
    ld a, a                                       ; $7fa4: $7f
    ld l, c                                       ; $7fa5: $69
    ld [bc], a                                    ; $7fa6: $02
    rst $38                                       ; $7fa7: $ff
    sub d                                         ; $7fa8: $92
    or [hl]                                       ; $7fa9: $b6
    cp $d3                                        ; $7faa: $fe $d3
    ld a, a                                       ; $7fac: $7f
    rst $30                                       ; $7fad: $f7
    cp h                                          ; $7fae: $bc
    rst $38                                       ; $7faf: $ff
    ret z                                         ; $7fb0: $c8

    rst $38                                       ; $7fb1: $ff
    rst $08                                       ; $7fb2: $cf
    db $fc                                        ; $7fb3: $fc
    db $f4                                        ; $7fb4: $f4
    ld e, [hl]                                    ; $7fb5: $5e
    ld a, [$fdef]                                 ; $7fb6: $fa $ef $fd
    rra                                           ; $7fb9: $1f
    dec de                                        ; $7fba: $1b
    ld [bc], a                                    ; $7fbb: $02
    ld [bc], a                                    ; $7fbc: $02
    add d                                         ; $7fbd: $82
    inc bc                                        ; $7fbe: $03
    ld bc, $0202                                  ; $7fbf: $01 $02 $02
    ld [bc], a                                    ; $7fc2: $02
    nop                                           ; $7fc3: $00
    ld [bc], a                                    ; $7fc4: $02
    ld [bc], a                                    ; $7fc5: $02
    inc b                                         ; $7fc6: $04
    nop                                           ; $7fc7: $00
    inc b                                         ; $7fc8: $04
    ld [bc], a                                    ; $7fc9: $02
    ld [$0200], sp                                ; $7fca: $08 $00 $02
    ld bc, $3702                                  ; $7fcd: $01 $02 $37
    add h                                         ; $7fd0: $84
    ld c, [hl]                                    ; $7fd1: $4e
    ld a, [hl]                                    ; $7fd2: $7e
    rrca                                          ; $7fd3: $0f
    dec bc                                        ; $7fd4: $0b
    ld [bc], a                                    ; $7fd5: $02
    inc c                                         ; $7fd6: $0c
    add d                                         ; $7fd7: $82
    inc d                                         ; $7fd8: $14
    inc e                                         ; $7fd9: $1c
    ld [bc], a                                    ; $7fda: $02
    ld e, $02                                     ; $7fdb: $1e $02
    inc e                                         ; $7fdd: $1c
    inc e                                         ; $7fde: $1c
    nop                                           ; $7fdf: $00
    ld [bc], a                                    ; $7fe0: $02
    rrca                                          ; $7fe1: $0f
    jr jr_0ed_7fe4                                ; $7fe2: $18 $00

jr_0ed_7fe4:
    rst $38                                       ; $7fe4: $ff
    rlca                                          ; $7fe5: $07
    ld bc, $01fb                                  ; $7fe6: $01 $fb $01
    db $fd                                        ; $7fe9: $fd
    inc bc                                        ; $7fea: $03
    rst $38                                       ; $7feb: $ff
    ld a, [$0486]                                 ; $7fec: $fa $86 $04
    ld a, [bc]                                    ; $7fef: $0a
    ld b, d                                       ; $7ff0: $42
    ld a, l                                       ; $7ff1: $7d
    inc d                                         ; $7ff2: $14
    ld d, $1a                                     ; $7ff3: $16 $1a
    nop                                           ; $7ff5: $00
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
