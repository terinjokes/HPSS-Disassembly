; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

    ld a, e                                       ; $4000: $7b
    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, @+$3b                                   ; $4008: $38 $39

    jr nc, jr_07b_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    ld e, $00                                     ; $4010: $1e $00
    ld de, $0000                                  ; $4012: $11 $00 $00
    scf                                           ; $4015: $37
    pop de                                        ; $4016: $d1
    pop de                                        ; $4017: $d1
    pop de                                        ; $4018: $d1
    pop de                                        ; $4019: $d1
    pop de                                        ; $401a: $d1
    pop de                                        ; $401b: $d1
    pop de                                        ; $401c: $d1
    pop de                                        ; $401d: $d1
    pop de                                        ; $401e: $d1
    pop de                                        ; $401f: $d1
    pop de                                        ; $4020: $d1
    pop de                                        ; $4021: $d1
    pop de                                        ; $4022: $d1
    pop de                                        ; $4023: $d1
    pop de                                        ; $4024: $d1
    jp nc, Jump_000_0404                          ; $4025: $d2 $04 $04

    inc b                                         ; $4028: $04
    inc b                                         ; $4029: $04
    inc b                                         ; $402a: $04
    inc b                                         ; $402b: $04
    inc b                                         ; $402c: $04
    inc b                                         ; $402d: $04
    inc b                                         ; $402e: $04
    inc b                                         ; $402f: $04
    inc b                                         ; $4030: $04
    inc b                                         ; $4031: $04
    inc b                                         ; $4032: $04
    inc b                                         ; $4033: $04
    inc b                                         ; $4034: $04
    inc h                                         ; $4035: $24
    pop de                                        ; $4036: $d1
    pop de                                        ; $4037: $d1
    pop de                                        ; $4038: $d1
    pop de                                        ; $4039: $d1
    pop de                                        ; $403a: $d1
    pop de                                        ; $403b: $d1
    pop de                                        ; $403c: $d1

jr_07b_403d:
    db $d3                                        ; $403d: $d3
    db $d3                                        ; $403e: $d3
    call nc, $d6d5                                ; $403f: $d4 $d5 $d6
    sub $d7                                       ; $4042: $d6 $d7
    ret c                                         ; $4044: $d8

    reti                                          ; $4045: $d9


    inc b                                         ; $4046: $04
    inc b                                         ; $4047: $04
    inc b                                         ; $4048: $04
    inc b                                         ; $4049: $04
    inc b                                         ; $404a: $04
    inc b                                         ; $404b: $04
    inc b                                         ; $404c: $04
    inc b                                         ; $404d: $04
    inc b                                         ; $404e: $04
    ld b, $04                                     ; $404f: $06 $04
    rlca                                          ; $4051: $07
    inc b                                         ; $4052: $04
    inc b                                         ; $4053: $04
    ld b, $04                                     ; $4054: $06 $04
    pop de                                        ; $4056: $d1
    pop de                                        ; $4057: $d1
    jp c, $d4db                                   ; $4058: $da $db $d4

    push de                                       ; $405b: $d5
    call c, $d7dd                                 ; $405c: $dc $dd $d7
    ret c                                         ; $405f: $d8

    sbc $df                                       ; $4060: $de $df
    ldh [$e1], a                                  ; $4062: $e0 $e1
    ld [c], a                                     ; $4064: $e2
    db $e3                                        ; $4065: $e3
    inc b                                         ; $4066: $04
    inc b                                         ; $4067: $04
    ld b, $04                                     ; $4068: $06 $04
    inc b                                         ; $406a: $04
    ld b, $04                                     ; $406b: $06 $04
    ld b, $04                                     ; $406d: $06 $04
    ld b, $04                                     ; $406f: $06 $04
    rlca                                          ; $4071: $07
    ld b, $06                                     ; $4072: $06 $06
    inc b                                         ; $4074: $04
    inc b                                         ; $4075: $04
    db $d3                                        ; $4076: $d3
    db $e4                                        ; $4077: $e4
    push hl                                       ; $4078: $e5
    and $d6                                       ; $4079: $e6 $d6
    rst $20                                       ; $407b: $e7
    add sp, -$17                                  ; $407c: $e8 $e9
    reti                                          ; $407e: $d9


    ld [$eceb], a                                 ; $407f: $ea $eb $ec
    db $ed                                        ; $4082: $ed
    xor $ef                                       ; $4083: $ee $ef
    ldh a, [rDIV]                                 ; $4085: $f0 $04
    inc b                                         ; $4087: $04
    inc b                                         ; $4088: $04
    inc b                                         ; $4089: $04
    inc b                                         ; $408a: $04
    inc b                                         ; $408b: $04
    inc b                                         ; $408c: $04
    ld b, $04                                     ; $408d: $06 $04
    inc b                                         ; $408f: $04
    inc b                                         ; $4090: $04
    ld b, $04                                     ; $4091: $06 $04
    inc b                                         ; $4093: $04
    inc b                                         ; $4094: $04
    ld b, $d1                                     ; $4095: $06 $d1
    pop de                                        ; $4097: $d1
    pop de                                        ; $4098: $d1
    pop af                                        ; $4099: $f1
    pop de                                        ; $409a: $d1
    pop de                                        ; $409b: $d1
    pop de                                        ; $409c: $d1
    ld a, [c]                                     ; $409d: $f2
    pop de                                        ; $409e: $d1
    pop de                                        ; $409f: $d1
    pop de                                        ; $40a0: $d1
    di                                            ; $40a1: $f3
    pop de                                        ; $40a2: $d1
    pop de                                        ; $40a3: $d1
    pop de                                        ; $40a4: $d1
    db $f4                                        ; $40a5: $f4
    inc b                                         ; $40a6: $04
    inc b                                         ; $40a7: $04
    inc b                                         ; $40a8: $04
    inc h                                         ; $40a9: $24
    inc b                                         ; $40aa: $04
    inc b                                         ; $40ab: $04
    inc b                                         ; $40ac: $04
    ld h, $04                                     ; $40ad: $26 $04
    inc b                                         ; $40af: $04
    inc b                                         ; $40b0: $04
    inc h                                         ; $40b1: $24
    inc b                                         ; $40b2: $04
    inc b                                         ; $40b3: $04
    inc b                                         ; $40b4: $04
    ld b, $d9                                     ; $40b5: $06 $d9
    ldh [$e1], a                                  ; $40b7: $e0 $e1
    db $ed                                        ; $40b9: $ed
    db $ed                                        ; $40ba: $ed
    push af                                       ; $40bb: $f5
    or $f7                                        ; $40bc: $f6 $f7
    rst $30                                       ; $40be: $f7
    ld hl, sp-$07                                 ; $40bf: $f8 $f9
    ld a, [$fbfa]                                 ; $40c1: $fa $fa $fb
    db $fc                                        ; $40c4: $fc
    db $fd                                        ; $40c5: $fd
    ld b, $06                                     ; $40c6: $06 $06
    inc b                                         ; $40c8: $04
    ld b, $07                                     ; $40c9: $06 $07
    inc b                                         ; $40cb: $04
    inc b                                         ; $40cc: $04
    rlca                                          ; $40cd: $07
    rlca                                          ; $40ce: $07
    ld b, $04                                     ; $40cf: $06 $04
    inc b                                         ; $40d1: $04
    inc b                                         ; $40d2: $04
    inc b                                         ; $40d3: $04
    inc b                                         ; $40d4: $04
    dec b                                         ; $40d5: $05
    push af                                       ; $40d6: $f5
    or $fe                                        ; $40d7: $f6 $fe
    rst $38                                       ; $40d9: $ff
    ld hl, sp-$07                                 ; $40da: $f8 $f9
    nop                                           ; $40dc: $00
    ld bc, $fcfb                                  ; $40dd: $01 $fb $fc
    ld [bc], a                                    ; $40e0: $02
    inc bc                                        ; $40e1: $03
    inc b                                         ; $40e2: $04
    dec b                                         ; $40e3: $05
    ld b, $07                                     ; $40e4: $06 $07
    inc b                                         ; $40e6: $04
    ld b, $04                                     ; $40e7: $06 $04
    rlca                                          ; $40e9: $07
    inc b                                         ; $40ea: $04
    ld b, $04                                     ; $40eb: $06 $04
    ld b, $06                                     ; $40ed: $06 $06
    ld b, $05                                     ; $40ef: $06 $05
    dec b                                         ; $40f1: $05
    dec b                                         ; $40f2: $05
    ld [bc], a                                    ; $40f3: $02
    ld [bc], a                                    ; $40f4: $02
    dec b                                         ; $40f5: $05
    rst $30                                       ; $40f6: $f7
    ld [$0a09], sp                                ; $40f7: $08 $09 $0a
    ld a, [$0c0b]                                 ; $40fa: $fa $0b $0c
    dec c                                         ; $40fd: $0d
    ld c, $0f                                     ; $40fe: $0e $0f
    db $10                                        ; $4100: $10
    ld de, $1312                                  ; $4101: $11 $12 $13
    inc d                                         ; $4104: $14
    dec d                                         ; $4105: $15
    inc b                                         ; $4106: $04
    inc b                                         ; $4107: $04
    ld b, $06                                     ; $4108: $06 $06
    inc b                                         ; $410a: $04
    rlca                                          ; $410b: $07
    inc b                                         ; $410c: $04
    inc b                                         ; $410d: $04
    dec b                                         ; $410e: $05
    dec b                                         ; $410f: $05
    dec b                                         ; $4110: $05
    dec b                                         ; $4111: $05
    dec b                                         ; $4112: $05
    dec b                                         ; $4113: $05
    dec b                                         ; $4114: $05
    dec b                                         ; $4115: $05
    pop de                                        ; $4116: $d1
    pop de                                        ; $4117: $d1
    pop de                                        ; $4118: $d1
    ld d, $d1                                     ; $4119: $16 $d1
    pop de                                        ; $411b: $d1
    pop de                                        ; $411c: $d1
    jp nc, $d1d1                                  ; $411d: $d2 $d1 $d1

    pop de                                        ; $4120: $d1
    pop af                                        ; $4121: $f1
    pop de                                        ; $4122: $d1
    pop de                                        ; $4123: $d1
    pop de                                        ; $4124: $d1
    ld a, [c]                                     ; $4125: $f2
    inc b                                         ; $4126: $04
    inc b                                         ; $4127: $04
    add h                                         ; $4128: $84
    add a                                         ; $4129: $87
    inc b                                         ; $412a: $04
    inc b                                         ; $412b: $04
    add h                                         ; $412c: $84
    and h                                         ; $412d: $a4
    inc b                                         ; $412e: $04
    inc b                                         ; $412f: $04
    add h                                         ; $4130: $84
    and [hl]                                      ; $4131: $a6
    inc b                                         ; $4132: $04
    inc b                                         ; $4133: $04
    add h                                         ; $4134: $84
    and h                                         ; $4135: $a4
    rla                                           ; $4136: $17
    jr jr_07b_4152                                ; $4137: $18 $19

    ld a, [de]                                    ; $4139: $1a
    dec de                                        ; $413a: $1b
    inc e                                         ; $413b: $1c
    dec e                                         ; $413c: $1d
    ld e, $1f                                     ; $413d: $1e $1f
    jr nz, @+$23                                  ; $413f: $20 $21

    ld [hl+], a                                   ; $4141: $22
    inc hl                                        ; $4142: $23
    inc h                                         ; $4143: $24
    dec h                                         ; $4144: $25
    ld h, $05                                     ; $4145: $26 $05
    dec b                                         ; $4147: $05
    ld [bc], a                                    ; $4148: $02
    ld [bc], a                                    ; $4149: $02
    ld [bc], a                                    ; $414a: $02
    ld [bc], a                                    ; $414b: $02
    ld [bc], a                                    ; $414c: $02
    ld [bc], a                                    ; $414d: $02
    ld [bc], a                                    ; $414e: $02
    ld [bc], a                                    ; $414f: $02
    ld [bc], a                                    ; $4150: $02
    ld [bc], a                                    ; $4151: $02

jr_07b_4152:
    ld [bc], a                                    ; $4152: $02
    ld [bc], a                                    ; $4153: $02
    ld [bc], a                                    ; $4154: $02
    ld [bc], a                                    ; $4155: $02
    daa                                           ; $4156: $27
    jr z, jr_07b_4170                             ; $4157: $28 $17

    jr @+$2b                                      ; $4159: $18 $29

    ld a, [hl+]                                   ; $415b: $2a
    dec de                                        ; $415c: $1b
    inc e                                         ; $415d: $1c
    dec hl                                        ; $415e: $2b
    inc l                                         ; $415f: $2c
    dec l                                         ; $4160: $2d
    jr nz, jr_07b_4191                            ; $4161: $20 $2e

    cpl                                           ; $4163: $2f
    inc hl                                        ; $4164: $23
    inc h                                         ; $4165: $24
    ld [bc], a                                    ; $4166: $02
    ld [bc], a                                    ; $4167: $02
    ld [bc], a                                    ; $4168: $02
    ld [bc], a                                    ; $4169: $02
    ld [bc], a                                    ; $416a: $02
    ld [bc], a                                    ; $416b: $02
    ld [bc], a                                    ; $416c: $02
    dec b                                         ; $416d: $05
    ld [bc], a                                    ; $416e: $02
    ld [bc], a                                    ; $416f: $02

jr_07b_4170:
    ld [bc], a                                    ; $4170: $02
    ld [bc], a                                    ; $4171: $02
    ld [bc], a                                    ; $4172: $02
    ld [bc], a                                    ; $4173: $02
    ld [bc], a                                    ; $4174: $02
    ld [bc], a                                    ; $4175: $02
    jr nc, jr_07b_41a9                            ; $4176: $30 $31

    daa                                           ; $4178: $27
    jr z, jr_07b_4198                             ; $4179: $28 $1d

    ld e, $29                                     ; $417b: $1e $29
    ld [hl-], a                                   ; $417d: $32
    ld hl, $3322                                  ; $417e: $21 $22 $33
    inc [hl]                                      ; $4181: $34
    dec h                                         ; $4182: $25
    ld h, $2e                                     ; $4183: $26 $2e
    cpl                                           ; $4185: $2f
    dec b                                         ; $4186: $05
    dec b                                         ; $4187: $05
    dec b                                         ; $4188: $05
    dec b                                         ; $4189: $05
    ld [bc], a                                    ; $418a: $02
    dec b                                         ; $418b: $05
    dec b                                         ; $418c: $05
    dec b                                         ; $418d: $05
    dec b                                         ; $418e: $05
    ld [bc], a                                    ; $418f: $02
    dec b                                         ; $4190: $05

jr_07b_4191:
    dec b                                         ; $4191: $05
    ld [bc], a                                    ; $4192: $02
    dec b                                         ; $4193: $05
    ld [bc], a                                    ; $4194: $02
    dec b                                         ; $4195: $05
    pop de                                        ; $4196: $d1
    pop de                                        ; $4197: $d1

jr_07b_4198:
    pop de                                        ; $4198: $d1
    di                                            ; $4199: $f3
    pop de                                        ; $419a: $d1
    pop de                                        ; $419b: $d1
    pop de                                        ; $419c: $d1
    db $f4                                        ; $419d: $f4
    pop de                                        ; $419e: $d1
    pop de                                        ; $419f: $d1
    pop de                                        ; $41a0: $d1
    ld d, $d1                                     ; $41a1: $16 $d1
    pop de                                        ; $41a3: $d1
    pop de                                        ; $41a4: $d1
    jp nc, Jump_000_0404                          ; $41a5: $d2 $04 $04

    add h                                         ; $41a8: $84

jr_07b_41a9:
    and a                                         ; $41a9: $a7
    inc b                                         ; $41aa: $04
    inc b                                         ; $41ab: $04
    add h                                         ; $41ac: $84
    add [hl]                                      ; $41ad: $86
    inc b                                         ; $41ae: $04
    inc b                                         ; $41af: $04
    add h                                         ; $41b0: $84
    add h                                         ; $41b1: $84
    inc b                                         ; $41b2: $04
    inc b                                         ; $41b3: $04
    add h                                         ; $41b4: $84
    and [hl]                                      ; $41b5: $a6
    ld [bc], a                                    ; $41b6: $02
    inc bc                                        ; $41b7: $03
    ld c, $35                                     ; $41b8: $0e $35
    ld [hl], $37                                  ; $41ba: $36 $37
    jr c, @-$01                                   ; $41bc: $38 $fd

    inc de                                        ; $41be: $13
    inc d                                         ; $41bf: $14
    add hl, sp                                    ; $41c0: $39
    ld a, [de]                                    ; $41c1: $1a
    ld a, [hl-]                                   ; $41c2: $3a
    dec sp                                        ; $41c3: $3b
    dec e                                         ; $41c4: $1d
    ld e, $02                                     ; $41c5: $1e $02
    ld [bc], a                                    ; $41c7: $02
    ld [bc], a                                    ; $41c8: $02
    ld [bc], a                                    ; $41c9: $02
    ld [bc], a                                    ; $41ca: $02
    ld [bc], a                                    ; $41cb: $02
    ld [bc], a                                    ; $41cc: $02
    ld [bc], a                                    ; $41cd: $02
    ld [bc], a                                    ; $41ce: $02
    ld [bc], a                                    ; $41cf: $02
    ld [bc], a                                    ; $41d0: $02
    dec b                                         ; $41d1: $05
    dec b                                         ; $41d2: $05
    ld [bc], a                                    ; $41d3: $02
    dec b                                         ; $41d4: $05
    ld [bc], a                                    ; $41d5: $02
    inc a                                         ; $41d6: $3c
    ld de, $3e3d                                  ; $41d7: $11 $3d $3e
    inc b                                         ; $41da: $04
    dec d                                         ; $41db: $15
    ccf                                           ; $41dc: $3f
    ld b, b                                       ; $41dd: $40
    ld b, c                                       ; $41de: $41
    ld b, d                                       ; $41df: $42
    ld b, c                                       ; $41e0: $41
    ld b, e                                       ; $41e1: $43
    pop af                                        ; $41e2: $f1
    pop de                                        ; $41e3: $d1
    ld b, d                                       ; $41e4: $42
    ld b, h                                       ; $41e5: $44
    ld [bc], a                                    ; $41e6: $02
    ld [bc], a                                    ; $41e7: $02
    ld [bc], a                                    ; $41e8: $02
    ld [bc], a                                    ; $41e9: $02
    ld [bc], a                                    ; $41ea: $02
    ld [bc], a                                    ; $41eb: $02
    ld [bc], a                                    ; $41ec: $02
    ld [bc], a                                    ; $41ed: $02
    add h                                         ; $41ee: $84
    add [hl]                                      ; $41ef: $86
    and h                                         ; $41f0: $a4
    ld [bc], a                                    ; $41f1: $02
    add h                                         ; $41f2: $84
    add h                                         ; $41f3: $84
    add h                                         ; $41f4: $84
    add [hl]                                      ; $41f5: $86
    ld b, l                                       ; $41f6: $45
    ld b, [hl]                                    ; $41f7: $46
    inc a                                         ; $41f8: $3c
    ld de, $fd47                                  ; $41f9: $11 $47 $fd
    inc b                                         ; $41fc: $04
    dec b                                         ; $41fd: $05
    add hl, de                                    ; $41fe: $19
    ld a, [de]                                    ; $41ff: $1a
    daa                                           ; $4200: $27
    jr z, jr_07b_424b                             ; $4201: $28 $48

    ld c, c                                       ; $4203: $49
    ld c, d                                       ; $4204: $4a
    ld c, e                                       ; $4205: $4b
    ld [bc], a                                    ; $4206: $02
    ld [bc], a                                    ; $4207: $02
    dec b                                         ; $4208: $05
    dec b                                         ; $4209: $05
    ld [bc], a                                    ; $420a: $02
    dec b                                         ; $420b: $05
    ld [bc], a                                    ; $420c: $02
    dec b                                         ; $420d: $05
    ld [bc], a                                    ; $420e: $02
    ld [bc], a                                    ; $420f: $02
    dec b                                         ; $4210: $05
    ld [bc], a                                    ; $4211: $02
    add h                                         ; $4212: $84
    add a                                         ; $4213: $87
    add h                                         ; $4214: $84
    add h                                         ; $4215: $84
    ld c, h                                       ; $4216: $4c
    ld c, l                                       ; $4217: $4d
    pop de                                        ; $4218: $d1
    pop de                                        ; $4219: $d1
    ld c, [hl]                                    ; $421a: $4e
    ld c, a                                       ; $421b: $4f
    push de                                       ; $421c: $d5
    call nc, Call_07b_5150                        ; $421d: $d4 $50 $51
    ret c                                         ; $4220: $d8

    rst $10                                       ; $4221: $d7
    ld d, d                                       ; $4222: $52
    ld d, e                                       ; $4223: $53
    pop hl                                        ; $4224: $e1
    ldh [rDIV], a                                 ; $4225: $e0 $04
    inc b                                         ; $4227: $04
    inc b                                         ; $4228: $04
    inc b                                         ; $4229: $04
    inc b                                         ; $422a: $04
    rlca                                          ; $422b: $07
    inc h                                         ; $422c: $24
    daa                                           ; $422d: $27
    ld b, $04                                     ; $422e: $06 $04
    ld h, $24                                     ; $4230: $26 $24
    ld b, $04                                     ; $4232: $06 $04
    inc h                                         ; $4234: $24
    inc h                                         ; $4235: $24
    pop de                                        ; $4236: $d1
    pop de                                        ; $4237: $d1
    pop de                                        ; $4238: $d1
    pop de                                        ; $4239: $d1
    db $d3                                        ; $423a: $d3
    pop de                                        ; $423b: $d1
    pop de                                        ; $423c: $d1
    pop de                                        ; $423d: $d1
    sub $d2                                       ; $423e: $d6 $d2
    pop de                                        ; $4240: $d1
    pop de                                        ; $4241: $d1
    reti                                          ; $4242: $d9


    pop af                                        ; $4243: $f1
    pop de                                        ; $4244: $d1
    pop de                                        ; $4245: $d1
    inc b                                         ; $4246: $04
    inc b                                         ; $4247: $04
    inc b                                         ; $4248: $04
    inc b                                         ; $4249: $04
    inc b                                         ; $424a: $04

jr_07b_424b:
    inc b                                         ; $424b: $04
    inc b                                         ; $424c: $04
    inc b                                         ; $424d: $04
    inc b                                         ; $424e: $04
    inc b                                         ; $424f: $04
    inc b                                         ; $4250: $04
    inc b                                         ; $4251: $04
    ld b, $06                                     ; $4252: $06 $06
    inc b                                         ; $4254: $04
    inc b                                         ; $4255: $04
    pop de                                        ; $4256: $d1
    pop de                                        ; $4257: $d1
    pop de                                        ; $4258: $d1
    pop de                                        ; $4259: $d1
    pop de                                        ; $425a: $d1
    pop de                                        ; $425b: $d1
    pop de                                        ; $425c: $d1
    pop de                                        ; $425d: $d1
    pop de                                        ; $425e: $d1
    pop de                                        ; $425f: $d1
    pop de                                        ; $4260: $d1
    pop de                                        ; $4261: $d1
    pop de                                        ; $4262: $d1
    pop de                                        ; $4263: $d1
    pop de                                        ; $4264: $d1
    pop de                                        ; $4265: $d1
    add h                                         ; $4266: $84
    add h                                         ; $4267: $84
    add h                                         ; $4268: $84
    add h                                         ; $4269: $84
    add h                                         ; $426a: $84
    inc b                                         ; $426b: $04
    inc b                                         ; $426c: $04
    add h                                         ; $426d: $84
    add h                                         ; $426e: $84
    inc b                                         ; $426f: $04
    inc b                                         ; $4270: $04
    add h                                         ; $4271: $84
    add h                                         ; $4272: $84
    inc b                                         ; $4273: $04
    inc b                                         ; $4274: $04
    add h                                         ; $4275: $84
    pop de                                        ; $4276: $d1
    pop de                                        ; $4277: $d1
    pop de                                        ; $4278: $d1
    pop de                                        ; $4279: $d1
    pop de                                        ; $427a: $d1
    pop de                                        ; $427b: $d1
    pop de                                        ; $427c: $d1
    pop de                                        ; $427d: $d1
    pop de                                        ; $427e: $d1
    pop de                                        ; $427f: $d1
    pop de                                        ; $4280: $d1
    pop de                                        ; $4281: $d1
    pop de                                        ; $4282: $d1
    pop de                                        ; $4283: $d1
    db $db                                        ; $4284: $db
    call nc, Call_000_0404                        ; $4285: $d4 $04 $04
    inc b                                         ; $4288: $04
    inc b                                         ; $4289: $04
    inc b                                         ; $428a: $04
    inc b                                         ; $428b: $04
    inc b                                         ; $428c: $04
    inc b                                         ; $428d: $04
    inc b                                         ; $428e: $04
    inc b                                         ; $428f: $04
    inc b                                         ; $4290: $04
    inc b                                         ; $4291: $04
    inc b                                         ; $4292: $04
    inc b                                         ; $4293: $04
    inc b                                         ; $4294: $04
    rlca                                          ; $4295: $07
    ld d, h                                       ; $4296: $54
    ld d, l                                       ; $4297: $55
    or $f5                                        ; $4298: $f6 $f5
    ld d, [hl]                                    ; $429a: $56
    ld d, a                                       ; $429b: $57
    ld sp, hl                                     ; $429c: $f9
    ld hl, sp+$02                                 ; $429d: $f8 $02
    inc bc                                        ; $429f: $03
    db $fc                                        ; $42a0: $fc
    ei                                            ; $42a1: $fb
    ld e, b                                       ; $42a2: $58

jr_07b_42a3:
    ld e, c                                       ; $42a3: $59
    jr c, jr_07b_42a3                             ; $42a4: $38 $fd

    inc b                                         ; $42a6: $04
    rlca                                          ; $42a7: $07
    ld h, $26                                     ; $42a8: $26 $26
    inc b                                         ; $42aa: $04
    inc b                                         ; $42ab: $04
    inc h                                         ; $42ac: $24
    inc h                                         ; $42ad: $24
    dec b                                         ; $42ae: $05
    dec b                                         ; $42af: $05
    inc h                                         ; $42b0: $24
    inc h                                         ; $42b1: $24
    dec b                                         ; $42b2: $05
    dec b                                         ; $42b3: $05
    dec b                                         ; $42b4: $05
    dec b                                         ; $42b5: $05
    db $ed                                        ; $42b6: $ed
    ld a, [c]                                     ; $42b7: $f2
    pop de                                        ; $42b8: $d1
    pop de                                        ; $42b9: $d1
    rst $30                                       ; $42ba: $f7
    di                                            ; $42bb: $f3
    pop de                                        ; $42bc: $d1
    pop de                                        ; $42bd: $d1
    ld a, [$d1f4]                                 ; $42be: $fa $f4 $d1
    pop de                                        ; $42c1: $d1
    inc b                                         ; $42c2: $04
    ld d, $d1                                     ; $42c3: $16 $d1
    pop de                                        ; $42c5: $d1
    inc b                                         ; $42c6: $04
    inc b                                         ; $42c7: $04
    inc b                                         ; $42c8: $04
    inc b                                         ; $42c9: $04
    inc b                                         ; $42ca: $04
    rlca                                          ; $42cb: $07
    inc b                                         ; $42cc: $04
    inc b                                         ; $42cd: $04
    ld b, $27                                     ; $42ce: $06 $27
    inc b                                         ; $42d0: $04
    inc b                                         ; $42d1: $04
    dec b                                         ; $42d2: $05
    inc h                                         ; $42d3: $24
    inc b                                         ; $42d4: $04
    inc b                                         ; $42d5: $04
    pop de                                        ; $42d6: $d1
    ld d, $dd                                     ; $42d7: $16 $dd
    rst $10                                       ; $42d9: $d7
    pop de                                        ; $42da: $d1
    jp nc, $e0df                                  ; $42db: $d2 $df $e0

    pop de                                        ; $42de: $d1
    pop af                                        ; $42df: $f1
    db $e3                                        ; $42e0: $e3
    push af                                       ; $42e1: $f5
    pop de                                        ; $42e2: $d1
    ld a, [c]                                     ; $42e3: $f2
    rst $38                                       ; $42e4: $ff
    ld hl, sp+$04                                 ; $42e5: $f8 $04
    inc b                                         ; $42e7: $04
    inc b                                         ; $42e8: $04
    inc b                                         ; $42e9: $04
    inc b                                         ; $42ea: $04
    ld h, $06                                     ; $42eb: $26 $06
    inc b                                         ; $42ed: $04
    inc b                                         ; $42ee: $04
    ld h, $04                                     ; $42ef: $26 $04
    rlca                                          ; $42f1: $07
    inc b                                         ; $42f2: $04
    inc h                                         ; $42f3: $24
    rlca                                          ; $42f4: $07
    ld b, $17                                     ; $42f5: $06 $17
    jr jr_07b_4312                                ; $42f7: $18 $19

    ld a, [de]                                    ; $42f9: $1a
    dec de                                        ; $42fa: $1b
    inc e                                         ; $42fb: $1c
    dec e                                         ; $42fc: $1d
    ld e, $1f                                     ; $42fd: $1e $1f
    jr nz, jr_07b_4322                            ; $42ff: $20 $21

    ld [hl+], a                                   ; $4301: $22
    inc hl                                        ; $4302: $23
    inc h                                         ; $4303: $24
    ld e, d                                       ; $4304: $5a
    ld e, e                                       ; $4305: $5b
    dec b                                         ; $4306: $05
    dec b                                         ; $4307: $05
    dec b                                         ; $4308: $05
    dec b                                         ; $4309: $05
    dec b                                         ; $430a: $05
    dec b                                         ; $430b: $05
    dec b                                         ; $430c: $05
    dec b                                         ; $430d: $05
    dec b                                         ; $430e: $05
    dec b                                         ; $430f: $05
    dec b                                         ; $4310: $05
    dec b                                         ; $4311: $05

jr_07b_4312:
    dec b                                         ; $4312: $05
    dec b                                         ; $4313: $05
    dec b                                         ; $4314: $05
    dec b                                         ; $4315: $05
    daa                                           ; $4316: $27
    jp nc, $d1d1                                  ; $4317: $d2 $d1 $d1

    add hl, hl                                    ; $431a: $29
    pop af                                        ; $431b: $f1
    pop de                                        ; $431c: $d1
    pop de                                        ; $431d: $d1
    inc sp                                        ; $431e: $33
    ld a, [c]                                     ; $431f: $f2
    pop de                                        ; $4320: $d1
    pop de                                        ; $4321: $d1

jr_07b_4322:
    ld e, h                                       ; $4322: $5c
    di                                            ; $4323: $f3
    pop de                                        ; $4324: $d1
    pop de                                        ; $4325: $d1
    dec b                                         ; $4326: $05
    inc b                                         ; $4327: $04
    inc b                                         ; $4328: $04
    inc b                                         ; $4329: $04
    dec b                                         ; $432a: $05
    ld b, $04                                     ; $432b: $06 $04
    inc b                                         ; $432d: $04
    dec b                                         ; $432e: $05
    inc b                                         ; $432f: $04
    inc b                                         ; $4330: $04
    inc b                                         ; $4331: $04
    dec b                                         ; $4332: $05
    ld b, $04                                     ; $4333: $06 $04
    inc b                                         ; $4335: $04
    pop de                                        ; $4336: $d1
    di                                            ; $4337: $f3
    ld bc, $d1fb                                  ; $4338: $01 $fb $d1
    db $f4                                        ; $433b: $f4
    rla                                           ; $433c: $17
    ld e, l                                       ; $433d: $5d
    pop de                                        ; $433e: $d1
    ld d, $5e                                     ; $433f: $16 $5e
    ld e, a                                       ; $4341: $5f
    pop de                                        ; $4342: $d1
    jp nc, Jump_07b_6160                          ; $4343: $d2 $60 $61

    inc b                                         ; $4346: $04
    ld h, $04                                     ; $4347: $26 $04
    inc b                                         ; $4349: $04
    inc b                                         ; $434a: $04
    rlca                                          ; $434b: $07
    dec b                                         ; $434c: $05
    dec b                                         ; $434d: $05
    inc b                                         ; $434e: $04
    inc b                                         ; $434f: $04
    ld [bc], a                                    ; $4350: $02
    ld bc, $2704                                  ; $4351: $01 $04 $27
    ld [bc], a                                    ; $4354: $02
    inc bc                                        ; $4355: $03
    ld [bc], a                                    ; $4356: $02
    ld h, d                                       ; $4357: $62
    ld h, e                                       ; $4358: $63
    ld h, h                                       ; $4359: $64
    ld e, b                                       ; $435a: $58
    ld h, l                                       ; $435b: $65
    ld h, [hl]                                    ; $435c: $66
    ld h, a                                       ; $435d: $67
    rla                                           ; $435e: $17
    jr jr_07b_437a                                ; $435f: $18 $19

    ld a, [de]                                    ; $4361: $1a
    ld l, b                                       ; $4362: $68
    ld l, c                                       ; $4363: $69
    ld b, d                                       ; $4364: $42
    ld b, h                                       ; $4365: $44
    dec b                                         ; $4366: $05
    dec b                                         ; $4367: $05
    dec b                                         ; $4368: $05
    dec b                                         ; $4369: $05
    dec b                                         ; $436a: $05
    dec b                                         ; $436b: $05
    dec b                                         ; $436c: $05
    dec b                                         ; $436d: $05
    dec b                                         ; $436e: $05
    dec b                                         ; $436f: $05
    dec b                                         ; $4370: $05
    dec b                                         ; $4371: $05
    add [hl]                                      ; $4372: $86
    add h                                         ; $4373: $84
    add [hl]                                      ; $4374: $86
    add [hl]                                      ; $4375: $86
    ld l, d                                       ; $4376: $6a
    db $f4                                        ; $4377: $f4
    pop de                                        ; $4378: $d1
    pop de                                        ; $4379: $d1

jr_07b_437a:
    ld l, e                                       ; $437a: $6b
    ld d, $d1                                     ; $437b: $16 $d1
    pop de                                        ; $437d: $d1
    daa                                           ; $437e: $27
    jp nc, $d1d1                                  ; $437f: $d2 $d1 $d1

    ld c, b                                       ; $4382: $48
    ld c, c                                       ; $4383: $49
    pop de                                        ; $4384: $d1
    pop de                                        ; $4385: $d1
    dec b                                         ; $4386: $05
    inc h                                         ; $4387: $24
    inc b                                         ; $4388: $04
    inc b                                         ; $4389: $04
    dec b                                         ; $438a: $05
    ld h, $04                                     ; $438b: $26 $04
    inc b                                         ; $438d: $04
    dec b                                         ; $438e: $05
    inc b                                         ; $438f: $04
    inc b                                         ; $4390: $04
    inc b                                         ; $4391: $04
    add a                                         ; $4392: $87
    add h                                         ; $4393: $84
    inc b                                         ; $4394: $04
    inc b                                         ; $4395: $04
    pop de                                        ; $4396: $d1
    pop af                                        ; $4397: $f1
    inc hl                                        ; $4398: $23
    ld l, h                                       ; $4399: $6c
    pop de                                        ; $439a: $d1
    ld a, [c]                                     ; $439b: $f2
    rlca                                          ; $439c: $07
    ld [de], a                                    ; $439d: $12
    pop de                                        ; $439e: $d1
    di                                            ; $439f: $f3
    ld l, l                                       ; $43a0: $6d
    ld e, c                                       ; $43a1: $59
    pop de                                        ; $43a2: $d1
    db $f4                                        ; $43a3: $f4
    rla                                           ; $43a4: $17
    ld e, l                                       ; $43a5: $5d
    inc b                                         ; $43a6: $04
    ld h, $02                                     ; $43a7: $26 $02
    ld bc, $2404                                  ; $43a9: $01 $04 $24
    ld [bc], a                                    ; $43ac: $02
    ld bc, $2704                                  ; $43ad: $01 $04 $27
    ld [bc], a                                    ; $43b0: $02
    ld bc, $0404                                  ; $43b1: $01 $04 $04
    ld [bc], a                                    ; $43b4: $02
    ld [bc], a                                    ; $43b5: $02
    pop de                                        ; $43b6: $d1
    pop de                                        ; $43b7: $d1
    pop de                                        ; $43b8: $d1
    pop de                                        ; $43b9: $d1
    pop de                                        ; $43ba: $d1
    pop de                                        ; $43bb: $d1
    pop de                                        ; $43bc: $d1
    pop de                                        ; $43bd: $d1
    pop de                                        ; $43be: $d1
    db $e4                                        ; $43bf: $e4
    push hl                                       ; $43c0: $e5
    and $d5                                       ; $43c1: $e6 $d5
    ld l, [hl]                                    ; $43c3: $6e
    ld l, a                                       ; $43c4: $6f
    jp hl                                         ; $43c5: $e9


    inc b                                         ; $43c6: $04
    inc b                                         ; $43c7: $04
    inc b                                         ; $43c8: $04
    inc b                                         ; $43c9: $04
    inc b                                         ; $43ca: $04
    inc b                                         ; $43cb: $04
    inc b                                         ; $43cc: $04
    inc b                                         ; $43cd: $04
    inc b                                         ; $43ce: $04
    inc b                                         ; $43cf: $04
    inc b                                         ; $43d0: $04
    ld b, $06                                     ; $43d1: $06 $06
    inc b                                         ; $43d3: $04
    rlca                                          ; $43d4: $07
    inc b                                         ; $43d5: $04
    pop de                                        ; $43d6: $d1
    pop de                                        ; $43d7: $d1
    pop de                                        ; $43d8: $d1
    pop de                                        ; $43d9: $d1
    pop de                                        ; $43da: $d1
    pop de                                        ; $43db: $d1
    pop de                                        ; $43dc: $d1
    pop de                                        ; $43dd: $d1
    ld c, h                                       ; $43de: $4c
    ld c, l                                       ; $43df: $4d
    jp c, Jump_07b_4edb                           ; $43e0: $da $db $4e

    ld c, a                                       ; $43e3: $4f
    call c, $04dd                                 ; $43e4: $dc $dd $04
    inc b                                         ; $43e7: $04
    inc b                                         ; $43e8: $04
    inc b                                         ; $43e9: $04
    inc b                                         ; $43ea: $04
    inc b                                         ; $43eb: $04
    inc b                                         ; $43ec: $04
    inc b                                         ; $43ed: $04
    ld b, $04                                     ; $43ee: $06 $04
    ld b, $04                                     ; $43f0: $06 $04
    rlca                                          ; $43f2: $07
    inc b                                         ; $43f3: $04
    ld b, $04                                     ; $43f4: $06 $04
    pop de                                        ; $43f6: $d1
    pop de                                        ; $43f7: $d1
    pop de                                        ; $43f8: $d1
    pop de                                        ; $43f9: $d1
    pop de                                        ; $43fa: $d1
    pop de                                        ; $43fb: $d1
    pop de                                        ; $43fc: $d1
    pop de                                        ; $43fd: $d1
    db $d3                                        ; $43fe: $d3
    db $e4                                        ; $43ff: $e4
    push hl                                       ; $4400: $e5
    and $d6                                       ; $4401: $e6 $d6
    ld l, [hl]                                    ; $4403: $6e
    ld l, a                                       ; $4404: $6f
    jp hl                                         ; $4405: $e9


    inc b                                         ; $4406: $04
    inc b                                         ; $4407: $04
    inc b                                         ; $4408: $04
    inc b                                         ; $4409: $04
    inc b                                         ; $440a: $04
    inc b                                         ; $440b: $04
    inc b                                         ; $440c: $04
    inc b                                         ; $440d: $04
    inc b                                         ; $440e: $04
    inc b                                         ; $440f: $04
    inc b                                         ; $4410: $04
    ld b, $04                                     ; $4411: $06 $04
    ld b, $04                                     ; $4413: $06 $04
    inc b                                         ; $4415: $04
    pop de                                        ; $4416: $d1
    pop de                                        ; $4417: $d1
    pop de                                        ; $4418: $d1
    pop de                                        ; $4419: $d1
    pop de                                        ; $441a: $d1
    pop de                                        ; $441b: $d1
    pop de                                        ; $441c: $d1
    pop de                                        ; $441d: $d1
    ld c, h                                       ; $441e: $4c
    ld c, l                                       ; $441f: $4d
    jp c, Jump_07b_4edb                           ; $4420: $da $db $4e

    ld c, a                                       ; $4423: $4f
    call c, $04dd                                 ; $4424: $dc $dd $04
    inc b                                         ; $4427: $04
    inc b                                         ; $4428: $04
    inc b                                         ; $4429: $04
    inc b                                         ; $442a: $04
    inc b                                         ; $442b: $04
    inc b                                         ; $442c: $04
    inc b                                         ; $442d: $04
    inc b                                         ; $442e: $04
    inc b                                         ; $442f: $04
    inc b                                         ; $4430: $04
    inc b                                         ; $4431: $04
    inc b                                         ; $4432: $04
    rlca                                          ; $4433: $07
    inc b                                         ; $4434: $04
    inc b                                         ; $4435: $04
    ret c                                         ; $4436: $d8

    ld [hl], b                                    ; $4437: $70
    ld [hl], c                                    ; $4438: $71
    db $ec                                        ; $4439: $ec
    pop hl                                        ; $443a: $e1
    ld [hl], d                                    ; $443b: $72
    ld [hl], e                                    ; $443c: $73
    ldh a, [$f6]                                  ; $443d: $f0 $f6
    ld [$0a09], sp                                ; $443f: $08 $09 $0a
    ld sp, hl                                     ; $4442: $f9
    dec bc                                        ; $4443: $0b
    inc c                                         ; $4444: $0c
    dec c                                         ; $4445: $0d
    inc b                                         ; $4446: $04
    ld b, $04                                     ; $4447: $06 $04
    ld b, $06                                     ; $4449: $06 $06
    inc b                                         ; $444b: $04
    ld b, $04                                     ; $444c: $06 $04
    inc b                                         ; $444e: $04
    inc b                                         ; $444f: $04
    ld b, $07                                     ; $4450: $06 $07
    inc b                                         ; $4452: $04
    inc b                                         ; $4453: $04
    inc b                                         ; $4454: $04
    inc b                                         ; $4455: $04
    ld d, b                                       ; $4456: $50
    ld d, c                                       ; $4457: $51
    sbc $df                                       ; $4458: $de $df
    ld d, d                                       ; $445a: $52
    ld d, e                                       ; $445b: $53
    ld [c], a                                     ; $445c: $e2
    db $e3                                        ; $445d: $e3
    ld d, h                                       ; $445e: $54
    ld d, l                                       ; $445f: $55
    cp $ff                                        ; $4460: $fe $ff
    ld d, [hl]                                    ; $4462: $56
    ld d, a                                       ; $4463: $57
    nop                                           ; $4464: $00
    ld bc, $0704                                  ; $4465: $01 $04 $07
    inc b                                         ; $4468: $04
    rlca                                          ; $4469: $07
    ld b, $04                                     ; $446a: $06 $04
    rlca                                          ; $446c: $07
    inc b                                         ; $446d: $04
    ld b, $04                                     ; $446e: $06 $04
    rlca                                          ; $4470: $07
    inc b                                         ; $4471: $04
    inc b                                         ; $4472: $04
    rlca                                          ; $4473: $07
    inc b                                         ; $4474: $04
    ld b, $d9                                     ; $4475: $06 $d9
    ld [hl], b                                    ; $4477: $70
    ld [hl], c                                    ; $4478: $71
    db $ec                                        ; $4479: $ec
    db $ed                                        ; $447a: $ed
    ld [hl], d                                    ; $447b: $72
    ld [hl], e                                    ; $447c: $73
    ldh a, [$f7]                                  ; $447d: $f0 $f7
    ld [$0a09], sp                                ; $447f: $08 $09 $0a
    ld a, [$0c0b]                                 ; $4482: $fa $0b $0c
    dec c                                         ; $4485: $0d
    inc b                                         ; $4486: $04
    inc b                                         ; $4487: $04
    rlca                                          ; $4488: $07
    inc b                                         ; $4489: $04
    ld b, $04                                     ; $448a: $06 $04
    rlca                                          ; $448c: $07
    rlca                                          ; $448d: $07
    inc b                                         ; $448e: $04
    inc b                                         ; $448f: $04
    ld b, $07                                     ; $4490: $06 $07
    inc b                                         ; $4492: $04
    ld b, $04                                     ; $4493: $06 $04
    rlca                                          ; $4495: $07
    ld d, b                                       ; $4496: $50
    ld d, c                                       ; $4497: $51
    sbc $df                                       ; $4498: $de $df
    ld d, d                                       ; $449a: $52
    ld d, e                                       ; $449b: $53
    ld [c], a                                     ; $449c: $e2
    db $e3                                        ; $449d: $e3
    ld d, h                                       ; $449e: $54
    ld d, l                                       ; $449f: $55
    cp $ff                                        ; $44a0: $fe $ff
    ld d, [hl]                                    ; $44a2: $56
    ld d, a                                       ; $44a3: $57
    nop                                           ; $44a4: $00
    ld bc, $0406                                  ; $44a5: $01 $06 $04
    inc b                                         ; $44a8: $04
    inc b                                         ; $44a9: $04
    inc b                                         ; $44aa: $04
    inc b                                         ; $44ab: $04
    inc b                                         ; $44ac: $04
    inc b                                         ; $44ad: $04
    rlca                                          ; $44ae: $07
    inc b                                         ; $44af: $04
    inc b                                         ; $44b0: $04
    inc b                                         ; $44b1: $04
    inc b                                         ; $44b2: $04
    inc b                                         ; $44b3: $04
    inc b                                         ; $44b4: $04
    inc b                                         ; $44b5: $04
    db $fc                                        ; $44b6: $fc
    ld [hl], h                                    ; $44b7: $74
    ld [hl], l                                    ; $44b8: $75
    halt                                          ; $44b9: $76
    add hl, de                                    ; $44ba: $19
    ld [hl], a                                    ; $44bb: $77
    daa                                           ; $44bc: $27
    ld a, b                                       ; $44bd: $78
    ld a, c                                       ; $44be: $79
    ld e, $7a                                     ; $44bf: $1e $7a
    dec hl                                        ; $44c1: $2b
    ld hl, $7b22                                  ; $44c2: $21 $22 $7b
    ld a, h                                       ; $44c5: $7c
    inc b                                         ; $44c6: $04
    dec b                                         ; $44c7: $05
    dec b                                         ; $44c8: $05
    dec b                                         ; $44c9: $05
    ld [bc], a                                    ; $44ca: $02
    ld [bc], a                                    ; $44cb: $02
    ld [bc], a                                    ; $44cc: $02
    ld [bc], a                                    ; $44cd: $02
    ld bc, $0101                                  ; $44ce: $01 $01 $01
    inc bc                                        ; $44d1: $03
    ld bc, $0101                                  ; $44d2: $01 $01 $01
    ld bc, $596d                                  ; $44d5: $01 $6d $59
    ld a, l                                       ; $44d8: $7d
    ld [hl], h                                    ; $44d9: $74
    rla                                           ; $44da: $17
    ld e, l                                       ; $44db: $5d
    add hl, de                                    ; $44dc: $19
    ld [hl], a                                    ; $44dd: $77
    inc l                                         ; $44de: $2c
    ld a, [hl]                                    ; $44df: $7e
    ld a, c                                       ; $44e0: $79
    ld a, a                                       ; $44e1: $7f
    ld h, b                                       ; $44e2: $60
    ld h, c                                       ; $44e3: $61
    ld hl, $0580                                  ; $44e4: $21 $80 $05
    dec b                                         ; $44e7: $05
    dec b                                         ; $44e8: $05
    dec b                                         ; $44e9: $05
    ld [bc], a                                    ; $44ea: $02
    ld [bc], a                                    ; $44eb: $02
    ld [bc], a                                    ; $44ec: $02
    ld [bc], a                                    ; $44ed: $02
    ld bc, $0101                                  ; $44ee: $01 $01 $01
    ld bc, $0201                                  ; $44f1: $01 $01 $02
    ld bc, $750b                                  ; $44f4: $01 $0b $75
    halt                                          ; $44f7: $76
    ld l, l                                       ; $44f8: $6d
    ld e, c                                       ; $44f9: $59
    ld e, d                                       ; $44fa: $5a
    ld e, e                                       ; $44fb: $5b
    rla                                           ; $44fc: $17
    add c                                         ; $44fd: $81
    ld h, e                                       ; $44fe: $63
    ld h, h                                       ; $44ff: $64
    ld l, d                                       ; $4500: $6a
    add d                                         ; $4501: $82
    ld h, [hl]                                    ; $4502: $66
    add e                                         ; $4503: $83
    ld l, e                                       ; $4504: $6b
    ld h, c                                       ; $4505: $61
    dec b                                         ; $4506: $05
    dec b                                         ; $4507: $05
    dec b                                         ; $4508: $05
    dec b                                         ; $4509: $05
    ld [bc], a                                    ; $450a: $02
    ld [bc], a                                    ; $450b: $02
    ld [bc], a                                    ; $450c: $02
    ld a, [bc]                                    ; $450d: $0a
    inc bc                                        ; $450e: $03
    inc bc                                        ; $450f: $03
    ld bc, $0309                                  ; $4510: $01 $09 $03
    add hl, bc                                    ; $4513: $09
    ld [bc], a                                    ; $4514: $02
    ld bc, $8584                                  ; $4515: $01 $84 $85
    add [hl]                                      ; $4518: $86
    add a                                         ; $4519: $87
    add hl, de                                    ; $451a: $19
    ld [hl], a                                    ; $451b: $77
    daa                                           ; $451c: $27
    ld a, b                                       ; $451d: $78
    ld a, c                                       ; $451e: $79
    ld e, $7a                                     ; $451f: $1e $7a
    ld [hl-], a                                   ; $4521: $32
    ld hl, $7b22                                  ; $4522: $21 $22 $7b
    ld a, h                                       ; $4525: $7c
    dec c                                         ; $4526: $0d
    dec c                                         ; $4527: $0d
    dec c                                         ; $4528: $0d
    dec c                                         ; $4529: $0d
    ld [bc], a                                    ; $452a: $02
    ld [bc], a                                    ; $452b: $02
    ld [bc], a                                    ; $452c: $02
    ld [bc], a                                    ; $452d: $02
    ld bc, $0101                                  ; $452e: $01 $01 $01
    ld bc, $0201                                  ; $4531: $01 $01 $02
    inc bc                                        ; $4534: $03
    ld bc, $8988                                  ; $4535: $01 $88 $89
    ld l, $8a                                     ; $4538: $2e $8a
    inc de                                        ; $453a: $13
    inc d                                         ; $453b: $14
    adc e                                         ; $453c: $8b
    adc h                                         ; $453d: $8c
    ld sp, $7574                                  ; $453e: $31 $74 $75
    halt                                          ; $4541: $76
    add hl, de                                    ; $4542: $19
    ld [hl], a                                    ; $4543: $77
    daa                                           ; $4544: $27
    ld a, b                                       ; $4545: $78
    add hl, bc                                    ; $4546: $09
    dec bc                                        ; $4547: $0b
    ld bc, $0109                                  ; $4548: $01 $09 $01
    inc bc                                        ; $454b: $03
    add hl, bc                                    ; $454c: $09
    add hl, bc                                    ; $454d: $09
    inc bc                                        ; $454e: $03
    inc bc                                        ; $454f: $03
    inc bc                                        ; $4550: $03
    ld bc, $0101                                  ; $4551: $01 $01 $01
    inc bc                                        ; $4554: $03
    ld [bc], a                                    ; $4555: $02
    inc hl                                        ; $4556: $23
    ld l, h                                       ; $4557: $6c
    dec h                                         ; $4558: $25
    adc l                                         ; $4559: $8d
    adc [hl]                                      ; $455a: $8e
    adc a                                         ; $455b: $8f
    ld c, $35                                     ; $455c: $0e $35
    ld b, c                                       ; $455e: $41
    ld l, c                                       ; $455f: $69
    ld c, b                                       ; $4560: $48
    ld c, c                                       ; $4561: $49
    ld d, $d1                                     ; $4562: $16 $d1
    pop de                                        ; $4564: $d1
    pop de                                        ; $4565: $d1
    inc bc                                        ; $4566: $03
    ld bc, $0a01                                  ; $4567: $01 $01 $0a
    add hl, bc                                    ; $456a: $09
    dec bc                                        ; $456b: $0b
    ld bc, $8601                                  ; $456c: $01 $01 $86
    add [hl]                                      ; $456f: $86
    add a                                         ; $4570: $87
    add h                                         ; $4571: $84
    and [hl]                                      ; $4572: $a6
    add h                                         ; $4573: $84
    add h                                         ; $4574: $84
    add h                                         ; $4575: $84
    ld l, $8a                                     ; $4576: $2e $8a
    inc hl                                        ; $4578: $23
    ld l, h                                       ; $4579: $6c
    adc e                                         ; $457a: $8b
    adc h                                         ; $457b: $8c
    adc [hl]                                      ; $457c: $8e
    adc a                                         ; $457d: $8f
    ld c, d                                       ; $457e: $4a
    ld c, e                                       ; $457f: $4b
    ld l, b                                       ; $4580: $68
    ld l, c                                       ; $4581: $69
    pop de                                        ; $4582: $d1
    pop de                                        ; $4583: $d1
    pop de                                        ; $4584: $d1
    pop de                                        ; $4585: $d1
    ld bc, $0109                                  ; $4586: $01 $09 $01
    ld bc, $0b09                                  ; $4589: $01 $09 $0b
    add hl, bc                                    ; $458c: $09
    ld a, [bc]                                    ; $458d: $0a
    add a                                         ; $458e: $87
    add h                                         ; $458f: $84
    add h                                         ; $4590: $84
    add [hl]                                      ; $4591: $86
    add h                                         ; $4592: $84
    add h                                         ; $4593: $84
    add h                                         ; $4594: $84
    add h                                         ; $4595: $84
    dec hl                                        ; $4596: $2b
    inc l                                         ; $4597: $2c
    sub b                                         ; $4598: $90
    adc d                                         ; $4599: $8a
    ld c, $35                                     ; $459a: $0e $35
    adc e                                         ; $459c: $8b
    adc h                                         ; $459d: $8c
    ld c, d                                       ; $459e: $4a
    ld l, c                                       ; $459f: $69
    ld b, c                                       ; $45a0: $41
    halt                                          ; $45a1: $76
    pop de                                        ; $45a2: $d1
    pop de                                        ; $45a3: $d1
    di                                            ; $45a4: $f3
    rlca                                          ; $45a5: $07
    ld bc, $0901                                  ; $45a6: $01 $01 $09
    ld a, [bc]                                    ; $45a9: $0a
    ld bc, $0b01                                  ; $45aa: $01 $01 $0b
    add hl, bc                                    ; $45ad: $09
    add h                                         ; $45ae: $84
    and a                                         ; $45af: $a7
    and h                                         ; $45b0: $a4
    ld [bc], a                                    ; $45b1: $02
    add h                                         ; $45b2: $84
    add h                                         ; $45b3: $84
    and a                                         ; $45b4: $a7
    ld [bc], a                                    ; $45b5: $02
    pop de                                        ; $45b6: $d1
    pop de                                        ; $45b7: $d1
    pop de                                        ; $45b8: $d1
    pop de                                        ; $45b9: $d1
    pop de                                        ; $45ba: $d1
    pop de                                        ; $45bb: $d1
    pop de                                        ; $45bc: $d1
    pop de                                        ; $45bd: $d1
    db $d3                                        ; $45be: $d3
    db $e4                                        ; $45bf: $e4
    push hl                                       ; $45c0: $e5
    and $d6                                       ; $45c1: $e6 $d6
    ld l, [hl]                                    ; $45c3: $6e
    ld l, a                                       ; $45c4: $6f
    jp hl                                         ; $45c5: $e9


    inc b                                         ; $45c6: $04
    inc b                                         ; $45c7: $04
    inc b                                         ; $45c8: $04
    inc b                                         ; $45c9: $04
    inc b                                         ; $45ca: $04
    inc b                                         ; $45cb: $04
    inc b                                         ; $45cc: $04
    inc b                                         ; $45cd: $04
    inc b                                         ; $45ce: $04
    inc b                                         ; $45cf: $04
    inc b                                         ; $45d0: $04
    inc b                                         ; $45d1: $04
    inc b                                         ; $45d2: $04
    inc b                                         ; $45d3: $04
    inc b                                         ; $45d4: $04
    inc b                                         ; $45d5: $04
    pop de                                        ; $45d6: $d1
    pop de                                        ; $45d7: $d1
    pop de                                        ; $45d8: $d1
    pop de                                        ; $45d9: $d1
    pop de                                        ; $45da: $d1
    pop de                                        ; $45db: $d1
    pop de                                        ; $45dc: $d1
    pop de                                        ; $45dd: $d1
    ld c, h                                       ; $45de: $4c
    ld c, l                                       ; $45df: $4d
    jp c, Jump_07b_4edb                           ; $45e0: $da $db $4e

    ld c, a                                       ; $45e3: $4f
    call c, $04dd                                 ; $45e4: $dc $dd $04
    inc b                                         ; $45e7: $04
    inc b                                         ; $45e8: $04
    inc b                                         ; $45e9: $04
    inc b                                         ; $45ea: $04
    inc b                                         ; $45eb: $04
    inc b                                         ; $45ec: $04
    inc b                                         ; $45ed: $04
    inc b                                         ; $45ee: $04
    inc b                                         ; $45ef: $04
    inc b                                         ; $45f0: $04
    inc b                                         ; $45f1: $04
    inc b                                         ; $45f2: $04
    inc b                                         ; $45f3: $04
    inc b                                         ; $45f4: $04
    inc b                                         ; $45f5: $04
    pop de                                        ; $45f6: $d1
    pop de                                        ; $45f7: $d1
    pop de                                        ; $45f8: $d1
    pop de                                        ; $45f9: $d1
    pop de                                        ; $45fa: $d1
    pop de                                        ; $45fb: $d1
    pop de                                        ; $45fc: $d1
    pop de                                        ; $45fd: $d1
    db $d3                                        ; $45fe: $d3
    db $e4                                        ; $45ff: $e4
    push hl                                       ; $4600: $e5
    and $d6                                       ; $4601: $e6 $d6
    ld l, [hl]                                    ; $4603: $6e
    ld l, a                                       ; $4604: $6f
    jp hl                                         ; $4605: $e9


    inc b                                         ; $4606: $04
    inc b                                         ; $4607: $04
    inc b                                         ; $4608: $04
    inc b                                         ; $4609: $04
    inc b                                         ; $460a: $04
    inc b                                         ; $460b: $04
    inc b                                         ; $460c: $04
    inc b                                         ; $460d: $04
    inc b                                         ; $460e: $04
    inc b                                         ; $460f: $04
    ld b, $07                                     ; $4610: $06 $07
    rlca                                          ; $4612: $07
    inc b                                         ; $4613: $04
    inc b                                         ; $4614: $04
    inc b                                         ; $4615: $04
    pop de                                        ; $4616: $d1
    pop de                                        ; $4617: $d1
    pop de                                        ; $4618: $d1
    pop de                                        ; $4619: $d1
    pop de                                        ; $461a: $d1
    pop de                                        ; $461b: $d1
    pop de                                        ; $461c: $d1
    pop de                                        ; $461d: $d1
    ld c, h                                       ; $461e: $4c
    ld c, l                                       ; $461f: $4d
    pop de                                        ; $4620: $d1
    pop de                                        ; $4621: $d1
    ld c, [hl]                                    ; $4622: $4e
    ld c, a                                       ; $4623: $4f
    push de                                       ; $4624: $d5
    call nc, Call_000_0404                        ; $4625: $d4 $04 $04
    inc b                                         ; $4628: $04
    inc b                                         ; $4629: $04
    inc b                                         ; $462a: $04
    inc b                                         ; $462b: $04
    inc b                                         ; $462c: $04
    inc b                                         ; $462d: $04
    inc b                                         ; $462e: $04
    inc b                                         ; $462f: $04
    inc b                                         ; $4630: $04
    inc b                                         ; $4631: $04
    inc b                                         ; $4632: $04
    ld b, $24                                     ; $4633: $06 $24
    daa                                           ; $4635: $27
    reti                                          ; $4636: $d9


    ld [hl], b                                    ; $4637: $70
    ld [hl], c                                    ; $4638: $71
    db $ec                                        ; $4639: $ec
    db $ed                                        ; $463a: $ed
    ld [hl], d                                    ; $463b: $72
    ld [hl], e                                    ; $463c: $73
    ldh a, [$f7]                                  ; $463d: $f0 $f7
    ld [$0a09], sp                                ; $463f: $08 $09 $0a
    ld a, [$0c0b]                                 ; $4642: $fa $0b $0c
    dec c                                         ; $4645: $0d
    inc b                                         ; $4646: $04
    inc b                                         ; $4647: $04
    inc b                                         ; $4648: $04
    inc b                                         ; $4649: $04
    inc b                                         ; $464a: $04
    inc b                                         ; $464b: $04
    inc b                                         ; $464c: $04
    inc b                                         ; $464d: $04
    inc b                                         ; $464e: $04
    inc b                                         ; $464f: $04
    inc b                                         ; $4650: $04
    inc b                                         ; $4651: $04
    inc b                                         ; $4652: $04
    inc b                                         ; $4653: $04
    inc b                                         ; $4654: $04
    inc b                                         ; $4655: $04
    ld d, b                                       ; $4656: $50
    ld d, c                                       ; $4657: $51
    sbc $df                                       ; $4658: $de $df
    ld d, d                                       ; $465a: $52
    ld d, e                                       ; $465b: $53
    ld [c], a                                     ; $465c: $e2
    db $e3                                        ; $465d: $e3
    ld d, h                                       ; $465e: $54
    ld d, l                                       ; $465f: $55
    cp $ff                                        ; $4660: $fe $ff
    ld d, [hl]                                    ; $4662: $56
    ld d, a                                       ; $4663: $57
    nop                                           ; $4664: $00
    ld bc, $0404                                  ; $4665: $01 $04 $04
    inc b                                         ; $4668: $04
    ld b, $04                                     ; $4669: $06 $04
    inc b                                         ; $466b: $04
    inc b                                         ; $466c: $04
    inc b                                         ; $466d: $04
    inc b                                         ; $466e: $04
    inc b                                         ; $466f: $04
    inc b                                         ; $4670: $04
    ld b, $04                                     ; $4671: $06 $04
    inc b                                         ; $4673: $04
    inc b                                         ; $4674: $04
    inc b                                         ; $4675: $04
    reti                                          ; $4676: $d9


    ld [hl], b                                    ; $4677: $70
    ld [hl], c                                    ; $4678: $71
    db $ec                                        ; $4679: $ec
    db $ed                                        ; $467a: $ed
    ld [hl], d                                    ; $467b: $72
    ld [hl], e                                    ; $467c: $73
    ldh a, [$f7]                                  ; $467d: $f0 $f7
    ld [$0a09], sp                                ; $467f: $08 $09 $0a
    ld a, [$0c0b]                                 ; $4682: $fa $0b $0c
    dec c                                         ; $4685: $0d
    inc b                                         ; $4686: $04
    inc b                                         ; $4687: $04
    rlca                                          ; $4688: $07
    ld b, $06                                     ; $4689: $06 $06
    inc b                                         ; $468b: $04
    inc b                                         ; $468c: $04
    inc b                                         ; $468d: $04
    inc b                                         ; $468e: $04
    rlca                                          ; $468f: $07
    ld b, $07                                     ; $4690: $06 $07
    ld b, $04                                     ; $4692: $06 $04
    rlca                                          ; $4694: $07
    inc b                                         ; $4695: $04
    ld d, b                                       ; $4696: $50
    ld d, c                                       ; $4697: $51
    ret c                                         ; $4698: $d8

    rst $10                                       ; $4699: $d7
    ld d, d                                       ; $469a: $52
    ld d, e                                       ; $469b: $53
    pop hl                                        ; $469c: $e1
    ldh [rHDMA4], a                               ; $469d: $e0 $54
    ld d, l                                       ; $469f: $55
    or $f5                                        ; $46a0: $f6 $f5
    ld d, [hl]                                    ; $46a2: $56
    ld d, a                                       ; $46a3: $57
    ld sp, hl                                     ; $46a4: $f9
    ld hl, sp+$07                                 ; $46a5: $f8 $07
    rlca                                          ; $46a7: $07
    ld h, $24                                     ; $46a8: $26 $24
    ld b, $04                                     ; $46aa: $06 $04
    ld h, $26                                     ; $46ac: $26 $26
    ld b, $04                                     ; $46ae: $06 $04
    ld h, $24                                     ; $46b0: $26 $24
    ld b, $07                                     ; $46b2: $06 $07
    ld h, $27                                     ; $46b4: $26 $27
    ld l, l                                       ; $46b6: $6d
    ld e, c                                       ; $46b7: $59
    sub c                                         ; $46b8: $91
    rlca                                          ; $46b9: $07
    rla                                           ; $46ba: $17
    ld e, l                                       ; $46bb: $5d
    add hl, de                                    ; $46bc: $19
    ld [hl], a                                    ; $46bd: $77
    ld e, [hl]                                    ; $46be: $5e
    ld e, a                                       ; $46bf: $5f
    ld a, c                                       ; $46c0: $79
    ld e, $60                                     ; $46c1: $1e $60
    ld h, c                                       ; $46c3: $61
    ld hl, $0522                                  ; $46c4: $21 $22 $05
    dec b                                         ; $46c7: $05
    dec c                                         ; $46c8: $0d
    dec b                                         ; $46c9: $05
    ld [bc], a                                    ; $46ca: $02
    ld [bc], a                                    ; $46cb: $02
    ld [bc], a                                    ; $46cc: $02
    ld [bc], a                                    ; $46cd: $02
    ld bc, $0103                                  ; $46ce: $01 $03 $01
    ld bc, $0102                                  ; $46d1: $01 $02 $01
    ld bc, $1201                                  ; $46d4: $01 $01 $12
    inc de                                        ; $46d7: $13
    inc d                                         ; $46d8: $14
    sub d                                         ; $46d9: $92
    daa                                           ; $46da: $27
    sub e                                         ; $46db: $93
    rla                                           ; $46dc: $17
    ld e, l                                       ; $46dd: $5d
    ld a, d                                       ; $46de: $7a
    ld [hl-], a                                   ; $46df: $32
    ld e, [hl]                                    ; $46e0: $5e
    ld e, a                                       ; $46e1: $5f
    ld a, e                                       ; $46e2: $7b
    ld a, h                                       ; $46e3: $7c
    ld h, b                                       ; $46e4: $60
    ld h, c                                       ; $46e5: $61
    dec b                                         ; $46e6: $05
    dec b                                         ; $46e7: $05
    dec b                                         ; $46e8: $05
    dec c                                         ; $46e9: $0d
    ld [bc], a                                    ; $46ea: $02
    ld a, [bc]                                    ; $46eb: $0a
    ld [bc], a                                    ; $46ec: $02
    ld [bc], a                                    ; $46ed: $02
    ld bc, $0301                                  ; $46ee: $01 $01 $03
    ld bc, $0103                                  ; $46f1: $01 $03 $01
    ld [bc], a                                    ; $46f4: $02
    ld bc, $747d                                  ; $46f5: $01 $7d $74
    ld [hl], l                                    ; $46f8: $75
    halt                                          ; $46f9: $76
    dec hl                                        ; $46fa: $2b
    inc l                                         ; $46fb: $2c
    sub h                                         ; $46fc: $94
    ld a, b                                       ; $46fd: $78
    ld a, c                                       ; $46fe: $79
    ld e, $7a                                     ; $46ff: $1e $7a
    ld [hl-], a                                   ; $4701: $32
    ld hl, $7b22                                  ; $4702: $21 $22 $7b
    ld a, h                                       ; $4705: $7c
    dec b                                         ; $4706: $05
    dec b                                         ; $4707: $05
    dec b                                         ; $4708: $05
    dec b                                         ; $4709: $05
    ld [bc], a                                    ; $470a: $02
    ld [bc], a                                    ; $470b: $02
    ld a, [bc]                                    ; $470c: $0a
    ld [bc], a                                    ; $470d: $02
    ld bc, $0101                                  ; $470e: $01 $01 $01
    ld bc, $0301                                  ; $4711: $01 $01 $03
    ld bc, $6d02                                  ; $4714: $01 $02 $6d
    ld e, c                                       ; $4717: $59
    db $fc                                        ; $4718: $fc
    ei                                            ; $4719: $fb
    rla                                           ; $471a: $17
    ld e, l                                       ; $471b: $5d
    add hl, de                                    ; $471c: $19
    ld [hl], a                                    ; $471d: $77
    ld e, [hl]                                    ; $471e: $5e
    ld e, a                                       ; $471f: $5f
    ld a, c                                       ; $4720: $79
    ld e, $60                                     ; $4721: $1e $60
    ld h, c                                       ; $4723: $61
    ld hl, $0522                                  ; $4724: $21 $22 $05
    dec b                                         ; $4727: $05
    inc h                                         ; $4728: $24
    inc h                                         ; $4729: $24
    ld [bc], a                                    ; $472a: $02
    ld [bc], a                                    ; $472b: $02
    ld [bc], a                                    ; $472c: $02
    dec b                                         ; $472d: $05
    inc bc                                        ; $472e: $03
    ld bc, $0201                                  ; $472f: $01 $01 $02
    ld [bc], a                                    ; $4732: $02
    ld bc, $0103                                  ; $4733: $01 $03 $01
    inc hl                                        ; $4736: $23
    ld l, h                                       ; $4737: $6c
    dec h                                         ; $4738: $25
    adc l                                         ; $4739: $8d
    adc [hl]                                      ; $473a: $8e
    adc a                                         ; $473b: $8f
    ld c, $35                                     ; $473c: $0e $35
    ld l, l                                       ; $473e: $6d
    sub l                                         ; $473f: $95

Jump_07b_4740:
    sub [hl]                                      ; $4740: $96
    ld [hl], h                                    ; $4741: $74
    ld [de], a                                    ; $4742: $12
    inc de                                        ; $4743: $13
    inc d                                         ; $4744: $14
    sub a                                         ; $4745: $97
    ld bc, $0303                                  ; $4746: $01 $03 $03
    add hl, bc                                    ; $4749: $09
    add hl, bc                                    ; $474a: $09
    dec bc                                        ; $474b: $0b
    ld bc, $0101                                  ; $474c: $01 $01 $01
    ld a, [bc]                                    ; $474f: $0a
    add hl, bc                                    ; $4750: $09
    ld [bc], a                                    ; $4751: $02
    ld [bc], a                                    ; $4752: $02
    ld [bc], a                                    ; $4753: $02
    ld [bc], a                                    ; $4754: $02
    ld a, [bc]                                    ; $4755: $0a
    ld l, $8a                                     ; $4756: $2e $8a
    inc hl                                        ; $4758: $23
    ld l, h                                       ; $4759: $6c
    adc e                                         ; $475a: $8b
    adc h                                         ; $475b: $8c
    adc [hl]                                      ; $475c: $8e
    adc a                                         ; $475d: $8f
    ld b, c                                       ; $475e: $41
    ld l, c                                       ; $475f: $69
    ld b, d                                       ; $4760: $42
    ld b, h                                       ; $4761: $44
    di                                            ; $4762: $f3
    pop de                                        ; $4763: $d1
    pop de                                        ; $4764: $d1
    pop de                                        ; $4765: $d1
    ld bc, $0109                                  ; $4766: $01 $09 $01
    inc bc                                        ; $4769: $03
    add hl, bc                                    ; $476a: $09
    add hl, bc                                    ; $476b: $09
    dec bc                                        ; $476c: $0b
    add hl, bc                                    ; $476d: $09
    add h                                         ; $476e: $84
    add [hl]                                      ; $476f: $86
    add a                                         ; $4770: $87
    add h                                         ; $4771: $84
    add a                                         ; $4772: $87
    add h                                         ; $4773: $84
    add h                                         ; $4774: $84
    add h                                         ; $4775: $84
    dec h                                         ; $4776: $25
    dec a                                         ; $4777: $3d
    ld a, $45                                     ; $4778: $3e $45
    sbc b                                         ; $477a: $98
    ccf                                           ; $477b: $3f
    ld b, b                                       ; $477c: $40
    ld b, a                                       ; $477d: $47
    ld c, b                                       ; $477e: $48
    ld c, c                                       ; $477f: $49
    ld c, d                                       ; $4780: $4a
    ld c, e                                       ; $4781: $4b
    pop de                                        ; $4782: $d1
    pop de                                        ; $4783: $d1
    pop de                                        ; $4784: $d1
    pop de                                        ; $4785: $d1
    ld bc, $0101                                  ; $4786: $01 $01 $01
    ld bc, $0309                                  ; $4789: $01 $09 $03
    inc bc                                        ; $478c: $03
    ld bc, $8486                                  ; $478d: $01 $86 $84
    add a                                         ; $4790: $87
    add [hl]                                      ; $4791: $86
    add h                                         ; $4792: $84
    add h                                         ; $4793: $84
    add h                                         ; $4794: $84
    add h                                         ; $4795: $84
    inc hl                                        ; $4796: $23
    ld l, h                                       ; $4797: $6c
    dec h                                         ; $4798: $25
    adc l                                         ; $4799: $8d
    adc [hl]                                      ; $479a: $8e
    adc a                                         ; $479b: $8f
    ld c, $35                                     ; $479c: $0e $35
    ld l, b                                       ; $479e: $68
    ld l, c                                       ; $479f: $69
    ld b, d                                       ; $47a0: $42
    ld b, h                                       ; $47a1: $44
    pop de                                        ; $47a2: $d1
    pop de                                        ; $47a3: $d1
    pop de                                        ; $47a4: $d1
    pop de                                        ; $47a5: $d1
    ld bc, $0303                                  ; $47a6: $01 $03 $03
    add hl, bc                                    ; $47a9: $09
    add hl, bc                                    ; $47aa: $09
    ld a, [bc]                                    ; $47ab: $0a
    ld bc, $8403                                  ; $47ac: $01 $03 $84
    add h                                         ; $47af: $84
    add a                                         ; $47b0: $87
    add h                                         ; $47b1: $84
    add h                                         ; $47b2: $84
    add h                                         ; $47b3: $84
    add h                                         ; $47b4: $84
    add h                                         ; $47b5: $84
    pop de                                        ; $47b6: $d1
    pop de                                        ; $47b7: $d1
    pop de                                        ; $47b8: $d1
    pop de                                        ; $47b9: $d1
    pop de                                        ; $47ba: $d1
    pop de                                        ; $47bb: $d1
    pop de                                        ; $47bc: $d1
    pop de                                        ; $47bd: $d1
    pop de                                        ; $47be: $d1
    pop de                                        ; $47bf: $d1
    pop de                                        ; $47c0: $d1
    pop de                                        ; $47c1: $d1
    jp c, $d3db                                   ; $47c2: $da $db $d3

    db $e4                                        ; $47c5: $e4
    inc b                                         ; $47c6: $04
    inc b                                         ; $47c7: $04
    inc b                                         ; $47c8: $04
    inc b                                         ; $47c9: $04
    inc b                                         ; $47ca: $04
    inc b                                         ; $47cb: $04
    inc b                                         ; $47cc: $04
    inc b                                         ; $47cd: $04
    inc b                                         ; $47ce: $04
    inc b                                         ; $47cf: $04
    inc b                                         ; $47d0: $04
    inc b                                         ; $47d1: $04
    inc b                                         ; $47d2: $04
    inc b                                         ; $47d3: $04
    inc b                                         ; $47d4: $04
    rlca                                          ; $47d5: $07
    pop de                                        ; $47d6: $d1
    pop de                                        ; $47d7: $d1
    pop de                                        ; $47d8: $d1
    pop de                                        ; $47d9: $d1
    pop de                                        ; $47da: $d1
    pop de                                        ; $47db: $d1
    pop de                                        ; $47dc: $d1
    pop de                                        ; $47dd: $d1
    pop de                                        ; $47de: $d1
    pop de                                        ; $47df: $d1
    pop de                                        ; $47e0: $d1
    pop de                                        ; $47e1: $d1
    push hl                                       ; $47e2: $e5
    and $4c                                       ; $47e3: $e6 $4c
    ld c, l                                       ; $47e5: $4d
    inc b                                         ; $47e6: $04
    inc b                                         ; $47e7: $04
    inc b                                         ; $47e8: $04
    inc b                                         ; $47e9: $04
    inc b                                         ; $47ea: $04
    inc b                                         ; $47eb: $04
    inc b                                         ; $47ec: $04
    inc b                                         ; $47ed: $04
    inc b                                         ; $47ee: $04
    inc b                                         ; $47ef: $04
    inc b                                         ; $47f0: $04
    inc b                                         ; $47f1: $04
    inc b                                         ; $47f2: $04
    rlca                                          ; $47f3: $07
    inc b                                         ; $47f4: $04
    ld b, $d1                                     ; $47f5: $06 $d1
    pop de                                        ; $47f7: $d1
    pop de                                        ; $47f8: $d1
    pop de                                        ; $47f9: $d1
    pop de                                        ; $47fa: $d1
    pop de                                        ; $47fb: $d1
    pop de                                        ; $47fc: $d1
    pop de                                        ; $47fd: $d1
    pop de                                        ; $47fe: $d1
    pop de                                        ; $47ff: $d1
    pop de                                        ; $4800: $d1
    pop de                                        ; $4801: $d1
    jp c, $d3db                                   ; $4802: $da $db $d3

    db $e4                                        ; $4805: $e4
    inc b                                         ; $4806: $04
    inc b                                         ; $4807: $04
    inc b                                         ; $4808: $04
    inc b                                         ; $4809: $04
    inc b                                         ; $480a: $04
    inc b                                         ; $480b: $04
    inc b                                         ; $480c: $04
    inc b                                         ; $480d: $04
    inc b                                         ; $480e: $04
    inc b                                         ; $480f: $04
    inc b                                         ; $4810: $04
    inc b                                         ; $4811: $04
    inc b                                         ; $4812: $04
    inc b                                         ; $4813: $04
    rlca                                          ; $4814: $07
    inc b                                         ; $4815: $04
    pop de                                        ; $4816: $d1
    pop de                                        ; $4817: $d1
    pop de                                        ; $4818: $d1
    pop de                                        ; $4819: $d1
    pop de                                        ; $481a: $d1
    pop de                                        ; $481b: $d1
    pop de                                        ; $481c: $d1
    pop de                                        ; $481d: $d1
    pop de                                        ; $481e: $d1
    pop de                                        ; $481f: $d1
    pop de                                        ; $4820: $d1
    pop de                                        ; $4821: $d1
    push hl                                       ; $4822: $e5
    and $4c                                       ; $4823: $e6 $4c
    ld c, l                                       ; $4825: $4d
    inc b                                         ; $4826: $04
    inc b                                         ; $4827: $04
    inc b                                         ; $4828: $04
    inc b                                         ; $4829: $04
    inc b                                         ; $482a: $04
    inc b                                         ; $482b: $04
    inc b                                         ; $482c: $04
    inc b                                         ; $482d: $04
    inc b                                         ; $482e: $04
    inc b                                         ; $482f: $04
    inc b                                         ; $4830: $04
    inc b                                         ; $4831: $04
    inc b                                         ; $4832: $04
    inc b                                         ; $4833: $04
    inc b                                         ; $4834: $04
    inc b                                         ; $4835: $04
    call c, $d6dd                                 ; $4836: $dc $dd $d6
    ld l, [hl]                                    ; $4839: $6e
    sbc $df                                       ; $483a: $de $df
    reti                                          ; $483c: $d9


    ld [hl], b                                    ; $483d: $70
    ld [c], a                                     ; $483e: $e2
    db $e3                                        ; $483f: $e3
    db $ed                                        ; $4840: $ed
    ld [hl], d                                    ; $4841: $72
    cp $ff                                        ; $4842: $fe $ff

Jump_07b_4844:
    rst $30                                       ; $4844: $f7
    ld [$0604], sp                                ; $4845: $08 $04 $06
    inc b                                         ; $4848: $04

Jump_07b_4849:
    inc b                                         ; $4849: $04
    rlca                                          ; $484a: $07
    inc b                                         ; $484b: $04
    rlca                                          ; $484c: $07
    inc b                                         ; $484d: $04
    ld b, $04                                     ; $484e: $06 $04
    ld b, $04                                     ; $4850: $06 $04
    inc b                                         ; $4852: $04
    inc b                                         ; $4853: $04
    rlca                                          ; $4854: $07
    rlca                                          ; $4855: $07
    ld l, a                                       ; $4856: $6f
    jp hl                                         ; $4857: $e9


    ld c, [hl]                                    ; $4858: $4e
    ld c, a                                       ; $4859: $4f
    ld [hl], c                                    ; $485a: $71
    db $ec                                        ; $485b: $ec
    ld d, b                                       ; $485c: $50
    ld d, c                                       ; $485d: $51
    ld [hl], e                                    ; $485e: $73
    ldh a, [rHDMA2]                               ; $485f: $f0 $52
    ld d, e                                       ; $4861: $53
    add hl, bc                                    ; $4862: $09
    ld a, [bc]                                    ; $4863: $0a
    ld d, h                                       ; $4864: $54
    ld d, l                                       ; $4865: $55
    inc b                                         ; $4866: $04
    inc b                                         ; $4867: $04
    rlca                                          ; $4868: $07
    inc b                                         ; $4869: $04
    ld b, $04                                     ; $486a: $06 $04
    rlca                                          ; $486c: $07
    inc b                                         ; $486d: $04
    rlca                                          ; $486e: $07
    inc b                                         ; $486f: $04
    ld b, $04                                     ; $4870: $06 $04
    inc b                                         ; $4872: $04
    ld b, $06                                     ; $4873: $06 $06
    inc b                                         ; $4875: $04
    call c, $d6dd                                 ; $4876: $dc $dd $d6
    ld l, [hl]                                    ; $4879: $6e
    sbc $df                                       ; $487a: $de $df
    reti                                          ; $487c: $d9


    ld [hl], b                                    ; $487d: $70
    ld [c], a                                     ; $487e: $e2
    db $e3                                        ; $487f: $e3
    db $ed                                        ; $4880: $ed
    ld [hl], d                                    ; $4881: $72
    cp $ff                                        ; $4882: $fe $ff
    rst $30                                       ; $4884: $f7
    ld [$0404], sp                                ; $4885: $08 $04 $04
    inc b                                         ; $4888: $04
    inc b                                         ; $4889: $04
    rlca                                          ; $488a: $07
    ld b, $06                                     ; $488b: $06 $06
    inc b                                         ; $488d: $04
    rlca                                          ; $488e: $07
    rlca                                          ; $488f: $07
    inc b                                         ; $4890: $04
    inc b                                         ; $4891: $04
    rlca                                          ; $4892: $07
    rlca                                          ; $4893: $07
    ld b, $04                                     ; $4894: $06 $04
    ld l, a                                       ; $4896: $6f
    jp hl                                         ; $4897: $e9


    ld c, [hl]                                    ; $4898: $4e
    ld c, a                                       ; $4899: $4f
    ld [hl], c                                    ; $489a: $71
    db $ec                                        ; $489b: $ec
    ld d, b                                       ; $489c: $50
    ld d, c                                       ; $489d: $51
    ld [hl], e                                    ; $489e: $73
    ldh a, [rHDMA2]                               ; $489f: $f0 $52
    ld d, e                                       ; $48a1: $53
    add hl, bc                                    ; $48a2: $09
    ld a, [bc]                                    ; $48a3: $0a
    ld d, h                                       ; $48a4: $54
    ld d, l                                       ; $48a5: $55
    rlca                                          ; $48a6: $07
    ld b, $04                                     ; $48a7: $06 $04
    ld b, $07                                     ; $48a9: $06 $07
    inc b                                         ; $48ab: $04
    rlca                                          ; $48ac: $07
    inc b                                         ; $48ad: $04
    ld b, $04                                     ; $48ae: $06 $04
    rlca                                          ; $48b0: $07
    inc b                                         ; $48b1: $04
    inc b                                         ; $48b2: $04
    inc b                                         ; $48b3: $04
    inc b                                         ; $48b4: $04
    ld b, $00                                     ; $48b5: $06 $00
    ld bc, $0bfa                                  ; $48b7: $01 $fa $0b
    daa                                           ; $48ba: $27
    ld a, b                                       ; $48bb: $78
    rla                                           ; $48bc: $17
    ld e, l                                       ; $48bd: $5d
    ld a, d                                       ; $48be: $7a
    ld [hl-], a                                   ; $48bf: $32
    dec hl                                        ; $48c0: $2b
    inc l                                         ; $48c1: $2c
    ld a, e                                       ; $48c2: $7b
    ld a, h                                       ; $48c3: $7c
    ld h, b                                       ; $48c4: $60
    ld h, c                                       ; $48c5: $61
    ld b, $04                                     ; $48c6: $06 $04
    rlca                                          ; $48c8: $07
    rlca                                          ; $48c9: $07
    dec b                                         ; $48ca: $05
    dec b                                         ; $48cb: $05
    dec b                                         ; $48cc: $05
    dec b                                         ; $48cd: $05
    ld [bc], a                                    ; $48ce: $02
    ld [bc], a                                    ; $48cf: $02
    ld [bc], a                                    ; $48d0: $02
    ld [bc], a                                    ; $48d1: $02
    ld bc, $0103                                  ; $48d2: $01 $03 $01
    ld bc, $0d0c                                  ; $48d5: $01 $0c $0d
    ld d, [hl]                                    ; $48d8: $56
    ld d, a                                       ; $48d9: $57
    add hl, de                                    ; $48da: $19
    ld [hl], a                                    ; $48db: $77
    daa                                           ; $48dc: $27
    sbc c                                         ; $48dd: $99
    sbc d                                         ; $48de: $9a
    ld e, $7a                                     ; $48df: $1e $7a
    ld [hl-], a                                   ; $48e1: $32
    ld hl, $7b22                                  ; $48e2: $21 $22 $7b
    ld a, h                                       ; $48e5: $7c
    inc b                                         ; $48e6: $04
    inc b                                         ; $48e7: $04
    inc b                                         ; $48e8: $04
    inc b                                         ; $48e9: $04
    dec b                                         ; $48ea: $05
    dec b                                         ; $48eb: $05
    dec b                                         ; $48ec: $05
    dec c                                         ; $48ed: $0d
    ld a, [bc]                                    ; $48ee: $0a
    ld [bc], a                                    ; $48ef: $02
    ld [bc], a                                    ; $48f0: $02
    ld [bc], a                                    ; $48f1: $02
    inc bc                                        ; $48f2: $03
    inc bc                                        ; $48f3: $03
    inc bc                                        ; $48f4: $03
    ld bc, $0100                                  ; $48f5: $01 $00 $01
    ld a, [$070b]                                 ; $48f8: $fa $0b $07
    ld [de], a                                    ; $48fb: $12
    inc de                                        ; $48fc: $13
    inc d                                         ; $48fd: $14
    ld e, [hl]                                    ; $48fe: $5e
    sbc e                                         ; $48ff: $9b
    sbc h                                         ; $4900: $9c
    sbc l                                         ; $4901: $9d
    ld h, b                                       ; $4902: $60
    ld h, c                                       ; $4903: $61
    ld hl, $0622                                  ; $4904: $21 $22 $06
    inc b                                         ; $4907: $04
    inc b                                         ; $4908: $04
    inc b                                         ; $4909: $04
    dec b                                         ; $490a: $05
    dec b                                         ; $490b: $05
    dec b                                         ; $490c: $05
    dec b                                         ; $490d: $05
    ld [bc], a                                    ; $490e: $02
    ld a, [bc]                                    ; $490f: $0a
    ld a, [bc]                                    ; $4910: $0a
    ld a, [bc]                                    ; $4911: $0a
    ld [bc], a                                    ; $4912: $02
    ld bc, $0103                                  ; $4913: $01 $03 $01
    inc c                                         ; $4916: $0c
    dec c                                         ; $4917: $0d
    ld d, [hl]                                    ; $4918: $56
    ld d, a                                       ; $4919: $57
    daa                                           ; $491a: $27
    ld a, b                                       ; $491b: $78
    rla                                           ; $491c: $17
    ld e, l                                       ; $491d: $5d
    ld a, d                                       ; $491e: $7a
    ld [hl-], a                                   ; $491f: $32
    ld e, [hl]                                    ; $4920: $5e
    sbc [hl]                                      ; $4921: $9e
    ld a, e                                       ; $4922: $7b
    ld a, h                                       ; $4923: $7c
    ld h, b                                       ; $4924: $60
    ccf                                           ; $4925: $3f
    inc b                                         ; $4926: $04
    inc b                                         ; $4927: $04
    inc b                                         ; $4928: $04
    inc b                                         ; $4929: $04
    dec b                                         ; $492a: $05
    dec b                                         ; $492b: $05
    dec b                                         ; $492c: $05
    dec b                                         ; $492d: $05
    ld [bc], a                                    ; $492e: $02
    ld [bc], a                                    ; $492f: $02
    ld [bc], a                                    ; $4930: $02
    ld a, [bc]                                    ; $4931: $0a
    ld [bc], a                                    ; $4932: $02
    ld bc, $0301                                  ; $4933: $01 $01 $03
    sbc a                                         ; $4936: $9f
    ld e, e                                       ; $4937: $5b
    inc hl                                        ; $4938: $23
    add c                                         ; $4939: $81
    ld h, e                                       ; $493a: $63
    ld h, h                                       ; $493b: $64
    ld l, d                                       ; $493c: $6a
    add d                                         ; $493d: $82
    ld c, b                                       ; $493e: $48
    ld c, c                                       ; $493f: $49
    ld c, d                                       ; $4940: $4a
    ld c, e                                       ; $4941: $4b
    pop de                                        ; $4942: $d1
    pop de                                        ; $4943: $d1
    pop de                                        ; $4944: $d1
    pop de                                        ; $4945: $d1
    add hl, bc                                    ; $4946: $09
    ld [bc], a                                    ; $4947: $02
    ld bc, $0309                                  ; $4948: $01 $09 $03
    ld bc, $0b01                                  ; $494b: $01 $01 $0b
    add h                                         ; $494e: $84
    add [hl]                                      ; $494f: $86
    add a                                         ; $4950: $87
    add h                                         ; $4951: $84
    add h                                         ; $4952: $84
    add h                                         ; $4953: $84
    add h                                         ; $4954: $84
    add h                                         ; $4955: $84
    dec h                                         ; $4956: $25
    adc l                                         ; $4957: $8d
    ld l, $8a                                     ; $4958: $2e $8a
    ld c, $35                                     ; $495a: $0e $35
    adc e                                         ; $495c: $8b
    adc h                                         ; $495d: $8c
    ld l, b                                       ; $495e: $68
    ld l, c                                       ; $495f: $69
    ld b, d                                       ; $4960: $42
    ld b, h                                       ; $4961: $44
    pop de                                        ; $4962: $d1
    pop de                                        ; $4963: $d1
    pop de                                        ; $4964: $d1
    pop de                                        ; $4965: $d1
    ld bc, $0309                                  ; $4966: $01 $09 $03
    add hl, bc                                    ; $4969: $09
    ld bc, $0901                                  ; $496a: $01 $01 $09
    ld a, [bc]                                    ; $496d: $0a
    add h                                         ; $496e: $84
    add a                                         ; $496f: $87
    add h                                         ; $4970: $84
    add h                                         ; $4971: $84
    add h                                         ; $4972: $84
    add h                                         ; $4973: $84
    add h                                         ; $4974: $84
    add h                                         ; $4975: $84
    inc hl                                        ; $4976: $23
    ld l, h                                       ; $4977: $6c
    dec h                                         ; $4978: $25
    adc l                                         ; $4979: $8d
    adc [hl]                                      ; $497a: $8e
    adc a                                         ; $497b: $8f
    ld c, $35                                     ; $497c: $0e $35
    ld c, b                                       ; $497e: $48
    ld c, c                                       ; $497f: $49
    ld c, d                                       ; $4980: $4a
    ld c, e                                       ; $4981: $4b
    pop de                                        ; $4982: $d1
    pop de                                        ; $4983: $d1
    pop de                                        ; $4984: $d1
    pop de                                        ; $4985: $d1
    inc bc                                        ; $4986: $03
    ld bc, $0a01                                  ; $4987: $01 $01 $0a
    add hl, bc                                    ; $498a: $09
    dec bc                                        ; $498b: $0b
    ld bc, $8601                                  ; $498c: $01 $01 $86
    add h                                         ; $498f: $84
    add h                                         ; $4990: $84
    add a                                         ; $4991: $87
    add h                                         ; $4992: $84
    add h                                         ; $4993: $84
    add h                                         ; $4994: $84
    add h                                         ; $4995: $84
    ld l, $8a                                     ; $4996: $2e $8a
    inc hl                                        ; $4998: $23
    and b                                         ; $4999: $a0
    adc e                                         ; $499a: $8b
    dec hl                                        ; $499b: $2b
    inc l                                         ; $499c: $2c
    and c                                         ; $499d: $a1
    ld l, b                                       ; $499e: $68
    ld l, c                                       ; $499f: $69
    ld b, d                                       ; $49a0: $42
    ld b, h                                       ; $49a1: $44
    pop de                                        ; $49a2: $d1
    pop de                                        ; $49a3: $d1
    pop de                                        ; $49a4: $d1
    pop de                                        ; $49a5: $d1
    ld bc, $010b                                  ; $49a6: $01 $0b $01
    add hl, bc                                    ; $49a9: $09
    dec bc                                        ; $49aa: $0b
    inc bc                                        ; $49ab: $03
    ld bc, $8609                                  ; $49ac: $01 $09 $86
    add a                                         ; $49af: $87
    add a                                         ; $49b0: $87
    add [hl]                                      ; $49b1: $86
    add h                                         ; $49b2: $84
    add h                                         ; $49b3: $84
    add h                                         ; $49b4: $84
    add h                                         ; $49b5: $84
    pop de                                        ; $49b6: $d1
    pop de                                        ; $49b7: $d1
    pop de                                        ; $49b8: $d1
    pop de                                        ; $49b9: $d1
    pop de                                        ; $49ba: $d1
    pop de                                        ; $49bb: $d1
    pop de                                        ; $49bc: $d1
    pop de                                        ; $49bd: $d1
    pop de                                        ; $49be: $d1
    pop de                                        ; $49bf: $d1
    pop de                                        ; $49c0: $d1
    pop de                                        ; $49c1: $d1
    jp c, $d3db                                   ; $49c2: $da $db $d3

    db $e4                                        ; $49c5: $e4
    inc b                                         ; $49c6: $04
    inc b                                         ; $49c7: $04
    inc b                                         ; $49c8: $04
    inc b                                         ; $49c9: $04
    inc b                                         ; $49ca: $04
    inc b                                         ; $49cb: $04
    inc b                                         ; $49cc: $04
    inc b                                         ; $49cd: $04
    inc b                                         ; $49ce: $04
    inc b                                         ; $49cf: $04
    inc b                                         ; $49d0: $04
    inc b                                         ; $49d1: $04
    inc b                                         ; $49d2: $04
    inc b                                         ; $49d3: $04
    inc b                                         ; $49d4: $04
    inc b                                         ; $49d5: $04
    pop de                                        ; $49d6: $d1
    pop de                                        ; $49d7: $d1
    pop de                                        ; $49d8: $d1
    pop de                                        ; $49d9: $d1
    pop de                                        ; $49da: $d1
    pop de                                        ; $49db: $d1
    pop de                                        ; $49dc: $d1
    pop de                                        ; $49dd: $d1
    pop de                                        ; $49de: $d1
    pop de                                        ; $49df: $d1
    pop de                                        ; $49e0: $d1
    pop de                                        ; $49e1: $d1
    jp c, $d3db                                   ; $49e2: $da $db $d3

    db $e4                                        ; $49e5: $e4
    inc b                                         ; $49e6: $04
    inc b                                         ; $49e7: $04
    inc b                                         ; $49e8: $04
    inc b                                         ; $49e9: $04
    inc b                                         ; $49ea: $04
    inc b                                         ; $49eb: $04
    inc b                                         ; $49ec: $04
    inc b                                         ; $49ed: $04
    inc b                                         ; $49ee: $04
    inc b                                         ; $49ef: $04
    inc b                                         ; $49f0: $04
    inc b                                         ; $49f1: $04
    inc b                                         ; $49f2: $04
    inc b                                         ; $49f3: $04
    inc b                                         ; $49f4: $04
    ld b, $d1                                     ; $49f5: $06 $d1
    pop de                                        ; $49f7: $d1
    pop de                                        ; $49f8: $d1
    pop de                                        ; $49f9: $d1
    pop de                                        ; $49fa: $d1
    pop de                                        ; $49fb: $d1
    pop de                                        ; $49fc: $d1
    pop de                                        ; $49fd: $d1
    pop de                                        ; $49fe: $d1
    pop de                                        ; $49ff: $d1
    pop de                                        ; $4a00: $d1
    pop de                                        ; $4a01: $d1
    push hl                                       ; $4a02: $e5
    and $d1                                       ; $4a03: $e6 $d1
    pop de                                        ; $4a05: $d1
    inc b                                         ; $4a06: $04
    inc b                                         ; $4a07: $04
    inc b                                         ; $4a08: $04
    inc b                                         ; $4a09: $04
    inc b                                         ; $4a0a: $04
    inc b                                         ; $4a0b: $04
    inc b                                         ; $4a0c: $04
    inc b                                         ; $4a0d: $04
    inc b                                         ; $4a0e: $04
    inc b                                         ; $4a0f: $04
    inc b                                         ; $4a10: $04
    inc b                                         ; $4a11: $04
    inc b                                         ; $4a12: $04
    inc b                                         ; $4a13: $04
    inc b                                         ; $4a14: $04
    inc b                                         ; $4a15: $04
    call c, $d6dd                                 ; $4a16: $dc $dd $d6
    ld l, [hl]                                    ; $4a19: $6e
    sbc $df                                       ; $4a1a: $de $df
    reti                                          ; $4a1c: $d9


    ld [hl], b                                    ; $4a1d: $70
    ld [c], a                                     ; $4a1e: $e2
    db $e3                                        ; $4a1f: $e3
    db $ed                                        ; $4a20: $ed
    ld [hl], d                                    ; $4a21: $72
    cp $ff                                        ; $4a22: $fe $ff
    rst $30                                       ; $4a24: $f7
    ld [$0604], sp                                ; $4a25: $08 $04 $06
    ld b, $04                                     ; $4a28: $06 $04
    inc b                                         ; $4a2a: $04
    inc b                                         ; $4a2b: $04
    inc b                                         ; $4a2c: $04
    inc b                                         ; $4a2d: $04
    inc b                                         ; $4a2e: $04
    ld b, $06                                     ; $4a2f: $06 $06
    ld b, $04                                     ; $4a31: $06 $04
    inc b                                         ; $4a33: $04
    inc b                                         ; $4a34: $04
    inc b                                         ; $4a35: $04
    ld l, a                                       ; $4a36: $6f
    jp hl                                         ; $4a37: $e9


    ld c, [hl]                                    ; $4a38: $4e
    ld c, a                                       ; $4a39: $4f
    ld [hl], c                                    ; $4a3a: $71
    db $ec                                        ; $4a3b: $ec
    ld d, b                                       ; $4a3c: $50
    ld d, c                                       ; $4a3d: $51
    ld [hl], e                                    ; $4a3e: $73
    ldh a, [rHDMA2]                               ; $4a3f: $f0 $52
    ld d, e                                       ; $4a41: $53
    add hl, bc                                    ; $4a42: $09
    ld a, [bc]                                    ; $4a43: $0a
    ld d, h                                       ; $4a44: $54
    ld d, l                                       ; $4a45: $55
    rlca                                          ; $4a46: $07
    inc b                                         ; $4a47: $04
    inc b                                         ; $4a48: $04
    rlca                                          ; $4a49: $07
    inc b                                         ; $4a4a: $04
    inc b                                         ; $4a4b: $04
    inc b                                         ; $4a4c: $04
    ld b, $04                                     ; $4a4d: $06 $04
    inc b                                         ; $4a4f: $04
    rlca                                          ; $4a50: $07
    ld b, $06                                     ; $4a51: $06 $06
    inc b                                         ; $4a53: $04
    inc b                                         ; $4a54: $04
    inc b                                         ; $4a55: $04
    call c, $d6dd                                 ; $4a56: $dc $dd $d6
    ld l, [hl]                                    ; $4a59: $6e
    sbc $df                                       ; $4a5a: $de $df
    reti                                          ; $4a5c: $d9


    ld [hl], b                                    ; $4a5d: $70
    ld [c], a                                     ; $4a5e: $e2
    db $e3                                        ; $4a5f: $e3
    db $ed                                        ; $4a60: $ed
    ld [hl], d                                    ; $4a61: $72
    cp $ff                                        ; $4a62: $fe $ff
    rst $30                                       ; $4a64: $f7
    ld [$0406], sp                                ; $4a65: $08 $06 $04
    rlca                                          ; $4a68: $07
    ld b, $04                                     ; $4a69: $06 $04
    inc b                                         ; $4a6b: $04
    inc b                                         ; $4a6c: $04
    rlca                                          ; $4a6d: $07
    inc b                                         ; $4a6e: $04
    ld b, $04                                     ; $4a6f: $06 $04
    inc b                                         ; $4a71: $04
    rlca                                          ; $4a72: $07
    rlca                                          ; $4a73: $07
    ld b, $04                                     ; $4a74: $06 $04
    ld l, a                                       ; $4a76: $6f
    jp hl                                         ; $4a77: $e9


    push de                                       ; $4a78: $d5
    call nc, $ec71                                ; $4a79: $d4 $71 $ec
    ret c                                         ; $4a7c: $d8

    rst $10                                       ; $4a7d: $d7
    ld [hl], e                                    ; $4a7e: $73
    ldh a, [$e1]                                  ; $4a7f: $f0 $e1
    ldh [$09], a                                  ; $4a81: $e0 $09
    ld a, [bc]                                    ; $4a83: $0a
    or $f5                                        ; $4a84: $f6 $f5
    inc b                                         ; $4a86: $04
    rlca                                          ; $4a87: $07
    inc h                                         ; $4a88: $24
    daa                                           ; $4a89: $27
    ld b, $04                                     ; $4a8a: $06 $04
    ld h, $24                                     ; $4a8c: $26 $24
    ld b, $04                                     ; $4a8e: $06 $04
    inc h                                         ; $4a90: $24
    ld h, $07                                     ; $4a91: $26 $07
    rlca                                          ; $4a93: $07
    inc h                                         ; $4a94: $24
    ld h, $00                                     ; $4a95: $26 $00
    ld bc, $0bfa                                  ; $4a97: $01 $fa $0b
    add hl, de                                    ; $4a9a: $19
    ld [hl], a                                    ; $4a9b: $77
    daa                                           ; $4a9c: $27
    ld a, b                                       ; $4a9d: $78
    ld a, $45                                     ; $4a9e: $3e $45
    and d                                         ; $4aa0: $a2
    ld [hl-], a                                   ; $4aa1: $32
    ld b, b                                       ; $4aa2: $40
    ld b, a                                       ; $4aa3: $47
    ld a, e                                       ; $4aa4: $7b
    and e                                         ; $4aa5: $a3
    inc b                                         ; $4aa6: $04
    ld b, $06                                     ; $4aa7: $06 $06
    inc b                                         ; $4aa9: $04
    dec b                                         ; $4aaa: $05
    dec b                                         ; $4aab: $05
    dec b                                         ; $4aac: $05
    dec b                                         ; $4aad: $05
    ld [bc], a                                    ; $4aae: $02
    ld [bc], a                                    ; $4aaf: $02
    ld a, [bc]                                    ; $4ab0: $0a
    ld [bc], a                                    ; $4ab1: $02
    ld bc, $0301                                  ; $4ab2: $01 $01 $03
    add hl, bc                                    ; $4ab5: $09
    inc c                                         ; $4ab6: $0c
    dec c                                         ; $4ab7: $0d
    ld d, [hl]                                    ; $4ab8: $56
    ld d, a                                       ; $4ab9: $57
    rla                                           ; $4aba: $17
    ld e, l                                       ; $4abb: $5d
    add hl, de                                    ; $4abc: $19
    ld [hl], a                                    ; $4abd: $77
    ld e, [hl]                                    ; $4abe: $5e
    ld e, a                                       ; $4abf: $5f
    ld a, c                                       ; $4ac0: $79
    and h                                         ; $4ac1: $a4
    add l                                         ; $4ac2: $85
    add [hl]                                      ; $4ac3: $86
    add a                                         ; $4ac4: $87
    ld [hl+], a                                   ; $4ac5: $22
    inc b                                         ; $4ac6: $04
    rlca                                          ; $4ac7: $07
    inc b                                         ; $4ac8: $04
    inc b                                         ; $4ac9: $04
    dec b                                         ; $4aca: $05
    dec b                                         ; $4acb: $05
    dec b                                         ; $4acc: $05
    dec b                                         ; $4acd: $05
    ld [bc], a                                    ; $4ace: $02
    ld [bc], a                                    ; $4acf: $02
    ld [bc], a                                    ; $4ad0: $02
    ld a, [bc]                                    ; $4ad1: $0a
    add hl, bc                                    ; $4ad2: $09
    add hl, bc                                    ; $4ad3: $09
    add hl, bc                                    ; $4ad4: $09
    inc bc                                        ; $4ad5: $03
    nop                                           ; $4ad6: $00
    ld bc, $0bfa                                  ; $4ad7: $01 $fa $0b
    ld h, e                                       ; $4ada: $63
    ld h, h                                       ; $4adb: $64
    ld l, d                                       ; $4adc: $6a
    add d                                         ; $4add: $82
    ld h, [hl]                                    ; $4ade: $66
    add e                                         ; $4adf: $83
    ld l, e                                       ; $4ae0: $6b
    and l                                         ; $4ae1: $a5
    ld a, e                                       ; $4ae2: $7b
    ld a, h                                       ; $4ae3: $7c
    ld h, b                                       ; $4ae4: $60
    ld h, c                                       ; $4ae5: $61
    rlca                                          ; $4ae6: $07
    ld b, $04                                     ; $4ae7: $06 $04
    inc b                                         ; $4ae9: $04
    dec b                                         ; $4aea: $05
    dec b                                         ; $4aeb: $05
    dec b                                         ; $4aec: $05
    dec c                                         ; $4aed: $0d
    ld [bc], a                                    ; $4aee: $02
    ld a, [bc]                                    ; $4aef: $0a
    ld bc, $010a                                  ; $4af0: $01 $0a $01
    ld bc, $0103                                  ; $4af3: $01 $03 $01
    inc c                                         ; $4af6: $0c
    dec c                                         ; $4af7: $0d
    ld sp, hl                                     ; $4af8: $f9
    ld hl, sp-$5a                                 ; $4af9: $f8 $a6
    ld [hl], a                                    ; $4afb: $77
    db $fc                                        ; $4afc: $fc
    ei                                            ; $4afd: $fb
    dec hl                                        ; $4afe: $2b
    inc l                                         ; $4aff: $2c
    and a                                         ; $4b00: $a7
    ld [hl-], a                                   ; $4b01: $32
    ld hl, $7b22                                  ; $4b02: $21 $22 $7b
    ld a, h                                       ; $4b05: $7c
    ld b, $04                                     ; $4b06: $06 $04
    inc h                                         ; $4b08: $24
    inc h                                         ; $4b09: $24
    dec c                                         ; $4b0a: $0d
    dec b                                         ; $4b0b: $05
    ld h, $24                                     ; $4b0c: $26 $24
    ld [bc], a                                    ; $4b0e: $02
    ld [bc], a                                    ; $4b0f: $02
    ld a, [bc]                                    ; $4b10: $0a
    dec b                                         ; $4b11: $05
    ld [bc], a                                    ; $4b12: $02
    ld bc, $0201                                  ; $4b13: $01 $01 $02
    xor b                                         ; $4b16: $a8
    adc l                                         ; $4b17: $8d
    ld l, $8a                                     ; $4b18: $2e $8a
    ld c, $35                                     ; $4b1a: $0e $35
    adc e                                         ; $4b1c: $8b
    adc h                                         ; $4b1d: $8c
    ld c, b                                       ; $4b1e: $48
    ld c, c                                       ; $4b1f: $49
    ld c, d                                       ; $4b20: $4a
    ld c, e                                       ; $4b21: $4b
    pop de                                        ; $4b22: $d1
    pop de                                        ; $4b23: $d1
    pop de                                        ; $4b24: $d1
    pop de                                        ; $4b25: $d1
    add hl, bc                                    ; $4b26: $09
    add hl, bc                                    ; $4b27: $09
    ld [bc], a                                    ; $4b28: $02
    add hl, bc                                    ; $4b29: $09
    inc bc                                        ; $4b2a: $03
    ld bc, $0a09                                  ; $4b2b: $01 $09 $0a
    add a                                         ; $4b2e: $87
    add h                                         ; $4b2f: $84
    add [hl]                                      ; $4b30: $86
    add h                                         ; $4b31: $84
    add h                                         ; $4b32: $84
    add h                                         ; $4b33: $84
    add h                                         ; $4b34: $84
    add h                                         ; $4b35: $84
    xor c                                         ; $4b36: $a9
    ld l, h                                       ; $4b37: $6c
    dec h                                         ; $4b38: $25
    adc l                                         ; $4b39: $8d
    adc [hl]                                      ; $4b3a: $8e
    adc a                                         ; $4b3b: $8f
    ld c, $35                                     ; $4b3c: $0e $35
    ld l, b                                       ; $4b3e: $68
    ld l, c                                       ; $4b3f: $69
    ld b, d                                       ; $4b40: $42
    ld b, h                                       ; $4b41: $44
    pop de                                        ; $4b42: $d1
    pop de                                        ; $4b43: $d1
    pop de                                        ; $4b44: $d1
    pop de                                        ; $4b45: $d1
    dec bc                                        ; $4b46: $0b
    inc bc                                        ; $4b47: $03
    ld bc, $0b09                                  ; $4b48: $01 $09 $0b
    add hl, bc                                    ; $4b4b: $09
    ld bc, $8601                                  ; $4b4c: $01 $01 $86
    add a                                         ; $4b4f: $87
    add h                                         ; $4b50: $84
    add [hl]                                      ; $4b51: $86
    add h                                         ; $4b52: $84
    add h                                         ; $4b53: $84
    add h                                         ; $4b54: $84
    add h                                         ; $4b55: $84
    ld l, $8a                                     ; $4b56: $2e $8a
    inc hl                                        ; $4b58: $23
    ld l, h                                       ; $4b59: $6c
    adc e                                         ; $4b5a: $8b
    xor d                                         ; $4b5b: $aa
    rlca                                          ; $4b5c: $07
    ld [de], a                                    ; $4b5d: $12
    ld c, b                                       ; $4b5e: $48
    ld c, c                                       ; $4b5f: $49
    ld c, d                                       ; $4b60: $4a
    ld c, e                                       ; $4b61: $4b
    pop de                                        ; $4b62: $d1
    pop de                                        ; $4b63: $d1
    pop de                                        ; $4b64: $d1
    pop de                                        ; $4b65: $d1
    inc bc                                        ; $4b66: $03
    ld a, [bc]                                    ; $4b67: $0a
    ld bc, $0a02                                  ; $4b68: $01 $02 $0a
    add hl, bc                                    ; $4b6b: $09
    ld bc, $8403                                  ; $4b6c: $01 $03 $84
    add a                                         ; $4b6f: $87
    add h                                         ; $4b70: $84
    add [hl]                                      ; $4b71: $86
    add h                                         ; $4b72: $84
    add h                                         ; $4b73: $84
    add h                                         ; $4b74: $84
    add h                                         ; $4b75: $84
    adc b                                         ; $4b76: $88
    adc c                                         ; $4b77: $89
    ld l, $8a                                     ; $4b78: $2e $8a
    inc de                                        ; $4b7a: $13
    inc d                                         ; $4b7b: $14
    adc e                                         ; $4b7c: $8b
    adc h                                         ; $4b7d: $8c
    ld l, b                                       ; $4b7e: $68
    ld l, c                                       ; $4b7f: $69
    ld b, d                                       ; $4b80: $42
    ld b, h                                       ; $4b81: $44
    pop de                                        ; $4b82: $d1
    pop de                                        ; $4b83: $d1
    pop de                                        ; $4b84: $d1
    pop de                                        ; $4b85: $d1
    add hl, bc                                    ; $4b86: $09
    add hl, bc                                    ; $4b87: $09
    inc bc                                        ; $4b88: $03
    dec bc                                        ; $4b89: $0b
    ld bc, $0b01                                  ; $4b8a: $01 $01 $0b
    add hl, bc                                    ; $4b8d: $09
    add [hl]                                      ; $4b8e: $86
    add h                                         ; $4b8f: $84
    add [hl]                                      ; $4b90: $86
    add h                                         ; $4b91: $84
    add h                                         ; $4b92: $84
    add h                                         ; $4b93: $84
    add h                                         ; $4b94: $84
    add h                                         ; $4b95: $84
    pop de                                        ; $4b96: $d1
    pop de                                        ; $4b97: $d1
    pop de                                        ; $4b98: $d1
    pop de                                        ; $4b99: $d1
    pop de                                        ; $4b9a: $d1
    pop de                                        ; $4b9b: $d1
    pop de                                        ; $4b9c: $d1
    pop de                                        ; $4b9d: $d1
    pop de                                        ; $4b9e: $d1
    pop de                                        ; $4b9f: $d1
    pop de                                        ; $4ba0: $d1
    pop de                                        ; $4ba1: $d1
    pop de                                        ; $4ba2: $d1
    pop de                                        ; $4ba3: $d1
    pop de                                        ; $4ba4: $d1
    db $f4                                        ; $4ba5: $f4
    inc b                                         ; $4ba6: $04
    inc b                                         ; $4ba7: $04
    inc b                                         ; $4ba8: $04
    inc b                                         ; $4ba9: $04
    inc b                                         ; $4baa: $04
    inc b                                         ; $4bab: $04
    inc b                                         ; $4bac: $04
    inc b                                         ; $4bad: $04
    inc b                                         ; $4bae: $04
    inc b                                         ; $4baf: $04
    inc b                                         ; $4bb0: $04
    inc b                                         ; $4bb1: $04
    inc b                                         ; $4bb2: $04
    inc b                                         ; $4bb3: $04
    inc b                                         ; $4bb4: $04
    inc b                                         ; $4bb5: $04
    pop de                                        ; $4bb6: $d1
    pop de                                        ; $4bb7: $d1
    pop de                                        ; $4bb8: $d1
    pop de                                        ; $4bb9: $d1
    pop de                                        ; $4bba: $d1
    pop de                                        ; $4bbb: $d1
    jp c, $d4db                                   ; $4bbc: $da $db $d4

    push de                                       ; $4bbf: $d5
    call c, $d7dd                                 ; $4bc0: $dc $dd $d7
    ret c                                         ; $4bc3: $d8

    sbc $df                                       ; $4bc4: $de $df
    inc b                                         ; $4bc6: $04
    inc b                                         ; $4bc7: $04
    inc b                                         ; $4bc8: $04
    inc b                                         ; $4bc9: $04
    inc b                                         ; $4bca: $04
    inc b                                         ; $4bcb: $04
    inc b                                         ; $4bcc: $04
    inc b                                         ; $4bcd: $04
    inc b                                         ; $4bce: $04
    inc b                                         ; $4bcf: $04
    rlca                                          ; $4bd0: $07
    inc b                                         ; $4bd1: $04
    inc b                                         ; $4bd2: $04
    ld b, $04                                     ; $4bd3: $06 $04
    ld b, $d1                                     ; $4bd5: $06 $d1
    pop de                                        ; $4bd7: $d1
    pop de                                        ; $4bd8: $d1
    pop de                                        ; $4bd9: $d1
    db $d3                                        ; $4bda: $d3
    db $e4                                        ; $4bdb: $e4
    push hl                                       ; $4bdc: $e5
    and $d6                                       ; $4bdd: $e6 $d6
    ld l, [hl]                                    ; $4bdf: $6e
    ld l, a                                       ; $4be0: $6f
    jp hl                                         ; $4be1: $e9


    reti                                          ; $4be2: $d9


    ld [hl], b                                    ; $4be3: $70
    ld [hl], c                                    ; $4be4: $71
    db $ec                                        ; $4be5: $ec
    inc b                                         ; $4be6: $04
    inc b                                         ; $4be7: $04
    inc b                                         ; $4be8: $04
    inc b                                         ; $4be9: $04
    inc b                                         ; $4bea: $04
    inc b                                         ; $4beb: $04
    inc b                                         ; $4bec: $04
    inc b                                         ; $4bed: $04
    inc b                                         ; $4bee: $04
    inc b                                         ; $4bef: $04
    ld b, $07                                     ; $4bf0: $06 $07
    rlca                                          ; $4bf2: $07
    inc b                                         ; $4bf3: $04
    inc b                                         ; $4bf4: $04
    inc b                                         ; $4bf5: $04
    jp c, $d3db                                   ; $4bf6: $da $db $d3

    db $e4                                        ; $4bf9: $e4
    call c, $d6dd                                 ; $4bfa: $dc $dd $d6
    ld l, [hl]                                    ; $4bfd: $6e
    sbc $df                                       ; $4bfe: $de $df
    reti                                          ; $4c00: $d9


    ld [hl], b                                    ; $4c01: $70
    ld [c], a                                     ; $4c02: $e2
    db $e3                                        ; $4c03: $e3
    db $ed                                        ; $4c04: $ed
    ld [hl], d                                    ; $4c05: $72
    inc b                                         ; $4c06: $04
    inc b                                         ; $4c07: $04
    inc b                                         ; $4c08: $04
    inc b                                         ; $4c09: $04
    ld b, $04                                     ; $4c0a: $06 $04
    inc b                                         ; $4c0c: $04
    rlca                                          ; $4c0d: $07
    inc b                                         ; $4c0e: $04
    inc b                                         ; $4c0f: $04
    inc b                                         ; $4c10: $04
    ld b, $04                                     ; $4c11: $06 $04
    ld b, $04                                     ; $4c13: $06 $04
    inc b                                         ; $4c15: $04
    push hl                                       ; $4c16: $e5
    and $d4                                       ; $4c17: $e6 $d4
    push de                                       ; $4c19: $d5
    ld l, a                                       ; $4c1a: $6f
    jp hl                                         ; $4c1b: $e9


    rst $10                                       ; $4c1c: $d7
    ret c                                         ; $4c1d: $d8

    ld [hl], c                                    ; $4c1e: $71
    db $ec                                        ; $4c1f: $ec
    ldh [$e1], a                                  ; $4c20: $e0 $e1
    ld [hl], e                                    ; $4c22: $73
    ldh a, [$f5]                                  ; $4c23: $f0 $f5
    or $04                                        ; $4c25: $f6 $04
    inc b                                         ; $4c27: $04
    ld b, $06                                     ; $4c28: $06 $06
    rlca                                          ; $4c2a: $07
    inc b                                         ; $4c2b: $04
    rlca                                          ; $4c2c: $07
    inc b                                         ; $4c2d: $04
    rlca                                          ; $4c2e: $07
    rlca                                          ; $4c2f: $07
    ld b, $07                                     ; $4c30: $06 $07
    rlca                                          ; $4c32: $07
    inc b                                         ; $4c33: $04
    inc b                                         ; $4c34: $04
    inc b                                         ; $4c35: $04
    ldh [$e1], a                                  ; $4c36: $e0 $e1
    ld [c], a                                     ; $4c38: $e2
    db $e3                                        ; $4c39: $e3
    push af                                       ; $4c3a: $f5
    or $fe                                        ; $4c3b: $f6 $fe
    rst $38                                       ; $4c3d: $ff
    ld hl, sp-$07                                 ; $4c3e: $f8 $f9
    nop                                           ; $4c40: $00
    ld bc, $fcfb                                  ; $4c41: $01 $fb $fc
    adc e                                         ; $4c44: $8b
    adc h                                         ; $4c45: $8c
    rlca                                          ; $4c46: $07
    inc b                                         ; $4c47: $04
    rlca                                          ; $4c48: $07
    inc b                                         ; $4c49: $04
    inc b                                         ; $4c4a: $04
    rlca                                          ; $4c4b: $07
    inc b                                         ; $4c4c: $04

Call_07b_4c4d:
    ld b, $04                                     ; $4c4d: $06 $04
    rlca                                          ; $4c4f: $07
    rlca                                          ; $4c50: $07
    inc b                                         ; $4c51: $04
    inc b                                         ; $4c52: $04
    inc b                                         ; $4c53: $04
    dec c                                         ; $4c54: $0d
    dec c                                         ; $4c55: $0d
    db $ed                                        ; $4c56: $ed
    ld [hl], d                                    ; $4c57: $72
    ld [hl], e                                    ; $4c58: $73
    ldh a, [$f7]                                  ; $4c59: $f0 $f7
    ld [$0a09], sp                                ; $4c5b: $08 $09 $0a
    ld a, [$0c0b]                                 ; $4c5e: $fa $0b $0c
    dec c                                         ; $4c61: $0d
    adc [hl]                                      ; $4c62: $8e
    adc a                                         ; $4c63: $8f
    ld c, $35                                     ; $4c64: $0e $35
    rlca                                          ; $4c66: $07
    inc b                                         ; $4c67: $04
    rlca                                          ; $4c68: $07
    inc b                                         ; $4c69: $04
    inc b                                         ; $4c6a: $04
    ld b, $07                                     ; $4c6b: $06 $07
    rlca                                          ; $4c6d: $07
    inc b                                         ; $4c6e: $04
    ld b, $04                                     ; $4c6f: $06 $04
    rlca                                          ; $4c71: $07
    dec c                                         ; $4c72: $0d
    dec c                                         ; $4c73: $0d
    dec b                                         ; $4c74: $05
    dec b                                         ; $4c75: $05
    cp $ff                                        ; $4c76: $fe $ff
    rst $30                                       ; $4c78: $f7
    ld [$0100], sp                                ; $4c79: $08 $00 $01
    ld a, [$5e0b]                                 ; $4c7c: $fa $0b $5e
    ld e, a                                       ; $4c7f: $5f
    ld a, c                                       ; $4c80: $79
    ld e, $60                                     ; $4c81: $1e $60
    ld h, c                                       ; $4c83: $61
    ld hl, $0622                                  ; $4c84: $21 $22 $06
    rlca                                          ; $4c87: $07
    ld b, $04                                     ; $4c88: $06 $04
    rlca                                          ; $4c8a: $07
    inc b                                         ; $4c8b: $04
    inc b                                         ; $4c8c: $04
    inc b                                         ; $4c8d: $04
    dec b                                         ; $4c8e: $05
    dec b                                         ; $4c8f: $05
    dec b                                         ; $4c90: $05
    dec b                                         ; $4c91: $05
    ld [bc], a                                    ; $4c92: $02
    ld [bc], a                                    ; $4c93: $02
    ld [bc], a                                    ; $4c94: $02
    ld [bc], a                                    ; $4c95: $02
    add hl, bc                                    ; $4c96: $09
    ld a, [bc]                                    ; $4c97: $0a
    ld hl, sp-$07                                 ; $4c98: $f8 $f9
    inc c                                         ; $4c9a: $0c
    dec c                                         ; $4c9b: $0d
    ei                                            ; $4c9c: $fb
    db $fc                                        ; $4c9d: $fc
    ld a, d                                       ; $4c9e: $7a
    xor e                                         ; $4c9f: $ab
    rlca                                          ; $4ca0: $07
    ld [de], a                                    ; $4ca1: $12
    ld a, e                                       ; $4ca2: $7b
    ld a, h                                       ; $4ca3: $7c
    ld h, b                                       ; $4ca4: $60
    xor h                                         ; $4ca5: $ac
    inc b                                         ; $4ca6: $04
    inc b                                         ; $4ca7: $04
    ld b, $07                                     ; $4ca8: $06 $07
    inc b                                         ; $4caa: $04
    inc b                                         ; $4cab: $04
    inc b                                         ; $4cac: $04
    inc b                                         ; $4cad: $04
    dec b                                         ; $4cae: $05
    dec c                                         ; $4caf: $0d
    dec b                                         ; $4cb0: $05
    ld [bc], a                                    ; $4cb1: $02
    ld [bc], a                                    ; $4cb2: $02
    ld [bc], a                                    ; $4cb3: $02
    ld [bc], a                                    ; $4cb4: $02
    add hl, bc                                    ; $4cb5: $09
    ld a, l                                       ; $4cb6: $7d
    ld [hl], h                                    ; $4cb7: $74
    ld [hl], l                                    ; $4cb8: $75
    halt                                          ; $4cb9: $76
    xor l                                         ; $4cba: $ad
    xor [hl]                                      ; $4cbb: $ae
    daa                                           ; $4cbc: $27
    ld a, b                                       ; $4cbd: $78
    inc de                                        ; $4cbe: $13
    inc d                                         ; $4cbf: $14
    xor a                                         ; $4cc0: $af
    ld [hl-], a                                   ; $4cc1: $32
    or b                                          ; $4cc2: $b0
    or c                                          ; $4cc3: $b1
    ld a, e                                       ; $4cc4: $7b
    ld a, h                                       ; $4cc5: $7c
    dec b                                         ; $4cc6: $05
    ld [bc], a                                    ; $4cc7: $02
    ld [bc], a                                    ; $4cc8: $02
    ld [bc], a                                    ; $4cc9: $02
    ld a, [bc]                                    ; $4cca: $0a
    add hl, bc                                    ; $4ccb: $09
    ld bc, $0101                                  ; $4ccc: $01 $01 $01
    ld bc, $030b                                  ; $4ccf: $01 $0b $03
    add hl, bc                                    ; $4cd2: $09
    add hl, bc                                    ; $4cd3: $09
    ld bc, $6d03                                  ; $4cd4: $01 $03 $6d
    ld e, c                                       ; $4cd7: $59
    ld a, l                                       ; $4cd8: $7d
    ld [hl], h                                    ; $4cd9: $74
    rla                                           ; $4cda: $17
    ld e, l                                       ; $4cdb: $5d
    add hl, de                                    ; $4cdc: $19
    ld [hl], a                                    ; $4cdd: $77
    ld e, [hl]                                    ; $4cde: $5e
    ld e, a                                       ; $4cdf: $5f
    ld a, c                                       ; $4ce0: $79
    ld e, $ac                                     ; $4ce1: $1e $ac
    or b                                          ; $4ce3: $b0
    xor h                                         ; $4ce4: $ac
    or b                                          ; $4ce5: $b0

Call_07b_4ce6:
    ld [bc], a                                    ; $4ce6: $02
    ld [bc], a                                    ; $4ce7: $02
    ld [bc], a                                    ; $4ce8: $02
    ld [bc], a                                    ; $4ce9: $02
    ld [bc], a                                    ; $4cea: $02
    ld bc, $0102                                  ; $4ceb: $01 $02 $01
    ld bc, $0103                                  ; $4cee: $01 $03 $01
    ld bc, $0909                                  ; $4cf1: $01 $09 $09
    add hl, bc                                    ; $4cf4: $09
    add hl, bc                                    ; $4cf5: $09
    inc hl                                        ; $4cf6: $23
    ld l, h                                       ; $4cf7: $6c
    dec h                                         ; $4cf8: $25
    adc l                                         ; $4cf9: $8d
    adc [hl]                                      ; $4cfa: $8e
    adc a                                         ; $4cfb: $8f
    ld c, $35                                     ; $4cfc: $0e $35
    ld c, b                                       ; $4cfe: $48
    ld c, c                                       ; $4cff: $49
    ld c, d                                       ; $4d00: $4a
    ld c, e                                       ; $4d01: $4b
    pop de                                        ; $4d02: $d1
    pop de                                        ; $4d03: $d1
    pop de                                        ; $4d04: $d1
    pop de                                        ; $4d05: $d1
    ld bc, $0201                                  ; $4d06: $01 $01 $02
    add hl, bc                                    ; $4d09: $09
    add hl, bc                                    ; $4d0a: $09
    dec bc                                        ; $4d0b: $0b
    inc bc                                        ; $4d0c: $03
    inc bc                                        ; $4d0d: $03
    add a                                         ; $4d0e: $87
    add a                                         ; $4d0f: $87
    add [hl]                                      ; $4d10: $86
    add h                                         ; $4d11: $84
    add h                                         ; $4d12: $84
    add h                                         ; $4d13: $84
    add h                                         ; $4d14: $84
    add h                                         ; $4d15: $84
    ld l, $8a                                     ; $4d16: $2e $8a
    inc hl                                        ; $4d18: $23
    ld l, h                                       ; $4d19: $6c
    adc e                                         ; $4d1a: $8b
    adc h                                         ; $4d1b: $8c
    adc [hl]                                      ; $4d1c: $8e
    or d                                          ; $4d1d: $b2
    ld l, b                                       ; $4d1e: $68
    ld l, c                                       ; $4d1f: $69
    ld l, c                                       ; $4d20: $69
    ld b, c                                       ; $4d21: $41
    pop de                                        ; $4d22: $d1
    pop de                                        ; $4d23: $d1
    pop de                                        ; $4d24: $d1
    di                                            ; $4d25: $f3
    inc bc                                        ; $4d26: $03
    add hl, bc                                    ; $4d27: $09
    ld bc, $0903                                  ; $4d28: $01 $03 $09
    add hl, bc                                    ; $4d2b: $09
    add hl, bc                                    ; $4d2c: $09
    add hl, bc                                    ; $4d2d: $09
    add a                                         ; $4d2e: $87
    add [hl]                                      ; $4d2f: $86
    and h                                         ; $4d30: $a4
    and a                                         ; $4d31: $a7
    add h                                         ; $4d32: $84
    add h                                         ; $4d33: $84
    add h                                         ; $4d34: $84
    and [hl]                                      ; $4d35: $a6
    dec h                                         ; $4d36: $25
    adc l                                         ; $4d37: $8d
    ld l, $f1                                     ; $4d38: $2e $f1
    ld a, $45                                     ; $4d3a: $3e $45
    adc e                                         ; $4d3c: $8b
    ld a, [c]                                     ; $4d3d: $f2
    ld b, b                                       ; $4d3e: $40
    ld b, a                                       ; $4d3f: $47
    ld [hl], l                                    ; $4d40: $75
    di                                            ; $4d41: $f3
    or e                                          ; $4d42: $b3
    or h                                          ; $4d43: $b4
    daa                                           ; $4d44: $27
    db $f4                                        ; $4d45: $f4
    ld bc, $0309                                  ; $4d46: $01 $09 $03
    inc b                                         ; $4d49: $04
    ld bc, $0901                                  ; $4d4a: $01 $01 $09
    inc b                                         ; $4d4d: $04
    ld bc, $0301                                  ; $4d4e: $01 $01 $03
    inc b                                         ; $4d51: $04
    ld a, [bc]                                    ; $4d52: $0a
    add hl, bc                                    ; $4d53: $09
    ld [bc], a                                    ; $4d54: $02
    inc h                                         ; $4d55: $24
    or l                                          ; $4d56: $b5
    or [hl]                                       ; $4d57: $b6
    or a                                          ; $4d58: $b7
    cp b                                          ; $4d59: $b8
    cp c                                          ; $4d5a: $b9
    cp d                                          ; $4d5b: $ba
    cp e                                          ; $4d5c: $bb
    cp h                                          ; $4d5d: $bc
    cp l                                          ; $4d5e: $bd
    cp [hl]                                       ; $4d5f: $be
    cp a                                          ; $4d60: $bf
    ret nz                                        ; $4d61: $c0

    pop bc                                        ; $4d62: $c1
    jp nz, $c2c3                                  ; $4d63: $c2 $c3 $c2

    inc c                                         ; $4d66: $0c
    add hl, bc                                    ; $4d67: $09
    inc c                                         ; $4d68: $0c
    inc c                                         ; $4d69: $0c
    inc c                                         ; $4d6a: $0c
    inc c                                         ; $4d6b: $0c
    add hl, bc                                    ; $4d6c: $09
    add hl, bc                                    ; $4d6d: $09
    inc c                                         ; $4d6e: $0c
    inc c                                         ; $4d6f: $0c
    add hl, bc                                    ; $4d70: $09
    inc c                                         ; $4d71: $0c
    inc c                                         ; $4d72: $0c
    add hl, bc                                    ; $4d73: $09
    inc c                                         ; $4d74: $0c
    add hl, bc                                    ; $4d75: $09
    pop de                                        ; $4d76: $d1
    pop de                                        ; $4d77: $d1
    pop de                                        ; $4d78: $d1
    pop de                                        ; $4d79: $d1
    ld c, h                                       ; $4d7a: $4c
    ld c, l                                       ; $4d7b: $4d
    pop de                                        ; $4d7c: $d1
    pop de                                        ; $4d7d: $d1
    ld c, [hl]                                    ; $4d7e: $4e
    ld c, a                                       ; $4d7f: $4f
    push de                                       ; $4d80: $d5
    call nc, Call_07b_5150                        ; $4d81: $d4 $50 $51
    ret c                                         ; $4d84: $d8

    rst $10                                       ; $4d85: $d7
    inc b                                         ; $4d86: $04
    inc b                                         ; $4d87: $04
    inc b                                         ; $4d88: $04
    inc b                                         ; $4d89: $04
    inc b                                         ; $4d8a: $04
    inc b                                         ; $4d8b: $04
    inc b                                         ; $4d8c: $04
    inc b                                         ; $4d8d: $04
    rlca                                          ; $4d8e: $07
    inc b                                         ; $4d8f: $04
    inc h                                         ; $4d90: $24
    inc h                                         ; $4d91: $24
    inc b                                         ; $4d92: $04
    ld b, $26                                     ; $4d93: $06 $26
    daa                                           ; $4d95: $27
    pop de                                        ; $4d96: $d1
    pop de                                        ; $4d97: $d1
    pop de                                        ; $4d98: $d1
    pop de                                        ; $4d99: $d1
    pop de                                        ; $4d9a: $d1
    pop de                                        ; $4d9b: $d1
    pop de                                        ; $4d9c: $d1
    pop de                                        ; $4d9d: $d1
    pop de                                        ; $4d9e: $d1
    pop de                                        ; $4d9f: $d1
    pop de                                        ; $4da0: $d1
    pop de                                        ; $4da1: $d1
    db $f4                                        ; $4da2: $f4
    pop de                                        ; $4da3: $d1
    pop de                                        ; $4da4: $d1
    pop de                                        ; $4da5: $d1
    inc b                                         ; $4da6: $04
    inc b                                         ; $4da7: $04
    inc b                                         ; $4da8: $04
    inc b                                         ; $4da9: $04
    inc b                                         ; $4daa: $04
    inc b                                         ; $4dab: $04
    inc b                                         ; $4dac: $04
    inc b                                         ; $4dad: $04
    inc b                                         ; $4dae: $04
    inc b                                         ; $4daf: $04
    inc b                                         ; $4db0: $04
    inc b                                         ; $4db1: $04
    inc h                                         ; $4db2: $24
    inc b                                         ; $4db3: $04
    inc b                                         ; $4db4: $04
    inc b                                         ; $4db5: $04
    ld d, d                                       ; $4db6: $52
    ld d, e                                       ; $4db7: $53
    pop hl                                        ; $4db8: $e1
    ldh [rHDMA4], a                               ; $4db9: $e0 $54
    ld d, l                                       ; $4dbb: $55
    or $f5                                        ; $4dbc: $f6 $f5
    ld d, [hl]                                    ; $4dbe: $56
    ld d, a                                       ; $4dbf: $57
    ld sp, hl                                     ; $4dc0: $f9
    ld hl, sp-$75                                 ; $4dc1: $f8 $8b
    adc h                                         ; $4dc3: $8c
    db $fc                                        ; $4dc4: $fc
    ei                                            ; $4dc5: $fb
    ld b, $04                                     ; $4dc6: $06 $04
    inc h                                         ; $4dc8: $24
    inc h                                         ; $4dc9: $24
    ld b, $04                                     ; $4dca: $06 $04
    daa                                           ; $4dcc: $27
    ld h, $04                                     ; $4dcd: $26 $04
    inc b                                         ; $4dcf: $04
    ld h, $27                                     ; $4dd0: $26 $27
    dec c                                         ; $4dd2: $0d
    dec c                                         ; $4dd3: $0d
    inc h                                         ; $4dd4: $24
    daa                                           ; $4dd5: $27
    ld d, $d1                                     ; $4dd6: $16 $d1
    pop de                                        ; $4dd8: $d1
    pop de                                        ; $4dd9: $d1
    jp nc, $d1d1                                  ; $4dda: $d2 $d1 $d1

    pop de                                        ; $4ddd: $d1
    pop af                                        ; $4dde: $f1
    pop de                                        ; $4ddf: $d1
    pop de                                        ; $4de0: $d1
    pop de                                        ; $4de1: $d1
    ld a, [c]                                     ; $4de2: $f2
    pop de                                        ; $4de3: $d1
    pop de                                        ; $4de4: $d1
    pop de                                        ; $4de5: $d1
    daa                                           ; $4de6: $27
    inc b                                         ; $4de7: $04
    inc b                                         ; $4de8: $04
    inc b                                         ; $4de9: $04
    add [hl]                                      ; $4dea: $86
    add h                                         ; $4deb: $84
    inc b                                         ; $4dec: $04
    inc b                                         ; $4ded: $04
    add [hl]                                      ; $4dee: $86
    add h                                         ; $4def: $84
    inc b                                         ; $4df0: $04
    inc b                                         ; $4df1: $04
    add h                                         ; $4df2: $84
    add h                                         ; $4df3: $84
    inc b                                         ; $4df4: $04
    inc b                                         ; $4df5: $04
    ld [hl], l                                    ; $4df6: $75
    halt                                          ; $4df7: $76
    ld e, b                                       ; $4df8: $58
    ld e, c                                       ; $4df9: $59
    daa                                           ; $4dfa: $27
    dec hl                                        ; $4dfb: $2b
    inc l                                         ; $4dfc: $2c
    call nz, Call_000_327a                        ; $4dfd: $c4 $7a $32
    ld e, [hl]                                    ; $4e00: $5e
    ld e, a                                       ; $4e01: $5f
    ld a, e                                       ; $4e02: $7b
    ld a, h                                       ; $4e03: $7c
    ld h, b                                       ; $4e04: $60
    ld h, c                                       ; $4e05: $61
    ld [bc], a                                    ; $4e06: $02
    ld [bc], a                                    ; $4e07: $02
    ld [bc], a                                    ; $4e08: $02
    dec b                                         ; $4e09: $05
    ld bc, $0103                                  ; $4e0a: $01 $03 $01
    ld a, [bc]                                    ; $4e0d: $0a
    ld bc, $0102                                  ; $4e0e: $01 $02 $01
    ld [bc], a                                    ; $4e11: $02
    inc bc                                        ; $4e12: $03
    ld bc, $0201                                  ; $4e13: $01 $01 $02
    di                                            ; $4e16: $f3
    pop de                                        ; $4e17: $d1
    pop de                                        ; $4e18: $d1
    pop de                                        ; $4e19: $d1
    db $f4                                        ; $4e1a: $f4
    pop de                                        ; $4e1b: $d1
    pop de                                        ; $4e1c: $d1
    pop de                                        ; $4e1d: $d1
    ld d, $d1                                     ; $4e1e: $16 $d1
    pop de                                        ; $4e20: $d1
    pop de                                        ; $4e21: $d1
    jp nc, $d1d1                                  ; $4e22: $d2 $d1 $d1

    pop de                                        ; $4e25: $d1
    add a                                         ; $4e26: $87
    add h                                         ; $4e27: $84
    inc b                                         ; $4e28: $04
    inc b                                         ; $4e29: $04
    and [hl]                                      ; $4e2a: $a6
    add h                                         ; $4e2b: $84
    inc b                                         ; $4e2c: $04
    inc b                                         ; $4e2d: $04
    and h                                         ; $4e2e: $a4
    add h                                         ; $4e2f: $84
    inc b                                         ; $4e30: $04
    inc b                                         ; $4e31: $04
    add [hl]                                      ; $4e32: $86
    add h                                         ; $4e33: $84
    inc b                                         ; $4e34: $04
    inc b                                         ; $4e35: $04
    push bc                                       ; $4e36: $c5
    pop af                                        ; $4e37: $f1
    inc hl                                        ; $4e38: $23
    ld l, h                                       ; $4e39: $6c
    add $f2                                       ; $4e3a: $c6 $f2
    adc [hl]                                      ; $4e3c: $8e
    adc a                                         ; $4e3d: $8f
    rst $00                                       ; $4e3e: $c7
    di                                            ; $4e3f: $f3
    ld l, l                                       ; $4e40: $6d
    ld e, c                                       ; $4e41: $59
    ret z                                         ; $4e42: $c8

    db $f4                                        ; $4e43: $f4
    rla                                           ; $4e44: $17
    ld e, l                                       ; $4e45: $5d
    add hl, bc                                    ; $4e46: $09
    inc b                                         ; $4e47: $04
    ld [bc], a                                    ; $4e48: $02
    ld [bc], a                                    ; $4e49: $02
    inc c                                         ; $4e4a: $0c
    inc b                                         ; $4e4b: $04
    dec c                                         ; $4e4c: $0d
    ld a, [bc]                                    ; $4e4d: $0a
    add hl, bc                                    ; $4e4e: $09
    inc b                                         ; $4e4f: $04
    dec b                                         ; $4e50: $05
    ld [bc], a                                    ; $4e51: $02
    inc c                                         ; $4e52: $0c
    inc h                                         ; $4e53: $24
    dec b                                         ; $4e54: $05
    ld [bc], a                                    ; $4e55: $02
    pop af                                        ; $4e56: $f1
    pop de                                        ; $4e57: $d1
    pop de                                        ; $4e58: $d1
    pop de                                        ; $4e59: $d1
    ld a, [c]                                     ; $4e5a: $f2
    pop de                                        ; $4e5b: $d1
    pop de                                        ; $4e5c: $d1
    pop de                                        ; $4e5d: $d1
    di                                            ; $4e5e: $f3
    pop de                                        ; $4e5f: $d1
    pop de                                        ; $4e60: $d1
    pop de                                        ; $4e61: $d1
    db $f4                                        ; $4e62: $f4
    pop de                                        ; $4e63: $d1
    pop de                                        ; $4e64: $d1
    pop de                                        ; $4e65: $d1
    add a                                         ; $4e66: $87
    add h                                         ; $4e67: $84
    inc b                                         ; $4e68: $04
    inc b                                         ; $4e69: $04
    add h                                         ; $4e6a: $84
    add h                                         ; $4e6b: $84
    inc b                                         ; $4e6c: $04
    inc b                                         ; $4e6d: $04
    add [hl]                                      ; $4e6e: $86
    add h                                         ; $4e6f: $84
    inc b                                         ; $4e70: $04
    inc b                                         ; $4e71: $04
    and h                                         ; $4e72: $a4
    add h                                         ; $4e73: $84
    inc b                                         ; $4e74: $04
    inc b                                         ; $4e75: $04
    pop de                                        ; $4e76: $d1
    pop de                                        ; $4e77: $d1
    pop de                                        ; $4e78: $d1
    pop af                                        ; $4e79: $f1
    pop de                                        ; $4e7a: $d1
    pop de                                        ; $4e7b: $d1
    pop de                                        ; $4e7c: $d1
    ld a, [c]                                     ; $4e7d: $f2
    pop de                                        ; $4e7e: $d1
    pop de                                        ; $4e7f: $d1
    pop de                                        ; $4e80: $d1
    di                                            ; $4e81: $f3
    pop de                                        ; $4e82: $d1
    pop de                                        ; $4e83: $d1
    pop de                                        ; $4e84: $d1
    db $f4                                        ; $4e85: $f4
    inc b                                         ; $4e86: $04
    inc b                                         ; $4e87: $04
    add h                                         ; $4e88: $84
    and h                                         ; $4e89: $a4
    inc b                                         ; $4e8a: $04
    inc b                                         ; $4e8b: $04
    add h                                         ; $4e8c: $84
    and a                                         ; $4e8d: $a7
    inc b                                         ; $4e8e: $04
    inc b                                         ; $4e8f: $04
    add h                                         ; $4e90: $84
    and a                                         ; $4e91: $a7
    inc b                                         ; $4e92: $04
    inc b                                         ; $4e93: $04
    add h                                         ; $4e94: $84
    add h                                         ; $4e95: $84
    rra                                           ; $4e96: $1f
    jr nz, jr_07b_4eba                            ; $4e97: $20 $21

    ld [hl+], a                                   ; $4e99: $22
    inc hl                                        ; $4e9a: $23
    inc h                                         ; $4e9b: $24
    dec hl                                        ; $4e9c: $2b
    inc l                                         ; $4e9d: $2c
    ld [bc], a                                    ; $4e9e: $02
    inc bc                                        ; $4e9f: $03
    ld c, $35                                     ; $4ea0: $0e $35
    ld e, b                                       ; $4ea2: $58

jr_07b_4ea3:
    ld e, c                                       ; $4ea3: $59
    jr c, jr_07b_4ea3                             ; $4ea4: $38 $fd

    ld [bc], a                                    ; $4ea6: $02
    dec b                                         ; $4ea7: $05
    ld [bc], a                                    ; $4ea8: $02
    dec b                                         ; $4ea9: $05
    dec b                                         ; $4eaa: $05
    ld [bc], a                                    ; $4eab: $02
    dec b                                         ; $4eac: $05
    dec b                                         ; $4ead: $05
    dec b                                         ; $4eae: $05
    dec b                                         ; $4eaf: $05
    ld [bc], a                                    ; $4eb0: $02
    dec b                                         ; $4eb1: $05
    dec b                                         ; $4eb2: $05
    dec b                                         ; $4eb3: $05
    dec b                                         ; $4eb4: $05
    dec b                                         ; $4eb5: $05
    push de                                       ; $4eb6: $d5
    call nc, $dbda                                ; $4eb7: $d4 $da $db

jr_07b_4eba:
    ret c                                         ; $4eba: $d8

    rst $10                                       ; $4ebb: $d7
    call c, $e1c9                                 ; $4ebc: $dc $c9 $e1
    ldh [$de], a                                  ; $4ebf: $e0 $de
    jp z, $f5f6                                   ; $4ec1: $ca $f6 $f5

    ld [c], a                                     ; $4ec4: $e2
    sla h                                         ; $4ec5: $cb $24
    inc h                                         ; $4ec7: $24
    inc b                                         ; $4ec8: $04
    add h                                         ; $4ec9: $84
    ld h, $24                                     ; $4eca: $26 $24
    rlca                                          ; $4ecc: $07
    inc c                                         ; $4ecd: $0c
    daa                                           ; $4ece: $27
    daa                                           ; $4ecf: $27
    inc b                                         ; $4ed0: $04
    inc c                                         ; $4ed1: $0c
    inc h                                         ; $4ed2: $24
    ld h, $04                                     ; $4ed3: $26 $04
    inc c                                         ; $4ed5: $0c
    db $d3                                        ; $4ed6: $d3
    db $e4                                        ; $4ed7: $e4
    push hl                                       ; $4ed8: $e5
    and $cc                                       ; $4ed9: $e6 $cc

Jump_07b_4edb:
    ld l, [hl]                                    ; $4edb: $6e
    ld l, a                                       ; $4edc: $6f
    jp hl                                         ; $4edd: $e9


    call Call_07b_7170                            ; $4ede: $cd $70 $71
    db $ec                                        ; $4ee1: $ec
    adc $72                                       ; $4ee2: $ce $72
    ld [hl], e                                    ; $4ee4: $73
    ldh a, [$84]                                  ; $4ee5: $f0 $84
    add h                                         ; $4ee7: $84
    add a                                         ; $4ee8: $87

Call_07b_4ee9:
Jump_07b_4ee9:
    add h                                         ; $4ee9: $84
    inc c                                         ; $4eea: $0c
    inc b                                         ; $4eeb: $04
    rlca                                          ; $4eec: $07
    rlca                                          ; $4eed: $07
    inc c                                         ; $4eee: $0c
    inc b                                         ; $4eef: $04
    ld b, $07                                     ; $4ef0: $06 $07
    inc c                                         ; $4ef2: $0c
    inc b                                         ; $4ef3: $04
    ld b, $04                                     ; $4ef4: $06 $04
    pop de                                        ; $4ef6: $d1
    pop de                                        ; $4ef7: $d1
    pop de                                        ; $4ef8: $d1
    ld d, $d1                                     ; $4ef9: $16 $d1
    pop de                                        ; $4efb: $d1
    pop de                                        ; $4efc: $d1
    jp nc, $d1d1                                  ; $4efd: $d2 $d1 $d1

    pop de                                        ; $4f00: $d1
    pop af                                        ; $4f01: $f1
    pop de                                        ; $4f02: $d1
    pop de                                        ; $4f03: $d1
    pop de                                        ; $4f04: $d1
    ld a, [c]                                     ; $4f05: $f2
    inc b                                         ; $4f06: $04
    inc b                                         ; $4f07: $04
    add h                                         ; $4f08: $84
    add h                                         ; $4f09: $84
    inc b                                         ; $4f0a: $04
    inc b                                         ; $4f0b: $04
    add h                                         ; $4f0c: $84
    and a                                         ; $4f0d: $a7
    inc b                                         ; $4f0e: $04
    inc b                                         ; $4f0f: $04
    add h                                         ; $4f10: $84
    and h                                         ; $4f11: $a4
    inc b                                         ; $4f12: $04
    inc b                                         ; $4f13: $04
    add h                                         ; $4f14: $84
    and a                                         ; $4f15: $a7
    rla                                           ; $4f16: $17
    jr jr_07b_4f32                                ; $4f17: $18 $19

    ld a, [de]                                    ; $4f19: $1a
    dec de                                        ; $4f1a: $1b
    inc e                                         ; $4f1b: $1c
    dec e                                         ; $4f1c: $1d
    ld e, $1f                                     ; $4f1d: $1e $1f
    ld e, d                                       ; $4f1f: $5a
    ld e, e                                       ; $4f20: $5b
    rst $08                                       ; $4f21: $cf
    rla                                           ; $4f22: $17
    ld h, e                                       ; $4f23: $63
    ld h, h                                       ; $4f24: $64
    ld l, d                                       ; $4f25: $6a
    dec b                                         ; $4f26: $05
    dec b                                         ; $4f27: $05
    dec b                                         ; $4f28: $05
    dec b                                         ; $4f29: $05
    dec b                                         ; $4f2a: $05
    dec b                                         ; $4f2b: $05
    dec b                                         ; $4f2c: $05
    dec b                                         ; $4f2d: $05
    dec b                                         ; $4f2e: $05
    dec b                                         ; $4f2f: $05
    dec b                                         ; $4f30: $05
    dec c                                         ; $4f31: $0d

jr_07b_4f32:
    dec b                                         ; $4f32: $05
    dec b                                         ; $4f33: $05
    dec b                                         ; $4f34: $05
    dec b                                         ; $4f35: $05
    ld sp, hl                                     ; $4f36: $f9
    ld hl, sp-$02                                 ; $4f37: $f8 $fe
    rst $38                                       ; $4f39: $ff
    db $fc                                        ; $4f3a: $fc
    ei                                            ; $4f3b: $fb
    nop                                           ; $4f3c: $00
    ld bc, $7681                                  ; $4f3d: $01 $81 $76
    ld l, l                                       ; $4f40: $6d
    ld e, c                                       ; $4f41: $59
    add d                                         ; $4f42: $82
    ld a, b                                       ; $4f43: $78
    rla                                           ; $4f44: $17
    ld e, l                                       ; $4f45: $5d
    inc h                                         ; $4f46: $24
    ld h, $06                                     ; $4f47: $26 $06
    rlca                                          ; $4f49: $07
    inc h                                         ; $4f4a: $24
    inc h                                         ; $4f4b: $24
    inc b                                         ; $4f4c: $04
    inc b                                         ; $4f4d: $04
    dec c                                         ; $4f4e: $0d
    dec b                                         ; $4f4f: $05
    dec b                                         ; $4f50: $05
    dec b                                         ; $4f51: $05
    dec c                                         ; $4f52: $0d
    dec b                                         ; $4f53: $05
    dec b                                         ; $4f54: $05
    dec b                                         ; $4f55: $05
    rst $30                                       ; $4f56: $f7
    ld [$0a09], sp                                ; $4f57: $08 $09 $0a
    ld a, [$0c0b]                                 ; $4f5a: $fa $0b $0c
    dec c                                         ; $4f5d: $0d
    ld a, l                                       ; $4f5e: $7d
    ld [hl], h                                    ; $4f5f: $74
    ld [hl], l                                    ; $4f60: $75
    halt                                          ; $4f61: $76
    add hl, de                                    ; $4f62: $19
    ld [hl], a                                    ; $4f63: $77
    daa                                           ; $4f64: $27
    ld a, b                                       ; $4f65: $78
    ld b, $04                                     ; $4f66: $06 $04
    ld b, $04                                     ; $4f68: $06 $04
    inc b                                         ; $4f6a: $04
    inc b                                         ; $4f6b: $04
    inc b                                         ; $4f6c: $04
    inc b                                         ; $4f6d: $04
    dec b                                         ; $4f6e: $05
    dec b                                         ; $4f6f: $05
    dec b                                         ; $4f70: $05
    dec b                                         ; $4f71: $05
    dec b                                         ; $4f72: $05
    dec b                                         ; $4f73: $05
    dec b                                         ; $4f74: $05
    dec b                                         ; $4f75: $05
    pop de                                        ; $4f76: $d1
    pop de                                        ; $4f77: $d1
    pop de                                        ; $4f78: $d1
    di                                            ; $4f79: $f3
    pop de                                        ; $4f7a: $d1
    pop de                                        ; $4f7b: $d1
    pop de                                        ; $4f7c: $d1
    db $f4                                        ; $4f7d: $f4
    pop de                                        ; $4f7e: $d1
    pop de                                        ; $4f7f: $d1
    pop de                                        ; $4f80: $d1
    ld b, h                                       ; $4f81: $44
    pop de                                        ; $4f82: $d1
    pop de                                        ; $4f83: $d1
    pop de                                        ; $4f84: $d1
    pop de                                        ; $4f85: $d1
    inc b                                         ; $4f86: $04
    inc b                                         ; $4f87: $04
    add h                                         ; $4f88: $84
    and h                                         ; $4f89: $a4
    inc b                                         ; $4f8a: $04
    inc b                                         ; $4f8b: $04
    add h                                         ; $4f8c: $84
    add a                                         ; $4f8d: $87
    inc b                                         ; $4f8e: $04
    inc b                                         ; $4f8f: $04
    add h                                         ; $4f90: $84
    add h                                         ; $4f91: $84
    inc b                                         ; $4f92: $04
    inc b                                         ; $4f93: $04
    inc b                                         ; $4f94: $04
    add h                                         ; $4f95: $84
    ret nc                                        ; $4f96: $d0

    ld h, [hl]                                    ; $4f97: $66
    pop de                                        ; $4f98: $d1
    ld l, e                                       ; $4f99: $6b
    ld h, b                                       ; $4f9a: $60
    ld h, c                                       ; $4f9b: $61
    ld hl, $4822                                  ; $4f9c: $21 $22 $48
    ld c, c                                       ; $4f9f: $49
    ld c, d                                       ; $4fa0: $4a
    ld b, c                                       ; $4fa1: $41
    pop de                                        ; $4fa2: $d1
    pop de                                        ; $4fa3: $d1
    pop de                                        ; $4fa4: $d1
    ld b, d                                       ; $4fa5: $42
    dec c                                         ; $4fa6: $0d
    dec b                                         ; $4fa7: $05
    dec c                                         ; $4fa8: $0d
    dec b                                         ; $4fa9: $05
    dec b                                         ; $4faa: $05
    dec b                                         ; $4fab: $05
    dec b                                         ; $4fac: $05
    dec b                                         ; $4fad: $05
    add [hl]                                      ; $4fae: $86
    add [hl]                                      ; $4faf: $86
    add h                                         ; $4fb0: $84
    and h                                         ; $4fb1: $a4
    add h                                         ; $4fb2: $84
    add h                                         ; $4fb3: $84
    add h                                         ; $4fb4: $84
    add a                                         ; $4fb5: $87
    and d                                         ; $4fb6: $a2
    ld [hl-], a                                   ; $4fb7: $32
    ld e, [hl]                                    ; $4fb8: $5e
    ld e, a                                       ; $4fb9: $5f
    ld a, e                                       ; $4fba: $7b
    ld a, h                                       ; $4fbb: $7c
    ld h, b                                       ; $4fbc: $60
    ld h, c                                       ; $4fbd: $61
    ld l, $8a                                     ; $4fbe: $2e $8a
    inc hl                                        ; $4fc0: $23
    jp nc, Jump_07b_4844                          ; $4fc1: $d2 $44 $48

    ld c, c                                       ; $4fc4: $49
    ld b, c                                       ; $4fc5: $41
    dec c                                         ; $4fc6: $0d
    dec b                                         ; $4fc7: $05
    dec b                                         ; $4fc8: $05
    dec b                                         ; $4fc9: $05
    dec b                                         ; $4fca: $05
    dec b                                         ; $4fcb: $05
    dec b                                         ; $4fcc: $05
    dec b                                         ; $4fcd: $05
    dec b                                         ; $4fce: $05
    dec c                                         ; $4fcf: $0d
    dec b                                         ; $4fd0: $05
    dec c                                         ; $4fd1: $0d
    add a                                         ; $4fd2: $87
    add h                                         ; $4fd3: $84
    add [hl]                                      ; $4fd4: $86
    and h                                         ; $4fd5: $a4
    ld a, c                                       ; $4fd6: $79
    ld e, $7a                                     ; $4fd7: $1e $7a
    ld [hl-], a                                   ; $4fd9: $32
    ld hl, $d3cf                                  ; $4fda: $21 $cf $d3
    call nc, Call_000_1207                        ; $4fdd: $d4 $07 $12
    inc de                                        ; $4fe0: $13
    inc d                                         ; $4fe1: $14
    ld c, $46                                     ; $4fe2: $0e $46
    push de                                       ; $4fe4: $d5
    adc h                                         ; $4fe5: $8c
    dec b                                         ; $4fe6: $05
    dec b                                         ; $4fe7: $05
    dec b                                         ; $4fe8: $05
    dec b                                         ; $4fe9: $05
    dec b                                         ; $4fea: $05
    dec c                                         ; $4feb: $0d
    dec c                                         ; $4fec: $0d
    dec c                                         ; $4fed: $0d
    dec b                                         ; $4fee: $05
    dec b                                         ; $4fef: $05
    dec b                                         ; $4ff0: $05
    dec b                                         ; $4ff1: $05
    dec b                                         ; $4ff2: $05
    dec b                                         ; $4ff3: $05
    dec c                                         ; $4ff4: $0d
    dec c                                         ; $4ff5: $0d
    pop de                                        ; $4ff6: $d1
    pop de                                        ; $4ff7: $d1
    pop de                                        ; $4ff8: $d1
    ld b, d                                       ; $4ff9: $42
    pop de                                        ; $4ffa: $d1
    pop de                                        ; $4ffb: $d1
    pop de                                        ; $4ffc: $d1
    pop de                                        ; $4ffd: $d1
    pop de                                        ; $4ffe: $d1
    pop de                                        ; $4fff: $d1
    pop de                                        ; $5000: $d1
    pop de                                        ; $5001: $d1
    pop de                                        ; $5002: $d1
    pop de                                        ; $5003: $d1
    pop de                                        ; $5004: $d1
    pop de                                        ; $5005: $d1
    add h                                         ; $5006: $84
    add h                                         ; $5007: $84
    add h                                         ; $5008: $84
    add h                                         ; $5009: $84
    inc b                                         ; $500a: $04
    inc b                                         ; $500b: $04
    add h                                         ; $500c: $84
    add h                                         ; $500d: $84
    inc b                                         ; $500e: $04
    inc b                                         ; $500f: $04
    inc b                                         ; $5010: $04
    inc b                                         ; $5011: $04
    inc b                                         ; $5012: $04
    inc b                                         ; $5013: $04
    inc b                                         ; $5014: $04
    inc b                                         ; $5015: $04
    ld b, h                                       ; $5016: $44
    ld c, b                                       ; $5017: $48
    ld c, c                                       ; $5018: $49
    ld b, c                                       ; $5019: $41
    pop de                                        ; $501a: $d1
    pop de                                        ; $501b: $d1
    pop de                                        ; $501c: $d1
    ld b, h                                       ; $501d: $44
    pop de                                        ; $501e: $d1
    pop de                                        ; $501f: $d1
    pop de                                        ; $5020: $d1
    pop de                                        ; $5021: $d1
    pop de                                        ; $5022: $d1
    pop de                                        ; $5023: $d1
    pop de                                        ; $5024: $d1
    pop de                                        ; $5025: $d1
    add a                                         ; $5026: $87
    add [hl]                                      ; $5027: $86
    add h                                         ; $5028: $84
    and [hl]                                      ; $5029: $a6
    add h                                         ; $502a: $84
    add h                                         ; $502b: $84
    add h                                         ; $502c: $84
    add a                                         ; $502d: $87
    inc b                                         ; $502e: $04
    inc b                                         ; $502f: $04
    inc b                                         ; $5030: $04
    add h                                         ; $5031: $84
    inc b                                         ; $5032: $04
    inc b                                         ; $5033: $04
    inc b                                         ; $5034: $04
    inc b                                         ; $5035: $04
    pop de                                        ; $5036: $d1
    pop de                                        ; $5037: $d1
    pop de                                        ; $5038: $d1
    pop de                                        ; $5039: $d1
    push de                                       ; $503a: $d5
    call nc, $dbda                                ; $503b: $d4 $da $db
    ret c                                         ; $503e: $d8

    rst $10                                       ; $503f: $d7
    call c, $e1dd                                 ; $5040: $dc $dd $e1
    ldh [$de], a                                  ; $5043: $e0 $de
    rst $18                                       ; $5045: $df
    add h                                         ; $5046: $84
    add h                                         ; $5047: $84
    add h                                         ; $5048: $84
    add h                                         ; $5049: $84
    ld h, $24                                     ; $504a: $26 $24
    inc b                                         ; $504c: $04
    inc b                                         ; $504d: $04
    ld h, $24                                     ; $504e: $26 $24
    ld b, $04                                     ; $5050: $06 $04
    ld h, $27                                     ; $5052: $26 $27
    inc b                                         ; $5054: $04
    inc b                                         ; $5055: $04
    pop de                                        ; $5056: $d1
    pop de                                        ; $5057: $d1
    pop de                                        ; $5058: $d1
    pop de                                        ; $5059: $d1
    db $d3                                        ; $505a: $d3
    db $e4                                        ; $505b: $e4
    pop de                                        ; $505c: $d1
    pop de                                        ; $505d: $d1
    sub $6e                                       ; $505e: $d6 $6e
    pop af                                        ; $5060: $f1
    pop de                                        ; $5061: $d1
    reti                                          ; $5062: $d9


    ld [hl], b                                    ; $5063: $70
    ld a, [c]                                     ; $5064: $f2
    pop de                                        ; $5065: $d1
    add h                                         ; $5066: $84
    add h                                         ; $5067: $84
    inc b                                         ; $5068: $04
    inc b                                         ; $5069: $04
    inc b                                         ; $506a: $04
    inc b                                         ; $506b: $04
    inc b                                         ; $506c: $04
    inc b                                         ; $506d: $04
    inc b                                         ; $506e: $04
    inc b                                         ; $506f: $04
    inc b                                         ; $5070: $04
    inc b                                         ; $5071: $04
    inc b                                         ; $5072: $04
    rlca                                          ; $5073: $07
    ld b, $04                                     ; $5074: $06 $04
    pop de                                        ; $5076: $d1
    ld d, $5e                                     ; $5077: $16 $5e
    ld e, a                                       ; $5079: $5f
    pop de                                        ; $507a: $d1
    jp nc, Jump_07b_6160                          ; $507b: $d2 $60 $61

    pop de                                        ; $507e: $d1
    pop af                                        ; $507f: $f1
    sub $85                                       ; $5080: $d6 $85
    pop de                                        ; $5082: $d1
    ld a, [c]                                     ; $5083: $f2
    adc [hl]                                      ; $5084: $8e
    adc a                                         ; $5085: $8f
    inc b                                         ; $5086: $04
    ld b, $02                                     ; $5087: $06 $02
    ld bc, $2404                                  ; $5089: $01 $04 $24
    ld [bc], a                                    ; $508c: $02
    inc bc                                        ; $508d: $03
    inc b                                         ; $508e: $04
    ld h, $0a                                     ; $508f: $26 $0a
    add hl, bc                                    ; $5091: $09
    inc b                                         ; $5092: $04
    inc h                                         ; $5093: $24
    ld a, [bc]                                    ; $5094: $0a
    add hl, bc                                    ; $5095: $09
    or $f5                                        ; $5096: $f6 $f5
    ld [c], a                                     ; $5098: $e2
    db $e3                                        ; $5099: $e3
    ld sp, hl                                     ; $509a: $f9
    ld hl, sp-$02                                 ; $509b: $f8 $fe
    rst $38                                       ; $509d: $ff
    db $fc                                        ; $509e: $fc
    ei                                            ; $509f: $fb
    nop                                           ; $50a0: $00
    ld bc, $5d17                                  ; $50a1: $01 $17 $5d
    add hl, de                                    ; $50a4: $19
    or h                                          ; $50a5: $b4
    ld h, $27                                     ; $50a6: $26 $27
    ld b, $04                                     ; $50a8: $06 $04
    inc h                                         ; $50aa: $24
    inc h                                         ; $50ab: $24
    ld b, $06                                     ; $50ac: $06 $06
    ld h, $24                                     ; $50ae: $26 $24
    inc b                                         ; $50b0: $04
    ld b, $05                                     ; $50b1: $06 $05
    dec b                                         ; $50b3: $05
    dec b                                         ; $50b4: $05
    dec c                                         ; $50b5: $0d
    db $ed                                        ; $50b6: $ed
    ld [hl], d                                    ; $50b7: $72
    di                                            ; $50b8: $f3
    pop de                                        ; $50b9: $d1
    rst $30                                       ; $50ba: $f7
    ld [$d1f4], sp                                ; $50bb: $08 $f4 $d1
    ld a, [$160b]                                 ; $50be: $fa $0b $16
    pop de                                        ; $50c1: $d1
    ccf                                           ; $50c2: $3f
    ld b, b                                       ; $50c3: $40
    jp nc, Jump_000_06d1                          ; $50c4: $d2 $d1 $06

    inc b                                         ; $50c7: $04
    inc b                                         ; $50c8: $04
    inc b                                         ; $50c9: $04
    inc b                                         ; $50ca: $04
    inc b                                         ; $50cb: $04
    daa                                           ; $50cc: $27
    inc b                                         ; $50cd: $04
    inc b                                         ; $50ce: $04
    inc b                                         ; $50cf: $04
    inc h                                         ; $50d0: $24
    inc b                                         ; $50d1: $04
    dec b                                         ; $50d2: $05
    dec b                                         ; $50d3: $05
    rlca                                          ; $50d4: $07
    inc b                                         ; $50d5: $04
    pop de                                        ; $50d6: $d1
    di                                            ; $50d7: $f3
    ld l, l                                       ; $50d8: $6d
    ld e, d                                       ; $50d9: $5a
    pop de                                        ; $50da: $d1
    db $f4                                        ; $50db: $f4
    rla                                           ; $50dc: $17
    ld h, e                                       ; $50dd: $63
    pop de                                        ; $50de: $d1
    ld d, $d0                                     ; $50df: $16 $d0
    ld h, [hl]                                    ; $50e1: $66
    pop de                                        ; $50e2: $d1
    jp nc, Jump_07b_6160                          ; $50e3: $d2 $60 $61

    inc b                                         ; $50e6: $04
    daa                                           ; $50e7: $27
    ld [bc], a                                    ; $50e8: $02
    inc bc                                        ; $50e9: $03
    inc b                                         ; $50ea: $04
    inc b                                         ; $50eb: $04

Call_07b_50ec:
    ld [bc], a                                    ; $50ec: $02
    ld bc, $0604                                  ; $50ed: $01 $04 $06
    ld a, [bc]                                    ; $50f0: $0a
    ld bc, $2404                                  ; $50f1: $01 $04 $24
    ld [bc], a                                    ; $50f4: $02
    inc bc                                        ; $50f5: $03
    dec hl                                        ; $50f6: $2b
    inc l                                         ; $50f7: $2c
    sbc d                                         ; $50f8: $9a
    ld e, $60                                     ; $50f9: $1e $60
    ld h, c                                       ; $50fb: $61
    ld hl, $d722                                  ; $50fc: $21 $22 $d7
    ld l, h                                       ; $50ff: $6c
    dec h                                         ; $5100: $25
    adc l                                         ; $5101: $8d
    adc [hl]                                      ; $5102: $8e
    adc a                                         ; $5103: $8f
    ld c, $35                                     ; $5104: $0e $35
    dec b                                         ; $5106: $05
    dec b                                         ; $5107: $05
    dec c                                         ; $5108: $0d
    dec b                                         ; $5109: $05
    dec b                                         ; $510a: $05
    dec b                                         ; $510b: $05
    ld [bc], a                                    ; $510c: $02
    dec b                                         ; $510d: $05
    dec c                                         ; $510e: $0d
    dec b                                         ; $510f: $05
    dec b                                         ; $5110: $05
    ld a, [bc]                                    ; $5111: $0a
    ld a, [bc]                                    ; $5112: $0a
    dec c                                         ; $5113: $0d
    ld [bc], a                                    ; $5114: $02
    dec b                                         ; $5115: $05
    ret c                                         ; $5116: $d8

    reti                                          ; $5117: $d9


    pop af                                        ; $5118: $f1
    pop de                                        ; $5119: $d1
    ld a, e                                       ; $511a: $7b
    ld a, h                                       ; $511b: $7c
    ld a, [c]                                     ; $511c: $f2
    pop de                                        ; $511d: $d1
    ld l, $8a                                     ; $511e: $2e $8a
    di                                            ; $5120: $f3
    pop de                                        ; $5121: $d1
    adc e                                         ; $5122: $8b
    adc h                                         ; $5123: $8c
    db $f4                                        ; $5124: $f4
    pop de                                        ; $5125: $d1
    dec c                                         ; $5126: $0d
    dec c                                         ; $5127: $0d
    ld b, $04                                     ; $5128: $06 $04
    dec b                                         ; $512a: $05
    dec b                                         ; $512b: $05
    inc b                                         ; $512c: $04
    inc b                                         ; $512d: $04
    dec b                                         ; $512e: $05
    ld a, [bc]                                    ; $512f: $0a
    inc b                                         ; $5130: $04
    inc b                                         ; $5131: $04
    ld a, [bc]                                    ; $5132: $0a
    dec c                                         ; $5133: $0d
    daa                                           ; $5134: $27
    inc b                                         ; $5135: $04
    pop de                                        ; $5136: $d1
    pop af                                        ; $5137: $f1
    inc hl                                        ; $5138: $23
    ld l, h                                       ; $5139: $6c
    pop de                                        ; $513a: $d1
    ld a, [c]                                     ; $513b: $f2
    adc [hl]                                      ; $513c: $8e
    adc a                                         ; $513d: $8f
    pop de                                        ; $513e: $d1
    di                                            ; $513f: $f3
    ld l, l                                       ; $5140: $6d
    ld e, c                                       ; $5141: $59
    pop de                                        ; $5142: $d1
    db $f4                                        ; $5143: $f4
    rla                                           ; $5144: $17
    ld e, l                                       ; $5145: $5d
    inc b                                         ; $5146: $04
    daa                                           ; $5147: $27
    ld [bc], a                                    ; $5148: $02
    ld [bc], a                                    ; $5149: $02
    inc b                                         ; $514a: $04
    ld h, $0a                                     ; $514b: $26 $0a
    add hl, bc                                    ; $514d: $09
    inc b                                         ; $514e: $04
    inc h                                         ; $514f: $24

Call_07b_5150:
    ld [bc], a                                    ; $5150: $02
    ld bc, $0404                                  ; $5151: $01 $04 $04
    ld [bc], a                                    ; $5154: $02
    inc bc                                        ; $5155: $03
    ld l, l                                       ; $5156: $6d
    ld e, c                                       ; $5157: $59
    ld a, l                                       ; $5158: $7d
    ld [hl], h                                    ; $5159: $74
    ld c, b                                       ; $515a: $48
    ld b, c                                       ; $515b: $41
    add [hl]                                      ; $515c: $86
    add a                                         ; $515d: $87
    pop de                                        ; $515e: $d1
    ld d, $38                                     ; $515f: $16 $38
    db $fd                                        ; $5161: $fd
    pop de                                        ; $5162: $d1
    jp nc, $1a19                                  ; $5163: $d2 $19 $1a

    dec b                                         ; $5166: $05
    ld [bc], a                                    ; $5167: $02
    dec b                                         ; $5168: $05
    ld [bc], a                                    ; $5169: $02
    add h                                         ; $516a: $84
    and a                                         ; $516b: $a7
    ld a, [bc]                                    ; $516c: $0a
    ld a, [bc]                                    ; $516d: $0a
    add h                                         ; $516e: $84
    add h                                         ; $516f: $84
    ld [bc], a                                    ; $5170: $02
    ld [bc], a                                    ; $5171: $02
    add h                                         ; $5172: $84
    and a                                         ; $5173: $a7
    ld [bc], a                                    ; $5174: $02
    ld [bc], a                                    ; $5175: $02
    ld [hl], l                                    ; $5176: $75

jr_07b_5177:
    ld e, d                                       ; $5177: $5a
    ld d, $d1                                     ; $5178: $16 $d1
    inc a                                         ; $517a: $3c
    ld h, e                                       ; $517b: $63
    jp nc, $dad1                                  ; $517c: $d2 $d1 $da

    ld h, [hl]                                    ; $517f: $66
    pop af                                        ; $5180: $f1
    pop de                                        ; $5181: $d1
    daa                                           ; $5182: $27
    jr z, jr_07b_5177                             ; $5183: $28 $f2

    pop de                                        ; $5185: $d1
    ld [bc], a                                    ; $5186: $02
    ld [bc], a                                    ; $5187: $02
    inc h                                         ; $5188: $24
    inc b                                         ; $5189: $04
    ld [bc], a                                    ; $518a: $02
    ld [bc], a                                    ; $518b: $02
    inc b                                         ; $518c: $04
    inc b                                         ; $518d: $04
    ld a, [bc]                                    ; $518e: $0a
    ld [bc], a                                    ; $518f: $02
    rlca                                          ; $5190: $07
    inc b                                         ; $5191: $04
    ld bc, $0602                                  ; $5192: $01 $02 $06
    inc b                                         ; $5195: $04
    pop de                                        ; $5196: $d1
    ld d, $5e                                     ; $5197: $16 $5e
    dec hl                                        ; $5199: $2b
    pop de                                        ; $519a: $d1
    jp nc, Jump_07b_6160                          ; $519b: $d2 $60 $61

    pop de                                        ; $519e: $d1
    pop af                                        ; $519f: $f1
    inc hl                                        ; $51a0: $23
    ld l, h                                       ; $51a1: $6c
    pop de                                        ; $51a2: $d1
    ld a, [c]                                     ; $51a3: $f2
    adc [hl]                                      ; $51a4: $8e
    adc a                                         ; $51a5: $8f
    inc b                                         ; $51a6: $04
    ld b, $02                                     ; $51a7: $06 $02
    ld bc, $2704                                  ; $51a9: $01 $04 $27
    ld [bc], a                                    ; $51ac: $02
    ld bc, $2604                                  ; $51ad: $01 $04 $26
    ld [bc], a                                    ; $51b0: $02
    inc bc                                        ; $51b1: $03
    inc b                                         ; $51b2: $04
    inc h                                         ; $51b3: $24
    ld a, [bc]                                    ; $51b4: $0a
    ld a, [bc]                                    ; $51b5: $0a
    ld a, c                                       ; $51b6: $79
    ld e, $7a                                     ; $51b7: $1e $7a
    ld [hl-], a                                   ; $51b9: $32
    ld hl, $2b22                                  ; $51ba: $21 $22 $2b
    inc l                                         ; $51bd: $2c
    add [hl]                                      ; $51be: $86
    db $db                                        ; $51bf: $db
    ld l, $8a                                     ; $51c0: $2e $8a
    ld c, $35                                     ; $51c2: $0e $35
    adc e                                         ; $51c4: $8b
    adc h                                         ; $51c5: $8c
    ld bc, $0101                                  ; $51c6: $01 $01 $01
    ld [bc], a                                    ; $51c9: $02
    ld bc, $0103                                  ; $51ca: $01 $03 $01
    ld [bc], a                                    ; $51cd: $02
    add hl, bc                                    ; $51ce: $09
    add hl, bc                                    ; $51cf: $09
    ld bc, $010a                                  ; $51d0: $01 $0a $01
    inc bc                                        ; $51d3: $03
    dec bc                                        ; $51d4: $0b
    ld a, [bc]                                    ; $51d5: $0a
    jp nc, $d1d1                                  ; $51d6: $d2 $d1 $d1

    pop de                                        ; $51d9: $d1

Call_07b_51da:
    pop af                                        ; $51da: $f1
    pop de                                        ; $51db: $d1
    pop de                                        ; $51dc: $d1
    pop de                                        ; $51dd: $d1
    ld a, [c]                                     ; $51de: $f2
    pop de                                        ; $51df: $d1
    pop de                                        ; $51e0: $d1
    pop de                                        ; $51e1: $d1
    di                                            ; $51e2: $f3
    pop de                                        ; $51e3: $d1
    pop de                                        ; $51e4: $d1
    pop de                                        ; $51e5: $d1
    inc b                                         ; $51e6: $04
    inc b                                         ; $51e7: $04
    inc b                                         ; $51e8: $04
    inc b                                         ; $51e9: $04
    rlca                                          ; $51ea: $07
    inc b                                         ; $51eb: $04
    inc b                                         ; $51ec: $04
    inc b                                         ; $51ed: $04
    ld b, $04                                     ; $51ee: $06 $04
    inc b                                         ; $51f0: $04
    inc b                                         ; $51f1: $04
    ld b, $04                                     ; $51f2: $06 $04
    inc b                                         ; $51f4: $04
    inc b                                         ; $51f5: $04
    pop de                                        ; $51f6: $d1
    pop de                                        ; $51f7: $d1
    db $f4                                        ; $51f8: $f4
    ld e, b                                       ; $51f9: $58
    pop de                                        ; $51fa: $d1
    pop de                                        ; $51fb: $d1
    ld d, $3e                                     ; $51fc: $16 $3e
    pop de                                        ; $51fe: $d1
    pop de                                        ; $51ff: $d1
    jp nc, $d140                                  ; $5200: $d2 $40 $d1

    pop de                                        ; $5203: $d1
    pop af                                        ; $5204: $f1
    xor b                                         ; $5205: $a8
    inc b                                         ; $5206: $04
    add h                                         ; $5207: $84
    add h                                         ; $5208: $84
    ld [bc], a                                    ; $5209: $02
    inc b                                         ; $520a: $04
    add h                                         ; $520b: $84
    add [hl]                                      ; $520c: $86
    dec b                                         ; $520d: $05
    inc b                                         ; $520e: $04
    add h                                         ; $520f: $84
    and h                                         ; $5210: $a4
    ld [bc], a                                    ; $5211: $02
    inc b                                         ; $5212: $04
    add h                                         ; $5213: $84
    and a                                         ; $5214: $a7
    dec c                                         ; $5215: $0d
    ld e, e                                       ; $5216: $5b
    call c, Call_07b_7681                         ; $5217: $dc $81 $76
    ld h, h                                       ; $521a: $64
    ld l, d                                       ; $521b: $6a
    add d                                         ; $521c: $82
    ld a, b                                       ; $521d: $78
    pop de                                        ; $521e: $d1
    ld l, e                                       ; $521f: $6b
    and d                                         ; $5220: $a2
    ld [hl-], a                                   ; $5221: $32
    ld hl, $7b22                                  ; $5222: $21 $22 $7b
    ld a, h                                       ; $5225: $7c
    ld bc, $0909                                  ; $5226: $01 $09 $09
    ld [bc], a                                    ; $5229: $02
    ld [bc], a                                    ; $522a: $02
    ld [bc], a                                    ; $522b: $02
    add hl, bc                                    ; $522c: $09
    ld [bc], a                                    ; $522d: $02
    add hl, bc                                    ; $522e: $09
    ld bc, $020b                                  ; $522f: $01 $0b $02
    ld bc, $0101                                  ; $5232: $01 $01 $01
    ld [bc], a                                    ; $5235: $02
    db $f4                                        ; $5236: $f4
    pop de                                        ; $5237: $d1
    pop de                                        ; $5238: $d1
    pop de                                        ; $5239: $d1
    ld d, $d1                                     ; $523a: $16 $d1
    pop de                                        ; $523c: $d1
    pop de                                        ; $523d: $d1
    jp nc, $d1d1                                  ; $523e: $d2 $d1 $d1

    pop de                                        ; $5241: $d1
    pop af                                        ; $5242: $f1
    pop de                                        ; $5243: $d1
    pop de                                        ; $5244: $d1
    pop de                                        ; $5245: $d1
    inc h                                         ; $5246: $24
    inc b                                         ; $5247: $04
    inc b                                         ; $5248: $04
    inc b                                         ; $5249: $04
    ld h, $04                                     ; $524a: $26 $04
    inc b                                         ; $524c: $04
    inc b                                         ; $524d: $04
    rlca                                          ; $524e: $07
    inc b                                         ; $524f: $04
    inc b                                         ; $5250: $04
    inc b                                         ; $5251: $04
    inc b                                         ; $5252: $04
    inc b                                         ; $5253: $04
    inc b                                         ; $5254: $04
    inc b                                         ; $5255: $04
    pop de                                        ; $5256: $d1
    pop de                                        ; $5257: $d1
    ld a, [c]                                     ; $5258: $f2
    inc hl                                        ; $5259: $23
    pop de                                        ; $525a: $d1
    pop de                                        ; $525b: $d1
    di                                            ; $525c: $f3
    ld [bc], a                                    ; $525d: $02
    pop de                                        ; $525e: $d1
    pop de                                        ; $525f: $d1
    db $f4                                        ; $5260: $f4
    ld e, e                                       ; $5261: $5b
    pop de                                        ; $5262: $d1
    pop de                                        ; $5263: $d1
    ld d, $64                                     ; $5264: $16 $64
    inc b                                         ; $5266: $04
    add h                                         ; $5267: $84
    and h                                         ; $5268: $a4
    dec b                                         ; $5269: $05
    inc b                                         ; $526a: $04
    add h                                         ; $526b: $84
    and a                                         ; $526c: $a7
    dec b                                         ; $526d: $05
    inc b                                         ; $526e: $04
    add h                                         ; $526f: $84
    add [hl]                                      ; $5270: $86
    ld [bc], a                                    ; $5271: $02
    inc b                                         ; $5272: $04
    add h                                         ; $5273: $84
    add h                                         ; $5274: $84
    dec b                                         ; $5275: $05
    dec h                                         ; $5276: $25
    adc l                                         ; $5277: $8d
    ld l, $8a                                     ; $5278: $2e $8a
    dec a                                         ; $527a: $3d
    ld a, $45                                     ; $527b: $3e $45
    adc h                                         ; $527d: $8c
    ccf                                           ; $527e: $3f
    ld b, b                                       ; $527f: $40
    ld b, a                                       ; $5280: $47
    halt                                          ; $5281: $76
    add hl, de                                    ; $5282: $19
    db $dd                                        ; $5283: $dd
    daa                                           ; $5284: $27
    ld a, b                                       ; $5285: $78
    ld bc, $010b                                  ; $5286: $01 $0b $01
    ld a, [bc]                                    ; $5289: $0a
    ld bc, $0301                                  ; $528a: $01 $01 $03
    ld a, [bc]                                    ; $528d: $0a
    inc bc                                        ; $528e: $03
    ld bc, $0201                                  ; $528f: $01 $01 $02
    ld bc, $0209                                  ; $5292: $01 $09 $02
    ld [bc], a                                    ; $5295: $02
    ld a, [c]                                     ; $5296: $f2
    pop de                                        ; $5297: $d1
    pop de                                        ; $5298: $d1
    pop de                                        ; $5299: $d1
    di                                            ; $529a: $f3
    pop de                                        ; $529b: $d1
    pop de                                        ; $529c: $d1
    pop de                                        ; $529d: $d1
    db $f4                                        ; $529e: $f4
    pop de                                        ; $529f: $d1
    pop de                                        ; $52a0: $d1
    pop de                                        ; $52a1: $d1
    ld d, $d1                                     ; $52a2: $16 $d1
    pop de                                        ; $52a4: $d1
    pop de                                        ; $52a5: $d1
    ld b, $04                                     ; $52a6: $06 $04
    inc b                                         ; $52a8: $04
    inc b                                         ; $52a9: $04
    inc b                                         ; $52aa: $04
    inc b                                         ; $52ab: $04
    inc b                                         ; $52ac: $04
    inc b                                         ; $52ad: $04
    daa                                           ; $52ae: $27
    inc b                                         ; $52af: $04
    inc b                                         ; $52b0: $04
    inc b                                         ; $52b1: $04
    inc h                                         ; $52b2: $24
    inc b                                         ; $52b3: $04
    inc b                                         ; $52b4: $04
    inc b                                         ; $52b5: $04
    pop de                                        ; $52b6: $d1
    pop de                                        ; $52b7: $d1
    jp nc, $d1d1                                  ; $52b8: $d2 $d1 $d1

    pop de                                        ; $52bb: $d1
    pop af                                        ; $52bc: $f1
    rra                                           ; $52bd: $1f
    pop de                                        ; $52be: $d1
    pop de                                        ; $52bf: $d1
    ld a, [c]                                     ; $52c0: $f2
    inc hl                                        ; $52c1: $23
    pop de                                        ; $52c2: $d1
    pop de                                        ; $52c3: $d1
    di                                            ; $52c4: $f3
    ld [bc], a                                    ; $52c5: $02
    inc b                                         ; $52c6: $04
    add h                                         ; $52c7: $84
    and a                                         ; $52c8: $a7
    ld a, [bc]                                    ; $52c9: $0a
    inc b                                         ; $52ca: $04
    add h                                         ; $52cb: $84
    and h                                         ; $52cc: $a4
    dec b                                         ; $52cd: $05
    inc b                                         ; $52ce: $04
    add h                                         ; $52cf: $84
    and h                                         ; $52d0: $a4
    ld [bc], a                                    ; $52d1: $02
    inc b                                         ; $52d2: $04
    add h                                         ; $52d3: $84
    and [hl]                                      ; $52d4: $a6
    ld [bc], a                                    ; $52d5: $02
    inc l                                         ; $52d6: $2c
    sbc $7a                                       ; $52d7: $de $7a
    ld [hl-], a                                   ; $52d9: $32
    ld hl, $7b22                                  ; $52da: $21 $22 $7b
    ld a, h                                       ; $52dd: $7c
    dec h                                         ; $52de: $25
    adc l                                         ; $52df: $8d
    ld l, $8a                                     ; $52e0: $2e $8a
    ld c, $35                                     ; $52e2: $0e $35
    adc e                                         ; $52e4: $8b
    adc h                                         ; $52e5: $8c
    ld bc, $0309                                  ; $52e6: $01 $09 $03
    ld [bc], a                                    ; $52e9: $02
    ld bc, $0103                                  ; $52ea: $01 $03 $01
    ld [bc], a                                    ; $52ed: $02
    ld bc, $0309                                  ; $52ee: $01 $09 $03
    ld a, [bc]                                    ; $52f1: $0a
    ld bc, $0a01                                  ; $52f2: $01 $01 $0a
    ld a, [bc]                                    ; $52f5: $0a
    jp nc, $d1d1                                  ; $52f6: $d2 $d1 $d1

    pop de                                        ; $52f9: $d1
    pop af                                        ; $52fa: $f1
    pop de                                        ; $52fb: $d1
    pop de                                        ; $52fc: $d1
    pop de                                        ; $52fd: $d1
    ld a, [c]                                     ; $52fe: $f2
    pop de                                        ; $52ff: $d1
    pop de                                        ; $5300: $d1
    pop de                                        ; $5301: $d1
    di                                            ; $5302: $f3
    pop de                                        ; $5303: $d1
    pop de                                        ; $5304: $d1
    pop de                                        ; $5305: $d1
    inc b                                         ; $5306: $04
    inc b                                         ; $5307: $04
    inc b                                         ; $5308: $04
    inc b                                         ; $5309: $04
    ld b, $04                                     ; $530a: $06 $04
    inc b                                         ; $530c: $04
    inc b                                         ; $530d: $04
    ld b, $04                                     ; $530e: $06 $04
    inc b                                         ; $5310: $04
    inc b                                         ; $5311: $04
    inc b                                         ; $5312: $04
    inc b                                         ; $5313: $04
    inc b                                         ; $5314: $04
    inc b                                         ; $5315: $04
    pop de                                        ; $5316: $d1
    pop de                                        ; $5317: $d1
    db $f4                                        ; $5318: $f4
    ld e, b                                       ; $5319: $58
    pop de                                        ; $531a: $d1
    pop de                                        ; $531b: $d1
    ld b, d                                       ; $531c: $42
    ld b, h                                       ; $531d: $44
    pop de                                        ; $531e: $d1
    pop de                                        ; $531f: $d1
    pop de                                        ; $5320: $d1
    pop de                                        ; $5321: $d1
    pop de                                        ; $5322: $d1

jr_07b_5323:
    pop de                                        ; $5323: $d1
    pop de                                        ; $5324: $d1
    pop de                                        ; $5325: $d1
    inc b                                         ; $5326: $04
    add h                                         ; $5327: $84
    add h                                         ; $5328: $84
    ld [bc], a                                    ; $5329: $02
    inc b                                         ; $532a: $04
    add h                                         ; $532b: $84
    add h                                         ; $532c: $84
    add [hl]                                      ; $532d: $86
    inc b                                         ; $532e: $04
    inc b                                         ; $532f: $04
    add h                                         ; $5330: $84
    add h                                         ; $5331: $84
    inc b                                         ; $5332: $04
    inc b                                         ; $5333: $04
    inc b                                         ; $5334: $04
    inc b                                         ; $5335: $04
    ld e, c                                       ; $5336: $59
    ld sp, $04fd                                  ; $5337: $31 $fd $04
    ld b, l                                       ; $533a: $45
    add hl, de                                    ; $533b: $19
    ld a, [de]                                    ; $533c: $1a
    daa                                           ; $533d: $27
    ld b, a                                       ; $533e: $47
    dec e                                         ; $533f: $1d
    ld e, $29                                     ; $5340: $1e $29
    jr nz, jr_07b_5323                            ; $5342: $20 $df

    add l                                         ; $5344: $85
    add [hl]                                      ; $5345: $86
    ld [bc], a                                    ; $5346: $02
    ld [bc], a                                    ; $5347: $02
    ld [bc], a                                    ; $5348: $02
    ld [bc], a                                    ; $5349: $02
    ld [bc], a                                    ; $534a: $02
    dec b                                         ; $534b: $05
    dec b                                         ; $534c: $05
    dec b                                         ; $534d: $05
    dec b                                         ; $534e: $05
    dec b                                         ; $534f: $05
    dec b                                         ; $5350: $05
    dec b                                         ; $5351: $05
    dec b                                         ; $5352: $05
    dec c                                         ; $5353: $0d
    dec c                                         ; $5354: $0d
    dec c                                         ; $5355: $0d
    db $f4                                        ; $5356: $f4
    pop de                                        ; $5357: $d1
    pop de                                        ; $5358: $d1
    pop de                                        ; $5359: $d1
    ld d, $d1                                     ; $535a: $16 $d1
    pop de                                        ; $535c: $d1
    pop de                                        ; $535d: $d1
    push de                                       ; $535e: $d5
    call nc, $dbda                                ; $535f: $d4 $da $db
    ret c                                         ; $5362: $d8

    rst $10                                       ; $5363: $d7
    call c, $24dd                                 ; $5364: $dc $dd $24
    inc b                                         ; $5367: $04
    inc b                                         ; $5368: $04
    inc b                                         ; $5369: $04
    inc h                                         ; $536a: $24
    inc b                                         ; $536b: $04
    inc b                                         ; $536c: $04
    inc b                                         ; $536d: $04
    ld h, $24                                     ; $536e: $26 $24
    rlca                                          ; $5370: $07
    ld b, $26                                     ; $5371: $06 $26
    ld h, $04                                     ; $5373: $26 $04
    inc b                                         ; $5375: $04
    pop de                                        ; $5376: $d1
    pop de                                        ; $5377: $d1
    pop de                                        ; $5378: $d1
    pop de                                        ; $5379: $d1
    pop de                                        ; $537a: $d1
    pop de                                        ; $537b: $d1
    pop de                                        ; $537c: $d1
    pop de                                        ; $537d: $d1
    db $d3                                        ; $537e: $d3
    db $e4                                        ; $537f: $e4
    push hl                                       ; $5380: $e5
    and $d6                                       ; $5381: $e6 $d6
    ld l, [hl]                                    ; $5383: $6e
    ld l, a                                       ; $5384: $6f
    jp hl                                         ; $5385: $e9


    inc b                                         ; $5386: $04
    inc b                                         ; $5387: $04
    inc b                                         ; $5388: $04
    inc b                                         ; $5389: $04
    inc b                                         ; $538a: $04
    inc b                                         ; $538b: $04
    inc b                                         ; $538c: $04
    inc b                                         ; $538d: $04
    ld b, $04                                     ; $538e: $06 $04
    inc b                                         ; $5390: $04
    ld b, $04                                     ; $5391: $06 $04
    inc b                                         ; $5393: $04
    inc b                                         ; $5394: $04
    inc b                                         ; $5395: $04
    pop de                                        ; $5396: $d1
    pop de                                        ; $5397: $d1
    pop de                                        ; $5398: $d1
    pop de                                        ; $5399: $d1
    pop de                                        ; $539a: $d1
    pop de                                        ; $539b: $d1
    pop de                                        ; $539c: $d1
    pop de                                        ; $539d: $d1
    ld c, h                                       ; $539e: $4c
    ld c, l                                       ; $539f: $4d
    jp c, Jump_07b_4edb                           ; $53a0: $da $db $4e

    ld c, a                                       ; $53a3: $4f
    call c, $04dd                                 ; $53a4: $dc $dd $04
    inc b                                         ; $53a7: $04
    inc b                                         ; $53a8: $04
    inc b                                         ; $53a9: $04
    inc b                                         ; $53aa: $04
    inc b                                         ; $53ab: $04
    inc b                                         ; $53ac: $04
    inc b                                         ; $53ad: $04
    inc b                                         ; $53ae: $04
    ld b, $04                                     ; $53af: $06 $04
    ld b, $04                                     ; $53b1: $06 $04
    rlca                                          ; $53b3: $07
    rlca                                          ; $53b4: $07
    rlca                                          ; $53b5: $07
    inc h                                         ; $53b6: $24
    dec h                                         ; $53b7: $25
    ldh [$2e], a                                  ; $53b8: $e0 $2e
    inc bc                                        ; $53ba: $03
    ld c, $35                                     ; $53bb: $0e $35
    inc a                                         ; $53bd: $3c
    pop hl                                        ; $53be: $e1
    add c                                         ; $53bf: $81
    ld [c], a                                     ; $53c0: $e2
    inc b                                         ; $53c1: $04
    ld l, d                                       ; $53c2: $6a
    add d                                         ; $53c3: $82
    ld a, [de]                                    ; $53c4: $1a
    daa                                           ; $53c5: $27
    dec b                                         ; $53c6: $05
    dec b                                         ; $53c7: $05
    dec c                                         ; $53c8: $0d
    dec b                                         ; $53c9: $05
    dec b                                         ; $53ca: $05
    dec b                                         ; $53cb: $05
    ld [bc], a                                    ; $53cc: $02
    dec b                                         ; $53cd: $05
    dec c                                         ; $53ce: $0d
    ld a, [bc]                                    ; $53cf: $0a
    dec c                                         ; $53d0: $0d
    ld [bc], a                                    ; $53d1: $02
    ld [bc], a                                    ; $53d2: $02
    dec c                                         ; $53d3: $0d
    ld [bc], a                                    ; $53d4: $02
    dec b                                         ; $53d5: $05
    pop hl                                        ; $53d6: $e1
    ldh [$de], a                                  ; $53d7: $e0 $de
    rst $18                                       ; $53d9: $df
    or $f5                                        ; $53da: $f6 $f5
    ld [c], a                                     ; $53dc: $e2
    db $e3                                        ; $53dd: $e3
    ld sp, hl                                     ; $53de: $f9
    ld hl, sp-$02                                 ; $53df: $f8 $fe
    rst $38                                       ; $53e1: $ff
    db $fc                                        ; $53e2: $fc
    ei                                            ; $53e3: $fb
    nop                                           ; $53e4: $00
    ld bc, $2426                                  ; $53e5: $01 $26 $24
    rlca                                          ; $53e8: $07
    ld b, $24                                     ; $53e9: $06 $24
    daa                                           ; $53eb: $27
    rlca                                          ; $53ec: $07
    ld b, $24                                     ; $53ed: $06 $24
    ld h, $06                                     ; $53ef: $26 $06
    ld b, $24                                     ; $53f1: $06 $24
    inc h                                         ; $53f3: $24
    inc b                                         ; $53f4: $04
    inc b                                         ; $53f5: $04
    reti                                          ; $53f6: $d9


    ld [hl], b                                    ; $53f7: $70
    ld [hl], c                                    ; $53f8: $71
    db $ec                                        ; $53f9: $ec
    db $ed                                        ; $53fa: $ed
    ld [hl], d                                    ; $53fb: $72
    ld [hl], e                                    ; $53fc: $73
    ldh a, [$f7]                                  ; $53fd: $f0 $f7
    ld [$0a09], sp                                ; $53ff: $08 $09 $0a
    ld a, [$0c0b]                                 ; $5402: $fa $0b $0c
    dec c                                         ; $5405: $0d
    inc b                                         ; $5406: $04
    ld b, $06                                     ; $5407: $06 $06
    ld b, $06                                     ; $5409: $06 $06
    rlca                                          ; $540b: $07
    rlca                                          ; $540c: $07
    inc b                                         ; $540d: $04
    inc b                                         ; $540e: $04
    inc b                                         ; $540f: $04
    rlca                                          ; $5410: $07
    rlca                                          ; $5411: $07
    ld b, $04                                     ; $5412: $06 $04
    inc b                                         ; $5414: $04
    inc b                                         ; $5415: $04
    ld d, b                                       ; $5416: $50
    ld d, c                                       ; $5417: $51
    sbc $df                                       ; $5418: $de $df
    ld d, d                                       ; $541a: $52
    ld d, e                                       ; $541b: $53
    ld [c], a                                     ; $541c: $e2
    db $e3                                        ; $541d: $e3
    ld d, h                                       ; $541e: $54
    ld d, l                                       ; $541f: $55
    cp $ff                                        ; $5420: $fe $ff
    ld d, [hl]                                    ; $5422: $56
    ld d, a                                       ; $5423: $57
    nop                                           ; $5424: $00
    ld bc, $0604                                  ; $5425: $01 $04 $06
    inc b                                         ; $5428: $04
    rlca                                          ; $5429: $07
    ld b, $04                                     ; $542a: $06 $04
    rlca                                          ; $542c: $07
    rlca                                          ; $542d: $07
    ld b, $04                                     ; $542e: $06 $04
    rlca                                          ; $5430: $07
    inc b                                         ; $5431: $04
    inc b                                         ; $5432: $04
    inc b                                         ; $5433: $04
    ld b, $04                                     ; $5434: $06 $04
    ld l, e                                       ; $5436: $6b
    dec e                                         ; $5437: $1d
    ld e, $29                                     ; $5438: $1e $29
    jr nz, jr_07b_5467                            ; $543a: $20 $2b

    inc l                                         ; $543c: $2c
    db $e3                                        ; $543d: $e3
    inc h                                         ; $543e: $24
    dec h                                         ; $543f: $25
    ld h, $2e                                     ; $5440: $26 $2e
    inc bc                                        ; $5442: $03
    ld c, $35                                     ; $5443: $0e $35
    inc a                                         ; $5445: $3c
    dec b                                         ; $5446: $05
    ld [bc], a                                    ; $5447: $02
    ld [bc], a                                    ; $5448: $02
    ld [bc], a                                    ; $5449: $02
    ld [bc], a                                    ; $544a: $02
    ld [bc], a                                    ; $544b: $02
    ld [bc], a                                    ; $544c: $02
    ld a, [bc]                                    ; $544d: $0a
    ld [bc], a                                    ; $544e: $02
    ld [bc], a                                    ; $544f: $02
    ld [bc], a                                    ; $5450: $02
    ld [bc], a                                    ; $5451: $02
    ld [bc], a                                    ; $5452: $02
    ld [bc], a                                    ; $5453: $02
    ld [bc], a                                    ; $5454: $02
    ld [bc], a                                    ; $5455: $02
    ld [hl-], a                                   ; $5456: $32
    dec de                                        ; $5457: $1b
    inc e                                         ; $5458: $1c
    dec e                                         ; $5459: $1d
    inc [hl]                                      ; $545a: $34
    rra                                           ; $545b: $1f
    jr nz, @+$23                                  ; $545c: $20 $21

    cpl                                           ; $545e: $2f
    inc hl                                        ; $545f: $23
    inc h                                         ; $5460: $24
    dec h                                         ; $5461: $25
    ld de, $0302                                  ; $5462: $11 $02 $03
    ld c, $02                                     ; $5465: $0e $02

jr_07b_5467:
    dec b                                         ; $5467: $05
    dec b                                         ; $5468: $05
    dec b                                         ; $5469: $05
    ld [bc], a                                    ; $546a: $02
    ld [bc], a                                    ; $546b: $02
    ld [bc], a                                    ; $546c: $02
    ld [bc], a                                    ; $546d: $02
    ld [bc], a                                    ; $546e: $02
    ld [bc], a                                    ; $546f: $02
    ld [bc], a                                    ; $5470: $02
    ld [bc], a                                    ; $5471: $02
    ld [bc], a                                    ; $5472: $02
    ld [bc], a                                    ; $5473: $02
    ld [bc], a                                    ; $5474: $02
    ld [bc], a                                    ; $5475: $02
    ld e, $29                                     ; $5476: $1e $29
    ld [hl-], a                                   ; $5478: $32
    dec de                                        ; $5479: $1b
    ld [hl+], a                                   ; $547a: $22
    inc sp                                        ; $547b: $33
    inc [hl]                                      ; $547c: $34
    rra                                           ; $547d: $1f
    ld h, $2e                                     ; $547e: $26 $2e
    cpl                                           ; $5480: $2f
    inc hl                                        ; $5481: $23
    rrca                                          ; $5482: $0f
    db $10                                        ; $5483: $10
    ld de, $0502                                  ; $5484: $11 $02 $05
    dec b                                         ; $5487: $05
    dec b                                         ; $5488: $05
    dec b                                         ; $5489: $05
    ld [bc], a                                    ; $548a: $02
    ld [bc], a                                    ; $548b: $02
    ld [bc], a                                    ; $548c: $02
    ld [bc], a                                    ; $548d: $02
    ld [bc], a                                    ; $548e: $02
    ld [bc], a                                    ; $548f: $02
    ld [bc], a                                    ; $5490: $02
    ld [bc], a                                    ; $5491: $02
    ld [bc], a                                    ; $5492: $02
    ld [bc], a                                    ; $5493: $02
    ld [bc], a                                    ; $5494: $02
    ld [bc], a                                    ; $5495: $02
    inc e                                         ; $5496: $1c
    dec e                                         ; $5497: $1d
    ld e, $07                                     ; $5498: $1e $07
    jr nz, jr_07b_54bd                            ; $549a: $20 $21

    ld [hl+], a                                   ; $549c: $22
    inc sp                                        ; $549d: $33
    inc h                                         ; $549e: $24
    dec h                                         ; $549f: $25
    ld h, $2e                                     ; $54a0: $26 $2e
    inc bc                                        ; $54a2: $03
    ld c, $e4                                     ; $54a3: $0e $e4
    add l                                         ; $54a5: $85
    dec b                                         ; $54a6: $05
    dec b                                         ; $54a7: $05
    dec b                                         ; $54a8: $05
    dec b                                         ; $54a9: $05
    ld [bc], a                                    ; $54aa: $02
    ld [bc], a                                    ; $54ab: $02
    ld [bc], a                                    ; $54ac: $02
    ld [bc], a                                    ; $54ad: $02
    ld [bc], a                                    ; $54ae: $02
    ld [bc], a                                    ; $54af: $02
    ld [bc], a                                    ; $54b0: $02
    ld [bc], a                                    ; $54b1: $02
    ld [bc], a                                    ; $54b2: $02
    ld [bc], a                                    ; $54b3: $02
    ld a, [bc]                                    ; $54b4: $0a
    ld a, [bc]                                    ; $54b5: $0a

jr_07b_54b6:
    ld e, c                                       ; $54b6: $59
    jr c, jr_07b_54b6                             ; $54b7: $38 $fd

    inc b                                         ; $54b9: $04
    ld c, b                                       ; $54ba: $48
    ld l, c                                       ; $54bb: $69
    ld b, c                                       ; $54bc: $41

jr_07b_54bd:
    daa                                           ; $54bd: $27
    pop de                                        ; $54be: $d1
    pop de                                        ; $54bf: $d1
    ld d, $29                                     ; $54c0: $16 $29
    pop de                                        ; $54c2: $d1
    pop de                                        ; $54c3: $d1
    jp nc, Jump_000_0233                          ; $54c4: $d2 $33 $02

    ld [bc], a                                    ; $54c7: $02
    ld [bc], a                                    ; $54c8: $02
    ld [bc], a                                    ; $54c9: $02
    add [hl]                                      ; $54ca: $86
    and a                                         ; $54cb: $a7
    and h                                         ; $54cc: $a4
    ld [bc], a                                    ; $54cd: $02
    add h                                         ; $54ce: $84
    add h                                         ; $54cf: $84
    add [hl]                                      ; $54d0: $86
    dec b                                         ; $54d1: $05
    inc b                                         ; $54d2: $04
    add h                                         ; $54d3: $84
    and a                                         ; $54d4: $a7
    dec b                                         ; $54d5: $05
    dec b                                         ; $54d6: $05
    ld b, $07                                     ; $54d7: $06 $07
    ld [de], a                                    ; $54d9: $12
    jr z, jr_07b_54f3                             ; $54da: $28 $17

    jr jr_07b_550e                                ; $54dc: $18 $30

    ld [hl-], a                                   ; $54de: $32
    dec de                                        ; $54df: $1b
    inc e                                         ; $54e0: $1c
    dec e                                         ; $54e1: $1d
    inc [hl]                                      ; $54e2: $34
    rra                                           ; $54e3: $1f
    jr nz, jr_07b_5507                            ; $54e4: $20 $21

    ld [bc], a                                    ; $54e6: $02
    ld [bc], a                                    ; $54e7: $02
    ld [bc], a                                    ; $54e8: $02
    ld [bc], a                                    ; $54e9: $02
    ld [bc], a                                    ; $54ea: $02
    ld [bc], a                                    ; $54eb: $02
    ld [bc], a                                    ; $54ec: $02
    ld [bc], a                                    ; $54ed: $02
    dec b                                         ; $54ee: $05
    ld [bc], a                                    ; $54ef: $02
    ld [bc], a                                    ; $54f0: $02
    ld [bc], a                                    ; $54f1: $02
    dec b                                         ; $54f2: $05

jr_07b_54f3:
    dec b                                         ; $54f3: $05
    ld [bc], a                                    ; $54f4: $02
    ld [bc], a                                    ; $54f5: $02
    inc de                                        ; $54f6: $13
    inc d                                         ; $54f7: $14
    dec d                                         ; $54f8: $15
    ld e, b                                       ; $54f9: $58
    ld sp, $4127                                  ; $54fa: $31 $27 $41
    ld l, c                                       ; $54fd: $69
    ld e, $29                                     ; $54fe: $1e $29
    ld d, $d1                                     ; $5500: $16 $d1
    ld [hl+], a                                   ; $5502: $22
    inc sp                                        ; $5503: $33
    jp nc, Jump_000_02d1                          ; $5504: $d2 $d1 $02

jr_07b_5507:
    ld [bc], a                                    ; $5507: $02
    ld [bc], a                                    ; $5508: $02
    ld [bc], a                                    ; $5509: $02
    ld [bc], a                                    ; $550a: $02
    ld [bc], a                                    ; $550b: $02
    add [hl]                                      ; $550c: $86
    add h                                         ; $550d: $84

jr_07b_550e:
    ld [bc], a                                    ; $550e: $02
    ld [bc], a                                    ; $550f: $02
    and h                                         ; $5510: $a4
    add h                                         ; $5511: $84
    ld [bc], a                                    ; $5512: $02
    ld [bc], a                                    ; $5513: $02
    add [hl]                                      ; $5514: $86
    add h                                         ; $5515: $84

jr_07b_5516:
    ld e, c                                       ; $5516: $59
    jr c, jr_07b_5516                             ; $5517: $38 $fd

    push hl                                       ; $5519: $e5
    ld l, c                                       ; $551a: $69
    ld b, c                                       ; $551b: $41
    ld a, [de]                                    ; $551c: $1a
    daa                                           ; $551d: $27
    pop de                                        ; $551e: $d1
    ld b, h                                       ; $551f: $44
    ld c, b                                       ; $5520: $48
    ld c, c                                       ; $5521: $49
    pop de                                        ; $5522: $d1
    pop de                                        ; $5523: $d1
    pop de                                        ; $5524: $d1
    pop de                                        ; $5525: $d1
    ld [bc], a                                    ; $5526: $02
    ld [bc], a                                    ; $5527: $02
    ld [bc], a                                    ; $5528: $02
    ld a, [bc]                                    ; $5529: $0a
    and [hl]                                      ; $552a: $a6
    and a                                         ; $552b: $a7
    ld [bc], a                                    ; $552c: $02
    ld [bc], a                                    ; $552d: $02
    add h                                         ; $552e: $84
    add h                                         ; $552f: $84
    add h                                         ; $5530: $84
    add [hl]                                      ; $5531: $86
    inc b                                         ; $5532: $04
    inc b                                         ; $5533: $04
    add h                                         ; $5534: $84
    add h                                         ; $5535: $84
    pop de                                        ; $5536: $d1
    pop de                                        ; $5537: $d1
    pop de                                        ; $5538: $d1
    pop de                                        ; $5539: $d1
    pop de                                        ; $553a: $d1
    pop de                                        ; $553b: $d1
    pop de                                        ; $553c: $d1
    pop de                                        ; $553d: $d1
    db $d3                                        ; $553e: $d3
    db $e4                                        ; $553f: $e4
    push hl                                       ; $5540: $e5
    and $d6                                       ; $5541: $e6 $d6
    ld l, [hl]                                    ; $5543: $6e
    ld l, a                                       ; $5544: $6f
    jp hl                                         ; $5545: $e9


    inc b                                         ; $5546: $04
    inc b                                         ; $5547: $04
    inc b                                         ; $5548: $04
    inc b                                         ; $5549: $04
    inc b                                         ; $554a: $04
    inc b                                         ; $554b: $04
    inc b                                         ; $554c: $04
    inc b                                         ; $554d: $04
    inc b                                         ; $554e: $04
    inc b                                         ; $554f: $04
    inc b                                         ; $5550: $04
    ld b, $04                                     ; $5551: $06 $04
    inc b                                         ; $5553: $04
    ld b, $04                                     ; $5554: $06 $04
    pop de                                        ; $5556: $d1
    pop de                                        ; $5557: $d1
    pop de                                        ; $5558: $d1
    pop de                                        ; $5559: $d1
    pop de                                        ; $555a: $d1
    pop de                                        ; $555b: $d1
    pop de                                        ; $555c: $d1
    pop de                                        ; $555d: $d1
    ld c, h                                       ; $555e: $4c
    ld c, l                                       ; $555f: $4d
    jp c, $e7db                                   ; $5560: $da $db $e7

    add sp, -$24                                  ; $5563: $e8 $dc
    db $dd                                        ; $5565: $dd
    inc b                                         ; $5566: $04
    inc b                                         ; $5567: $04
    inc b                                         ; $5568: $04
    inc b                                         ; $5569: $04
    inc b                                         ; $556a: $04
    inc b                                         ; $556b: $04
    inc b                                         ; $556c: $04
    inc b                                         ; $556d: $04
    ld b, $04                                     ; $556e: $06 $04
    rlca                                          ; $5570: $07
    inc b                                         ; $5571: $04
    inc b                                         ; $5572: $04
    inc b                                         ; $5573: $04
    ld b, $04                                     ; $5574: $06 $04
    pop de                                        ; $5576: $d1
    pop de                                        ; $5577: $d1
    pop de                                        ; $5578: $d1
    pop de                                        ; $5579: $d1
    pop de                                        ; $557a: $d1
    pop de                                        ; $557b: $d1
    pop de                                        ; $557c: $d1
    pop de                                        ; $557d: $d1
    pop de                                        ; $557e: $d1
    pop de                                        ; $557f: $d1
    pop de                                        ; $5580: $d1
    pop de                                        ; $5581: $d1
    db $f4                                        ; $5582: $f4
    pop de                                        ; $5583: $d1
    pop de                                        ; $5584: $d1
    pop de                                        ; $5585: $d1
    inc b                                         ; $5586: $04
    inc b                                         ; $5587: $04
    inc b                                         ; $5588: $04
    inc b                                         ; $5589: $04
    inc b                                         ; $558a: $04
    inc b                                         ; $558b: $04
    inc b                                         ; $558c: $04
    inc b                                         ; $558d: $04
    inc b                                         ; $558e: $04
    inc b                                         ; $558f: $04
    inc b                                         ; $5590: $04
    inc b                                         ; $5591: $04
    daa                                           ; $5592: $27
    inc b                                         ; $5593: $04
    inc b                                         ; $5594: $04
    inc b                                         ; $5595: $04
    pop de                                        ; $5596: $d1
    pop de                                        ; $5597: $d1
    pop de                                        ; $5598: $d1
    pop de                                        ; $5599: $d1
    pop de                                        ; $559a: $d1
    pop de                                        ; $559b: $d1
    pop de                                        ; $559c: $d1
    pop de                                        ; $559d: $d1
    pop de                                        ; $559e: $d1
    pop de                                        ; $559f: $d1
    pop de                                        ; $55a0: $d1
    pop de                                        ; $55a1: $d1
    pop de                                        ; $55a2: $d1
    pop de                                        ; $55a3: $d1
    push hl                                       ; $55a4: $e5
    and $04                                       ; $55a5: $e6 $04
    inc b                                         ; $55a7: $04
    inc b                                         ; $55a8: $04
    inc b                                         ; $55a9: $04
    inc b                                         ; $55aa: $04
    inc b                                         ; $55ab: $04
    inc b                                         ; $55ac: $04
    inc b                                         ; $55ad: $04
    inc b                                         ; $55ae: $04
    inc b                                         ; $55af: $04
    inc b                                         ; $55b0: $04
    inc b                                         ; $55b1: $04
    inc b                                         ; $55b2: $04
    inc b                                         ; $55b3: $04
    inc b                                         ; $55b4: $04
    rlca                                          ; $55b5: $07
    reti                                          ; $55b6: $d9


    ld [hl], b                                    ; $55b7: $70
    ld [hl], c                                    ; $55b8: $71
    db $ec                                        ; $55b9: $ec
    db $ed                                        ; $55ba: $ed
    ld [hl], d                                    ; $55bb: $72
    ld [hl], e                                    ; $55bc: $73
    ldh a, [$f7]                                  ; $55bd: $f0 $f7
    ld [$0a09], sp                                ; $55bf: $08 $09 $0a
    ld a, [$0c0b]                                 ; $55c2: $fa $0b $0c
    dec c                                         ; $55c5: $0d
    inc b                                         ; $55c6: $04
    ld b, $04                                     ; $55c7: $06 $04
    ld b, $06                                     ; $55c9: $06 $06
    inc b                                         ; $55cb: $04
    rlca                                          ; $55cc: $07
    rlca                                          ; $55cd: $07
    inc b                                         ; $55ce: $04
    ld b, $04                                     ; $55cf: $06 $04
    rlca                                          ; $55d1: $07
    rlca                                          ; $55d2: $07
    inc b                                         ; $55d3: $04
    inc b                                         ; $55d4: $04
    inc b                                         ; $55d5: $04
    ld [$deeb], a                                 ; $55d6: $ea $eb $de
    rst $18                                       ; $55d9: $df
    xor $ef                                       ; $55da: $ee $ef
    ld [c], a                                     ; $55dc: $e2
    db $e3                                        ; $55dd: $e3
    ld d, h                                       ; $55de: $54
    ld d, l                                       ; $55df: $55
    cp $ff                                        ; $55e0: $fe $ff
    ld d, [hl]                                    ; $55e2: $56
    ld d, a                                       ; $55e3: $57
    nop                                           ; $55e4: $00
    ld bc, $0404                                  ; $55e5: $01 $04 $04
    rlca                                          ; $55e8: $07
    rlca                                          ; $55e9: $07
    inc b                                         ; $55ea: $04
    inc b                                         ; $55eb: $04
    ld b, $04                                     ; $55ec: $06 $04
    rlca                                          ; $55ee: $07
    ld b, $06                                     ; $55ef: $06 $06
    inc b                                         ; $55f1: $04
    inc b                                         ; $55f2: $04
    ld b, $04                                     ; $55f3: $06 $04
    inc b                                         ; $55f5: $04
    push de                                       ; $55f6: $d5
    call nc, $d3e4                                ; $55f7: $d4 $e4 $d3
    ret c                                         ; $55fa: $d8

    rst $10                                       ; $55fb: $d7
    ld l, [hl]                                    ; $55fc: $6e
    sub $e1                                       ; $55fd: $d6 $e1
    ldh [rSVBK], a                                ; $55ff: $e0 $70
    reti                                          ; $5601: $d9


    or $f5                                        ; $5602: $f6 $f5
    ld [hl], d                                    ; $5604: $72
    db $ed                                        ; $5605: $ed
    daa                                           ; $5606: $27
    daa                                           ; $5607: $27
    inc h                                         ; $5608: $24
    inc h                                         ; $5609: $24
    daa                                           ; $560a: $27
    inc h                                         ; $560b: $24
    inc h                                         ; $560c: $24

Call_07b_560d:
    ld h, $26                                     ; $560d: $26 $26
    ld h, $26                                     ; $560f: $26 $26
    inc h                                         ; $5611: $24
    ld h, $26                                     ; $5612: $26 $26
    inc h                                         ; $5614: $24
    ld h, $d4                                     ; $5615: $26 $d4
    push de                                       ; $5617: $d5
    ld l, a                                       ; $5618: $6f
    jp hl                                         ; $5619: $e9


    rst $10                                       ; $561a: $d7
    ret c                                         ; $561b: $d8

    ld [hl], c                                    ; $561c: $71
    db $ec                                        ; $561d: $ec
    ldh [$e1], a                                  ; $561e: $e0 $e1
    ld [hl], e                                    ; $5620: $73
    ldh a, [$f5]                                  ; $5621: $f0 $f5
    or $09                                        ; $5623: $f6 $09
    ld a, [bc]                                    ; $5625: $0a
    ld b, $04                                     ; $5626: $06 $04
    inc b                                         ; $5628: $04
    rlca                                          ; $5629: $07
    inc b                                         ; $562a: $04
    ld b, $06                                     ; $562b: $06 $06
    ld b, $04                                     ; $562d: $06 $04
    rlca                                          ; $562f: $07
    inc b                                         ; $5630: $04
    rlca                                          ; $5631: $07
    inc b                                         ; $5632: $04
    rlca                                          ; $5633: $07
    ld b, $06                                     ; $5634: $06 $06
    ld [de], a                                    ; $5636: $12
    inc de                                        ; $5637: $13
    inc d                                         ; $5638: $14
    and $e7                                       ; $5639: $e6 $e7
    add sp, $20                                   ; $563b: $e8 $20
    ld hl, $232f                                  ; $563d: $21 $2f $23
    inc h                                         ; $5640: $24
    dec h                                         ; $5641: $25
    add [hl]                                      ; $5642: $86
    add a                                         ; $5643: $87
    jp hl                                         ; $5644: $e9


    ld c, $05                                     ; $5645: $0e $05
    dec b                                         ; $5647: $05
    dec b                                         ; $5648: $05
    dec c                                         ; $5649: $0d
    ld a, [bc]                                    ; $564a: $0a
    ld a, [bc]                                    ; $564b: $0a
    ld [bc], a                                    ; $564c: $02
    ld [bc], a                                    ; $564d: $02
    ld [bc], a                                    ; $564e: $02
    ld [bc], a                                    ; $564f: $02
    ld [bc], a                                    ; $5650: $02
    ld [bc], a                                    ; $5651: $02
    ld a, [bc]                                    ; $5652: $0a
    ld a, [bc]                                    ; $5653: $0a
    ld a, [bc]                                    ; $5654: $0a
    ld [bc], a                                    ; $5655: $02
    ld e, $29                                     ; $5656: $1e $29
    ld [hl-], a                                   ; $5658: $32
    dec de                                        ; $5659: $1b
    ld [hl+], a                                   ; $565a: $22
    inc sp                                        ; $565b: $33
    inc [hl]                                      ; $565c: $34
    rra                                           ; $565d: $1f
    ld h, $2e                                     ; $565e: $26 $2e
    cpl                                           ; $5660: $2f
    inc hl                                        ; $5661: $23
    dec [hl]                                      ; $5662: $35
    dec hl                                        ; $5663: $2b
    inc l                                         ; $5664: $2c
    ld [bc], a                                    ; $5665: $02
    dec b                                         ; $5666: $05
    dec b                                         ; $5667: $05
    dec b                                         ; $5668: $05
    dec b                                         ; $5669: $05
    ld [bc], a                                    ; $566a: $02
    ld [bc], a                                    ; $566b: $02
    ld [bc], a                                    ; $566c: $02
    ld [bc], a                                    ; $566d: $02
    ld [bc], a                                    ; $566e: $02
    ld [bc], a                                    ; $566f: $02

jr_07b_5670:
    ld [bc], a                                    ; $5670: $02
    ld [bc], a                                    ; $5671: $02
    ld [bc], a                                    ; $5672: $02
    ld [bc], a                                    ; $5673: $02
    ld [bc], a                                    ; $5674: $02
    ld [bc], a                                    ; $5675: $02
    ld sp, hl                                     ; $5676: $f9
    ld hl, sp+$08                                 ; $5677: $f8 $08
    rst $30                                       ; $5679: $f7
    db $fc                                        ; $567a: $fc
    ei                                            ; $567b: $fb
    dec bc                                        ; $567c: $0b
    ld a, [$2524]                                 ; $567d: $fa $24 $25
    ld h, $2e                                     ; $5680: $26 $2e
    inc bc                                        ; $5682: $03
    ld c, $35                                     ; $5683: $0e $35
    inc a                                         ; $5685: $3c
    inc h                                         ; $5686: $24
    ld h, $26                                     ; $5687: $26 $26
    ld h, $24                                     ; $5689: $26 $24
    inc h                                         ; $568b: $24
    inc h                                         ; $568c: $24
    ld h, $02                                     ; $568d: $26 $02
    dec b                                         ; $568f: $05
    dec b                                         ; $5690: $05
    dec b                                         ; $5691: $05
    dec b                                         ; $5692: $05
    ld [bc], a                                    ; $5693: $02
    dec b                                         ; $5694: $05
    dec b                                         ; $5695: $05
    ld hl, sp-$07                                 ; $5696: $f8 $f9
    inc c                                         ; $5698: $0c
    dec c                                         ; $5699: $0d
    ei                                            ; $569a: $fb
    db $fc                                        ; $569b: $fc
    jr nz, jr_07b_56bf                            ; $569c: $20 $21

    cpl                                           ; $569e: $2f
    inc hl                                        ; $569f: $23
    inc h                                         ; $56a0: $24
    dec h                                         ; $56a1: $25
    ld de, $0302                                  ; $56a2: $11 $02 $03
    ld c, $04                                     ; $56a5: $0e $04
    rlca                                          ; $56a7: $07
    inc b                                         ; $56a8: $04
    ld b, $04                                     ; $56a9: $06 $04
    rlca                                          ; $56ab: $07
    dec b                                         ; $56ac: $05
    dec b                                         ; $56ad: $05
    dec b                                         ; $56ae: $05
    dec b                                         ; $56af: $05
    dec b                                         ; $56b0: $05
    dec b                                         ; $56b1: $05
    dec b                                         ; $56b2: $05
    dec b                                         ; $56b3: $05
    dec b                                         ; $56b4: $05
    dec b                                         ; $56b5: $05
    dec d                                         ; $56b6: $15
    ld e, b                                       ; $56b7: $58
    ld e, c                                       ; $56b8: $59
    jr c, jr_07b_56e3                             ; $56b9: $38 $28

    rla                                           ; $56bb: $17
    jr jr_07b_5670                                ; $56bc: $18 $b2

    ld c, d                                       ; $56be: $4a

jr_07b_56bf:
    ld c, e                                       ; $56bf: $4b
    ld l, c                                       ; $56c0: $69
    ld b, c                                       ; $56c1: $41
    pop de                                        ; $56c2: $d1
    pop de                                        ; $56c3: $d1
    pop de                                        ; $56c4: $d1
    ld b, h                                       ; $56c5: $44
    ld [bc], a                                    ; $56c6: $02
    ld [bc], a                                    ; $56c7: $02
    ld [bc], a                                    ; $56c8: $02
    ld [bc], a                                    ; $56c9: $02
    ld [bc], a                                    ; $56ca: $02
    ld [bc], a                                    ; $56cb: $02
    ld [bc], a                                    ; $56cc: $02
    ld a, [bc]                                    ; $56cd: $0a
    add [hl]                                      ; $56ce: $86
    add h                                         ; $56cf: $84
    and a                                         ; $56d0: $a7
    and h                                         ; $56d1: $a4
    add h                                         ; $56d2: $84
    add h                                         ; $56d3: $84
    add h                                         ; $56d4: $84
    add h                                         ; $56d5: $84
    db $fd                                        ; $56d6: $fd
    inc b                                         ; $56d7: $04
    dec b                                         ; $56d8: $05
    ld e, b                                       ; $56d9: $58
    ld a, $45                                     ; $56da: $3e $45
    jr z, jr_07b_56f5                             ; $56dc: $28 $17

    ld b, b                                       ; $56de: $40
    ld b, a                                       ; $56df: $47
    ld [hl-], a                                   ; $56e0: $32
    dec de                                        ; $56e1: $1b
    ld c, b                                       ; $56e2: $48

jr_07b_56e3:
    ld c, c                                       ; $56e3: $49
    ld c, d                                       ; $56e4: $4a
    ld c, e                                       ; $56e5: $4b
    ld [bc], a                                    ; $56e6: $02
    ld [bc], a                                    ; $56e7: $02
    ld [bc], a                                    ; $56e8: $02
    dec b                                         ; $56e9: $05
    dec b                                         ; $56ea: $05
    ld [bc], a                                    ; $56eb: $02
    dec b                                         ; $56ec: $05
    dec b                                         ; $56ed: $05
    ld [bc], a                                    ; $56ee: $02
    dec b                                         ; $56ef: $05
    ld [bc], a                                    ; $56f0: $02
    dec b                                         ; $56f1: $05
    add h                                         ; $56f2: $84
    add [hl]                                      ; $56f3: $86
    add h                                         ; $56f4: $84

jr_07b_56f5:
    add a                                         ; $56f5: $87

jr_07b_56f6:
    ld e, c                                       ; $56f6: $59
    jr c, jr_07b_56f6                             ; $56f7: $38 $fd

    inc b                                         ; $56f9: $04
    jr jr_07b_5715                                ; $56fa: $18 $19

    ld a, [de]                                    ; $56fc: $1a
    daa                                           ; $56fd: $27
    inc e                                         ; $56fe: $1c
    dec e                                         ; $56ff: $1d
    ld e, $ea                                     ; $5700: $1e $ea
    ld l, b                                       ; $5702: $68
    ld l, c                                       ; $5703: $69
    ld l, c                                       ; $5704: $69
    ld b, c                                       ; $5705: $41
    ld [bc], a                                    ; $5706: $02
    dec b                                         ; $5707: $05
    dec b                                         ; $5708: $05
    dec b                                         ; $5709: $05
    dec b                                         ; $570a: $05
    dec b                                         ; $570b: $05
    dec b                                         ; $570c: $05
    dec b                                         ; $570d: $05
    dec b                                         ; $570e: $05
    dec b                                         ; $570f: $05
    dec b                                         ; $5710: $05
    dec c                                         ; $5711: $0d
    add a                                         ; $5712: $87
    add [hl]                                      ; $5713: $86
    and [hl]                                      ; $5714: $a6

jr_07b_5715:
    and a                                         ; $5715: $a7
    ld e, d                                       ; $5716: $5a
    ld e, e                                       ; $5717: $5b
    pop hl                                        ; $5718: $e1
    add c                                         ; $5719: $81
    ld h, e                                       ; $571a: $63
    ld h, h                                       ; $571b: $64
    ld l, d                                       ; $571c: $6a
    add d                                         ; $571d: $82
    ld h, [hl]                                    ; $571e: $66
    pop de                                        ; $571f: $d1
    ld l, e                                       ; $5720: $6b
    dec e                                         ; $5721: $1d
    inc [hl]                                      ; $5722: $34
    rra                                           ; $5723: $1f
    jr nz, jr_07b_5747                            ; $5724: $20 $21

    dec b                                         ; $5726: $05
    dec b                                         ; $5727: $05
    dec c                                         ; $5728: $0d
    dec c                                         ; $5729: $0d
    dec b                                         ; $572a: $05
    dec b                                         ; $572b: $05
    dec b                                         ; $572c: $05
    dec c                                         ; $572d: $0d
    dec b                                         ; $572e: $05
    dec c                                         ; $572f: $0d
    dec b                                         ; $5730: $05
    dec b                                         ; $5731: $05
    dec b                                         ; $5732: $05
    dec b                                         ; $5733: $05
    dec b                                         ; $5734: $05
    dec b                                         ; $5735: $05
    pop de                                        ; $5736: $d1
    pop de                                        ; $5737: $d1
    pop de                                        ; $5738: $d1
    pop de                                        ; $5739: $d1
    pop de                                        ; $573a: $d1
    pop de                                        ; $573b: $d1
    pop de                                        ; $573c: $d1
    pop de                                        ; $573d: $d1
    pop de                                        ; $573e: $d1
    pop de                                        ; $573f: $d1
    pop de                                        ; $5740: $d1
    pop de                                        ; $5741: $d1
    ld c, h                                       ; $5742: $4c
    ld c, l                                       ; $5743: $4d
    jp c, $04db                                   ; $5744: $da $db $04

jr_07b_5747:
    inc b                                         ; $5747: $04
    inc b                                         ; $5748: $04
    inc b                                         ; $5749: $04
    inc b                                         ; $574a: $04
    inc b                                         ; $574b: $04
    inc b                                         ; $574c: $04
    inc b                                         ; $574d: $04
    inc b                                         ; $574e: $04
    inc b                                         ; $574f: $04
    inc b                                         ; $5750: $04
    inc b                                         ; $5751: $04
    rlca                                          ; $5752: $07
    inc b                                         ; $5753: $04
    inc b                                         ; $5754: $04
    ld b, $d1                                     ; $5755: $06 $d1
    pop de                                        ; $5757: $d1
    db $e4                                        ; $5758: $e4
    push hl                                       ; $5759: $e5
    pop de                                        ; $575a: $d1
    jp nc, $eb6e                                  ; $575b: $d2 $6e $eb

    pop de                                        ; $575e: $d1
    pop af                                        ; $575f: $f1
    ld [hl], b                                    ; $5760: $70
    db $ec                                        ; $5761: $ec
    pop de                                        ; $5762: $d1
    ld a, [c]                                     ; $5763: $f2
    ld [hl], d                                    ; $5764: $72
    db $ed                                        ; $5765: $ed
    inc b                                         ; $5766: $04
    inc b                                         ; $5767: $04
    inc b                                         ; $5768: $04
    ld b, $04                                     ; $5769: $06 $04
    inc h                                         ; $576b: $24
    inc b                                         ; $576c: $04
    inc c                                         ; $576d: $0c
    inc b                                         ; $576e: $04
    daa                                           ; $576f: $27
    rlca                                          ; $5770: $07
    inc c                                         ; $5771: $0c
    inc b                                         ; $5772: $04
    ld h, $07                                     ; $5773: $26 $07
    inc c                                         ; $5775: $0c
    and $4c                                       ; $5776: $e6 $4c
    pop de                                        ; $5778: $d1
    pop de                                        ; $5779: $d1
    xor $4e                                       ; $577a: $ee $4e
    ld a, [c]                                     ; $577c: $f2
    pop de                                        ; $577d: $d1
    rst $28                                       ; $577e: $ef
    ld d, b                                       ; $577f: $50
    di                                            ; $5780: $f3
    pop de                                        ; $5781: $d1
    ldh a, [rHDMA2]                               ; $5782: $f0 $52
    db $f4                                        ; $5784: $f4
    pop de                                        ; $5785: $d1
    rlca                                          ; $5786: $07
    inc b                                         ; $5787: $04
    inc b                                         ; $5788: $04
    inc b                                         ; $5789: $04
    inc c                                         ; $578a: $0c
    inc b                                         ; $578b: $04
    inc b                                         ; $578c: $04
    inc b                                         ; $578d: $04
    inc c                                         ; $578e: $0c
    rlca                                          ; $578f: $07
    rlca                                          ; $5790: $07
    inc b                                         ; $5791: $04
    inc c                                         ; $5792: $0c
    inc b                                         ; $5793: $04
    inc h                                         ; $5794: $24
    inc b                                         ; $5795: $04
    db $eb                                        ; $5796: $eb
    xor $dc                                       ; $5797: $ee $dc
    db $dd                                        ; $5799: $dd
    db $ec                                        ; $579a: $ec
    rst $28                                       ; $579b: $ef
    sbc $df                                       ; $579c: $de $df
    db $ed                                        ; $579e: $ed
    ldh a, [$e2]                                  ; $579f: $f0 $e2
    db $e3                                        ; $57a1: $e3
    ld d, h                                       ; $57a2: $54
    ld d, l                                       ; $57a3: $55
    cp $ff                                        ; $57a4: $fe $ff
    inc c                                         ; $57a6: $0c
    inc c                                         ; $57a7: $0c
    ld b, $04                                     ; $57a8: $06 $04
    inc c                                         ; $57aa: $0c
    inc c                                         ; $57ab: $0c
    inc b                                         ; $57ac: $04
    inc b                                         ; $57ad: $04
    inc c                                         ; $57ae: $0c
    inc c                                         ; $57af: $0c
    inc b                                         ; $57b0: $04
    ld b, $04                                     ; $57b1: $06 $04
    rlca                                          ; $57b3: $07
    rlca                                          ; $57b4: $07
    ld b, $f4                                     ; $57b5: $06 $f4
    pop de                                        ; $57b7: $d1
    pop de                                        ; $57b8: $d1
    pop de                                        ; $57b9: $d1
    ld d, $d1                                     ; $57ba: $16 $d1
    pop de                                        ; $57bc: $d1
    pop de                                        ; $57bd: $d1
    jp nc, $d1d1                                  ; $57be: $d2 $d1 $d1

    pop de                                        ; $57c1: $d1
    pop af                                        ; $57c2: $f1
    pop de                                        ; $57c3: $d1
    pop de                                        ; $57c4: $d1
    pop de                                        ; $57c5: $d1
    daa                                           ; $57c6: $27
    inc b                                         ; $57c7: $04
    inc b                                         ; $57c8: $04
    inc b                                         ; $57c9: $04
    ld h, $04                                     ; $57ca: $26 $04
    inc b                                         ; $57cc: $04
    inc b                                         ; $57cd: $04
    ld b, $04                                     ; $57ce: $06 $04
    inc b                                         ; $57d0: $04
    inc b                                         ; $57d1: $04
    add h                                         ; $57d2: $84
    add h                                         ; $57d3: $84
    inc b                                         ; $57d4: $04
    inc b                                         ; $57d5: $04
    pop de                                        ; $57d6: $d1
    di                                            ; $57d7: $f3
    ld [$d109], sp                                ; $57d8: $08 $09 $d1
    db $f4                                        ; $57db: $f4
    dec bc                                        ; $57dc: $0b
    inc c                                         ; $57dd: $0c
    pop de                                        ; $57de: $d1
    ld d, $85                                     ; $57df: $16 $85
    add [hl]                                      ; $57e1: $86
    pop de                                        ; $57e2: $d1
    jp nc, $5958                                  ; $57e3: $d2 $58 $59

    inc b                                         ; $57e6: $04
    ld h, $04                                     ; $57e7: $26 $04
    inc b                                         ; $57e9: $04
    inc b                                         ; $57ea: $04
    rlca                                          ; $57eb: $07
    inc b                                         ; $57ec: $04
    rlca                                          ; $57ed: $07
    inc b                                         ; $57ee: $04
    rlca                                          ; $57ef: $07
    dec c                                         ; $57f0: $0d
    dec c                                         ; $57f1: $0d
    inc b                                         ; $57f2: $04
    ld h, $05                                     ; $57f3: $26 $05
    dec b                                         ; $57f5: $05
    ld a, [bc]                                    ; $57f6: $0a
    ld d, h                                       ; $57f7: $54
    push de                                       ; $57f8: $d5
    call nc, Call_07b_560d                        ; $57f9: $d4 $0d $56
    ret c                                         ; $57fc: $d8

    rst $10                                       ; $57fd: $d7
    add a                                         ; $57fe: $87
    dec [hl]                                      ; $57ff: $35
    pop hl                                        ; $5800: $e1
    ldh [$38], a                                  ; $5801: $e0 $38
    db $fd                                        ; $5803: $fd
    or $f5                                        ; $5804: $f6 $f5
    rlca                                          ; $5806: $07
    rlca                                          ; $5807: $07
    inc h                                         ; $5808: $24
    ld h, $07                                     ; $5809: $26 $07
    inc b                                         ; $580b: $04
    ld h, $27                                     ; $580c: $26 $27
    dec c                                         ; $580e: $0d
    dec b                                         ; $580f: $05
    daa                                           ; $5810: $27
    inc h                                         ; $5811: $24
    dec b                                         ; $5812: $05
    dec b                                         ; $5813: $05
    inc h                                         ; $5814: $24
    daa                                           ; $5815: $27
    ld d, [hl]                                    ; $5816: $56
    ld d, a                                       ; $5817: $57
    nop                                           ; $5818: $00
    ld bc, $3322                                  ; $5819: $01 $22 $33
    inc [hl]                                      ; $581c: $34
    rra                                           ; $581d: $1f
    ld h, $2e                                     ; $581e: $26 $2e
    cpl                                           ; $5820: $2f
    inc hl                                        ; $5821: $23
    dec [hl]                                      ; $5822: $35
    inc a                                         ; $5823: $3c
    ld de, $0602                                  ; $5824: $11 $02 $06
    ld b, $04                                     ; $5827: $06 $04
    inc b                                         ; $5829: $04
    dec b                                         ; $582a: $05
    dec b                                         ; $582b: $05

jr_07b_582c:
    dec b                                         ; $582c: $05
    dec b                                         ; $582d: $05
    dec b                                         ; $582e: $05
    dec b                                         ; $582f: $05
    dec b                                         ; $5830: $05
    dec b                                         ; $5831: $05
    dec b                                         ; $5832: $05
    dec b                                         ; $5833: $05

jr_07b_5834:
    dec b                                         ; $5834: $05
    dec b                                         ; $5835: $05
    ld a, [c]                                     ; $5836: $f2
    pop de                                        ; $5837: $d1
    pop de                                        ; $5838: $d1
    pop de                                        ; $5839: $d1
    di                                            ; $583a: $f3
    pop de                                        ; $583b: $d1
    pop de                                        ; $583c: $d1
    pop de                                        ; $583d: $d1
    db $f4                                        ; $583e: $f4
    pop de                                        ; $583f: $d1
    pop de                                        ; $5840: $d1
    pop de                                        ; $5841: $d1
    ld d, $d1                                     ; $5842: $16 $d1
    pop de                                        ; $5844: $d1
    pop de                                        ; $5845: $d1
    add h                                         ; $5846: $84
    add h                                         ; $5847: $84
    inc b                                         ; $5848: $04
    inc b                                         ; $5849: $04
    add a                                         ; $584a: $87
    add h                                         ; $584b: $84
    inc b                                         ; $584c: $04
    inc b                                         ; $584d: $04
    and [hl]                                      ; $584e: $a6
    add h                                         ; $584f: $84
    inc b                                         ; $5850: $04
    inc b                                         ; $5851: $04
    and [hl]                                      ; $5852: $a6
    add h                                         ; $5853: $84
    inc b                                         ; $5854: $04
    inc b                                         ; $5855: $04
    pop de                                        ; $5856: $d1
    pop af                                        ; $5857: $f1
    rla                                           ; $5858: $17
    jr jr_07b_582c                                ; $5859: $18 $d1

    ld a, [c]                                     ; $585b: $f2
    dec de                                        ; $585c: $1b
    inc e                                         ; $585d: $1c
    pop de                                        ; $585e: $d1
    di                                            ; $585f: $f3
    rra                                           ; $5860: $1f
    jr nz, jr_07b_5834                            ; $5861: $20 $d1

    db $f4                                        ; $5863: $f4
    pop af                                        ; $5864: $f1
    inc h                                         ; $5865: $24
    inc b                                         ; $5866: $04
    inc h                                         ; $5867: $24
    dec b                                         ; $5868: $05
    dec b                                         ; $5869: $05
    inc b                                         ; $586a: $04
    daa                                           ; $586b: $27
    dec b                                         ; $586c: $05
    ld [bc], a                                    ; $586d: $02
    inc b                                         ; $586e: $04
    daa                                           ; $586f: $27
    ld [bc], a                                    ; $5870: $02
    dec b                                         ; $5871: $05
    inc b                                         ; $5872: $04
    inc b                                         ; $5873: $04
    dec c                                         ; $5874: $0d
    ld [bc], a                                    ; $5875: $02
    add hl, de                                    ; $5876: $19
    ld a, [de]                                    ; $5877: $1a
    ld sp, hl                                     ; $5878: $f9
    ld hl, sp+$1d                                 ; $5879: $f8 $1d
    ld e, d                                       ; $587b: $5a
    db $fc                                        ; $587c: $fc
    ei                                            ; $587d: $fb
    ld hl, $6463                                  ; $587e: $21 $63 $64
    ld l, d                                       ; $5881: $6a
    ld a, [c]                                     ; $5882: $f2
    ld h, [hl]                                    ; $5883: $66
    ld h, a                                       ; $5884: $67
    ld l, e                                       ; $5885: $6b
    ld [bc], a                                    ; $5886: $02
    dec b                                         ; $5887: $05
    inc h                                         ; $5888: $24
    ld h, $05                                     ; $5889: $26 $05
    ld [bc], a                                    ; $588b: $02
    inc h                                         ; $588c: $24
    ld h, $02                                     ; $588d: $26 $02
    dec b                                         ; $588f: $05
    ld [bc], a                                    ; $5890: $02
    dec b                                         ; $5891: $05
    ld a, [bc]                                    ; $5892: $0a
    ld [bc], a                                    ; $5893: $02
    ld [bc], a                                    ; $5894: $02
    ld [bc], a                                    ; $5895: $02
    ld [c], a                                     ; $5896: $e2
    inc b                                         ; $5897: $04
    dec b                                         ; $5898: $05
    ld e, b                                       ; $5899: $58
    ld a, [de]                                    ; $589a: $1a
    daa                                           ; $589b: $27
    jr z, jr_07b_58b5                             ; $589c: $28 $17

    ld e, $29                                     ; $589e: $1e $29
    ld [hl-], a                                   ; $58a0: $32
    dec de                                        ; $58a1: $1b
    ld [hl+], a                                   ; $58a2: $22
    di                                            ; $58a3: $f3
    add l                                         ; $58a4: $85
    add [hl]                                      ; $58a5: $86
    dec c                                         ; $58a6: $0d
    dec b                                         ; $58a7: $05
    dec b                                         ; $58a8: $05
    dec b                                         ; $58a9: $05
    dec b                                         ; $58aa: $05
    dec b                                         ; $58ab: $05
    dec b                                         ; $58ac: $05
    dec b                                         ; $58ad: $05
    dec b                                         ; $58ae: $05
    dec b                                         ; $58af: $05
    dec b                                         ; $58b0: $05
    dec b                                         ; $58b1: $05
    dec b                                         ; $58b2: $05
    dec c                                         ; $58b3: $0d

jr_07b_58b4:
    dec c                                         ; $58b4: $0d

jr_07b_58b5:
    dec c                                         ; $58b5: $0d
    jp nc, $d1d1                                  ; $58b6: $d2 $d1 $d1

    pop de                                        ; $58b9: $d1
    pop af                                        ; $58ba: $f1
    pop de                                        ; $58bb: $d1
    pop de                                        ; $58bc: $d1
    pop de                                        ; $58bd: $d1
    ld a, [c]                                     ; $58be: $f2
    pop de                                        ; $58bf: $d1
    pop de                                        ; $58c0: $d1
    pop de                                        ; $58c1: $d1
    di                                            ; $58c2: $f3
    pop de                                        ; $58c3: $d1
    pop de                                        ; $58c4: $d1
    pop de                                        ; $58c5: $d1
    add h                                         ; $58c6: $84
    add h                                         ; $58c7: $84
    inc b                                         ; $58c8: $04
    inc b                                         ; $58c9: $04
    add a                                         ; $58ca: $87
    add h                                         ; $58cb: $84
    inc b                                         ; $58cc: $04
    inc b                                         ; $58cd: $04
    add a                                         ; $58ce: $87
    add h                                         ; $58cf: $84
    inc b                                         ; $58d0: $04
    inc b                                         ; $58d1: $04
    add [hl]                                      ; $58d2: $86
    add h                                         ; $58d3: $84
    inc b                                         ; $58d4: $04
    inc b                                         ; $58d5: $04
    pop de                                        ; $58d6: $d1
    ld d, $3e                                     ; $58d7: $16 $3e
    ld b, l                                       ; $58d9: $45
    pop de                                        ; $58da: $d1
    jp nc, Jump_07b_4740                          ; $58db: $d2 $40 $47

    pop de                                        ; $58de: $d1
    pop af                                        ; $58df: $f1
    db $f4                                        ; $58e0: $f4
    jr jr_07b_58b4                                ; $58e1: $18 $d1

    ld a, [c]                                     ; $58e3: $f2
    dec de                                        ; $58e4: $1b
    inc e                                         ; $58e5: $1c
    inc b                                         ; $58e6: $04
    rlca                                          ; $58e7: $07
    ld [bc], a                                    ; $58e8: $02
    ld [bc], a                                    ; $58e9: $02
    inc b                                         ; $58ea: $04
    inc h                                         ; $58eb: $24
    ld [bc], a                                    ; $58ec: $02
    ld [bc], a                                    ; $58ed: $02
    inc b                                         ; $58ee: $04
    daa                                           ; $58ef: $27
    ld a, [bc]                                    ; $58f0: $0a
    ld [bc], a                                    ; $58f1: $02
    inc b                                         ; $58f2: $04
    ld h, $02                                     ; $58f3: $26 $02
    ld bc, $350e                                  ; $58f5: $01 $0e $35
    inc a                                         ; $58f8: $3c
    ld de, $fd38                                  ; $58f9: $11 $38 $fd
    inc b                                         ; $58fc: $04
    dec b                                         ; $58fd: $05
    add hl, de                                    ; $58fe: $19
    ld a, [de]                                    ; $58ff: $1a
    daa                                           ; $5900: $27
    jr z, jr_07b_5920                             ; $5901: $28 $1d

    ld e, $29                                     ; $5903: $1e $29
    dec hl                                        ; $5905: $2b
    ld [bc], a                                    ; $5906: $02
    ld [bc], a                                    ; $5907: $02
    ld bc, $0202                                  ; $5908: $01 $02 $02
    ld bc, $0102                                  ; $590b: $01 $02 $01
    ld bc, $0102                                  ; $590e: $01 $02 $01
    ld [bc], a                                    ; $5911: $02
    inc bc                                        ; $5912: $03
    ld bc, $0103                                  ; $5913: $01 $03 $01
    pop de                                        ; $5916: $d1
    pop de                                        ; $5917: $d1
    pop de                                        ; $5918: $d1
    ld b, h                                       ; $5919: $44
    pop de                                        ; $591a: $d1
    pop de                                        ; $591b: $d1
    pop de                                        ; $591c: $d1
    pop de                                        ; $591d: $d1
    pop de                                        ; $591e: $d1
    pop de                                        ; $591f: $d1

jr_07b_5920:
    pop de                                        ; $5920: $d1
    pop de                                        ; $5921: $d1
    pop de                                        ; $5922: $d1
    pop de                                        ; $5923: $d1
    pop de                                        ; $5924: $d1
    pop de                                        ; $5925: $d1
    inc b                                         ; $5926: $04
    inc b                                         ; $5927: $04
    add h                                         ; $5928: $84
    add h                                         ; $5929: $84
    inc b                                         ; $592a: $04
    inc b                                         ; $592b: $04
    inc b                                         ; $592c: $04
    add h                                         ; $592d: $84
    inc b                                         ; $592e: $04
    inc b                                         ; $592f: $04
    inc b                                         ; $5930: $04
    inc b                                         ; $5931: $04
    inc b                                         ; $5932: $04
    inc b                                         ; $5933: $04
    inc b                                         ; $5934: $04
    inc b                                         ; $5935: $04
    ld l, c                                       ; $5936: $69
    ld b, c                                       ; $5937: $41
    ld a, d                                       ; $5938: $7a
    ld b, h                                       ; $5939: $44
    pop de                                        ; $593a: $d1
    ld b, d                                       ; $593b: $42
    ld b, h                                       ; $593c: $44
    ld c, b                                       ; $593d: $48
    pop de                                        ; $593e: $d1
    pop de                                        ; $593f: $d1
    pop de                                        ; $5940: $d1
    pop de                                        ; $5941: $d1
    pop de                                        ; $5942: $d1
    pop de                                        ; $5943: $d1
    pop de                                        ; $5944: $d1
    pop de                                        ; $5945: $d1
    and h                                         ; $5946: $a4
    and h                                         ; $5947: $a4
    ld [bc], a                                    ; $5948: $02
    inc b                                         ; $5949: $04
    add h                                         ; $594a: $84
    add h                                         ; $594b: $84
    add a                                         ; $594c: $87
    add h                                         ; $594d: $84
    inc b                                         ; $594e: $04
    add h                                         ; $594f: $84
    add h                                         ; $5950: $84
    add h                                         ; $5951: $84
    inc b                                         ; $5952: $04
    inc b                                         ; $5953: $04
    inc b                                         ; $5954: $04
    inc b                                         ; $5955: $04
    push af                                       ; $5956: $f5
    or $f7                                        ; $5957: $f6 $f7
    ld hl, sp+$49                                 ; $5959: $f8 $49
    ld c, d                                       ; $595b: $4a
    ld c, e                                       ; $595c: $4b
    ld l, b                                       ; $595d: $68
    pop de                                        ; $595e: $d1
    pop de                                        ; $595f: $d1
    pop de                                        ; $5960: $d1
    pop de                                        ; $5961: $d1
    pop de                                        ; $5962: $d1
    pop de                                        ; $5963: $d1
    pop de                                        ; $5964: $d1
    pop de                                        ; $5965: $d1
    inc c                                         ; $5966: $0c
    inc c                                         ; $5967: $0c
    add hl, bc                                    ; $5968: $09
    inc c                                         ; $5969: $0c
    add h                                         ; $596a: $84
    add h                                         ; $596b: $84
    add h                                         ; $596c: $84
    add h                                         ; $596d: $84
    add h                                         ; $596e: $84
    add h                                         ; $596f: $84
    add h                                         ; $5970: $84
    add h                                         ; $5971: $84
    inc b                                         ; $5972: $04
    inc b                                         ; $5973: $04
    inc b                                         ; $5974: $04
    inc b                                         ; $5975: $04
    jp c, $e4db                                   ; $5976: $da $db $e4

    push hl                                       ; $5979: $e5
    call c, $c9dd                                 ; $597a: $dc $dd $c9
    call z, $dfde                                 ; $597d: $cc $de $df
    jp z, $e2cd                                   ; $5980: $ca $cd $e2

    db $e3                                        ; $5983: $e3
    set 1, [hl]                                   ; $5984: $cb $ce
    inc b                                         ; $5986: $04
    inc b                                         ; $5987: $04
    rlca                                          ; $5988: $07
    inc b                                         ; $5989: $04
    inc b                                         ; $598a: $04
    inc b                                         ; $598b: $04
    inc c                                         ; $598c: $0c
    inc c                                         ; $598d: $0c
    ld b, $06                                     ; $598e: $06 $06
    inc c                                         ; $5990: $0c
    inc c                                         ; $5991: $0c
    rlca                                          ; $5992: $07
    inc b                                         ; $5993: $04
    inc c                                         ; $5994: $0c
    inc c                                         ; $5995: $0c
    and $4c                                       ; $5996: $e6 $4c
    ld c, l                                       ; $5998: $4d
    jp c, Jump_07b_4ee9                           ; $5999: $da $e9 $4e

    ld c, a                                       ; $599c: $4f
    call c, Call_07b_50ec                         ; $599d: $dc $ec $50
    ld d, c                                       ; $59a0: $51
    sbc $f0                                       ; $59a1: $de $f0
    ld d, d                                       ; $59a3: $52
    ld d, e                                       ; $59a4: $53
    ld [c], a                                     ; $59a5: $e2
    inc b                                         ; $59a6: $04
    inc b                                         ; $59a7: $04
    ld b, $06                                     ; $59a8: $06 $06
    rlca                                          ; $59aa: $07
    inc b                                         ; $59ab: $04
    rlca                                          ; $59ac: $07
    inc b                                         ; $59ad: $04
    rlca                                          ; $59ae: $07
    inc b                                         ; $59af: $04
    rlca                                          ; $59b0: $07
    rlca                                          ; $59b1: $07
    inc b                                         ; $59b2: $04

jr_07b_59b3:
    ld b, $06                                     ; $59b3: $06 $06
    rlca                                          ; $59b5: $07
    db $db                                        ; $59b6: $db
    db $d3                                        ; $59b7: $d3
    db $e4                                        ; $59b8: $e4
    push hl                                       ; $59b9: $e5
    db $dd                                        ; $59ba: $dd
    sub $6e                                       ; $59bb: $d6 $6e
    ld l, a                                       ; $59bd: $6f
    rst $18                                       ; $59be: $df
    reti                                          ; $59bf: $d9


    ld [hl], b                                    ; $59c0: $70
    ld [hl], c                                    ; $59c1: $71
    db $e3                                        ; $59c2: $e3
    db $ed                                        ; $59c3: $ed
    ld [hl], d                                    ; $59c4: $72
    ld [hl], e                                    ; $59c5: $73
    inc b                                         ; $59c6: $04
    inc b                                         ; $59c7: $04
    rlca                                          ; $59c8: $07
    inc b                                         ; $59c9: $04
    inc b                                         ; $59ca: $04
    rlca                                          ; $59cb: $07
    rlca                                          ; $59cc: $07
    ld b, $07                                     ; $59cd: $06 $07
    inc b                                         ; $59cf: $04
    ld b, $06                                     ; $59d0: $06 $06
    rlca                                          ; $59d2: $07
    ld b, $04                                     ; $59d3: $06 $04
    rlca                                          ; $59d5: $07
    and $4c                                       ; $59d6: $e6 $4c
    ld c, l                                       ; $59d8: $4d
    pop de                                        ; $59d9: $d1
    jp hl                                         ; $59da: $e9


    ld c, [hl]                                    ; $59db: $4e
    ld c, a                                       ; $59dc: $4f
    push de                                       ; $59dd: $d5
    db $ec                                        ; $59de: $ec
    ld d, b                                       ; $59df: $50
    ld d, c                                       ; $59e0: $51
    ret c                                         ; $59e1: $d8

    ldh a, [rHDMA2]                               ; $59e2: $f0 $52
    ld d, e                                       ; $59e4: $53
    pop hl                                        ; $59e5: $e1
    ld b, $04                                     ; $59e6: $06 $04
    inc b                                         ; $59e8: $04
    inc b                                         ; $59e9: $04
    inc b                                         ; $59ea: $04
    rlca                                          ; $59eb: $07
    rlca                                          ; $59ec: $07
    daa                                           ; $59ed: $27
    rlca                                          ; $59ee: $07
    inc b                                         ; $59ef: $04
    ld b, $27                                     ; $59f0: $06 $27
    rlca                                          ; $59f2: $07
    rlca                                          ; $59f3: $07
    inc b                                         ; $59f4: $04
    daa                                           ; $59f5: $27
    cp $ff                                        ; $59f6: $fe $ff
    ld [$0009], sp                                ; $59f8: $08 $09 $00
    ld bc, $0c0b                                  ; $59fb: $01 $0b $0c
    add d                                         ; $59fe: $82
    jr nz, @+$23                                  ; $59ff: $20 $21

    ld [hl+], a                                   ; $5a01: $22
    pop af                                        ; $5a02: $f1
    inc h                                         ; $5a03: $24
    dec hl                                        ; $5a04: $2b
    inc l                                         ; $5a05: $2c
    rlca                                          ; $5a06: $07
    ld b, $07                                     ; $5a07: $06 $07
    rlca                                          ; $5a09: $07
    rlca                                          ; $5a0a: $07
    ld b, $04                                     ; $5a0b: $06 $04
    inc b                                         ; $5a0d: $04
    dec c                                         ; $5a0e: $0d
    dec b                                         ; $5a0f: $05
    dec b                                         ; $5a10: $05
    dec b                                         ; $5a11: $05
    ld a, [bc]                                    ; $5a12: $0a
    ld [bc], a                                    ; $5a13: $02
    ld [bc], a                                    ; $5a14: $02
    ld [bc], a                                    ; $5a15: $02
    ld a, [bc]                                    ; $5a16: $0a
    ld d, h                                       ; $5a17: $54
    ld d, l                                       ; $5a18: $55
    cp $0d                                        ; $5a19: $fe $0d
    ld d, [hl]                                    ; $5a1b: $56
    ld d, a                                       ; $5a1c: $57
    nop                                           ; $5a1d: $00
    inc sp                                        ; $5a1e: $33
    inc [hl]                                      ; $5a1f: $34
    rra                                           ; $5a20: $1f
    jr nz, jr_07b_59b3                            ; $5a21: $20 $90

    cpl                                           ; $5a23: $2f
    inc hl                                        ; $5a24: $23
    inc h                                         ; $5a25: $24
    rlca                                          ; $5a26: $07
    inc b                                         ; $5a27: $04
    ld b, $07                                     ; $5a28: $06 $07
    rlca                                          ; $5a2a: $07
    rlca                                          ; $5a2b: $07
    inc b                                         ; $5a2c: $04
    inc b                                         ; $5a2d: $04
    dec b                                         ; $5a2e: $05
    dec b                                         ; $5a2f: $05
    dec b                                         ; $5a30: $05
    dec b                                         ; $5a31: $05
    ld a, [bc]                                    ; $5a32: $0a
    ld [bc], a                                    ; $5a33: $02
    dec b                                         ; $5a34: $05
    ld [bc], a                                    ; $5a35: $02
    rst $38                                       ; $5a36: $ff
    rst $30                                       ; $5a37: $f7
    ld [$0109], sp                                ; $5a38: $08 $09 $01
    ld a, [$0c0b]                                 ; $5a3b: $fa $0b $0c
    ld hl, $3322                                  ; $5a3e: $21 $22 $33
    inc [hl]                                      ; $5a41: $34
    dec h                                         ; $5a42: $25
    ld h, $2e                                     ; $5a43: $26 $2e
    cpl                                           ; $5a45: $2f
    ld b, $04                                     ; $5a46: $06 $04
    ld b, $04                                     ; $5a48: $06 $04
    inc b                                         ; $5a4a: $04
    inc b                                         ; $5a4b: $04
    rlca                                          ; $5a4c: $07
    ld b, $05                                     ; $5a4d: $06 $05
    dec b                                         ; $5a4f: $05
    dec b                                         ; $5a50: $05
    dec b                                         ; $5a51: $05
    dec b                                         ; $5a52: $05
    dec b                                         ; $5a53: $05
    dec b                                         ; $5a54: $05
    dec b                                         ; $5a55: $05
    ld a, [bc]                                    ; $5a56: $0a
    ld d, h                                       ; $5a57: $54
    ld d, l                                       ; $5a58: $55
    or $0d                                        ; $5a59: $f6 $0d
    ld d, [hl]                                    ; $5a5b: $56
    ld d, a                                       ; $5a5c: $57
    ld sp, hl                                     ; $5a5d: $f9
    rra                                           ; $5a5e: $1f
    dec a                                         ; $5a5f: $3d
    ld a, $fc                                     ; $5a60: $3e $fc
    ld sp, hl                                     ; $5a62: $f9
    ccf                                           ; $5a63: $3f
    ld b, b                                       ; $5a64: $40
    ld b, a                                       ; $5a65: $47
    ld b, $07                                     ; $5a66: $06 $07
    inc b                                         ; $5a68: $04
    inc h                                         ; $5a69: $24
    ld b, $07                                     ; $5a6a: $06 $07
    inc b                                         ; $5a6c: $04
    ld h, $05                                     ; $5a6d: $26 $05
    dec b                                         ; $5a6f: $05
    dec b                                         ; $5a70: $05
    daa                                           ; $5a71: $27
    dec c                                         ; $5a72: $0d
    dec b                                         ; $5a73: $05
    dec b                                         ; $5a74: $05
    dec b                                         ; $5a75: $05
    ld [bc], a                                    ; $5a76: $02
    inc bc                                        ; $5a77: $03
    ld c, $35                                     ; $5a78: $0e $35
    ld e, b                                       ; $5a7a: $58

jr_07b_5a7b:
    ld e, c                                       ; $5a7b: $59
    jr c, jr_07b_5a7b                             ; $5a7c: $38 $fd

    rla                                           ; $5a7e: $17
    jr jr_07b_5a9a                                ; $5a7f: $18 $19

    ld a, [de]                                    ; $5a81: $1a
    inc l                                         ; $5a82: $2c
    ld a, [hl]                                    ; $5a83: $7e
    dec e                                         ; $5a84: $1d
    ld e, $01                                     ; $5a85: $1e $01
    ld [bc], a                                    ; $5a87: $02
    ld bc, $0202                                  ; $5a88: $01 $02 $02
    ld bc, $0102                                  ; $5a8b: $01 $02 $01
    ld bc, $0302                                  ; $5a8e: $01 $02 $03
    ld bc, $0303                                  ; $5a91: $01 $03 $03
    ld bc, $3c01                                  ; $5a94: $01 $01 $3c
    ld de, $fbfa                                  ; $5a97: $11 $fa $fb

jr_07b_5a9a:
    rlca                                          ; $5a9a: $07
    ld [de], a                                    ; $5a9b: $12
    inc de                                        ; $5a9c: $13
    inc d                                         ; $5a9d: $14
    daa                                           ; $5a9e: $27
    jr z, jr_07b_5ad2                             ; $5a9f: $28 $31

    jr jr_07b_5acc                                ; $5aa1: $18 $29

    ld [hl-], a                                   ; $5aa3: $32
    dec de                                        ; $5aa4: $1b
    inc e                                         ; $5aa5: $1c
    ld [bc], a                                    ; $5aa6: $02
    ld [bc], a                                    ; $5aa7: $02
    ld a, [bc]                                    ; $5aa8: $0a
    ld a, [bc]                                    ; $5aa9: $0a
    ld [bc], a                                    ; $5aaa: $02
    ld [bc], a                                    ; $5aab: $02
    ld [bc], a                                    ; $5aac: $02
    ld [bc], a                                    ; $5aad: $02
    inc bc                                        ; $5aae: $03
    ld bc, $0202                                  ; $5aaf: $01 $02 $02
    ld bc, $0101                                  ; $5ab2: $01 $01 $01
    ld [bc], a                                    ; $5ab5: $02
    ld [bc], a                                    ; $5ab6: $02
    inc bc                                        ; $5ab7: $03
    ld c, $fc                                     ; $5ab8: $0e $fc
    ld e, b                                       ; $5aba: $58

jr_07b_5abb:
    ld e, c                                       ; $5abb: $59
    jr c, jr_07b_5abb                             ; $5abc: $38 $fd

    add hl, de                                    ; $5abe: $19
    ld a, [de]                                    ; $5abf: $1a
    daa                                           ; $5ac0: $27
    jr z, jr_07b_5ae0                             ; $5ac1: $28 $1d

    ld e, $5a                                     ; $5ac3: $1e $5a
    ld e, e                                       ; $5ac5: $5b
    ld [bc], a                                    ; $5ac6: $02
    dec b                                         ; $5ac7: $05
    ld [bc], a                                    ; $5ac8: $02
    dec c                                         ; $5ac9: $0d
    ld [bc], a                                    ; $5aca: $02
    ld [bc], a                                    ; $5acb: $02

jr_07b_5acc:
    dec b                                         ; $5acc: $05
    ld a, [bc]                                    ; $5acd: $0a
    ld [bc], a                                    ; $5ace: $02
    ld [bc], a                                    ; $5acf: $02
    ld [bc], a                                    ; $5ad0: $02
    dec b                                         ; $5ad1: $05

jr_07b_5ad2:
    ld bc, $0202                                  ; $5ad2: $01 $02 $02
    ld [bc], a                                    ; $5ad5: $02
    ld [bc], a                                    ; $5ad6: $02
    inc bc                                        ; $5ad7: $03
    ld b, e                                       ; $5ad8: $43
    ld b, [hl]                                    ; $5ad9: $46
    add l                                         ; $5ada: $85
    add [hl]                                      ; $5adb: $86
    add a                                         ; $5adc: $87
    db $fd                                        ; $5add: $fd
    cp $18                                        ; $5ade: $fe $18

jr_07b_5ae0:
    add hl, de                                    ; $5ae0: $19
    ld a, [de]                                    ; $5ae1: $1a
    ld e, h                                       ; $5ae2: $5c
    add c                                         ; $5ae3: $81
    dec e                                         ; $5ae4: $1d
    ld e, $05                                     ; $5ae5: $1e $05
    dec b                                         ; $5ae7: $05
    dec b                                         ; $5ae8: $05
    dec b                                         ; $5ae9: $05
    dec c                                         ; $5aea: $0d
    dec c                                         ; $5aeb: $0d
    dec c                                         ; $5aec: $0d
    dec b                                         ; $5aed: $05
    ld a, [bc]                                    ; $5aee: $0a
    dec b                                         ; $5aef: $05
    dec b                                         ; $5af0: $05
    dec b                                         ; $5af1: $05
    dec b                                         ; $5af2: $05
    ld a, [bc]                                    ; $5af3: $0a
    dec b                                         ; $5af4: $05
    dec b                                         ; $5af5: $05
    rst $38                                       ; $5af6: $ff
    ld b, h                                       ; $5af7: $44
    ld b, c                                       ; $5af8: $41
    ld l, c                                       ; $5af9: $69
    ld l, c                                       ; $5afa: $69
    ld b, d                                       ; $5afb: $42
    ld b, h                                       ; $5afc: $44
    pop de                                        ; $5afd: $d1
    pop de                                        ; $5afe: $d1
    pop de                                        ; $5aff: $d1
    pop de                                        ; $5b00: $d1
    pop de                                        ; $5b01: $d1
    pop de                                        ; $5b02: $d1
    pop de                                        ; $5b03: $d1
    pop de                                        ; $5b04: $d1
    pop de                                        ; $5b05: $d1
    inc c                                         ; $5b06: $0c
    inc b                                         ; $5b07: $04
    add h                                         ; $5b08: $84
    add a                                         ; $5b09: $87
    add h                                         ; $5b0a: $84
    add h                                         ; $5b0b: $84
    add h                                         ; $5b0c: $84
    add h                                         ; $5b0d: $84
    add h                                         ; $5b0e: $84
    add h                                         ; $5b0f: $84
    add h                                         ; $5b10: $84
    add h                                         ; $5b11: $84
    inc b                                         ; $5b12: $04
    inc b                                         ; $5b13: $04
    inc b                                         ; $5b14: $04
    inc b                                         ; $5b15: $04
    ld b, h                                       ; $5b16: $44
    pop de                                        ; $5b17: $d1
    pop de                                        ; $5b18: $d1

Call_07b_5b19:
    pop de                                        ; $5b19: $d1
    pop de                                        ; $5b1a: $d1
    pop de                                        ; $5b1b: $d1
    pop de                                        ; $5b1c: $d1
    pop de                                        ; $5b1d: $d1
    pop de                                        ; $5b1e: $d1
    pop de                                        ; $5b1f: $d1
    pop de                                        ; $5b20: $d1
    pop de                                        ; $5b21: $d1
    pop de                                        ; $5b22: $d1
    pop de                                        ; $5b23: $d1
    pop de                                        ; $5b24: $d1
    pop de                                        ; $5b25: $d1
    add h                                         ; $5b26: $84
    add h                                         ; $5b27: $84
    inc b                                         ; $5b28: $04
    inc b                                         ; $5b29: $04
    add h                                         ; $5b2a: $84
    inc b                                         ; $5b2b: $04
    inc b                                         ; $5b2c: $04
    inc b                                         ; $5b2d: $04
    add h                                         ; $5b2e: $84
    inc b                                         ; $5b2f: $04
    inc b                                         ; $5b30: $04
    inc b                                         ; $5b31: $04
    inc b                                         ; $5b32: $04
    inc b                                         ; $5b33: $04
    inc b                                         ; $5b34: $04
    inc b                                         ; $5b35: $04
    pop de                                        ; $5b36: $d1
    pop de                                        ; $5b37: $d1
    pop de                                        ; $5b38: $d1
    pop de                                        ; $5b39: $d1
    call nc, $dbda                                ; $5b3a: $d4 $da $db
    pop de                                        ; $5b3d: $d1
    rst $10                                       ; $5b3e: $d7
    call c, $f4dd                                 ; $5b3f: $dc $dd $f4
    ldh [$de], a                                  ; $5b42: $e0 $de
    rst $18                                       ; $5b44: $df
    ld d, $04                                     ; $5b45: $16 $04
    inc b                                         ; $5b47: $04
    inc b                                         ; $5b48: $04
    inc b                                         ; $5b49: $04
    daa                                           ; $5b4a: $27
    inc b                                         ; $5b4b: $04
    ld b, $04                                     ; $5b4c: $06 $04
    inc h                                         ; $5b4e: $24
    ld b, $06                                     ; $5b4f: $06 $06
    inc h                                         ; $5b51: $24
    daa                                           ; $5b52: $27
    ld b, $04                                     ; $5b53: $06 $04
    ld h, $f5                                     ; $5b55: $26 $f5
    ld [c], a                                     ; $5b57: $e2
    db $e3                                        ; $5b58: $e3
    jp nc, $fef8                                  ; $5b59: $d2 $f8 $fe

    rst $38                                       ; $5b5c: $ff
    pop af                                        ; $5b5d: $f1
    ei                                            ; $5b5e: $fb
    nop                                           ; $5b5f: $00
    ld bc, $2ef2                                  ; $5b60: $01 $f2 $2e
    cpl                                           ; $5b63: $2f
    inc hl                                        ; $5b64: $23
    di                                            ; $5b65: $f3
    inc h                                         ; $5b66: $24
    rlca                                          ; $5b67: $07
    inc b                                         ; $5b68: $04
    add a                                         ; $5b69: $87
    daa                                           ; $5b6a: $27
    rlca                                          ; $5b6b: $07
    rlca                                          ; $5b6c: $07
    add h                                         ; $5b6d: $84
    inc h                                         ; $5b6e: $24
    inc b                                         ; $5b6f: $04
    inc b                                         ; $5b70: $04
    add a                                         ; $5b71: $87
    dec b                                         ; $5b72: $05
    dec b                                         ; $5b73: $05
    dec b                                         ; $5b74: $05
    add [hl]                                      ; $5b75: $86
    inc a                                         ; $5b76: $3c
    ld de, $f402                                  ; $5b77: $11 $02 $f4
    inc b                                         ; $5b7a: $04
    dec b                                         ; $5b7b: $05
    ld e, b                                       ; $5b7c: $58
    ld d, $27                                     ; $5b7d: $16 $27
    jr z, jr_07b_5b98                             ; $5b7f: $28 $17

    jp nc, Jump_000_3229                          ; $5b81: $d2 $29 $32

    dec de                                        ; $5b84: $1b
    pop af                                        ; $5b85: $f1
    dec b                                         ; $5b86: $05
    dec b                                         ; $5b87: $05
    dec b                                         ; $5b88: $05
    and a                                         ; $5b89: $a7
    dec b                                         ; $5b8a: $05
    dec b                                         ; $5b8b: $05
    dec b                                         ; $5b8c: $05
    and h                                         ; $5b8d: $a4
    dec b                                         ; $5b8e: $05
    dec b                                         ; $5b8f: $05
    dec b                                         ; $5b90: $05
    add [hl]                                      ; $5b91: $86
    dec b                                         ; $5b92: $05
    dec b                                         ; $5b93: $05
    dec b                                         ; $5b94: $05
    add a                                         ; $5b95: $87
    pop de                                        ; $5b96: $d1
    pop de                                        ; $5b97: $d1

jr_07b_5b98:
    pop de                                        ; $5b98: $d1
    pop de                                        ; $5b99: $d1
    pop de                                        ; $5b9a: $d1
    pop de                                        ; $5b9b: $d1
    pop de                                        ; $5b9c: $d1
    pop de                                        ; $5b9d: $d1
    pop de                                        ; $5b9e: $d1
    pop de                                        ; $5b9f: $d1
    pop de                                        ; $5ba0: $d1
    pop de                                        ; $5ba1: $d1
    pop de                                        ; $5ba2: $d1
    pop de                                        ; $5ba3: $d1
    pop de                                        ; $5ba4: $d1
    pop af                                        ; $5ba5: $f1
    inc b                                         ; $5ba6: $04
    inc b                                         ; $5ba7: $04
    inc b                                         ; $5ba8: $04
    inc b                                         ; $5ba9: $04
    inc b                                         ; $5baa: $04
    inc b                                         ; $5bab: $04
    inc b                                         ; $5bac: $04
    inc b                                         ; $5bad: $04
    inc b                                         ; $5bae: $04
    inc b                                         ; $5baf: $04
    inc b                                         ; $5bb0: $04
    inc b                                         ; $5bb1: $04
    inc b                                         ; $5bb2: $04
    inc b                                         ; $5bb3: $04
    inc b                                         ; $5bb4: $04
    daa                                           ; $5bb5: $27
    pop de                                        ; $5bb6: $d1
    pop de                                        ; $5bb7: $d1
    pop de                                        ; $5bb8: $d1
    pop de                                        ; $5bb9: $d1
    pop de                                        ; $5bba: $d1
    pop de                                        ; $5bbb: $d1
    pop de                                        ; $5bbc: $d1
    pop de                                        ; $5bbd: $d1
    push hl                                       ; $5bbe: $e5
    and $4c                                       ; $5bbf: $e6 $4c
    ld c, l                                       ; $5bc1: $4d
    ld l, a                                       ; $5bc2: $6f
    jp hl                                         ; $5bc3: $e9


    ld c, [hl]                                    ; $5bc4: $4e
    ld c, a                                       ; $5bc5: $4f
    inc b                                         ; $5bc6: $04
    inc b                                         ; $5bc7: $04
    inc b                                         ; $5bc8: $04
    inc b                                         ; $5bc9: $04
    inc b                                         ; $5bca: $04
    inc b                                         ; $5bcb: $04
    inc b                                         ; $5bcc: $04
    inc b                                         ; $5bcd: $04
    inc b                                         ; $5bce: $04
    inc b                                         ; $5bcf: $04
    inc b                                         ; $5bd0: $04
    rlca                                          ; $5bd1: $07
    inc b                                         ; $5bd2: $04
    ld b, $06                                     ; $5bd3: $06 $06
    rlca                                          ; $5bd5: $07
    pop de                                        ; $5bd6: $d1
    pop de                                        ; $5bd7: $d1
    pop de                                        ; $5bd8: $d1
    pop de                                        ; $5bd9: $d1
    pop de                                        ; $5bda: $d1
    pop de                                        ; $5bdb: $d1
    pop de                                        ; $5bdc: $d1
    pop de                                        ; $5bdd: $d1
    jp c, $d3db                                   ; $5bde: $da $db $d3

    db $e4                                        ; $5be1: $e4
    call c, $d6dd                                 ; $5be2: $dc $dd $d6
    ld l, [hl]                                    ; $5be5: $6e
    inc b                                         ; $5be6: $04
    inc b                                         ; $5be7: $04
    inc b                                         ; $5be8: $04
    inc b                                         ; $5be9: $04
    inc b                                         ; $5bea: $04
    inc b                                         ; $5beb: $04
    inc b                                         ; $5bec: $04
    inc b                                         ; $5bed: $04
    rlca                                          ; $5bee: $07
    inc b                                         ; $5bef: $04
    inc b                                         ; $5bf0: $04
    inc b                                         ; $5bf1: $04
    rlca                                          ; $5bf2: $07
    inc b                                         ; $5bf3: $04
    inc b                                         ; $5bf4: $04
    ld b, $d1                                     ; $5bf5: $06 $d1
    pop de                                        ; $5bf7: $d1
    pop de                                        ; $5bf8: $d1
    pop de                                        ; $5bf9: $d1
    pop de                                        ; $5bfa: $d1
    pop de                                        ; $5bfb: $d1
    pop de                                        ; $5bfc: $d1
    pop de                                        ; $5bfd: $d1
    push hl                                       ; $5bfe: $e5
    and $4c                                       ; $5bff: $e6 $4c
    ld c, l                                       ; $5c01: $4d
    ld l, a                                       ; $5c02: $6f
    jp hl                                         ; $5c03: $e9


    ld c, [hl]                                    ; $5c04: $4e
    ld c, a                                       ; $5c05: $4f
    inc b                                         ; $5c06: $04
    inc b                                         ; $5c07: $04
    inc b                                         ; $5c08: $04
    inc b                                         ; $5c09: $04
    inc b                                         ; $5c0a: $04
    inc b                                         ; $5c0b: $04
    inc b                                         ; $5c0c: $04
    inc b                                         ; $5c0d: $04
    rlca                                          ; $5c0e: $07
    rlca                                          ; $5c0f: $07
    inc b                                         ; $5c10: $04
    inc b                                         ; $5c11: $04
    inc b                                         ; $5c12: $04
    inc b                                         ; $5c13: $04
    ld b, $06                                     ; $5c14: $06 $06
    pop de                                        ; $5c16: $d1
    pop de                                        ; $5c17: $d1
    pop de                                        ; $5c18: $d1
    ld a, [c]                                     ; $5c19: $f2
    pop de                                        ; $5c1a: $d1
    pop de                                        ; $5c1b: $d1
    pop de                                        ; $5c1c: $d1
    di                                            ; $5c1d: $f3
    pop de                                        ; $5c1e: $d1
    pop de                                        ; $5c1f: $d1
    pop de                                        ; $5c20: $d1
    db $f4                                        ; $5c21: $f4
    pop de                                        ; $5c22: $d1
    pop de                                        ; $5c23: $d1
    pop de                                        ; $5c24: $d1
    ld d, $04                                     ; $5c25: $16 $04
    inc b                                         ; $5c27: $04
    inc b                                         ; $5c28: $04
    daa                                           ; $5c29: $27
    inc b                                         ; $5c2a: $04
    inc b                                         ; $5c2b: $04
    inc b                                         ; $5c2c: $04
    ld h, $04                                     ; $5c2d: $26 $04
    inc b                                         ; $5c2f: $04
    inc b                                         ; $5c30: $04
    rlca                                          ; $5c31: $07
    inc b                                         ; $5c32: $04
    inc b                                         ; $5c33: $04
    inc b                                         ; $5c34: $04
    inc b                                         ; $5c35: $04
    ld [hl], c                                    ; $5c36: $71
    db $ec                                        ; $5c37: $ec
    ld d, b                                       ; $5c38: $50
    ld d, c                                       ; $5c39: $51
    ld [hl], e                                    ; $5c3a: $73
    ldh a, [rHDMA2]                               ; $5c3b: $f0 $52
    ld d, e                                       ; $5c3d: $53
    add hl, bc                                    ; $5c3e: $09
    ld a, [bc]                                    ; $5c3f: $0a
    ld d, h                                       ; $5c40: $54
    ld d, l                                       ; $5c41: $55
    inc c                                         ; $5c42: $0c
    dec c                                         ; $5c43: $0d
    ld d, [hl]                                    ; $5c44: $56
    ld d, a                                       ; $5c45: $57
    inc b                                         ; $5c46: $04
    rlca                                          ; $5c47: $07
    rlca                                          ; $5c48: $07
    ld b, $06                                     ; $5c49: $06 $06
    inc b                                         ; $5c4b: $04
    inc b                                         ; $5c4c: $04
    inc b                                         ; $5c4d: $04
    inc b                                         ; $5c4e: $04
    rlca                                          ; $5c4f: $07
    ld b, $04                                     ; $5c50: $06 $04
    rlca                                          ; $5c52: $07
    inc b                                         ; $5c53: $04
    inc b                                         ; $5c54: $04
    inc b                                         ; $5c55: $04
    sbc $df                                       ; $5c56: $de $df
    reti                                          ; $5c58: $d9


    ld [hl], b                                    ; $5c59: $70
    ld [c], a                                     ; $5c5a: $e2
    db $e3                                        ; $5c5b: $e3
    db $ed                                        ; $5c5c: $ed
    ld [hl], d                                    ; $5c5d: $72
    cp $ff                                        ; $5c5e: $fe $ff
    rst $30                                       ; $5c60: $f7
    ld [$0100], sp                                ; $5c61: $08 $00 $01
    ld a, [$040b]                                 ; $5c64: $fa $0b $04
    inc b                                         ; $5c67: $04
    inc b                                         ; $5c68: $04
    ld b, $04                                     ; $5c69: $06 $04
    inc b                                         ; $5c6b: $04
    rlca                                          ; $5c6c: $07
    rlca                                          ; $5c6d: $07
    inc b                                         ; $5c6e: $04
    ld b, $04                                     ; $5c6f: $06 $04
    inc b                                         ; $5c71: $04
    inc b                                         ; $5c72: $04
    inc b                                         ; $5c73: $04
    inc b                                         ; $5c74: $04
    rlca                                          ; $5c75: $07
    ld [hl], c                                    ; $5c76: $71
    db $ec                                        ; $5c77: $ec
    ld d, b                                       ; $5c78: $50
    ld d, c                                       ; $5c79: $51
    ld [hl], e                                    ; $5c7a: $73
    ldh a, [rHDMA2]                               ; $5c7b: $f0 $52
    ld d, e                                       ; $5c7d: $53
    add hl, bc                                    ; $5c7e: $09
    ld a, [bc]                                    ; $5c7f: $0a
    ld d, h                                       ; $5c80: $54
    ld d, l                                       ; $5c81: $55
    inc c                                         ; $5c82: $0c
    dec c                                         ; $5c83: $0d
    ld d, [hl]                                    ; $5c84: $56
    ld d, a                                       ; $5c85: $57
    rlca                                          ; $5c86: $07
    ld b, $04                                     ; $5c87: $06 $04
    inc b                                         ; $5c89: $04
    inc b                                         ; $5c8a: $04
    inc b                                         ; $5c8b: $04
    inc b                                         ; $5c8c: $04
    inc b                                         ; $5c8d: $04
    ld b, $06                                     ; $5c8e: $06 $06
    inc b                                         ; $5c90: $04
    ld b, $07                                     ; $5c91: $06 $07
    inc b                                         ; $5c93: $04
    inc b                                         ; $5c94: $04
    inc b                                         ; $5c95: $04
    pop de                                        ; $5c96: $d1
    pop de                                        ; $5c97: $d1
    pop de                                        ; $5c98: $d1
    jp nc, $d1d1                                  ; $5c99: $d2 $d1 $d1

    pop de                                        ; $5c9c: $d1
    pop af                                        ; $5c9d: $f1
    pop de                                        ; $5c9e: $d1
    pop de                                        ; $5c9f: $d1
    pop de                                        ; $5ca0: $d1
    ld a, [c]                                     ; $5ca1: $f2
    pop de                                        ; $5ca2: $d1
    pop de                                        ; $5ca3: $d1
    pop de                                        ; $5ca4: $d1
    di                                            ; $5ca5: $f3
    inc b                                         ; $5ca6: $04
    inc b                                         ; $5ca7: $04
    inc b                                         ; $5ca8: $04
    ld h, $04                                     ; $5ca9: $26 $04
    inc b                                         ; $5cab: $04
    inc b                                         ; $5cac: $04
    daa                                           ; $5cad: $27
    inc b                                         ; $5cae: $04
    inc b                                         ; $5caf: $04
    inc b                                         ; $5cb0: $04
    inc h                                         ; $5cb1: $24
    inc b                                         ; $5cb2: $04
    inc b                                         ; $5cb3: $04
    inc b                                         ; $5cb4: $04
    ld h, $23                                     ; $5cb5: $26 $23
    inc h                                         ; $5cb7: $24
    dec h                                         ; $5cb8: $25
    ld h, $02                                     ; $5cb9: $26 $02
    inc bc                                        ; $5cbb: $03
    ld c, $35                                     ; $5cbc: $0e $35
    ld e, b                                       ; $5cbe: $58

jr_07b_5cbf:
    ld e, c                                       ; $5cbf: $59
    jr c, jr_07b_5cbf                             ; $5cc0: $38 $fd

    rla                                           ; $5cc2: $17
    jr jr_07b_5cde                                ; $5cc3: $18 $19

    ld a, [de]                                    ; $5cc5: $1a
    dec b                                         ; $5cc6: $05
    dec b                                         ; $5cc7: $05
    dec b                                         ; $5cc8: $05
    dec b                                         ; $5cc9: $05
    dec b                                         ; $5cca: $05
    dec b                                         ; $5ccb: $05
    dec b                                         ; $5ccc: $05
    dec b                                         ; $5ccd: $05
    dec b                                         ; $5cce: $05
    dec b                                         ; $5ccf: $05
    dec b                                         ; $5cd0: $05
    dec b                                         ; $5cd1: $05
    dec b                                         ; $5cd2: $05
    dec b                                         ; $5cd3: $05
    dec b                                         ; $5cd4: $05
    dec b                                         ; $5cd5: $05
    ld l, $5a                                     ; $5cd6: $2e $5a
    ld e, e                                       ; $5cd8: $5b
    rst $08                                       ; $5cd9: $cf
    inc a                                         ; $5cda: $3c
    ld h, e                                       ; $5cdb: $63
    ld h, h                                       ; $5cdc: $64
    ld l, d                                       ; $5cdd: $6a

jr_07b_5cde:
    jp c, $d166                                   ; $5cde: $da $66 $d1

    ld l, e                                       ; $5ce1: $6b
    daa                                           ; $5ce2: $27
    jr z, jr_07b_5cfc                             ; $5ce3: $28 $17

    jr jr_07b_5cec                                ; $5ce5: $18 $05

    dec b                                         ; $5ce7: $05
    dec b                                         ; $5ce8: $05
    dec c                                         ; $5ce9: $0d
    dec b                                         ; $5cea: $05
    dec b                                         ; $5ceb: $05

jr_07b_5cec:
    dec b                                         ; $5cec: $05
    ld [bc], a                                    ; $5ced: $02
    dec c                                         ; $5cee: $0d
    dec b                                         ; $5cef: $05
    ld a, [bc]                                    ; $5cf0: $0a
    dec b                                         ; $5cf1: $05
    dec b                                         ; $5cf2: $05
    ld [bc], a                                    ; $5cf3: $02
    dec b                                         ; $5cf4: $05
    ld [bc], a                                    ; $5cf5: $02
    add c                                         ; $5cf6: $81
    ld h, $2e                                     ; $5cf7: $26 $2e
    cpl                                           ; $5cf9: $2f
    add d                                         ; $5cfa: $82
    ld b, [hl]                                    ; $5cfb: $46

jr_07b_5cfc:
    inc a                                         ; $5cfc: $3c
    ld de, $fd38                                  ; $5cfd: $11 $38 $fd
    inc b                                         ; $5d00: $04
    dec b                                         ; $5d01: $05
    add hl, de                                    ; $5d02: $19
    ld a, [de]                                    ; $5d03: $1a
    daa                                           ; $5d04: $27
    dec hl                                        ; $5d05: $2b
    dec c                                         ; $5d06: $0d
    dec b                                         ; $5d07: $05
    dec b                                         ; $5d08: $05
    dec b                                         ; $5d09: $05
    dec c                                         ; $5d0a: $0d
    ld [bc], a                                    ; $5d0b: $02
    ld [bc], a                                    ; $5d0c: $02
    ld [bc], a                                    ; $5d0d: $02
    ld [bc], a                                    ; $5d0e: $02
    ld [bc], a                                    ; $5d0f: $02
    ld [bc], a                                    ; $5d10: $02
    ld [bc], a                                    ; $5d11: $02
    ld [bc], a                                    ; $5d12: $02
    ld [bc], a                                    ; $5d13: $02
    ld [bc], a                                    ; $5d14: $02
    ld [bc], a                                    ; $5d15: $02
    pop de                                        ; $5d16: $d1

Call_07b_5d17:
    pop de                                        ; $5d17: $d1
    pop de                                        ; $5d18: $d1
    db $f4                                        ; $5d19: $f4
    pop de                                        ; $5d1a: $d1
    pop de                                        ; $5d1b: $d1
    pop de                                        ; $5d1c: $d1
    ld c, b                                       ; $5d1d: $48
    pop de                                        ; $5d1e: $d1
    pop de                                        ; $5d1f: $d1
    pop de                                        ; $5d20: $d1
    pop de                                        ; $5d21: $d1
    pop de                                        ; $5d22: $d1
    pop de                                        ; $5d23: $d1
    pop de                                        ; $5d24: $d1
    pop de                                        ; $5d25: $d1
    inc b                                         ; $5d26: $04
    inc b                                         ; $5d27: $04
    inc b                                         ; $5d28: $04
    inc b                                         ; $5d29: $04
    inc b                                         ; $5d2a: $04
    inc b                                         ; $5d2b: $04
    inc b                                         ; $5d2c: $04
    ld b, $04                                     ; $5d2d: $06 $04
    inc b                                         ; $5d2f: $04
    inc b                                         ; $5d30: $04
    inc b                                         ; $5d31: $04
    inc b                                         ; $5d32: $04
    inc b                                         ; $5d33: $04
    inc b                                         ; $5d34: $04
    inc b                                         ; $5d35: $04
    dec de                                        ; $5d36: $1b
    inc e                                         ; $5d37: $1c
    dec e                                         ; $5d38: $1d
    ld e, $49                                     ; $5d39: $1e $49
    ld c, d                                       ; $5d3b: $4a
    ld c, e                                       ; $5d3c: $4b
    ld l, b                                       ; $5d3d: $68
    pop de                                        ; $5d3e: $d1
    pop de                                        ; $5d3f: $d1
    pop de                                        ; $5d40: $d1
    pop de                                        ; $5d41: $d1
    pop de                                        ; $5d42: $d1
    pop de                                        ; $5d43: $d1
    pop de                                        ; $5d44: $d1
    pop de                                        ; $5d45: $d1
    dec b                                         ; $5d46: $05
    dec b                                         ; $5d47: $05
    dec b                                         ; $5d48: $05
    dec b                                         ; $5d49: $05
    add a                                         ; $5d4a: $87
    add a                                         ; $5d4b: $87
    add [hl]                                      ; $5d4c: $86
    add h                                         ; $5d4d: $84
    add h                                         ; $5d4e: $84
    add h                                         ; $5d4f: $84
    add h                                         ; $5d50: $84
    add h                                         ; $5d51: $84
    inc b                                         ; $5d52: $04
    inc b                                         ; $5d53: $04
    inc b                                         ; $5d54: $04
    inc b                                         ; $5d55: $04
    add hl, hl                                    ; $5d56: $29
    ld [hl-], a                                   ; $5d57: $32
    dec de                                        ; $5d58: $1b
    inc e                                         ; $5d59: $1c
    ld l, c                                       ; $5d5a: $69
    ld b, d                                       ; $5d5b: $42
    ld b, h                                       ; $5d5c: $44
    ld c, b                                       ; $5d5d: $48
    pop de                                        ; $5d5e: $d1
    pop de                                        ; $5d5f: $d1
    pop de                                        ; $5d60: $d1
    pop de                                        ; $5d61: $d1
    pop de                                        ; $5d62: $d1
    pop de                                        ; $5d63: $d1
    pop de                                        ; $5d64: $d1
    pop de                                        ; $5d65: $d1
    ld [bc], a                                    ; $5d66: $02
    dec b                                         ; $5d67: $05
    ld [bc], a                                    ; $5d68: $02
    ld [bc], a                                    ; $5d69: $02
    add a                                         ; $5d6a: $87
    add h                                         ; $5d6b: $84
    add [hl]                                      ; $5d6c: $86
    add a                                         ; $5d6d: $87
    add h                                         ; $5d6e: $84
    add h                                         ; $5d6f: $84
    add h                                         ; $5d70: $84
    add h                                         ; $5d71: $84
    inc b                                         ; $5d72: $04
    inc b                                         ; $5d73: $04
    inc b                                         ; $5d74: $04
    inc b                                         ; $5d75: $04
    dec e                                         ; $5d76: $1d
    ld e, $29                                     ; $5d77: $1e $29
    ld [hl-], a                                   ; $5d79: $32
    ld c, c                                       ; $5d7a: $49
    ld c, d                                       ; $5d7b: $4a
    ld c, e                                       ; $5d7c: $4b
    ld l, b                                       ; $5d7d: $68
    pop de                                        ; $5d7e: $d1
    pop de                                        ; $5d7f: $d1
    pop de                                        ; $5d80: $d1
    pop de                                        ; $5d81: $d1
    pop de                                        ; $5d82: $d1
    pop de                                        ; $5d83: $d1
    pop de                                        ; $5d84: $d1
    pop de                                        ; $5d85: $d1
    ld [bc], a                                    ; $5d86: $02
    ld [bc], a                                    ; $5d87: $02
    ld [bc], a                                    ; $5d88: $02
    ld [bc], a                                    ; $5d89: $02
    add h                                         ; $5d8a: $84
    add a                                         ; $5d8b: $87
    add [hl]                                      ; $5d8c: $86
    add h                                         ; $5d8d: $84
    add h                                         ; $5d8e: $84
    add h                                         ; $5d8f: $84
    add h                                         ; $5d90: $84
    add h                                         ; $5d91: $84
    inc b                                         ; $5d92: $04
    inc b                                         ; $5d93: $04
    inc b                                         ; $5d94: $04
    inc b                                         ; $5d95: $04
    pop de                                        ; $5d96: $d1
    pop af                                        ; $5d97: $f1
    db $d3                                        ; $5d98: $d3
    nop                                           ; $5d99: $00
    pop de                                        ; $5d9a: $d1
    ld a, [c]                                     ; $5d9b: $f2
    inc de                                        ; $5d9c: $13
    inc d                                         ; $5d9d: $14
    call nc, $e8d5                                ; $5d9e: $d4 $d5 $e8
    ld bc, $d8d7                                  ; $5da1: $01 $d7 $d8
    ld c, $35                                     ; $5da4: $0e $35
    inc b                                         ; $5da6: $04
    inc h                                         ; $5da7: $24
    ld a, [bc]                                    ; $5da8: $0a
    add hl, bc                                    ; $5da9: $09
    inc b                                         ; $5daa: $04
    inc h                                         ; $5dab: $24
    ld [bc], a                                    ; $5dac: $02
    inc bc                                        ; $5dad: $03
    inc b                                         ; $5dae: $04
    ld b, $0a                                     ; $5daf: $06 $0a
    add hl, bc                                    ; $5db1: $09
    inc b                                         ; $5db2: $04
    ld b, $02                                     ; $5db3: $06 $02
    ld bc, $3229                                  ; $5db5: $01 $29 $32
    di                                            ; $5db8: $f3
    pop de                                        ; $5db9: $d1
    inc sp                                        ; $5dba: $33
    inc [hl]                                      ; $5dbb: $34
    db $f4                                        ; $5dbc: $f4
    pop de                                        ; $5dbd: $d1
    ld l, $2f                                     ; $5dbe: $2e $2f
    push de                                       ; $5dc0: $d5
    call nc, $2c2b                                ; $5dc1: $d4 $2b $2c
    ret c                                         ; $5dc4: $d8

    rst $10                                       ; $5dc5: $d7
    inc bc                                        ; $5dc6: $03
    ld [bc], a                                    ; $5dc7: $02
    inc b                                         ; $5dc8: $04
    inc b                                         ; $5dc9: $04
    ld bc, $2602                                  ; $5dca: $01 $02 $26
    inc b                                         ; $5dcd: $04
    ld bc, $2602                                  ; $5dce: $01 $02 $26
    inc h                                         ; $5dd1: $24
    inc bc                                        ; $5dd2: $03
    ld [bc], a                                    ; $5dd3: $02
    daa                                           ; $5dd4: $27
    ld h, $d1                                     ; $5dd5: $26 $d1
    pop de                                        ; $5dd7: $d1
    pop de                                        ; $5dd8: $d1
    pop de                                        ; $5dd9: $d1
    pop de                                        ; $5dda: $d1
    pop de                                        ; $5ddb: $d1
    pop de                                        ; $5ddc: $d1
    pop de                                        ; $5ddd: $d1
    ld c, l                                       ; $5dde: $4d
    ld c, h                                       ; $5ddf: $4c
    and $e5                                       ; $5de0: $e6 $e5
    ld c, a                                       ; $5de2: $4f
    ld c, [hl]                                    ; $5de3: $4e
    jp hl                                         ; $5de4: $e9


    ld l, a                                       ; $5de5: $6f
    inc b                                         ; $5de6: $04
    inc b                                         ; $5de7: $04
    inc b                                         ; $5de8: $04
    inc b                                         ; $5de9: $04
    inc b                                         ; $5dea: $04
    inc b                                         ; $5deb: $04
    inc b                                         ; $5dec: $04
    inc b                                         ; $5ded: $04
    inc h                                         ; $5dee: $24
    inc h                                         ; $5def: $24
    ld h, $24                                     ; $5df0: $26 $24
    daa                                           ; $5df2: $27
    inc h                                         ; $5df3: $24
    daa                                           ; $5df4: $27
    daa                                           ; $5df5: $27
    pop de                                        ; $5df6: $d1
    di                                            ; $5df7: $f3
    ld l, l                                       ; $5df8: $6d
    ld e, c                                       ; $5df9: $59
    pop de                                        ; $5dfa: $d1
    db $f4                                        ; $5dfb: $f4
    rla                                           ; $5dfc: $17
    ld e, l                                       ; $5dfd: $5d
    call nc, Call_000_3ed5                        ; $5dfe: $d4 $d5 $3e
    ld b, l                                       ; $5e01: $45
    rst $10                                       ; $5e02: $d7
    ret c                                         ; $5e03: $d8

    ld b, b                                       ; $5e04: $40
    ld b, a                                       ; $5e05: $47
    inc b                                         ; $5e06: $04
    ld h, $02                                     ; $5e07: $26 $02
    ld bc, $0404                                  ; $5e09: $01 $04 $04
    ld [bc], a                                    ; $5e0c: $02
    ld [bc], a                                    ; $5e0d: $02
    rlca                                          ; $5e0e: $07
    ld b, $02                                     ; $5e0f: $06 $02
    ld bc, $0404                                  ; $5e11: $01 $04 $04
    ld [bc], a                                    ; $5e14: $02
    inc bc                                        ; $5e15: $03
    ldh [$e1], a                                  ; $5e16: $e0 $e1
    jr c, @-$01                                   ; $5e18: $38 $fd

    push af                                       ; $5e1a: $f5
    or $19                                        ; $5e1b: $f6 $19
    ld a, [de]                                    ; $5e1d: $1a
    ld hl, sp-$07                                 ; $5e1e: $f8 $f9
    dec e                                         ; $5e20: $1d
    ld e, $fb                                     ; $5e21: $1e $fb
    db $fc                                        ; $5e23: $fc
    ld hl, $0722                                  ; $5e24: $21 $22 $07
    inc b                                         ; $5e27: $04
    ld [bc], a                                    ; $5e28: $02
    ld bc, $0607                                  ; $5e29: $01 $07 $06
    ld [bc], a                                    ; $5e2c: $02
    ld [bc], a                                    ; $5e2d: $02
    inc b                                         ; $5e2e: $04
    rlca                                          ; $5e2f: $07
    ld [bc], a                                    ; $5e30: $02
    ld [bc], a                                    ; $5e31: $02
    inc b                                         ; $5e32: $04

jr_07b_5e33:
    rlca                                          ; $5e33: $07
    ld [bc], a                                    ; $5e34: $02
    ld [bc], a                                    ; $5e35: $02
    inc b                                         ; $5e36: $04
    dec b                                         ; $5e37: $05
    pop hl                                        ; $5e38: $e1
    ldh [$27], a                                  ; $5e39: $e0 $27
    jr z, jr_07b_5e33                             ; $5e3b: $28 $f6

    push af                                       ; $5e3d: $f5
    add hl, hl                                    ; $5e3e: $29
    ld [hl-], a                                   ; $5e3f: $32
    ld sp, hl                                     ; $5e40: $f9
    ld hl, sp+$33                                 ; $5e41: $f8 $33
    inc [hl]                                      ; $5e43: $34
    db $fc                                        ; $5e44: $fc
    ei                                            ; $5e45: $fb
    inc bc                                        ; $5e46: $03
    ld [bc], a                                    ; $5e47: $02
    daa                                           ; $5e48: $27
    inc h                                         ; $5e49: $24
    ld bc, $2602                                  ; $5e4a: $01 $02 $26
    inc h                                         ; $5e4d: $24
    ld [bc], a                                    ; $5e4e: $02
    ld [bc], a                                    ; $5e4f: $02
    inc h                                         ; $5e50: $24
    inc h                                         ; $5e51: $24
    ld [bc], a                                    ; $5e52: $02
    ld [bc], a                                    ; $5e53: $02
    inc h                                         ; $5e54: $24
    inc h                                         ; $5e55: $24
    ld d, c                                       ; $5e56: $51
    ld d, b                                       ; $5e57: $50
    db $ec                                        ; $5e58: $ec
    ld [hl], c                                    ; $5e59: $71
    ld d, e                                       ; $5e5a: $53
    ld d, d                                       ; $5e5b: $52
    ldh a, [$73]                                  ; $5e5c: $f0 $73
    ld d, l                                       ; $5e5e: $55
    ld d, h                                       ; $5e5f: $54
    ld a, [bc]                                    ; $5e60: $0a
    add hl, bc                                    ; $5e61: $09
    ld d, a                                       ; $5e62: $57
    ld d, [hl]                                    ; $5e63: $56
    dec c                                         ; $5e64: $0d
    inc c                                         ; $5e65: $0c
    daa                                           ; $5e66: $27
    ld h, $27                                     ; $5e67: $26 $27
    daa                                           ; $5e69: $27
    daa                                           ; $5e6a: $27
    inc h                                         ; $5e6b: $24
    inc h                                         ; $5e6c: $24
    ld h, $26                                     ; $5e6d: $26 $26
    daa                                           ; $5e6f: $27
    daa                                           ; $5e70: $27
    inc h                                         ; $5e71: $24
    inc h                                         ; $5e72: $24
    inc h                                         ; $5e73: $24
    ld h, $26                                     ; $5e74: $26 $26
    ldh [$e1], a                                  ; $5e76: $e0 $e1
    ld [bc], a                                    ; $5e78: $02
    ld l, h                                       ; $5e79: $6c
    push af                                       ; $5e7a: $f5
    or $8e                                        ; $5e7b: $f6 $8e
    adc a                                         ; $5e7d: $8f
    ld hl, sp-$07                                 ; $5e7e: $f8 $f9
    ld l, l                                       ; $5e80: $6d
    ld e, c                                       ; $5e81: $59
    ei                                            ; $5e82: $fb
    db $fc                                        ; $5e83: $fc
    rla                                           ; $5e84: $17
    ld e, l                                       ; $5e85: $5d
    ld b, $04                                     ; $5e86: $06 $04
    ld a, [bc]                                    ; $5e88: $0a
    ld bc, $0707                                  ; $5e89: $01 $07 $07
    ld a, [bc]                                    ; $5e8c: $0a
    ld a, [bc]                                    ; $5e8d: $0a
    rlca                                          ; $5e8e: $07
    inc b                                         ; $5e8f: $04
    ld [bc], a                                    ; $5e90: $02
    ld bc, $0604                                  ; $5e91: $01 $04 $06
    ld [bc], a                                    ; $5e94: $02
    inc bc                                        ; $5e95: $03
    inc hl                                        ; $5e96: $23
    inc h                                         ; $5e97: $24
    dec h                                         ; $5e98: $25
    ld h, $02                                     ; $5e99: $26 $02
    inc bc                                        ; $5e9b: $03
    ld c, $35                                     ; $5e9c: $0e $35
    ld e, b                                       ; $5e9e: $58

jr_07b_5e9f:
    ld e, c                                       ; $5e9f: $59
    jr c, jr_07b_5e9f                             ; $5ea0: $38 $fd

    inc l                                         ; $5ea2: $2c
    call nz, $1a19                                ; $5ea3: $c4 $19 $1a
    dec b                                         ; $5ea6: $05
    dec b                                         ; $5ea7: $05
    ld [bc], a                                    ; $5ea8: $02
    ld [bc], a                                    ; $5ea9: $02
    ld [bc], a                                    ; $5eaa: $02
    ld [bc], a                                    ; $5eab: $02
    ld [bc], a                                    ; $5eac: $02
    ld [bc], a                                    ; $5ead: $02
    ld [bc], a                                    ; $5eae: $02
    ld [bc], a                                    ; $5eaf: $02
    ld [bc], a                                    ; $5eb0: $02
    ld [bc], a                                    ; $5eb1: $02
    ld [bc], a                                    ; $5eb2: $02
    ld a, [bc]                                    ; $5eb3: $0a
    ld [bc], a                                    ; $5eb4: $02
    ld [bc], a                                    ; $5eb5: $02
    ld l, $2f                                     ; $5eb6: $2e $2f
    inc hl                                        ; $5eb8: $23
    inc h                                         ; $5eb9: $24
    inc a                                         ; $5eba: $3c
    ld de, $0302                                  ; $5ebb: $11 $02 $03
    inc b                                         ; $5ebe: $04
    dec b                                         ; $5ebf: $05
    ld e, b                                       ; $5ec0: $58
    inc bc                                        ; $5ec1: $03
    daa                                           ; $5ec2: $27
    jr z, jr_07b_5edc                             ; $5ec3: $28 $17

    jr jr_07b_5ec9                                ; $5ec5: $18 $02

    ld [bc], a                                    ; $5ec7: $02
    dec b                                         ; $5ec8: $05

jr_07b_5ec9:
    dec b                                         ; $5ec9: $05
    ld [bc], a                                    ; $5eca: $02
    ld [bc], a                                    ; $5ecb: $02
    ld [bc], a                                    ; $5ecc: $02
    ld [bc], a                                    ; $5ecd: $02
    ld [bc], a                                    ; $5ece: $02
    ld [bc], a                                    ; $5ecf: $02
    ld [bc], a                                    ; $5ed0: $02
    ld a, [bc]                                    ; $5ed1: $0a
    ld [bc], a                                    ; $5ed2: $02
    ld [bc], a                                    ; $5ed3: $02
    ld [bc], a                                    ; $5ed4: $02
    ld [bc], a                                    ; $5ed5: $02
    dec h                                         ; $5ed6: $25
    ld h, $2e                                     ; $5ed7: $26 $2e
    cpl                                           ; $5ed9: $2f
    ld c, $35                                     ; $5eda: $0e $35

jr_07b_5edc:
    inc b                                         ; $5edc: $04
    scf                                           ; $5edd: $37
    rlca                                          ; $5ede: $07
    ld [de], a                                    ; $5edf: $12
    inc de                                        ; $5ee0: $13
    inc d                                         ; $5ee1: $14
    add hl, de                                    ; $5ee2: $19
    dec b                                         ; $5ee3: $05
    ld a, [hl-]                                   ; $5ee4: $3a
    ld a, b                                       ; $5ee5: $78
    dec b                                         ; $5ee6: $05
    dec b                                         ; $5ee7: $05
    dec b                                         ; $5ee8: $05
    dec b                                         ; $5ee9: $05
    ld [bc], a                                    ; $5eea: $02
    ld [bc], a                                    ; $5eeb: $02
    ld a, [bc]                                    ; $5eec: $0a
    ld [bc], a                                    ; $5eed: $02
    ld [bc], a                                    ; $5eee: $02
    ld [bc], a                                    ; $5eef: $02
    ld bc, $0201                                  ; $5ef0: $01 $01 $02
    ld a, [bc]                                    ; $5ef3: $0a
    ld [bc], a                                    ; $5ef4: $02
    ld bc, $2423                                  ; $5ef5: $01 $23 $24
    ld e, [hl]                                    ; $5ef8: $5e
    ld e, a                                       ; $5ef9: $5f
    ld [bc], a                                    ; $5efa: $02
    inc bc                                        ; $5efb: $03
    ld h, b                                       ; $5efc: $60
    ld b, $07                                     ; $5efd: $06 $07
    add l                                         ; $5eff: $85
    add [hl]                                      ; $5f00: $86
    db $db                                        ; $5f01: $db
    rla                                           ; $5f02: $17
    jr @-$70                                      ; $5f03: $18 $8e

    adc a                                         ; $5f05: $8f
    dec b                                         ; $5f06: $05
    dec b                                         ; $5f07: $05
    ld [bc], a                                    ; $5f08: $02
    ld bc, $0202                                  ; $5f09: $01 $02 $02
    inc bc                                        ; $5f0c: $03
    add hl, bc                                    ; $5f0d: $09
    ld a, [bc]                                    ; $5f0e: $0a
    add hl, bc                                    ; $5f0f: $09
    add hl, bc                                    ; $5f10: $09
    ld a, [bc]                                    ; $5f11: $0a
    ld bc, $0903                                  ; $5f12: $01 $03 $09
    add hl, bc                                    ; $5f15: $09
    dec de                                        ; $5f16: $1b
    inc e                                         ; $5f17: $1c
    dec e                                         ; $5f18: $1d
    ld e, $69                                     ; $5f19: $1e $69
    ld b, c                                       ; $5f1b: $41
    ld hl, $d122                                  ; $5f1c: $21 $22 $d1
    di                                            ; $5f1f: $f3
    dec h                                         ; $5f20: $25
    ld h, $d1                                     ; $5f21: $26 $d1
    db $f4                                        ; $5f23: $f4
    ld c, $35                                     ; $5f24: $0e $35
    ld [bc], a                                    ; $5f26: $02
    ld [bc], a                                    ; $5f27: $02
    ld [bc], a                                    ; $5f28: $02
    ld [bc], a                                    ; $5f29: $02
    add a                                         ; $5f2a: $87
    and [hl]                                      ; $5f2b: $a6
    ld [bc], a                                    ; $5f2c: $02
    ld [bc], a                                    ; $5f2d: $02
    add h                                         ; $5f2e: $84
    and h                                         ; $5f2f: $a4
    ld [bc], a                                    ; $5f30: $02
    ld [bc], a                                    ; $5f31: $02
    inc b                                         ; $5f32: $04
    rlca                                          ; $5f33: $07
    ld [bc], a                                    ; $5f34: $02
    ld [bc], a                                    ; $5f35: $02
    add hl, hl                                    ; $5f36: $29
    ld [hl-], a                                   ; $5f37: $32
    dec de                                        ; $5f38: $1b
    inc e                                         ; $5f39: $1c
    inc sp                                        ; $5f3a: $33
    or d                                          ; $5f3b: $b2
    ld a, $45                                     ; $5f3c: $3e $45
    ld l, $3f                                     ; $5f3e: $2e $3f
    ld b, b                                       ; $5f40: $40
    ld b, a                                       ; $5f41: $47
    inc a                                         ; $5f42: $3c
    ld de, $e908                                  ; $5f43: $11 $08 $e9
    ld [bc], a                                    ; $5f46: $02
    ld [bc], a                                    ; $5f47: $02
    ld [bc], a                                    ; $5f48: $02
    ld [bc], a                                    ; $5f49: $02
    ld [bc], a                                    ; $5f4a: $02
    ld a, [bc]                                    ; $5f4b: $0a
    ld [bc], a                                    ; $5f4c: $02
    ld [bc], a                                    ; $5f4d: $02
    ld [bc], a                                    ; $5f4e: $02
    ld [bc], a                                    ; $5f4f: $02
    ld bc, $0202                                  ; $5f50: $01 $02 $02
    ld bc, $0a09                                  ; $5f53: $01 $09 $0a
    dec e                                         ; $5f56: $1d
    ld e, $29                                     ; $5f57: $1e $29
    ld [hl-], a                                   ; $5f59: $32
    ld b, c                                       ; $5f5a: $41
    ld b, d                                       ; $5f5b: $42
    ld b, h                                       ; $5f5c: $44
    ld c, b                                       ; $5f5d: $48
    ld d, $d1                                     ; $5f5e: $16 $d1
    pop de                                        ; $5f60: $d1
    pop de                                        ; $5f61: $d1
    jp nc, $d1d1                                  ; $5f62: $d2 $d1 $d1

    pop de                                        ; $5f65: $d1
    ld [bc], a                                    ; $5f66: $02
    ld [bc], a                                    ; $5f67: $02
    ld [bc], a                                    ; $5f68: $02
    ld [bc], a                                    ; $5f69: $02
    add a                                         ; $5f6a: $87
    add [hl]                                      ; $5f6b: $86
    add [hl]                                      ; $5f6c: $86
    add a                                         ; $5f6d: $87
    and [hl]                                      ; $5f6e: $a6
    add h                                         ; $5f6f: $84
    add h                                         ; $5f70: $84
    add h                                         ; $5f71: $84
    inc b                                         ; $5f72: $04
    inc b                                         ; $5f73: $04
    inc b                                         ; $5f74: $04
    inc b                                         ; $5f75: $04
    dec de                                        ; $5f76: $1b
    inc e                                         ; $5f77: $1c
    ld b, c                                       ; $5f78: $41
    ld b, d                                       ; $5f79: $42
    ld c, c                                       ; $5f7a: $49
    ld c, d                                       ; $5f7b: $4a
    ld c, e                                       ; $5f7c: $4b
    pop de                                        ; $5f7d: $d1
    pop de                                        ; $5f7e: $d1
    pop de                                        ; $5f7f: $d1
    pop de                                        ; $5f80: $d1
    pop de                                        ; $5f81: $d1
    pop de                                        ; $5f82: $d1
    pop de                                        ; $5f83: $d1
    pop de                                        ; $5f84: $d1
    pop de                                        ; $5f85: $d1
    ld bc, $8401                                  ; $5f86: $01 $01 $84
    add a                                         ; $5f89: $87
    add h                                         ; $5f8a: $84
    add [hl]                                      ; $5f8b: $86
    add h                                         ; $5f8c: $84
    add h                                         ; $5f8d: $84
    add h                                         ; $5f8e: $84
    add h                                         ; $5f8f: $84
    add h                                         ; $5f90: $84
    inc b                                         ; $5f91: $04
    inc b                                         ; $5f92: $04
    inc b                                         ; $5f93: $04
    inc b                                         ; $5f94: $04
    inc b                                         ; $5f95: $04
    ld a, l                                       ; $5f96: $7d
    ld [hl], h                                    ; $5f97: $74
    inc b                                         ; $5f98: $04
    sub l                                         ; $5f99: $95
    add hl, bc                                    ; $5f9a: $09
    rlca                                          ; $5f9b: $07
    ld [de], a                                    ; $5f9c: $12
    inc de                                        ; $5f9d: $13
    ld a, c                                       ; $5f9e: $79
    ld e, $0a                                     ; $5f9f: $1e $0a
    dec bc                                        ; $5fa1: $0b
    ld hl, $7b22                                  ; $5fa2: $21 $22 $7b
    ld a, h                                       ; $5fa5: $7c
    ld bc, $0103                                  ; $5fa6: $01 $03 $01
    ld a, [bc]                                    ; $5fa9: $0a
    add hl, bc                                    ; $5faa: $09
    ld bc, $0201                                  ; $5fab: $01 $01 $02
    ld bc, $0902                                  ; $5fae: $01 $02 $09
    ld a, [bc]                                    ; $5fb1: $0a
    ld [bc], a                                    ; $5fb2: $02
    ld [bc], a                                    ; $5fb3: $02
    inc bc                                        ; $5fb4: $03
    ld [bc], a                                    ; $5fb5: $02
    db $f4                                        ; $5fb6: $f4
    pop de                                        ; $5fb7: $d1
    pop de                                        ; $5fb8: $d1
    pop de                                        ; $5fb9: $d1
    push de                                       ; $5fba: $d5
    call nc, $dbda                                ; $5fbb: $d4 $da $db
    ret c                                         ; $5fbe: $d8

    rst $10                                       ; $5fbf: $d7
    call c, $e1dd                                 ; $5fc0: $dc $dd $e1
    ldh [$de], a                                  ; $5fc3: $e0 $de
    rst $18                                       ; $5fc5: $df
    inc h                                         ; $5fc6: $24
    inc b                                         ; $5fc7: $04
    inc b                                         ; $5fc8: $04
    inc b                                         ; $5fc9: $04
    inc h                                         ; $5fca: $24
    ld h, $06                                     ; $5fcb: $26 $06
    inc b                                         ; $5fcd: $04
    ld h, $24                                     ; $5fce: $26 $24
    ld b, $06                                     ; $5fd0: $06 $06
    inc h                                         ; $5fd2: $24
    ld h, $07                                     ; $5fd3: $26 $07
    inc b                                         ; $5fd5: $04
    pop de                                        ; $5fd6: $d1
    pop de                                        ; $5fd7: $d1
    pop de                                        ; $5fd8: $d1
    pop de                                        ; $5fd9: $d1
    db $d3                                        ; $5fda: $d3
    db $e4                                        ; $5fdb: $e4
    push hl                                       ; $5fdc: $e5
    pop de                                        ; $5fdd: $d1
    sub $6e                                       ; $5fde: $d6 $6e
    ld l, a                                       ; $5fe0: $6f
    pop af                                        ; $5fe1: $f1
    reti                                          ; $5fe2: $d9


    ld [hl], b                                    ; $5fe3: $70
    ld [hl], c                                    ; $5fe4: $71
    ld a, [c]                                     ; $5fe5: $f2
    inc b                                         ; $5fe6: $04
    inc b                                         ; $5fe7: $04
    inc b                                         ; $5fe8: $04
    inc b                                         ; $5fe9: $04
    rlca                                          ; $5fea: $07
    inc b                                         ; $5feb: $04
    ld b, $04                                     ; $5fec: $06 $04
    inc b                                         ; $5fee: $04
    inc b                                         ; $5fef: $04
    ld b, $04                                     ; $5ff0: $06 $04
    inc b                                         ; $5ff2: $04
    ld b, $07                                     ; $5ff3: $06 $07
    inc b                                         ; $5ff5: $04
    dec h                                         ; $5ff6: $25
    adc l                                         ; $5ff7: $8d
    ld l, $8a                                     ; $5ff8: $2e $8a
    ld c, $35                                     ; $5ffa: $0e $35
    adc e                                         ; $5ffc: $8b
    adc h                                         ; $5ffd: $8c
    ld a, l                                       ; $5ffe: $7d
    ld [hl], h                                    ; $5fff: $74
    ld [hl], l                                    ; $6000: $75
    halt                                          ; $6001: $76
    sbc a                                         ; $6002: $9f
    ld e, e                                       ; $6003: $5b
    inc c                                         ; $6004: $0c
    add c                                         ; $6005: $81
    ld [bc], a                                    ; $6006: $02
    add hl, bc                                    ; $6007: $09
    ld bc, $010a                                  ; $6008: $01 $0a $01
    inc bc                                        ; $600b: $03
    add hl, bc                                    ; $600c: $09
    ld a, [bc]                                    ; $600d: $0a
    ld bc, $0101                                  ; $600e: $01 $01 $01
    ld [bc], a                                    ; $6011: $02
    add hl, bc                                    ; $6012: $09
    ld [bc], a                                    ; $6013: $02
    dec bc                                        ; $6014: $0b
    add hl, bc                                    ; $6015: $09
    or $f5                                        ; $6016: $f6 $f5
    ld [c], a                                     ; $6018: $e2
    db $e3                                        ; $6019: $e3
    ld sp, hl                                     ; $601a: $f9
    ld hl, sp-$02                                 ; $601b: $f8 $fe
    rst $38                                       ; $601d: $ff
    db $fc                                        ; $601e: $fc
    ei                                            ; $601f: $fb
    nop                                           ; $6020: $00
    ld bc, $5d17                                  ; $6021: $01 $17 $5d
    add hl, de                                    ; $6024: $19
    ld [hl], a                                    ; $6025: $77
    ld h, $24                                     ; $6026: $26 $24
    rlca                                          ; $6028: $07
    inc b                                         ; $6029: $04
    inc h                                         ; $602a: $24
    ld h, $06                                     ; $602b: $26 $06
    rlca                                          ; $602d: $07
    daa                                           ; $602e: $27
    inc h                                         ; $602f: $24
    ld b, $04                                     ; $6030: $06 $04
    ld [bc], a                                    ; $6032: $02
    dec b                                         ; $6033: $05
    dec b                                         ; $6034: $05
    dec b                                         ; $6035: $05
    db $ed                                        ; $6036: $ed
    ld [hl], d                                    ; $6037: $72
    ld [hl], e                                    ; $6038: $73
    di                                            ; $6039: $f3
    rst $30                                       ; $603a: $f7
    ld [$f409], sp                                ; $603b: $08 $09 $f4
    ld a, [$0c0b]                                 ; $603e: $fa $0b $0c
    ld d, $27                                     ; $6041: $16 $27
    ld a, b                                       ; $6043: $78
    rla                                           ; $6044: $17
    jp nc, Jump_000_0607                          ; $6045: $d2 $07 $06

    ld b, $04                                     ; $6048: $06 $04
    inc b                                         ; $604a: $04
    ld b, $06                                     ; $604b: $06 $06
    ld h, $04                                     ; $604d: $26 $04
    rlca                                          ; $604f: $07
    inc b                                         ; $6050: $04
    daa                                           ; $6051: $27
    dec b                                         ; $6052: $05
    dec b                                         ; $6053: $05
    dec b                                         ; $6054: $05
    inc b                                         ; $6055: $04
    ld h, e                                       ; $6056: $63
    ld h, h                                       ; $6057: $64
    ld l, d                                       ; $6058: $6a
    add d                                         ; $6059: $82
    ld h, [hl]                                    ; $605a: $66
    ld h, a                                       ; $605b: $67
    dec c                                         ; $605c: $0d
    ld a, h                                       ; $605d: $7c
    dec h                                         ; $605e: $25
    adc l                                         ; $605f: $8d
    ld l, $8a                                     ; $6060: $2e $8a
    ld c, $35                                     ; $6062: $0e $35
    adc e                                         ; $6064: $8b
    adc h                                         ; $6065: $8c
    ld bc, $0301                                  ; $6066: $01 $01 $03
    add hl, bc                                    ; $6069: $09
    ld bc, $0903                                  ; $606a: $01 $03 $09
    inc bc                                        ; $606d: $03
    ld bc, $0209                                  ; $606e: $01 $09 $02
    add hl, bc                                    ; $6071: $09
    ld bc, $0902                                  ; $6072: $01 $02 $09
    add hl, bc                                    ; $6075: $09
    ld e, [hl]                                    ; $6076: $5e
    ld e, a                                       ; $6077: $5f
    ld a, c                                       ; $6078: $79
    ld e, $60                                     ; $6079: $1e $60
    ld h, c                                       ; $607b: $61
    ld hl, $2322                                  ; $607c: $21 $22 $23
    ld l, h                                       ; $607f: $6c
    dec h                                         ; $6080: $25
    adc l                                         ; $6081: $8d
    adc [hl]                                      ; $6082: $8e
    adc a                                         ; $6083: $8f
    ld c, $35                                     ; $6084: $0e $35
    ld bc, $0202                                  ; $6086: $01 $02 $02
    ld [bc], a                                    ; $6089: $02
    inc bc                                        ; $608a: $03
    ld bc, $0101                                  ; $608b: $01 $01 $01
    ld bc, $0201                                  ; $608e: $01 $01 $02
    dec bc                                        ; $6091: $0b
    ld a, [bc]                                    ; $6092: $0a
    add hl, bc                                    ; $6093: $09
    ld bc, $7a03                                  ; $6094: $01 $03 $7a
    ld [hl-], a                                   ; $6097: $32
    ld e, [hl]                                    ; $6098: $5e
    pop af                                        ; $6099: $f1
    ld a, e                                       ; $609a: $7b
    ld a, h                                       ; $609b: $7c
    ld h, b                                       ; $609c: $60
    ld a, [c]                                     ; $609d: $f2
    ld l, $8a                                     ; $609e: $2e $8a
    inc hl                                        ; $60a0: $23
    di                                            ; $60a1: $f3
    adc e                                         ; $60a2: $8b
    adc h                                         ; $60a3: $8c
    adc [hl]                                      ; $60a4: $8e
    db $f4                                        ; $60a5: $f4
    ld [bc], a                                    ; $60a6: $02
    ld [bc], a                                    ; $60a7: $02
    ld [bc], a                                    ; $60a8: $02
    inc b                                         ; $60a9: $04
    ld bc, $0203                                  ; $60aa: $01 $03 $02
    rlca                                          ; $60ad: $07
    inc bc                                        ; $60ae: $03
    add hl, bc                                    ; $60af: $09
    ld [bc], a                                    ; $60b0: $02
    rlca                                          ; $60b1: $07
    dec bc                                        ; $60b2: $0b
    add hl, bc                                    ; $60b3: $09
    ld a, [bc]                                    ; $60b4: $0a
    ld h, $44                                     ; $60b5: $26 $44
    ld c, b                                       ; $60b7: $48
    ld c, c                                       ; $60b8: $49
    ld c, d                                       ; $60b9: $4a
    pop de                                        ; $60ba: $d1
    pop de                                        ; $60bb: $d1
    pop de                                        ; $60bc: $d1
    pop de                                        ; $60bd: $d1
    pop de                                        ; $60be: $d1
    pop de                                        ; $60bf: $d1
    pop de                                        ; $60c0: $d1
    pop de                                        ; $60c1: $d1
    pop de                                        ; $60c2: $d1
    pop de                                        ; $60c3: $d1
    pop de                                        ; $60c4: $d1
    pop de                                        ; $60c5: $d1
    add a                                         ; $60c6: $87
    add [hl]                                      ; $60c7: $86
    add h                                         ; $60c8: $84
    add [hl]                                      ; $60c9: $86
    add h                                         ; $60ca: $84
    add h                                         ; $60cb: $84
    add h                                         ; $60cc: $84
    add h                                         ; $60cd: $84
    inc b                                         ; $60ce: $04
    inc b                                         ; $60cf: $04
    inc b                                         ; $60d0: $04
    inc b                                         ; $60d1: $04
    inc b                                         ; $60d2: $04
    inc b                                         ; $60d3: $04
    inc b                                         ; $60d4: $04
    inc b                                         ; $60d5: $04
    ld c, e                                       ; $60d6: $4b
    ld b, c                                       ; $60d7: $41
    ld a, l                                       ; $60d8: $7d
    ld [hl], h                                    ; $60d9: $74
    pop de                                        ; $60da: $d1
    jp nc, Jump_07b_7719                          ; $60db: $d2 $19 $77

    pop de                                        ; $60de: $d1
    pop af                                        ; $60df: $f1
    ld a, c                                       ; $60e0: $79
    ld e, $d1                                     ; $60e1: $1e $d1
    ld a, [c]                                     ; $60e3: $f2
    ld hl, $8422                                  ; $60e4: $21 $22 $84
    and h                                         ; $60e7: $a4
    ld bc, $8402                                  ; $60e8: $01 $02 $84
    and a                                         ; $60eb: $a7
    ld [bc], a                                    ; $60ec: $02
    ld bc, $a684                                  ; $60ed: $01 $84 $a6
    ld [bc], a                                    ; $60f0: $02
    ld bc, $a484                                  ; $60f1: $01 $84 $a4
    ld [bc], a                                    ; $60f4: $02
    ld bc, $7675                                  ; $60f5: $01 $75 $76
    ld e, b                                       ; $60f8: $58
    ld d, $27                                     ; $60f9: $16 $27
    dec hl                                        ; $60fb: $2b
    inc l                                         ; $60fc: $2c
    jp nc, Jump_000_327a                          ; $60fd: $d2 $7a $32

    ld e, [hl]                                    ; $6100: $5e
    pop af                                        ; $6101: $f1
    ld a, e                                       ; $6102: $7b
    ld a, h                                       ; $6103: $7c
    ld h, b                                       ; $6104: $60
    ld a, [c]                                     ; $6105: $f2
    ld bc, $0203                                  ; $6106: $01 $03 $02
    inc h                                         ; $6109: $24
    inc bc                                        ; $610a: $03
    ld bc, $0702                                  ; $610b: $01 $02 $07
    ld bc, $0201                                  ; $610e: $01 $01 $02
    ld b, $03                                     ; $6111: $06 $03
    ld [bc], a                                    ; $6113: $02
    ld [bc], a                                    ; $6114: $02
    rlca                                          ; $6115: $07
    pop de                                        ; $6116: $d1
    pop de                                        ; $6117: $d1
    pop af                                        ; $6118: $f1
    add l                                         ; $6119: $85
    pop de                                        ; $611a: $d1
    pop de                                        ; $611b: $d1
    ld a, [c]                                     ; $611c: $f2
    ld c, $d1                                     ; $611d: $0e $d1
    pop de                                        ; $611f: $d1
    di                                            ; $6120: $f3
    inc b                                         ; $6121: $04
    pop de                                        ; $6122: $d1
    pop de                                        ; $6123: $d1
    db $f4                                        ; $6124: $f4
    daa                                           ; $6125: $27
    inc b                                         ; $6126: $04
    add h                                         ; $6127: $84
    and h                                         ; $6128: $a4
    dec c                                         ; $6129: $0d
    inc b                                         ; $612a: $04
    add h                                         ; $612b: $84
    and a                                         ; $612c: $a7
    dec c                                         ; $612d: $0d
    inc b                                         ; $612e: $04
    add h                                         ; $612f: $84
    and [hl]                                      ; $6130: $a6
    dec b                                         ; $6131: $05
    inc b                                         ; $6132: $04
    add h                                         ; $6133: $84
    add h                                         ; $6134: $84
    dec b                                         ; $6135: $05
    add [hl]                                      ; $6136: $86
    add a                                         ; $6137: $87
    inc h                                         ; $6138: $24
    dec h                                         ; $6139: $25
    ld de, $e902                                  ; $613a: $11 $02 $e9
    ld c, $05                                     ; $613d: $0e $05
    ld e, b                                       ; $613f: $58
    dec hl                                        ; $6140: $2b
    inc l                                         ; $6141: $2c
    jr z, jr_07b_615b                             ; $6142: $28 $17

    jr jr_07b_615f                                ; $6144: $18 $19

    dec c                                         ; $6146: $0d
    dec c                                         ; $6147: $0d
    dec b                                         ; $6148: $05
    ld [bc], a                                    ; $6149: $02
    dec b                                         ; $614a: $05
    dec b                                         ; $614b: $05
    dec c                                         ; $614c: $0d
    dec b                                         ; $614d: $05
    dec b                                         ; $614e: $05
    dec b                                         ; $614f: $05
    dec b                                         ; $6150: $05
    dec b                                         ; $6151: $05
    dec b                                         ; $6152: $05
    dec b                                         ; $6153: $05
    dec b                                         ; $6154: $05
    dec b                                         ; $6155: $05
    ld h, $2e                                     ; $6156: $26 $2e
    pop af                                        ; $6158: $f1
    pop de                                        ; $6159: $d1
    dec [hl]                                      ; $615a: $35

jr_07b_615b:
    inc a                                         ; $615b: $3c
    ld a, [c]                                     ; $615c: $f2
    pop de                                        ; $615d: $d1
    rrca                                          ; $615e: $0f

jr_07b_615f:
    inc b                                         ; $615f: $04

Jump_07b_6160:
    di                                            ; $6160: $f3
    pop de                                        ; $6161: $d1
    ld a, [de]                                    ; $6162: $1a
    daa                                           ; $6163: $27
    db $f4                                        ; $6164: $f4
    pop de                                        ; $6165: $d1
    ld [bc], a                                    ; $6166: $02
    ld [bc], a                                    ; $6167: $02
    add a                                         ; $6168: $87
    add h                                         ; $6169: $84
    ld [bc], a                                    ; $616a: $02
    ld [bc], a                                    ; $616b: $02
    add h                                         ; $616c: $84
    add h                                         ; $616d: $84
    dec c                                         ; $616e: $0d
    dec b                                         ; $616f: $05
    add [hl]                                      ; $6170: $86
    add h                                         ; $6171: $84
    dec b                                         ; $6172: $05
    dec b                                         ; $6173: $05
    and [hl]                                      ; $6174: $a6
    add h                                         ; $6175: $84
    pop de                                        ; $6176: $d1
    pop de                                        ; $6177: $d1
    pop af                                        ; $6178: $f1
    ld e, e                                       ; $6179: $5b
    pop de                                        ; $617a: $d1
    pop de                                        ; $617b: $d1
    ld a, [c]                                     ; $617c: $f2
    ld h, h                                       ; $617d: $64
    pop de                                        ; $617e: $d1
    pop de                                        ; $617f: $d1
    di                                            ; $6180: $f3
    ld h, a                                       ; $6181: $67
    pop de                                        ; $6182: $d1
    pop de                                        ; $6183: $d1
    db $f4                                        ; $6184: $f4
    inc a                                         ; $6185: $3c
    inc b                                         ; $6186: $04
    add h                                         ; $6187: $84
    and a                                         ; $6188: $a7
    dec b                                         ; $6189: $05
    inc b                                         ; $618a: $04
    add h                                         ; $618b: $84
    and [hl]                                      ; $618c: $a6
    dec b                                         ; $618d: $05
    inc b                                         ; $618e: $04
    add h                                         ; $618f: $84
    and h                                         ; $6190: $a4
    dec b                                         ; $6191: $05
    inc b                                         ; $6192: $04
    add h                                         ; $6193: $84
    add a                                         ; $6194: $87
    ld [bc], a                                    ; $6195: $02
    db $10                                        ; $6196: $10
    add c                                         ; $6197: $81
    inc e                                         ; $6198: $1c
    dec e                                         ; $6199: $1d
    ld l, d                                       ; $619a: $6a
    add d                                         ; $619b: $82
    jr nz, jr_07b_61bf                            ; $619c: $20 $21

    ld l, e                                       ; $619e: $6b
    pop af                                        ; $619f: $f1
    inc h                                         ; $61a0: $24
    dec h                                         ; $61a1: $25
    ld de, $0302                                  ; $61a2: $11 $02 $03
    dec a                                         ; $61a5: $3d
    dec c                                         ; $61a6: $0d
    dec c                                         ; $61a7: $0d
    dec b                                         ; $61a8: $05
    dec b                                         ; $61a9: $05
    dec b                                         ; $61aa: $05
    dec c                                         ; $61ab: $0d
    dec b                                         ; $61ac: $05
    dec b                                         ; $61ad: $05
    dec b                                         ; $61ae: $05
    dec c                                         ; $61af: $0d
    dec b                                         ; $61b0: $05
    dec b                                         ; $61b1: $05
    ld [bc], a                                    ; $61b2: $02
    ld [bc], a                                    ; $61b3: $02
    dec b                                         ; $61b4: $05
    dec b                                         ; $61b5: $05
    ld e, $29                                     ; $61b6: $1e $29
    ld d, $d1                                     ; $61b8: $16 $d1
    ld [hl+], a                                   ; $61ba: $22
    inc sp                                        ; $61bb: $33
    jp nc, $26d1                                  ; $61bc: $d2 $d1 $26

jr_07b_61bf:
    ld l, $f1                                     ; $61bf: $2e $f1
    pop de                                        ; $61c1: $d1
    ld a, $45                                     ; $61c2: $3e $45
    ld a, [c]                                     ; $61c4: $f2
    pop de                                        ; $61c5: $d1
    dec b                                         ; $61c6: $05
    dec b                                         ; $61c7: $05
    and [hl]                                      ; $61c8: $a6
    add h                                         ; $61c9: $84
    dec b                                         ; $61ca: $05
    dec b                                         ; $61cb: $05
    add h                                         ; $61cc: $84
    add h                                         ; $61cd: $84
    dec b                                         ; $61ce: $05
    dec b                                         ; $61cf: $05
    add [hl]                                      ; $61d0: $86
    add h                                         ; $61d1: $84
    dec b                                         ; $61d2: $05
    dec b                                         ; $61d3: $05
    add h                                         ; $61d4: $84
    add h                                         ; $61d5: $84
    pop de                                        ; $61d6: $d1
    pop de                                        ; $61d7: $d1
    ld l, c                                       ; $61d8: $69
    ld b, c                                       ; $61d9: $41
    pop de                                        ; $61da: $d1
    pop de                                        ; $61db: $d1
    pop de                                        ; $61dc: $d1
    jp nc, $d1d1                                  ; $61dd: $d2 $d1 $d1

    pop de                                        ; $61e0: $d1
    pop af                                        ; $61e1: $f1
    pop de                                        ; $61e2: $d1
    pop de                                        ; $61e3: $d1
    pop de                                        ; $61e4: $d1
    ld a, [c]                                     ; $61e5: $f2
    inc b                                         ; $61e6: $04
    add h                                         ; $61e7: $84
    and h                                         ; $61e8: $a4
    and [hl]                                      ; $61e9: $a6
    inc b                                         ; $61ea: $04
    inc b                                         ; $61eb: $04
    add h                                         ; $61ec: $84
    and a                                         ; $61ed: $a7
    inc b                                         ; $61ee: $04
    inc b                                         ; $61ef: $04
    add h                                         ; $61f0: $84
    and h                                         ; $61f1: $a4
    inc b                                         ; $61f2: $04
    inc b                                         ; $61f3: $04
    add h                                         ; $61f4: $84
    and [hl]                                      ; $61f5: $a6
    dec b                                         ; $61f6: $05
    ld e, b                                       ; $61f7: $58
    ld e, c                                       ; $61f8: $59
    ccf                                           ; $61f9: $3f
    jr z, jr_07b_6213                             ; $61fa: $28 $17

    jr jr_07b_6217                                ; $61fc: $18 $19

    dec hl                                        ; $61fe: $2b
    inc l                                         ; $61ff: $2c
    ld a, [hl]                                    ; $6200: $7e
    dec e                                         ; $6201: $1d
    inc [hl]                                      ; $6202: $34
    rra                                           ; $6203: $1f
    jr nz, jr_07b_6227                            ; $6204: $20 $21

    ld [bc], a                                    ; $6206: $02
    ld [bc], a                                    ; $6207: $02
    ld [bc], a                                    ; $6208: $02
    ld [bc], a                                    ; $6209: $02
    ld [bc], a                                    ; $620a: $02
    ld [bc], a                                    ; $620b: $02
    ld [bc], a                                    ; $620c: $02
    ld [bc], a                                    ; $620d: $02
    ld [bc], a                                    ; $620e: $02
    ld [bc], a                                    ; $620f: $02
    ld [bc], a                                    ; $6210: $02
    ld [bc], a                                    ; $6211: $02
    ld [bc], a                                    ; $6212: $02

jr_07b_6213:
    ld [bc], a                                    ; $6213: $02
    ld [bc], a                                    ; $6214: $02
    ld [bc], a                                    ; $6215: $02
    ld b, b                                       ; $6216: $40

jr_07b_6217:
    ld b, c                                       ; $6217: $41
    ld l, c                                       ; $6218: $69
    pop de                                        ; $6219: $d1
    db $dd                                        ; $621a: $dd
    jp nc, $d1d1                                  ; $621b: $d2 $d1 $d1

    ld e, $f1                                     ; $621e: $1e $f1
    pop de                                        ; $6220: $d1
    pop de                                        ; $6221: $d1
    ld [hl+], a                                   ; $6222: $22
    ld a, [c]                                     ; $6223: $f2
    pop de                                        ; $6224: $d1
    pop de                                        ; $6225: $d1
    ld [bc], a                                    ; $6226: $02

jr_07b_6227:
    add [hl]                                      ; $6227: $86
    add h                                         ; $6228: $84
    inc b                                         ; $6229: $04
    ld a, [bc]                                    ; $622a: $0a
    add a                                         ; $622b: $87
    add h                                         ; $622c: $84
    inc b                                         ; $622d: $04
    ld [bc], a                                    ; $622e: $02
    add [hl]                                      ; $622f: $86
    add h                                         ; $6230: $84
    inc b                                         ; $6231: $04
    ld [bc], a                                    ; $6232: $02
    add h                                         ; $6233: $84
    add h                                         ; $6234: $84
    inc b                                         ; $6235: $04
    ld c, b                                       ; $6236: $48
    ld c, c                                       ; $6237: $49
    ld c, d                                       ; $6238: $4a
    ld c, e                                       ; $6239: $4b
    pop de                                        ; $623a: $d1
    pop de                                        ; $623b: $d1
    pop de                                        ; $623c: $d1
    pop de                                        ; $623d: $d1
    pop de                                        ; $623e: $d1
    pop de                                        ; $623f: $d1
    pop de                                        ; $6240: $d1
    pop de                                        ; $6241: $d1
    pop de                                        ; $6242: $d1
    pop de                                        ; $6243: $d1
    pop de                                        ; $6244: $d1
    pop de                                        ; $6245: $d1
    add a                                         ; $6246: $87
    add a                                         ; $6247: $87
    add [hl]                                      ; $6248: $86
    add [hl]                                      ; $6249: $86
    add h                                         ; $624a: $84
    add h                                         ; $624b: $84
    add h                                         ; $624c: $84
    add h                                         ; $624d: $84
    inc b                                         ; $624e: $04
    inc b                                         ; $624f: $04
    inc b                                         ; $6250: $04
    inc b                                         ; $6251: $04
    inc b                                         ; $6252: $04
    inc b                                         ; $6253: $04
    inc b                                         ; $6254: $04
    inc b                                         ; $6255: $04
    ld l, b                                       ; $6256: $68
    ld l, c                                       ; $6257: $69
    pop de                                        ; $6258: $d1
    pop de                                        ; $6259: $d1
    pop de                                        ; $625a: $d1
    pop de                                        ; $625b: $d1
    pop de                                        ; $625c: $d1
    pop de                                        ; $625d: $d1
    pop de                                        ; $625e: $d1
    pop de                                        ; $625f: $d1
    pop de                                        ; $6260: $d1

Jump_07b_6261:
    pop de                                        ; $6261: $d1
    pop de                                        ; $6262: $d1
    pop de                                        ; $6263: $d1
    pop de                                        ; $6264: $d1
    pop de                                        ; $6265: $d1
    add a                                         ; $6266: $87
    add h                                         ; $6267: $84
    add h                                         ; $6268: $84
    inc b                                         ; $6269: $04
    add h                                         ; $626a: $84
    add h                                         ; $626b: $84
    inc b                                         ; $626c: $04
    inc b                                         ; $626d: $04
    inc b                                         ; $626e: $04
    inc b                                         ; $626f: $04
    inc b                                         ; $6270: $04
    inc b                                         ; $6271: $04
    inc b                                         ; $6272: $04
    inc b                                         ; $6273: $04
    inc b                                         ; $6274: $04
    inc b                                         ; $6275: $04
    pop de                                        ; $6276: $d1
    pop de                                        ; $6277: $d1
    pop de                                        ; $6278: $d1
    pop de                                        ; $6279: $d1
    pop de                                        ; $627a: $d1
    pop de                                        ; $627b: $d1
    pop de                                        ; $627c: $d1
    pop de                                        ; $627d: $d1
    pop de                                        ; $627e: $d1
    pop de                                        ; $627f: $d1
    pop de                                        ; $6280: $d1
    pop de                                        ; $6281: $d1
    push hl                                       ; $6282: $e5
    and $4c                                       ; $6283: $e6 $4c
    ld c, l                                       ; $6285: $4d
    add h                                         ; $6286: $84
    add h                                         ; $6287: $84
    add h                                         ; $6288: $84
    add h                                         ; $6289: $84
    inc b                                         ; $628a: $04
    inc b                                         ; $628b: $04
    inc b                                         ; $628c: $04
    inc b                                         ; $628d: $04
    inc b                                         ; $628e: $04
    inc b                                         ; $628f: $04
    inc b                                         ; $6290: $04
    inc b                                         ; $6291: $04
    rlca                                          ; $6292: $07
    inc b                                         ; $6293: $04
    ld b, $04                                     ; $6294: $06 $04
    pop de                                        ; $6296: $d1
    pop de                                        ; $6297: $d1
    pop de                                        ; $6298: $d1
    db $f4                                        ; $6299: $f4
    pop de                                        ; $629a: $d1
    pop de                                        ; $629b: $d1
    pop de                                        ; $629c: $d1
    ld b, d                                       ; $629d: $42
    pop de                                        ; $629e: $d1
    pop de                                        ; $629f: $d1
    pop de                                        ; $62a0: $d1
    pop de                                        ; $62a1: $d1
    jp c, $d3db                                   ; $62a2: $da $db $d3

    db $e4                                        ; $62a5: $e4
    add h                                         ; $62a6: $84
    add h                                         ; $62a7: $84
    add h                                         ; $62a8: $84
    add h                                         ; $62a9: $84
    inc b                                         ; $62aa: $04
    inc b                                         ; $62ab: $04
    inc b                                         ; $62ac: $04
    add h                                         ; $62ad: $84
    inc b                                         ; $62ae: $04
    inc b                                         ; $62af: $04
    inc b                                         ; $62b0: $04
    inc b                                         ; $62b1: $04
    inc b                                         ; $62b2: $04
    inc b                                         ; $62b3: $04
    inc b                                         ; $62b4: $04
    inc b                                         ; $62b5: $04
    cpl                                           ; $62b6: $2f
    inc hl                                        ; $62b7: $23
    inc h                                         ; $62b8: $24
    dec h                                         ; $62b9: $25
    ld b, h                                       ; $62ba: $44
    ld b, d                                       ; $62bb: $42
    ld b, h                                       ; $62bc: $44
    ld c, b                                       ; $62bd: $48
    pop de                                        ; $62be: $d1
    pop de                                        ; $62bf: $d1
    pop de                                        ; $62c0: $d1
    pop de                                        ; $62c1: $d1
    push hl                                       ; $62c2: $e5
    and $4c                                       ; $62c3: $e6 $4c
    ld c, l                                       ; $62c5: $4d
    dec b                                         ; $62c6: $05
    dec b                                         ; $62c7: $05
    dec b                                         ; $62c8: $05
    dec b                                         ; $62c9: $05
    add a                                         ; $62ca: $87
    add h                                         ; $62cb: $84
    add h                                         ; $62cc: $84
    add [hl]                                      ; $62cd: $86
    add h                                         ; $62ce: $84
    add h                                         ; $62cf: $84
    add h                                         ; $62d0: $84

Jump_07b_62d1:
    add h                                         ; $62d1: $84
    inc b                                         ; $62d2: $04
    inc b                                         ; $62d3: $04
    inc b                                         ; $62d4: $04
    ld b, $d1                                     ; $62d5: $06 $d1
    pop de                                        ; $62d7: $d1
    call nc, $d1d5                                ; $62d8: $d4 $d5 $d1
    db $f4                                        ; $62db: $f4
    rst $10                                       ; $62dc: $d7
    ret c                                         ; $62dd: $d8

    pop de                                        ; $62de: $d1
    ld d, $e0                                     ; $62df: $16 $e0
    pop hl                                        ; $62e1: $e1
    pop de                                        ; $62e2: $d1
    jp nc, $f6f5                                  ; $62e3: $d2 $f5 $f6

    inc b                                         ; $62e6: $04
    inc b                                         ; $62e7: $04
    ld b, $04                                     ; $62e8: $06 $04
    inc b                                         ; $62ea: $04
    inc b                                         ; $62eb: $04
    inc b                                         ; $62ec: $04
    rlca                                          ; $62ed: $07
    inc b                                         ; $62ee: $04
    rlca                                          ; $62ef: $07
    inc b                                         ; $62f0: $04
    rlca                                          ; $62f1: $07
    inc b                                         ; $62f2: $04
    daa                                           ; $62f3: $27
    rlca                                          ; $62f4: $07
    inc b                                         ; $62f5: $04
    ld l, a                                       ; $62f6: $6f
    jp hl                                         ; $62f7: $e9


    ld c, [hl]                                    ; $62f8: $4e
    ld c, a                                       ; $62f9: $4f
    ld [hl], c                                    ; $62fa: $71
    db $ec                                        ; $62fb: $ec
    ld d, b                                       ; $62fc: $50
    ld d, c                                       ; $62fd: $51
    ld [hl], e                                    ; $62fe: $73
    ldh a, [rHDMA2]                               ; $62ff: $f0 $52
    ld d, e                                       ; $6301: $53
    add hl, bc                                    ; $6302: $09
    ld a, [bc]                                    ; $6303: $0a
    ld d, h                                       ; $6304: $54
    ld d, l                                       ; $6305: $55
    rlca                                          ; $6306: $07
    ld b, $06                                     ; $6307: $06 $06
    rlca                                          ; $6309: $07
    rlca                                          ; $630a: $07
    ld b, $07                                     ; $630b: $06 $07
    inc b                                         ; $630d: $04
    ld b, $07                                     ; $630e: $06 $07
    inc b                                         ; $6310: $04
    inc b                                         ; $6311: $04
    ld b, $07                                     ; $6312: $06 $07
    ld b, $07                                     ; $6314: $06 $07
    call c, $d6dd                                 ; $6316: $dc $dd $d6
    ld l, [hl]                                    ; $6319: $6e
    sbc $df                                       ; $631a: $de $df
    reti                                          ; $631c: $d9


    ld [hl], b                                    ; $631d: $70
    ld [c], a                                     ; $631e: $e2
    db $e3                                        ; $631f: $e3
    db $ed                                        ; $6320: $ed
    ld [hl], d                                    ; $6321: $72
    cp $ff                                        ; $6322: $fe $ff
    rst $30                                       ; $6324: $f7
    ld [$0707], sp                                ; $6325: $08 $07 $07
    ld b, $06                                     ; $6328: $06 $06
    inc b                                         ; $632a: $04
    ld b, $06                                     ; $632b: $06 $06
    inc b                                         ; $632d: $04
    ld b, $06                                     ; $632e: $06 $06
    rlca                                          ; $6330: $07
    rlca                                          ; $6331: $07
    rlca                                          ; $6332: $07
    rlca                                          ; $6333: $07
    inc b                                         ; $6334: $04
    inc b                                         ; $6335: $04
    ld l, a                                       ; $6336: $6f
    jp hl                                         ; $6337: $e9


    ld c, [hl]                                    ; $6338: $4e
    ld c, a                                       ; $6339: $4f
    ld [hl], c                                    ; $633a: $71
    db $ec                                        ; $633b: $ec
    ld d, b                                       ; $633c: $50
    ld d, c                                       ; $633d: $51
    ld [hl], e                                    ; $633e: $73
    ldh a, [rHDMA2]                               ; $633f: $f0 $52
    ld d, e                                       ; $6341: $53
    add hl, bc                                    ; $6342: $09
    ld a, [bc]                                    ; $6343: $0a
    ld d, h                                       ; $6344: $54
    ld d, l                                       ; $6345: $55
    rlca                                          ; $6346: $07
    rlca                                          ; $6347: $07
    rlca                                          ; $6348: $07
    ld b, $04                                     ; $6349: $06 $04
    inc b                                         ; $634b: $04
    rlca                                          ; $634c: $07
    inc b                                         ; $634d: $04
    rlca                                          ; $634e: $07
    rlca                                          ; $634f: $07
    rlca                                          ; $6350: $07
    inc b                                         ; $6351: $04
    inc b                                         ; $6352: $04
    inc b                                         ; $6353: $04
    ld b, $06                                     ; $6354: $06 $06
    pop de                                        ; $6356: $d1
    pop af                                        ; $6357: $f1
    ld hl, sp-$07                                 ; $6358: $f8 $f9
    pop de                                        ; $635a: $d1
    ld a, [c]                                     ; $635b: $f2
    ei                                            ; $635c: $fb
    db $fc                                        ; $635d: $fc
    pop de                                        ; $635e: $d1
    di                                            ; $635f: $f3
    ld e, b                                       ; $6360: $58
    ld e, c                                       ; $6361: $59
    pop de                                        ; $6362: $d1
    db $f4                                        ; $6363: $f4
    rla                                           ; $6364: $17
    jr jr_07b_636b                                ; $6365: $18 $04

    inc h                                         ; $6367: $24
    ld b, $07                                     ; $6368: $06 $07
    inc b                                         ; $636a: $04

jr_07b_636b:
    ld h, $04                                     ; $636b: $26 $04
    inc b                                         ; $636d: $04
    inc b                                         ; $636e: $04
    daa                                           ; $636f: $27
    dec b                                         ; $6370: $05
    dec b                                         ; $6371: $05
    inc b                                         ; $6372: $04
    rlca                                          ; $6373: $07
    ld [bc], a                                    ; $6374: $02
    ld [bc], a                                    ; $6375: $02
    inc c                                         ; $6376: $0c
    dec c                                         ; $6377: $0d
    ld d, [hl]                                    ; $6378: $56
    ld d, a                                       ; $6379: $57
    ld c, $35                                     ; $637a: $0e $35
    inc a                                         ; $637c: $3c
    ld de, $fd38                                  ; $637d: $11 $38 $fd
    inc b                                         ; $6380: $04
    dec b                                         ; $6381: $05
    add hl, de                                    ; $6382: $19
    ld a, [de]                                    ; $6383: $1a
    daa                                           ; $6384: $27
    jr z, jr_07b_638d                             ; $6385: $28 $06

    ld b, $07                                     ; $6387: $06 $07
    inc b                                         ; $6389: $04
    dec b                                         ; $638a: $05
    dec b                                         ; $638b: $05
    dec b                                         ; $638c: $05

jr_07b_638d:
    dec b                                         ; $638d: $05
    ld [bc], a                                    ; $638e: $02
    dec b                                         ; $638f: $05
    dec b                                         ; $6390: $05
    dec b                                         ; $6391: $05
    dec b                                         ; $6392: $05
    ld [bc], a                                    ; $6393: $02
    dec b                                         ; $6394: $05
    dec b                                         ; $6395: $05
    nop                                           ; $6396: $00
    ld bc, $0bfa                                  ; $6397: $01 $fa $0b
    ld [bc], a                                    ; $639a: $02
    inc bc                                        ; $639b: $03
    ld c, $35                                     ; $639c: $0e $35
    ld e, b                                       ; $639e: $58

jr_07b_639f:
    ld e, c                                       ; $639f: $59
    jr c, jr_07b_639f                             ; $63a0: $38 $fd

    ld de, $5c5b                                  ; $63a2: $11 $5b $5c
    add c                                         ; $63a5: $81
    rlca                                          ; $63a6: $07
    rlca                                          ; $63a7: $07
    ld b, $04                                     ; $63a8: $06 $04
    dec b                                         ; $63aa: $05
    dec b                                         ; $63ab: $05
    dec b                                         ; $63ac: $05
    dec b                                         ; $63ad: $05
    dec b                                         ; $63ae: $05
    dec b                                         ; $63af: $05
    dec b                                         ; $63b0: $05
    dec b                                         ; $63b1: $05
    dec c                                         ; $63b2: $0d
    dec b                                         ; $63b3: $05
    dec b                                         ; $63b4: $05
    dec c                                         ; $63b5: $0d
    inc c                                         ; $63b6: $0c
    dec c                                         ; $63b7: $0d
    ld d, [hl]                                    ; $63b8: $56
    ld d, a                                       ; $63b9: $57
    inc a                                         ; $63ba: $3c
    ld de, $0302                                  ; $63bb: $11 $02 $03
    dec hl                                        ; $63be: $2b
    inc l                                         ; $63bf: $2c
    ld [de], a                                    ; $63c0: $12
    ld e, c                                       ; $63c1: $59
    inc de                                        ; $63c2: $13
    jr z, @+$19                                   ; $63c3: $28 $17

    jr jr_07b_63cb                                ; $63c5: $18 $04

    rlca                                          ; $63c7: $07
    ld b, $06                                     ; $63c8: $06 $06
    dec b                                         ; $63ca: $05

jr_07b_63cb:
    dec b                                         ; $63cb: $05
    dec b                                         ; $63cc: $05
    dec b                                         ; $63cd: $05
    dec b                                         ; $63ce: $05
    dec b                                         ; $63cf: $05
    dec c                                         ; $63d0: $0d
    dec b                                         ; $63d1: $05
    dec c                                         ; $63d2: $0d
    dec b                                         ; $63d3: $05
    dec b                                         ; $63d4: $05
    dec b                                         ; $63d5: $05
    pop de                                        ; $63d6: $d1
    ld d, $1b                                     ; $63d7: $16 $1b
    inc e                                         ; $63d9: $1c
    pop de                                        ; $63da: $d1
    jp nc, $201f                                  ; $63db: $d2 $1f $20

    pop de                                        ; $63de: $d1
    pop af                                        ; $63df: $f1
    inc hl                                        ; $63e0: $23
    inc h                                         ; $63e1: $24
    pop de                                        ; $63e2: $d1
    ld a, [c]                                     ; $63e3: $f2
    dec hl                                        ; $63e4: $2b
    inc l                                         ; $63e5: $2c
    inc b                                         ; $63e6: $04
    ld b, $02                                     ; $63e7: $06 $02
    ld [bc], a                                    ; $63e9: $02
    inc b                                         ; $63ea: $04
    ld h, $02                                     ; $63eb: $26 $02
    ld [bc], a                                    ; $63ed: $02
    inc b                                         ; $63ee: $04
    daa                                           ; $63ef: $27
    ld [bc], a                                    ; $63f0: $02
    ld [bc], a                                    ; $63f1: $02
    inc b                                         ; $63f2: $04
    ld h, $02                                     ; $63f3: $26 $02
    ld [bc], a                                    ; $63f5: $02
    dec e                                         ; $63f6: $1d
    ld e, $29                                     ; $63f7: $1e $29
    ld a, [hl+]                                   ; $63f9: $2a
    ld hl, $3322                                  ; $63fa: $21 $22 $33
    inc d                                         ; $63fd: $14
    dec h                                         ; $63fe: $25
    ld h, $2e                                     ; $63ff: $26 $2e
    cpl                                           ; $6401: $2f
    dec d                                         ; $6402: $15
    dec [hl]                                      ; $6403: $35
    inc a                                         ; $6404: $3c
    ld de, $0502                                  ; $6405: $11 $02 $05
    ld [bc], a                                    ; $6408: $02
    dec b                                         ; $6409: $05
    ld [bc], a                                    ; $640a: $02
    ld [bc], a                                    ; $640b: $02
    dec b                                         ; $640c: $05
    ld a, [bc]                                    ; $640d: $0a
    ld [bc], a                                    ; $640e: $02
    ld [bc], a                                    ; $640f: $02
    ld [bc], a                                    ; $6410: $02
    dec b                                         ; $6411: $05
    ld a, [bc]                                    ; $6412: $0a
    ld [bc], a                                    ; $6413: $02
    ld [bc], a                                    ; $6414: $02
    ld [bc], a                                    ; $6415: $02
    ld h, e                                       ; $6416: $63
    ld h, h                                       ; $6417: $64
    ld l, d                                       ; $6418: $6a
    add d                                         ; $6419: $82
    ld h, [hl]                                    ; $641a: $66
    add e                                         ; $641b: $83
    ld l, e                                       ; $641c: $6b
    ld d, $41                                     ; $641d: $16 $41
    ld l, c                                       ; $641f: $69
    ld b, d                                       ; $6420: $42
    ld b, h                                       ; $6421: $44
    ld a, [c]                                     ; $6422: $f2
    pop de                                        ; $6423: $d1
    pop de                                        ; $6424: $d1
    pop de                                        ; $6425: $d1
    dec b                                         ; $6426: $05
    dec b                                         ; $6427: $05
    dec b                                         ; $6428: $05
    dec c                                         ; $6429: $0d
    dec b                                         ; $642a: $05
    dec c                                         ; $642b: $0d
    dec b                                         ; $642c: $05
    dec c                                         ; $642d: $0d
    add [hl]                                      ; $642e: $86
    add a                                         ; $642f: $87
    add a                                         ; $6430: $87
    add [hl]                                      ; $6431: $86
    add h                                         ; $6432: $84
    add h                                         ; $6433: $84
    add h                                         ; $6434: $84
    add h                                         ; $6435: $84
    add hl, hl                                    ; $6436: $29
    ld [hl-], a                                   ; $6437: $32
    dec de                                        ; $6438: $1b
    inc e                                         ; $6439: $1c
    inc sp                                        ; $643a: $33
    inc [hl]                                      ; $643b: $34
    rra                                           ; $643c: $1f
    jr nz, jr_07b_6487                            ; $643d: $20 $48

    ld c, c                                       ; $643f: $49
    ld c, d                                       ; $6440: $4a
    ld c, e                                       ; $6441: $4b
    pop de                                        ; $6442: $d1
    pop de                                        ; $6443: $d1
    pop de                                        ; $6444: $d1
    pop de                                        ; $6445: $d1
    dec b                                         ; $6446: $05
    dec b                                         ; $6447: $05
    dec b                                         ; $6448: $05
    dec b                                         ; $6449: $05
    dec b                                         ; $644a: $05
    dec b                                         ; $644b: $05
    dec b                                         ; $644c: $05
    dec b                                         ; $644d: $05
    add [hl]                                      ; $644e: $86
    add h                                         ; $644f: $84
    add h                                         ; $6450: $84
    add a                                         ; $6451: $87
    add h                                         ; $6452: $84
    add h                                         ; $6453: $84
    add h                                         ; $6454: $84
    add h                                         ; $6455: $84
    ld h, $2e                                     ; $6456: $26 $2e
    rla                                           ; $6458: $17
    pop af                                        ; $6459: $f1
    ld c, c                                       ; $645a: $49
    ld c, d                                       ; $645b: $4a
    ld c, e                                       ; $645c: $4b
    ld l, b                                       ; $645d: $68
    pop de                                        ; $645e: $d1
    pop de                                        ; $645f: $d1
    pop de                                        ; $6460: $d1
    pop de                                        ; $6461: $d1
    jp c, $d3db                                   ; $6462: $da $db $d3

    db $e4                                        ; $6465: $e4
    dec b                                         ; $6466: $05
    dec b                                         ; $6467: $05
    dec c                                         ; $6468: $0d
    dec c                                         ; $6469: $0d
    add h                                         ; $646a: $84
    add a                                         ; $646b: $87
    add a                                         ; $646c: $87
    add h                                         ; $646d: $84
    add h                                         ; $646e: $84
    add h                                         ; $646f: $84
    add h                                         ; $6470: $84
    add h                                         ; $6471: $84
    ld b, $07                                     ; $6472: $06 $07
    rlca                                          ; $6474: $07
    inc b                                         ; $6475: $04
    db $f4                                        ; $6476: $f4
    pop de                                        ; $6477: $d1
    pop de                                        ; $6478: $d1
    pop de                                        ; $6479: $d1
    ld l, c                                       ; $647a: $69
    pop de                                        ; $647b: $d1
    pop de                                        ; $647c: $d1
    pop de                                        ; $647d: $d1
    pop de                                        ; $647e: $d1
    pop de                                        ; $647f: $d1
    pop de                                        ; $6480: $d1
    pop de                                        ; $6481: $d1
    push hl                                       ; $6482: $e5
    and $4c                                       ; $6483: $e6 $4c
    ld c, l                                       ; $6485: $4d
    and [hl]                                      ; $6486: $a6

jr_07b_6487:
    add h                                         ; $6487: $84
    inc b                                         ; $6488: $04
    inc b                                         ; $6489: $04
    add a                                         ; $648a: $87
    add h                                         ; $648b: $84
    inc b                                         ; $648c: $04
    inc b                                         ; $648d: $04
    add h                                         ; $648e: $84
    add h                                         ; $648f: $84
    inc b                                         ; $6490: $04
    inc b                                         ; $6491: $04
    inc b                                         ; $6492: $04
    inc b                                         ; $6493: $04
    inc b                                         ; $6494: $04
    inc b                                         ; $6495: $04
    pop de                                        ; $6496: $d1
    di                                            ; $6497: $f3
    jr @+$1b                                      ; $6498: $18 $19

    pop de                                        ; $649a: $d1
    db $f4                                        ; $649b: $f4
    inc d                                         ; $649c: $14
    ld a, [de]                                    ; $649d: $1a
    pop de                                        ; $649e: $d1
    db $f4                                        ; $649f: $f4
    ld l, l                                       ; $64a0: $6d
    ld e, c                                       ; $64a1: $59
    call nc, Call_000_17d5                        ; $64a2: $d4 $d5 $17
    ld e, l                                       ; $64a5: $5d
    inc b                                         ; $64a6: $04
    inc h                                         ; $64a7: $24
    ld a, [bc]                                    ; $64a8: $0a
    dec bc                                        ; $64a9: $0b
    inc b                                         ; $64aa: $04
    rlca                                          ; $64ab: $07
    ld [bc], a                                    ; $64ac: $02
    add hl, bc                                    ; $64ad: $09
    inc b                                         ; $64ae: $04
    ld b, $02                                     ; $64af: $06 $02
    ld [bc], a                                    ; $64b1: $02
    ld b, $04                                     ; $64b2: $06 $04
    ld [bc], a                                    ; $64b4: $02
    inc bc                                        ; $64b5: $03
    or d                                          ; $64b6: $b2
    ld a, $45                                     ; $64b7: $3e $45
    inc [hl]                                      ; $64b9: $34
    ccf                                           ; $64ba: $3f
    ld b, b                                       ; $64bb: $40
    ld b, c                                       ; $64bc: $41
    ld l, c                                       ; $64bd: $69
    ld a, l                                       ; $64be: $7d
    db $f4                                        ; $64bf: $f4
    ld a, [c]                                     ; $64c0: $f2
    pop de                                        ; $64c1: $d1
    add hl, de                                    ; $64c2: $19
    ld [hl], a                                    ; $64c3: $77
    dec de                                        ; $64c4: $1b
    pop de                                        ; $64c5: $d1
    add hl, bc                                    ; $64c6: $09
    ld bc, $0301                                  ; $64c7: $01 $01 $03
    ld bc, $8401                                  ; $64ca: $01 $01 $84
    add a                                         ; $64cd: $87
    inc bc                                        ; $64ce: $03
    ld a, [bc]                                    ; $64cf: $0a
    add a                                         ; $64d0: $87

Jump_07b_64d1:
    add h                                         ; $64d1: $84
    ld bc, $0c02                                  ; $64d2: $01 $02 $0c
    inc b                                         ; $64d5: $04
    call c, $d6dd                                 ; $64d6: $dc $dd $d6
    ld l, [hl]                                    ; $64d9: $6e
    sbc $df                                       ; $64da: $de $df
    reti                                          ; $64dc: $d9


    ld [hl], b                                    ; $64dd: $70
    ld [c], a                                     ; $64de: $e2
    db $e3                                        ; $64df: $e3
    db $ed                                        ; $64e0: $ed
    ld [hl], d                                    ; $64e1: $72
    cp $ff                                        ; $64e2: $fe $ff
    rst $30                                       ; $64e4: $f7
    ld [$0707], sp                                ; $64e5: $08 $07 $07
    rlca                                          ; $64e8: $07
    rlca                                          ; $64e9: $07
    rlca                                          ; $64ea: $07
    inc b                                         ; $64eb: $04
    ld b, $06                                     ; $64ec: $06 $06
    rlca                                          ; $64ee: $07
    inc b                                         ; $64ef: $04
    inc b                                         ; $64f0: $04
    ld b, $07                                     ; $64f1: $06 $07
    rlca                                          ; $64f3: $07
    rlca                                          ; $64f4: $07
    ld b, $6f                                     ; $64f5: $06 $6f
    jp hl                                         ; $64f7: $e9


    ld c, [hl]                                    ; $64f8: $4e
    ld c, a                                       ; $64f9: $4f
    ld [hl], c                                    ; $64fa: $71
    db $ec                                        ; $64fb: $ec
    ld d, b                                       ; $64fc: $50
    ld d, c                                       ; $64fd: $51
    ld [hl], e                                    ; $64fe: $73
    ldh a, [rHDMA2]                               ; $64ff: $f0 $52
    ld d, e                                       ; $6501: $53
    add hl, bc                                    ; $6502: $09
    ld a, [bc]                                    ; $6503: $0a
    ld d, h                                       ; $6504: $54
    ld d, l                                       ; $6505: $55
    rlca                                          ; $6506: $07
    rlca                                          ; $6507: $07
    inc b                                         ; $6508: $04
    rlca                                          ; $6509: $07
    rlca                                          ; $650a: $07
    rlca                                          ; $650b: $07
    rlca                                          ; $650c: $07
    rlca                                          ; $650d: $07
    rlca                                          ; $650e: $07
    inc b                                         ; $650f: $04
    inc b                                         ; $6510: $04
    ld b, $04                                     ; $6511: $06 $04
    inc b                                         ; $6513: $04
    ld b, $06                                     ; $6514: $06 $06
    rst $10                                       ; $6516: $d7
    ret c                                         ; $6517: $d8

    ld e, [hl]                                    ; $6518: $5e
    ld e, a                                       ; $6519: $5f
    ldh [$e1], a                                  ; $651a: $e0 $e1
    ld h, b                                       ; $651c: $60
    ld h, c                                       ; $651d: $61
    push af                                       ; $651e: $f5
    or $23                                        ; $651f: $f6 $23
    ld l, h                                       ; $6521: $6c
    ld hl, sp-$07                                 ; $6522: $f8 $f9
    adc [hl]                                      ; $6524: $8e
    ld h, d                                       ; $6525: $62
    inc b                                         ; $6526: $04
    rlca                                          ; $6527: $07
    ld [bc], a                                    ; $6528: $02
    ld bc, $0704                                  ; $6529: $01 $04 $07
    ld [bc], a                                    ; $652c: $02
    inc bc                                        ; $652d: $03
    ld b, $04                                     ; $652e: $06 $04
    ld [bc], a                                    ; $6530: $02
    ld bc, $0707                                  ; $6531: $01 $07 $07
    ld a, [bc]                                    ; $6534: $0a
    ld [bc], a                                    ; $6535: $02
    ld a, c                                       ; $6536: $79
    ld e, $1c                                     ; $6537: $1e $1c
    dec e                                         ; $6539: $1d
    ld hl, $d522                                  ; $653a: $21 $22 $d5
    call nc, $5b5a                                ; $653d: $d4 $5a $5b
    ret c                                         ; $6540: $d8

    rst $10                                       ; $6541: $d7
    ld h, e                                       ; $6542: $63
    ld h, h                                       ; $6543: $64
    pop hl                                        ; $6544: $e1
    ldh [rSB], a                                  ; $6545: $e0 $01
    ld [bc], a                                    ; $6547: $02
    ld c, $0c                                     ; $6548: $0e $0c
    ld bc, $2702                                  ; $654a: $01 $02 $27
    inc h                                         ; $654d: $24
    ld [bc], a                                    ; $654e: $02
    ld [bc], a                                    ; $654f: $02
    inc h                                         ; $6550: $24
    ld h, $01                                     ; $6551: $26 $01
    ld [bc], a                                    ; $6553: $02
    daa                                           ; $6554: $27
    ld h, $00                                     ; $6555: $26 $00
    ld bc, $0bfa                                  ; $6557: $01 $fa $0b
    ld c, $46                                     ; $655a: $0e $46
    ccf                                           ; $655c: $3f

jr_07b_655d:
    ld b, b                                       ; $655d: $40
    jr c, jr_07b_655d                             ; $655e: $38 $fd

    push hl                                       ; $6560: $e5
    ld e, $19                                     ; $6561: $1e $19
    ld a, [de]                                    ; $6563: $1a
    daa                                           ; $6564: $27
    jr z, jr_07b_656d                             ; $6565: $28 $06

    inc b                                         ; $6567: $04
    inc b                                         ; $6568: $04
    rlca                                          ; $6569: $07
    dec b                                         ; $656a: $05
    dec b                                         ; $656b: $05
    dec b                                         ; $656c: $05

jr_07b_656d:
    dec b                                         ; $656d: $05
    dec b                                         ; $656e: $05
    ld [bc], a                                    ; $656f: $02
    dec c                                         ; $6570: $0d
    ld a, [bc]                                    ; $6571: $0a
    dec b                                         ; $6572: $05
    dec b                                         ; $6573: $05
    ld [bc], a                                    ; $6574: $02
    dec b                                         ; $6575: $05
    inc c                                         ; $6576: $0c
    dec c                                         ; $6577: $0d
    ld d, [hl]                                    ; $6578: $56
    ld d, a                                       ; $6579: $57
    ld b, a                                       ; $657a: $47
    jp hl                                         ; $657b: $e9


    ld c, $35                                     ; $657c: $0e $35
    ld e, b                                       ; $657e: $58

jr_07b_657f:
    ld e, c                                       ; $657f: $59
    jr c, jr_07b_657f                             ; $6580: $38 $fd

    rla                                           ; $6582: $17
    jr jr_07b_659e                                ; $6583: $18 $19

    ld a, [de]                                    ; $6585: $1a
    rlca                                          ; $6586: $07
    rlca                                          ; $6587: $07
    inc b                                         ; $6588: $04
    inc b                                         ; $6589: $04
    dec b                                         ; $658a: $05
    dec c                                         ; $658b: $0d
    dec b                                         ; $658c: $05
    dec b                                         ; $658d: $05
    dec b                                         ; $658e: $05
    ld [bc], a                                    ; $658f: $02
    ld [bc], a                                    ; $6590: $02
    ld [bc], a                                    ; $6591: $02
    ld [bc], a                                    ; $6592: $02
    dec b                                         ; $6593: $05
    ld [bc], a                                    ; $6594: $02
    ld [bc], a                                    ; $6595: $02
    ei                                            ; $6596: $fb
    db $fc                                        ; $6597: $fc
    ld l, l                                       ; $6598: $6d
    ld h, l                                       ; $6599: $65
    inc a                                         ; $659a: $3c
    ld de, $5d17                                  ; $659b: $11 $17 $5d

jr_07b_659e:
    inc b                                         ; $659e: $04
    dec hl                                        ; $659f: $2b
    inc l                                         ; $65a0: $2c
    ld a, [hl]                                    ; $65a1: $7e
    add l                                         ; $65a2: $85
    add [hl]                                      ; $65a3: $86
    db $db                                        ; $65a4: $db
    ld h, c                                       ; $65a5: $61
    inc b                                         ; $65a6: $04
    inc b                                         ; $65a7: $04
    ld [bc], a                                    ; $65a8: $02
    ld [bc], a                                    ; $65a9: $02
    dec b                                         ; $65aa: $05
    ld [bc], a                                    ; $65ab: $02
    ld [bc], a                                    ; $65ac: $02
    ld [bc], a                                    ; $65ad: $02
    ld [bc], a                                    ; $65ae: $02
    ld [bc], a                                    ; $65af: $02
    ld [bc], a                                    ; $65b0: $02
    ld [bc], a                                    ; $65b1: $02
    ld a, [bc]                                    ; $65b2: $0a
    ld a, [bc]                                    ; $65b3: $0a
    ld a, [bc]                                    ; $65b4: $0a
    ld [bc], a                                    ; $65b5: $02
    ld h, [hl]                                    ; $65b6: $66
    ld h, a                                       ; $65b7: $67
    or $f5                                        ; $65b8: $f6 $f5
    add hl, de                                    ; $65ba: $19
    ld [hl], a                                    ; $65bb: $77
    ld sp, hl                                     ; $65bc: $f9
    ld hl, sp+$79                                 ; $65bd: $f8 $79
    ld e, $fc                                     ; $65bf: $1e $fc
    ei                                            ; $65c1: $fb
    ld hl, $7b22                                  ; $65c2: $21 $22 $7b
    ld a, h                                       ; $65c5: $7c
    ld [bc], a                                    ; $65c6: $02
    ld [bc], a                                    ; $65c7: $02
    daa                                           ; $65c8: $27
    inc h                                         ; $65c9: $24
    ld [bc], a                                    ; $65ca: $02
    ld [bc], a                                    ; $65cb: $02
    inc h                                         ; $65cc: $24
    inc h                                         ; $65cd: $24
    ld [bc], a                                    ; $65ce: $02
    ld [bc], a                                    ; $65cf: $02
    daa                                           ; $65d0: $27
    daa                                           ; $65d1: $27
    ld [bc], a                                    ; $65d2: $02
    ld [bc], a                                    ; $65d3: $02
    ld [bc], a                                    ; $65d4: $02
    dec b                                         ; $65d5: $05
    dec e                                         ; $65d6: $1d
    ld e, $29                                     ; $65d7: $1e $29
    ld [hl-], a                                   ; $65d9: $32
    ld hl, $3322                                  ; $65da: $21 $22 $33
    inc [hl]                                      ; $65dd: $34
    ld l, b                                       ; $65de: $68
    ld l, c                                       ; $65df: $69
    ld b, d                                       ; $65e0: $42
    ld b, h                                       ; $65e1: $44
    pop de                                        ; $65e2: $d1
    pop de                                        ; $65e3: $d1
    pop de                                        ; $65e4: $d1
    pop de                                        ; $65e5: $d1
    dec b                                         ; $65e6: $05
    dec b                                         ; $65e7: $05
    dec b                                         ; $65e8: $05
    ld [bc], a                                    ; $65e9: $02
    dec b                                         ; $65ea: $05
    dec b                                         ; $65eb: $05
    dec b                                         ; $65ec: $05
    dec b                                         ; $65ed: $05
    add a                                         ; $65ee: $87
    add a                                         ; $65ef: $87
    add h                                         ; $65f0: $84
    add h                                         ; $65f1: $84
    add h                                         ; $65f2: $84
    add h                                         ; $65f3: $84
    add h                                         ; $65f4: $84
    add h                                         ; $65f5: $84
    dec de                                        ; $65f6: $1b
    inc e                                         ; $65f7: $1c
    dec e                                         ; $65f8: $1d
    ld e, $1f                                     ; $65f9: $1e $1f
    jr nz, @+$23                                  ; $65fb: $20 $21

    ld [hl+], a                                   ; $65fd: $22
    ld c, b                                       ; $65fe: $48
    ld c, c                                       ; $65ff: $49
    ld c, d                                       ; $6600: $4a
    ld c, e                                       ; $6601: $4b
    pop de                                        ; $6602: $d1
    pop de                                        ; $6603: $d1
    pop de                                        ; $6604: $d1
    pop de                                        ; $6605: $d1
    dec b                                         ; $6606: $05
    ld [bc], a                                    ; $6607: $02
    ld [bc], a                                    ; $6608: $02
    ld [bc], a                                    ; $6609: $02
    ld [bc], a                                    ; $660a: $02
    ld [bc], a                                    ; $660b: $02
    ld [bc], a                                    ; $660c: $02
    ld [bc], a                                    ; $660d: $02
    add h                                         ; $660e: $84
    add [hl]                                      ; $660f: $86
    add a                                         ; $6610: $87
    add a                                         ; $6611: $87
    add h                                         ; $6612: $84
    add h                                         ; $6613: $84
    add h                                         ; $6614: $84
    add h                                         ; $6615: $84
    rra                                           ; $6616: $1f
    ld [hl-], a                                   ; $6617: $32
    inc hl                                        ; $6618: $23
    ld l, h                                       ; $6619: $6c
    dec hl                                        ; $661a: $2b
    inc l                                         ; $661b: $2c
    ld [bc], a                                    ; $661c: $02
    jr nz, @+$6b                                  ; $661d: $20 $69

    ld b, c                                       ; $661f: $41
    ld [de], a                                    ; $6620: $12
    inc de                                        ; $6621: $13
    pop de                                        ; $6622: $d1
    ld b, d                                       ; $6623: $42
    ld b, h                                       ; $6624: $44
    ld c, b                                       ; $6625: $48
    ld a, [bc]                                    ; $6626: $0a
    ld [bc], a                                    ; $6627: $02
    ld [bc], a                                    ; $6628: $02
    ld [bc], a                                    ; $6629: $02
    ld [bc], a                                    ; $662a: $02
    ld [bc], a                                    ; $662b: $02
    ld [bc], a                                    ; $662c: $02
    ld a, [bc]                                    ; $662d: $0a
    and h                                         ; $662e: $a4
    and h                                         ; $662f: $a4
    ld [bc], a                                    ; $6630: $02
    ld [bc], a                                    ; $6631: $02
    add h                                         ; $6632: $84
    add h                                         ; $6633: $84
    add a                                         ; $6634: $87
    add a                                         ; $6635: $87
    dec h                                         ; $6636: $25
    adc l                                         ; $6637: $8d
    ld l, $8a                                     ; $6638: $2e $8a
    ld hl, $8b35                                  ; $663a: $21 $35 $8b
    adc h                                         ; $663d: $8c
    inc d                                         ; $663e: $14
    ld [hl], h                                    ; $663f: $74
    ld [hl], l                                    ; $6640: $75
    halt                                          ; $6641: $76
    ld c, c                                       ; $6642: $49
    ld c, d                                       ; $6643: $4a
    ld c, e                                       ; $6644: $4b
    ld l, b                                       ; $6645: $68
    ld [bc], a                                    ; $6646: $02
    ld a, [bc]                                    ; $6647: $0a
    ld [bc], a                                    ; $6648: $02
    ld a, [bc]                                    ; $6649: $0a
    ld a, [bc]                                    ; $664a: $0a
    ld [bc], a                                    ; $664b: $02
    ld a, [bc]                                    ; $664c: $0a
    ld a, [bc]                                    ; $664d: $0a
    ld [bc], a                                    ; $664e: $02
    ld [bc], a                                    ; $664f: $02
    ld [bc], a                                    ; $6650: $02
    ld [bc], a                                    ; $6651: $02
    add [hl]                                      ; $6652: $86
    add h                                         ; $6653: $84
    add a                                         ; $6654: $87
    add [hl]                                      ; $6655: $86
    rra                                           ; $6656: $1f
    jr nz, @+$23                                  ; $6657: $20 $21

    ld [hl+], a                                   ; $6659: $22
    ld b, d                                       ; $665a: $42
    ld b, h                                       ; $665b: $44
    ld b, d                                       ; $665c: $42
    ld b, h                                       ; $665d: $44
    pop de                                        ; $665e: $d1
    pop de                                        ; $665f: $d1
    pop de                                        ; $6660: $d1
    pop de                                        ; $6661: $d1
    pop de                                        ; $6662: $d1
    pop de                                        ; $6663: $d1
    pop de                                        ; $6664: $d1

Jump_07b_6665:
    pop de                                        ; $6665: $d1
    ld bc, $0102                                  ; $6666: $01 $02 $01
    inc bc                                        ; $6669: $03
    add h                                         ; $666a: $84
    add [hl]                                      ; $666b: $86
    add [hl]                                      ; $666c: $86
    add a                                         ; $666d: $87
    add h                                         ; $666e: $84
    add h                                         ; $666f: $84
    add h                                         ; $6670: $84
    add h                                         ; $6671: $84
    inc b                                         ; $6672: $04
    inc b                                         ; $6673: $04
    inc b                                         ; $6674: $04
    inc b                                         ; $6675: $04
    inc sp                                        ; $6676: $33
    inc [hl]                                      ; $6677: $34
    rra                                           ; $6678: $1f
    jr nz, jr_07b_66c3                            ; $6679: $20 $48

    ld c, c                                       ; $667b: $49
    ld c, d                                       ; $667c: $4a
    ld c, e                                       ; $667d: $4b
    pop de                                        ; $667e: $d1
    pop de                                        ; $667f: $d1
    pop de                                        ; $6680: $d1
    pop de                                        ; $6681: $d1
    pop de                                        ; $6682: $d1
    pop de                                        ; $6683: $d1
    pop de                                        ; $6684: $d1
    pop de                                        ; $6685: $d1
    ld bc, $0103                                  ; $6686: $01 $03 $01
    ld bc, $8786                                  ; $6689: $01 $86 $87
    add a                                         ; $668c: $87
    add [hl]                                      ; $668d: $86
    add h                                         ; $668e: $84
    add h                                         ; $668f: $84
    add h                                         ; $6690: $84
    add h                                         ; $6691: $84
    inc b                                         ; $6692: $04
    inc b                                         ; $6693: $04
    inc b                                         ; $6694: $04
    inc b                                         ; $6695: $04
    ld hl, $63cf                                  ; $6696: $21 $cf $63
    ld h, h                                       ; $6699: $64
    ld l, b                                       ; $669a: $68
    ld l, c                                       ; $669b: $69
    ld b, d                                       ; $669c: $42
    ld b, h                                       ; $669d: $44
    pop de                                        ; $669e: $d1
    pop de                                        ; $669f: $d1
    pop de                                        ; $66a0: $d1
    pop de                                        ; $66a1: $d1
    pop de                                        ; $66a2: $d1
    pop de                                        ; $66a3: $d1
    pop de                                        ; $66a4: $d1
    pop de                                        ; $66a5: $d1
    ld [bc], a                                    ; $66a6: $02
    ld a, [bc]                                    ; $66a7: $0a
    ld [bc], a                                    ; $66a8: $02
    ld [bc], a                                    ; $66a9: $02
    add a                                         ; $66aa: $87
    add h                                         ; $66ab: $84
    add a                                         ; $66ac: $87
    add h                                         ; $66ad: $84
    add h                                         ; $66ae: $84
    add h                                         ; $66af: $84
    add h                                         ; $66b0: $84
    add h                                         ; $66b1: $84
    inc b                                         ; $66b2: $04
    inc b                                         ; $66b3: $04
    inc b                                         ; $66b4: $04
    inc b                                         ; $66b5: $04
    ld l, d                                       ; $66b6: $6a
    add d                                         ; $66b7: $82
    ld hl, $4841                                  ; $66b8: $21 $41 $48
    ld c, c                                       ; $66bb: $49
    ld c, d                                       ; $66bc: $4a
    ld c, d                                       ; $66bd: $4a
    pop de                                        ; $66be: $d1
    pop de                                        ; $66bf: $d1
    pop de                                        ; $66c0: $d1
    pop de                                        ; $66c1: $d1
    pop de                                        ; $66c2: $d1

jr_07b_66c3:
    pop de                                        ; $66c3: $d1
    pop de                                        ; $66c4: $d1
    pop de                                        ; $66c5: $d1
    ld [bc], a                                    ; $66c6: $02
    ld a, [bc]                                    ; $66c7: $0a
    ld [bc], a                                    ; $66c8: $02
    add h                                         ; $66c9: $84
    add [hl]                                      ; $66ca: $86
    add h                                         ; $66cb: $84
    add a                                         ; $66cc: $87
    add [hl]                                      ; $66cd: $86
    add h                                         ; $66ce: $84
    add h                                         ; $66cf: $84
    add h                                         ; $66d0: $84

Jump_07b_66d1:
    add h                                         ; $66d1: $84
    inc b                                         ; $66d2: $04
    inc b                                         ; $66d3: $04
    inc b                                         ; $66d4: $04
    inc b                                         ; $66d5: $04
    pop de                                        ; $66d6: $d1
    pop de                                        ; $66d7: $d1
    pop de                                        ; $66d8: $d1
    pop de                                        ; $66d9: $d1
    ld c, l                                       ; $66da: $4d
    jp c, $d3db                                   ; $66db: $da $db $d3

    ld c, a                                       ; $66de: $4f
    call c, $d6dd                                 ; $66df: $dc $dd $d6
    ld d, c                                       ; $66e2: $51
    sbc $df                                       ; $66e3: $de $df
    reti                                          ; $66e5: $d9


    inc b                                         ; $66e6: $04
    inc b                                         ; $66e7: $04
    inc b                                         ; $66e8: $04
    inc b                                         ; $66e9: $04
    inc b                                         ; $66ea: $04
    inc b                                         ; $66eb: $04
    ld b, $06                                     ; $66ec: $06 $06
    rlca                                          ; $66ee: $07
    rlca                                          ; $66ef: $07
    ld b, $06                                     ; $66f0: $06 $06
    rlca                                          ; $66f2: $07
    inc b                                         ; $66f3: $04
    inc b                                         ; $66f4: $04
    ld b, $d1                                     ; $66f5: $06 $d1
    pop de                                        ; $66f7: $d1
    pop de                                        ; $66f8: $d1
    pop de                                        ; $66f9: $d1
    db $e4                                        ; $66fa: $e4
    push hl                                       ; $66fb: $e5
    and $4c                                       ; $66fc: $e6 $4c
    ld l, [hl]                                    ; $66fe: $6e
    ld l, a                                       ; $66ff: $6f
    jp hl                                         ; $6700: $e9


    ld c, [hl]                                    ; $6701: $4e
    ld [hl], b                                    ; $6702: $70
    ld [hl], c                                    ; $6703: $71
    db $ec                                        ; $6704: $ec
    ld d, b                                       ; $6705: $50
    inc b                                         ; $6706: $04
    inc b                                         ; $6707: $04
    inc b                                         ; $6708: $04
    inc b                                         ; $6709: $04
    inc b                                         ; $670a: $04
    inc b                                         ; $670b: $04
    inc b                                         ; $670c: $04
    inc b                                         ; $670d: $04
    rlca                                          ; $670e: $07
    inc b                                         ; $670f: $04
    inc b                                         ; $6710: $04
    rlca                                          ; $6711: $07
    inc b                                         ; $6712: $04
    rlca                                          ; $6713: $07
    rlca                                          ; $6714: $07
    rlca                                          ; $6715: $07
    pop de                                        ; $6716: $d1
    pop de                                        ; $6717: $d1
    pop de                                        ; $6718: $d1
    pop de                                        ; $6719: $d1
    ld c, l                                       ; $671a: $4d
    jp c, $d3db                                   ; $671b: $da $db $d3

    ld c, a                                       ; $671e: $4f
    call c, $d6dd                                 ; $671f: $dc $dd $d6
    ld d, c                                       ; $6722: $51
    sbc $df                                       ; $6723: $de $df
    reti                                          ; $6725: $d9


    inc b                                         ; $6726: $04
    inc b                                         ; $6727: $04
    inc b                                         ; $6728: $04
    inc b                                         ; $6729: $04
    rlca                                          ; $672a: $07
    rlca                                          ; $672b: $07
    inc b                                         ; $672c: $04
    inc b                                         ; $672d: $04
    rlca                                          ; $672e: $07
    rlca                                          ; $672f: $07
    ld b, $04                                     ; $6730: $06 $04
    rlca                                          ; $6732: $07
    ld b, $06                                     ; $6733: $06 $06
    inc b                                         ; $6735: $04
    pop de                                        ; $6736: $d1
    pop de                                        ; $6737: $d1
    pop de                                        ; $6738: $d1
    pop de                                        ; $6739: $d1
    db $e4                                        ; $673a: $e4
    push hl                                       ; $673b: $e5
    and $4c                                       ; $673c: $e6 $4c
    ld l, [hl]                                    ; $673e: $6e
    ld l, a                                       ; $673f: $6f
    jp hl                                         ; $6740: $e9


    ld c, [hl]                                    ; $6741: $4e
    ld [hl], b                                    ; $6742: $70
    ld [hl], c                                    ; $6743: $71
    db $ec                                        ; $6744: $ec
    ld d, b                                       ; $6745: $50
    inc b                                         ; $6746: $04
    inc b                                         ; $6747: $04
    inc b                                         ; $6748: $04
    inc b                                         ; $6749: $04
    inc b                                         ; $674a: $04
    inc b                                         ; $674b: $04
    rlca                                          ; $674c: $07
    rlca                                          ; $674d: $07
    inc b                                         ; $674e: $04
    rlca                                          ; $674f: $07
    rlca                                          ; $6750: $07
    inc b                                         ; $6751: $04
    rlca                                          ; $6752: $07
    rlca                                          ; $6753: $07
    inc b                                         ; $6754: $04
    ld b, $53                                     ; $6755: $06 $53
    ld [c], a                                     ; $6757: $e2
    db $e3                                        ; $6758: $e3
    db $ed                                        ; $6759: $ed
    ld d, l                                       ; $675a: $55
    cp $ff                                        ; $675b: $fe $ff
    rst $30                                       ; $675d: $f7
    ld d, a                                       ; $675e: $57
    nop                                           ; $675f: $00
    ld bc, $60fa                                  ; $6760: $01 $fa $60
    ld h, c                                       ; $6763: $61
    ld [hl+], a                                   ; $6764: $22
    dec a                                         ; $6765: $3d
    ld b, $07                                     ; $6766: $06 $07
    rlca                                          ; $6768: $07
    inc b                                         ; $6769: $04
    inc b                                         ; $676a: $04
    ld b, $06                                     ; $676b: $06 $06
    inc b                                         ; $676d: $04
    inc b                                         ; $676e: $04
    rlca                                          ; $676f: $07
    rlca                                          ; $6770: $07
    inc b                                         ; $6771: $04
    dec b                                         ; $6772: $05
    dec b                                         ; $6773: $05
    dec c                                         ; $6774: $0d
    dec b                                         ; $6775: $05
    ld [hl], d                                    ; $6776: $72
    ld [hl], e                                    ; $6777: $73
    ldh a, [rHDMA2]                               ; $6778: $f0 $52
    ld [$0a09], sp                                ; $677a: $08 $09 $0a
    ld d, h                                       ; $677d: $54
    dec bc                                        ; $677e: $0b
    inc c                                         ; $677f: $0c
    dec c                                         ; $6780: $0d
    ld d, [hl]                                    ; $6781: $56
    ld a, $45                                     ; $6782: $3e $45
    ld h, b                                       ; $6784: $60
    ld h, c                                       ; $6785: $61
    ld b, $06                                     ; $6786: $06 $06
    ld b, $04                                     ; $6788: $06 $04
    ld b, $06                                     ; $678a: $06 $06
    ld b, $07                                     ; $678c: $06 $07
    inc b                                         ; $678e: $04
    inc b                                         ; $678f: $04
    rlca                                          ; $6790: $07
    inc b                                         ; $6791: $04
    dec b                                         ; $6792: $05
    dec b                                         ; $6793: $05
    dec b                                         ; $6794: $05
    dec b                                         ; $6795: $05
    ld d, e                                       ; $6796: $53
    ld [c], a                                     ; $6797: $e2
    db $e3                                        ; $6798: $e3
    db $ed                                        ; $6799: $ed
    ld d, l                                       ; $679a: $55
    cp $ff                                        ; $679b: $fe $ff
    rst $30                                       ; $679d: $f7
    ld d, a                                       ; $679e: $57
    nop                                           ; $679f: $00
    ld bc, $21fa                                  ; $67a0: $01 $fa $21
    ld [hl+], a                                   ; $67a3: $22
    di                                            ; $67a4: $f3
    add l                                         ; $67a5: $85
    inc b                                         ; $67a6: $04
    ld b, $04                                     ; $67a7: $06 $04
    inc b                                         ; $67a9: $04
    inc b                                         ; $67aa: $04
    rlca                                          ; $67ab: $07
    rlca                                          ; $67ac: $07
    rlca                                          ; $67ad: $07
    inc b                                         ; $67ae: $04
    inc b                                         ; $67af: $04
    inc b                                         ; $67b0: $04
    inc b                                         ; $67b1: $04
    dec b                                         ; $67b2: $05
    dec b                                         ; $67b3: $05
    dec c                                         ; $67b4: $0d
    dec c                                         ; $67b5: $0d
    ld [hl], d                                    ; $67b6: $72
    ld [hl], e                                    ; $67b7: $73
    ldh a, [rHDMA2]                               ; $67b8: $f0 $52
    ld [$0a09], sp                                ; $67ba: $08 $09 $0a
    ld d, h                                       ; $67bd: $54
    dec bc                                        ; $67be: $0b
    inc c                                         ; $67bf: $0c
    dec c                                         ; $67c0: $0d
    ld d, [hl]                                    ; $67c1: $56
    add [hl]                                      ; $67c2: $86
    add a                                         ; $67c3: $87
    jp hl                                         ; $67c4: $e9


    ld c, $04                                     ; $67c5: $0e $04
    ld b, $06                                     ; $67c7: $06 $06
    ld b, $07                                     ; $67c9: $06 $07
    inc b                                         ; $67cb: $04
    inc b                                         ; $67cc: $04
    inc b                                         ; $67cd: $04
    inc b                                         ; $67ce: $04
    ld b, $06                                     ; $67cf: $06 $06

Jump_07b_67d1:
    ld b, $0d                                     ; $67d1: $06 $0d
    dec c                                         ; $67d3: $0d
    dec c                                         ; $67d4: $0d
    dec b                                         ; $67d5: $05
    inc hl                                        ; $67d6: $23
    ld l, h                                       ; $67d7: $6c
    inc hl                                        ; $67d8: $23
    ccf                                           ; $67d9: $3f
    adc [hl]                                      ; $67da: $8e
    adc a                                         ; $67db: $8f
    ld c, $46                                     ; $67dc: $0e $46
    ld l, l                                       ; $67de: $6d
    ld e, c                                       ; $67df: $59
    ld a, l                                       ; $67e0: $7d
    ld [hl], h                                    ; $67e1: $74
    ld l, c                                       ; $67e2: $69
    ld b, d                                       ; $67e3: $42
    ld b, h                                       ; $67e4: $44
    ld c, b                                       ; $67e5: $48
    ld [bc], a                                    ; $67e6: $02
    ld [bc], a                                    ; $67e7: $02
    ld a, [bc]                                    ; $67e8: $0a
    ld [bc], a                                    ; $67e9: $02
    ld a, [bc]                                    ; $67ea: $0a
    ld a, [bc]                                    ; $67eb: $0a
    ld [bc], a                                    ; $67ec: $02
    ld bc, $0201                                  ; $67ed: $01 $01 $02
    ld bc, $8702                                  ; $67f0: $01 $02 $87
    add a                                         ; $67f3: $87
    add [hl]                                      ; $67f4: $86
    add h                                         ; $67f5: $84
    ld b, b                                       ; $67f6: $40
    ld b, a                                       ; $67f7: $47
    inc hl                                        ; $67f8: $23
    ld l, h                                       ; $67f9: $6c
    inc h                                         ; $67fa: $24
    adc h                                         ; $67fb: $8c
    adc [hl]                                      ; $67fc: $8e
    adc a                                         ; $67fd: $8f
    ld [hl], l                                    ; $67fe: $75
    halt                                          ; $67ff: $76
    ld l, l                                       ; $6800: $6d
    ld e, c                                       ; $6801: $59
    ld c, c                                       ; $6802: $49
    ld c, d                                       ; $6803: $4a
    ld c, e                                       ; $6804: $4b
    ld l, b                                       ; $6805: $68
    ld [bc], a                                    ; $6806: $02
    ld [bc], a                                    ; $6807: $02
    ld [bc], a                                    ; $6808: $02
    ld [bc], a                                    ; $6809: $02
    ld a, [bc]                                    ; $680a: $0a
    add hl, bc                                    ; $680b: $09
    add hl, bc                                    ; $680c: $09
    ld a, [bc]                                    ; $680d: $0a
    ld bc, $0301                                  ; $680e: $01 $01 $03
    ld bc, $8787                                  ; $6811: $01 $87 $87
    add [hl]                                      ; $6814: $86
    add a                                         ; $6815: $87
    dec h                                         ; $6816: $25
    adc l                                         ; $6817: $8d
    ld l, $17                                     ; $6818: $2e $17
    ld c, $35                                     ; $681a: $0e $35
    adc e                                         ; $681c: $8b
    adc h                                         ; $681d: $8c
    ld a, l                                       ; $681e: $7d
    ld [hl], h                                    ; $681f: $74
    ld [hl], l                                    ; $6820: $75
    ld e, d                                       ; $6821: $5a
    ld l, c                                       ; $6822: $69
    ld b, h                                       ; $6823: $44
    ld c, b                                       ; $6824: $48
    ld l, c                                       ; $6825: $69
    ld [bc], a                                    ; $6826: $02
    ld a, [bc]                                    ; $6827: $0a
    ld [bc], a                                    ; $6828: $02
    ld a, [bc]                                    ; $6829: $0a
    ld bc, $0b01                                  ; $682a: $01 $01 $0b
    add hl, bc                                    ; $682d: $09
    inc bc                                        ; $682e: $03
    ld bc, $0101                                  ; $682f: $01 $01 $01
    add h                                         ; $6832: $84
    add a                                         ; $6833: $87
    add [hl]                                      ; $6834: $86
    and h                                         ; $6835: $a4
    inc hl                                        ; $6836: $23
    ld e, b                                       ; $6837: $58
    ld e, c                                       ; $6838: $59
    jr c, jr_07b_6866                             ; $6839: $38 $2b

    inc l                                         ; $683b: $2c
    call nz, Call_07b_5b19                        ; $683c: $c4 $19 $5b
    ld e, h                                       ; $683f: $5c
    add c                                         ; $6840: $81
    dec e                                         ; $6841: $1d
    ld b, c                                       ; $6842: $41
    ld l, d                                       ; $6843: $6a
    add d                                         ; $6844: $82
    ld hl, $0202                                  ; $6845: $21 $02 $02
    ld [bc], a                                    ; $6848: $02
    ld [bc], a                                    ; $6849: $02
    ld bc, $0a01                                  ; $684a: $01 $01 $0a
    ld bc, $0301                                  ; $684d: $01 $01 $03
    add hl, bc                                    ; $6850: $09
    ld bc, $01a7                                  ; $6851: $01 $a7 $01
    add hl, bc                                    ; $6854: $09
    inc bc                                        ; $6855: $03
    ld l, c                                       ; $6856: $69
    ld l, c                                       ; $6857: $69
    ld c, b                                       ; $6858: $48
    ld c, c                                       ; $6859: $49
    pop de                                        ; $685a: $d1
    pop de                                        ; $685b: $d1
    pop de                                        ; $685c: $d1
    pop de                                        ; $685d: $d1
    pop de                                        ; $685e: $d1
    pop de                                        ; $685f: $d1
    pop de                                        ; $6860: $d1
    pop de                                        ; $6861: $d1
    pop de                                        ; $6862: $d1
    pop de                                        ; $6863: $d1
    pop de                                        ; $6864: $d1
    pop de                                        ; $6865: $d1

jr_07b_6866:
    add [hl]                                      ; $6866: $86
    add h                                         ; $6867: $84
    add a                                         ; $6868: $87
    add [hl]                                      ; $6869: $86
    add h                                         ; $686a: $84
    add h                                         ; $686b: $84
    add h                                         ; $686c: $84
    inc b                                         ; $686d: $04
    inc b                                         ; $686e: $04
    inc b                                         ; $686f: $04
    inc b                                         ; $6870: $04
    inc b                                         ; $6871: $04
    inc b                                         ; $6872: $04
    inc b                                         ; $6873: $04
    inc b                                         ; $6874: $04
    inc b                                         ; $6875: $04
    pop de                                        ; $6876: $d1
    pop de                                        ; $6877: $d1
    pop de                                        ; $6878: $d1
    pop de                                        ; $6879: $d1
    ld c, l                                       ; $687a: $4d
    pop de                                        ; $687b: $d1
    pop de                                        ; $687c: $d1
    pop de                                        ; $687d: $d1
    ld c, a                                       ; $687e: $4f
    db $f4                                        ; $687f: $f4
    pop de                                        ; $6880: $d1
    pop de                                        ; $6881: $d1
    ld d, c                                       ; $6882: $51
    ld d, $d1                                     ; $6883: $16 $d1
    pop de                                        ; $6885: $d1
    inc b                                         ; $6886: $04
    inc b                                         ; $6887: $04
    inc b                                         ; $6888: $04
    inc b                                         ; $6889: $04
    inc b                                         ; $688a: $04
    inc b                                         ; $688b: $04
    inc b                                         ; $688c: $04
    inc b                                         ; $688d: $04
    ld b, $24                                     ; $688e: $06 $24
    inc b                                         ; $6890: $04
    inc b                                         ; $6891: $04
    ld b, $24                                     ; $6892: $06 $24
    inc b                                         ; $6894: $04
    inc b                                         ; $6895: $04
    ld d, e                                       ; $6896: $53
    jp nc, $d1d1                                  ; $6897: $d2 $d1 $d1

    ld d, l                                       ; $689a: $55
    pop af                                        ; $689b: $f1
    pop de                                        ; $689c: $d1
    pop de                                        ; $689d: $d1
    ld d, a                                       ; $689e: $57
    ld a, [c]                                     ; $689f: $f2
    pop de                                        ; $68a0: $d1
    pop de                                        ; $68a1: $d1
    dec [hl]                                      ; $68a2: $35
    di                                            ; $68a3: $f3
    pop de                                        ; $68a4: $d1
    pop de                                        ; $68a5: $d1
    inc b                                         ; $68a6: $04
    ld b, $04                                     ; $68a7: $06 $04
    inc b                                         ; $68a9: $04
    ld b, $87                                     ; $68aa: $06 $87
    add h                                         ; $68ac: $84
    inc b                                         ; $68ad: $04
    inc b                                         ; $68ae: $04
    add a                                         ; $68af: $87
    add h                                         ; $68b0: $84
    inc b                                         ; $68b1: $04
    dec b                                         ; $68b2: $05
    add h                                         ; $68b3: $84
    add h                                         ; $68b4: $84
    inc b                                         ; $68b5: $04
    db $fd                                        ; $68b6: $fd
    db $f4                                        ; $68b7: $f4
    pop de                                        ; $68b8: $d1
    pop de                                        ; $68b9: $d1
    ld a, [de]                                    ; $68ba: $1a
    ld d, $d1                                     ; $68bb: $16 $d1
    pop de                                        ; $68bd: $d1
    ld e, $d2                                     ; $68be: $1e $d2
    pop de                                        ; $68c0: $d1
    pop de                                        ; $68c1: $d1
    ld [hl+], a                                   ; $68c2: $22
    pop af                                        ; $68c3: $f1
    pop de                                        ; $68c4: $d1
    pop de                                        ; $68c5: $d1
    ld [bc], a                                    ; $68c6: $02
    and h                                         ; $68c7: $a4
    add h                                         ; $68c8: $84
    inc b                                         ; $68c9: $04
    ld [bc], a                                    ; $68ca: $02
    and a                                         ; $68cb: $a7
    add h                                         ; $68cc: $84
    inc b                                         ; $68cd: $04
    ld [bc], a                                    ; $68ce: $02
    add [hl]                                      ; $68cf: $86
    add h                                         ; $68d0: $84
    inc b                                         ; $68d1: $04
    ld [bc], a                                    ; $68d2: $02
    add [hl]                                      ; $68d3: $86
    add h                                         ; $68d4: $84
    inc b                                         ; $68d5: $04
    pop de                                        ; $68d6: $d1
    pop de                                        ; $68d7: $d1
    pop de                                        ; $68d8: $d1
    pop de                                        ; $68d9: $d1
    pop de                                        ; $68da: $d1
    jp c, $d3db                                   ; $68db: $da $db $d3

    jp nc, $dddc                                  ; $68de: $d2 $dc $dd

    sub $f1                                       ; $68e1: $d6 $f1
    sbc $df                                       ; $68e3: $de $df
    reti                                          ; $68e5: $d9


    inc b                                         ; $68e6: $04
    inc b                                         ; $68e7: $04
    inc b                                         ; $68e8: $04
    inc b                                         ; $68e9: $04
    inc b                                         ; $68ea: $04
    rlca                                          ; $68eb: $07
    inc b                                         ; $68ec: $04
    ld b, $26                                     ; $68ed: $06 $26
    rlca                                          ; $68ef: $07
    ld b, $04                                     ; $68f0: $06 $04
    and h                                         ; $68f2: $a4
    rlca                                          ; $68f3: $07
    inc b                                         ; $68f4: $04
    inc b                                         ; $68f5: $04
    pop de                                        ; $68f6: $d1
    pop de                                        ; $68f7: $d1
    pop de                                        ; $68f8: $d1
    pop de                                        ; $68f9: $d1
    db $e4                                        ; $68fa: $e4
    push hl                                       ; $68fb: $e5
    and $4c                                       ; $68fc: $e6 $4c
    ld l, [hl]                                    ; $68fe: $6e
    ld l, a                                       ; $68ff: $6f
    jp hl                                         ; $6900: $e9


    ld c, [hl]                                    ; $6901: $4e
    ret                                           ; $6902: $c9


    call z, Call_07b_50ec                         ; $6903: $cc $ec $50
    inc b                                         ; $6906: $04
    inc b                                         ; $6907: $04
    inc b                                         ; $6908: $04
    inc b                                         ; $6909: $04
    inc b                                         ; $690a: $04
    inc b                                         ; $690b: $04
    inc b                                         ; $690c: $04
    ld b, $04                                     ; $690d: $06 $04
    rlca                                          ; $690f: $07
    inc b                                         ; $6910: $04
    inc b                                         ; $6911: $04
    inc c                                         ; $6912: $0c
    inc c                                         ; $6913: $0c
    inc b                                         ; $6914: $04
    rlca                                          ; $6915: $07
    pop de                                        ; $6916: $d1
    pop de                                        ; $6917: $d1
    pop de                                        ; $6918: $d1
    pop de                                        ; $6919: $d1
    ld c, l                                       ; $691a: $4d
    pop de                                        ; $691b: $d1
    pop de                                        ; $691c: $d1
    pop de                                        ; $691d: $d1
    ld c, a                                       ; $691e: $4f
    push de                                       ; $691f: $d5
    call nc, Call_07b_51da                        ; $6920: $d4 $da $51
    ret c                                         ; $6923: $d8

    rst $10                                       ; $6924: $d7
    call c, Call_000_0404                         ; $6925: $dc $04 $04
    inc b                                         ; $6928: $04
    inc b                                         ; $6929: $04
    inc b                                         ; $692a: $04
    inc b                                         ; $692b: $04
    inc b                                         ; $692c: $04
    inc b                                         ; $692d: $04
    inc b                                         ; $692e: $04
    inc h                                         ; $692f: $24
    ld h, $07                                     ; $6930: $26 $07
    ld b, $24                                     ; $6932: $06 $24
    inc h                                         ; $6934: $24
    rlca                                          ; $6935: $07
    ld a, [c]                                     ; $6936: $f2
    ld [c], a                                     ; $6937: $e2
    db $e3                                        ; $6938: $e3
    db $ed                                        ; $6939: $ed
    di                                            ; $693a: $f3
    cp $ff                                        ; $693b: $fe $ff
    rst $30                                       ; $693d: $f7
    db $f4                                        ; $693e: $f4
    nop                                           ; $693f: $00
    ld bc, $16fa                                  ; $6940: $01 $fa $16
    inc bc                                        ; $6943: $03
    ld c, $35                                     ; $6944: $0e $35
    and [hl]                                      ; $6946: $a6
    ld b, $07                                     ; $6947: $06 $07
    rlca                                          ; $6949: $07
    and a                                         ; $694a: $a7
    inc b                                         ; $694b: $04
    rlca                                          ; $694c: $07
    ld b, $84                                     ; $694d: $06 $84
    inc b                                         ; $694f: $04
    rlca                                          ; $6950: $07
    inc b                                         ; $6951: $04
    add [hl]                                      ; $6952: $86
    dec b                                         ; $6953: $05
    dec b                                         ; $6954: $05
    dec b                                         ; $6955: $05
    jp z, $f0cd                                   ; $6956: $ca $cd $f0

    ld d, d                                       ; $6959: $52
    set 1, [hl]                                   ; $695a: $cb $ce
    ld a, [bc]                                    ; $695c: $0a
    ld d, h                                       ; $695d: $54
    dec bc                                        ; $695e: $0b
    inc c                                         ; $695f: $0c
    dec c                                         ; $6960: $0d
    ld d, [hl]                                    ; $6961: $56
    dec h                                         ; $6962: $25
    rlca                                          ; $6963: $07
    ld [de], a                                    ; $6964: $12
    inc de                                        ; $6965: $13
    inc c                                         ; $6966: $0c
    inc c                                         ; $6967: $0c
    rlca                                          ; $6968: $07
    rlca                                          ; $6969: $07
    inc c                                         ; $696a: $0c
    inc c                                         ; $696b: $0c
    rlca                                          ; $696c: $07
    rlca                                          ; $696d: $07
    inc b                                         ; $696e: $04
    inc b                                         ; $696f: $04
    inc b                                         ; $6970: $04
    rlca                                          ; $6971: $07
    dec c                                         ; $6972: $0d
    dec b                                         ; $6973: $05
    dec b                                         ; $6974: $05
    dec b                                         ; $6975: $05
    ld d, e                                       ; $6976: $53
    pop hl                                        ; $6977: $e1
    ldh [$de], a                                  ; $6978: $e0 $de
    ld d, l                                       ; $697a: $55
    or $f5                                        ; $697b: $f6 $f5
    ld [c], a                                     ; $697d: $e2
    ld d, a                                       ; $697e: $57
    ld sp, hl                                     ; $697f: $f9
    ld hl, sp-$02                                 ; $6980: $f8 $fe
    inc d                                         ; $6982: $14
    db $fc                                        ; $6983: $fc
    ei                                            ; $6984: $fb
    nop                                           ; $6985: $00
    inc b                                         ; $6986: $04
    ld h, $24                                     ; $6987: $26 $24
    inc b                                         ; $6989: $04
    rlca                                          ; $698a: $07
    daa                                           ; $698b: $27
    ld h, $04                                     ; $698c: $26 $04
    rlca                                          ; $698e: $07
    ld h, $24                                     ; $698f: $26 $24
    rlca                                          ; $6991: $07
    dec b                                         ; $6992: $05
    inc h                                         ; $6993: $24
    inc h                                         ; $6994: $24
    ld b, $d2                                     ; $6995: $06 $d2

jr_07b_6997:
    ld e, c                                       ; $6997: $59
    jr c, jr_07b_6997                             ; $6998: $38 $fd

    pop af                                        ; $699a: $f1
    jr jr_07b_69b6                                ; $699b: $18 $19

    ld a, [de]                                    ; $699d: $1a
    ld a, [c]                                     ; $699e: $f2
    inc l                                         ; $699f: $2c
    sbc d                                         ; $69a0: $9a
    ld e, $f3                                     ; $69a1: $1e $f3
    jr nz, jr_07b_69c6                            ; $69a3: $20 $21

    ld [hl+], a                                   ; $69a5: $22
    and a                                         ; $69a6: $a7
    dec b                                         ; $69a7: $05
    dec b                                         ; $69a8: $05
    dec b                                         ; $69a9: $05
    and h                                         ; $69aa: $a4
    dec b                                         ; $69ab: $05
    dec b                                         ; $69ac: $05
    dec b                                         ; $69ad: $05
    and [hl]                                      ; $69ae: $a6
    dec b                                         ; $69af: $05
    dec c                                         ; $69b0: $0d
    dec b                                         ; $69b1: $05
    and h                                         ; $69b2: $a4
    dec b                                         ; $69b3: $05
    dec b                                         ; $69b4: $05
    dec b                                         ; $69b5: $05

jr_07b_69b6:
    inc b                                         ; $69b6: $04
    dec b                                         ; $69b7: $05
    ld h, $3a                                     ; $69b8: $26 $3a
    daa                                           ; $69ba: $27
    jr z, jr_07b_69d4                             ; $69bb: $28 $17

    jr jr_07b_69e8                                ; $69bd: $18 $29

    ld [hl-], a                                   ; $69bf: $32
    dec de                                        ; $69c0: $1b
    inc e                                         ; $69c1: $1c
    inc sp                                        ; $69c2: $33
    ld e, d                                       ; $69c3: $5a
    ld e, e                                       ; $69c4: $5b
    daa                                           ; $69c5: $27

jr_07b_69c6:
    dec b                                         ; $69c6: $05
    dec b                                         ; $69c7: $05
    dec c                                         ; $69c8: $0d
    dec b                                         ; $69c9: $05
    dec b                                         ; $69ca: $05
    dec b                                         ; $69cb: $05
    dec b                                         ; $69cc: $05
    dec b                                         ; $69cd: $05
    dec b                                         ; $69ce: $05
    dec b                                         ; $69cf: $05
    dec b                                         ; $69d0: $05
    dec b                                         ; $69d1: $05
    dec b                                         ; $69d2: $05
    dec b                                         ; $69d3: $05

jr_07b_69d4:
    dec b                                         ; $69d4: $05

jr_07b_69d5:
    dec c                                         ; $69d5: $0d
    jr c, jr_07b_69d5                             ; $69d6: $38 $fd

    inc b                                         ; $69d8: $04
    dec b                                         ; $69d9: $05
    add hl, de                                    ; $69da: $19
    ld a, [de]                                    ; $69db: $1a
    daa                                           ; $69dc: $27
    jr z, @+$1f                                   ; $69dd: $28 $1d

    ld e, $3d                                     ; $69df: $1e $3d
    ld a, $81                                     ; $69e1: $3e $81
    jr z, jr_07b_6a24                             ; $69e3: $28 $3f

    ld b, b                                       ; $69e5: $40
    dec b                                         ; $69e6: $05
    dec b                                         ; $69e7: $05

jr_07b_69e8:
    dec b                                         ; $69e8: $05
    dec b                                         ; $69e9: $05
    dec b                                         ; $69ea: $05
    dec b                                         ; $69eb: $05
    ld [bc], a                                    ; $69ec: $02
    ld [bc], a                                    ; $69ed: $02
    dec b                                         ; $69ee: $05
    ld [bc], a                                    ; $69ef: $02
    dec b                                         ; $69f0: $05
    ld [bc], a                                    ; $69f1: $02
    dec c                                         ; $69f2: $0d
    dec c                                         ; $69f3: $0d
    ld [bc], a                                    ; $69f4: $02
    ld [bc], a                                    ; $69f5: $02
    pop de                                        ; $69f6: $d1
    ld d, $38                                     ; $69f7: $16 $38
    db $fd                                        ; $69f9: $fd
    pop de                                        ; $69fa: $d1
    jp nc, $1a19                                  ; $69fb: $d2 $19 $1a

    pop de                                        ; $69fe: $d1
    pop af                                        ; $69ff: $f1
    add hl, hl                                    ; $6a00: $29
    add c                                         ; $6a01: $81
    pop de                                        ; $6a02: $d1
    ld a, [c]                                     ; $6a03: $f2
    ld l, d                                       ; $6a04: $6a
    add d                                         ; $6a05: $82
    inc b                                         ; $6a06: $04
    ld b, $02                                     ; $6a07: $06 $02
    ld [bc], a                                    ; $6a09: $02
    inc b                                         ; $6a0a: $04
    inc h                                         ; $6a0b: $24
    ld [bc], a                                    ; $6a0c: $02
    ld bc, $2704                                  ; $6a0d: $01 $04 $27
    ld a, [bc]                                    ; $6a10: $0a
    add hl, bc                                    ; $6a11: $09
    inc b                                         ; $6a12: $04
    ld h, $02                                     ; $6a13: $26 $02
    add hl, bc                                    ; $6a15: $09
    inc b                                         ; $6a16: $04
    dec b                                         ; $6a17: $05
    ld e, b                                       ; $6a18: $58
    ld e, c                                       ; $6a19: $59
    daa                                           ; $6a1a: $27
    jr z, @+$19                                   ; $6a1b: $28 $17

    jr jr_07b_6a48                                ; $6a1d: $18 $29

    ld [hl-], a                                   ; $6a1f: $32
    dec de                                        ; $6a20: $1b
    inc e                                         ; $6a21: $1c
    inc sp                                        ; $6a22: $33
    inc [hl]                                      ; $6a23: $34

jr_07b_6a24:
    rra                                           ; $6a24: $1f
    jr nz, @+$03                                  ; $6a25: $20 $01

    ld bc, $0203                                  ; $6a27: $01 $03 $02
    ld bc, $0101                                  ; $6a2a: $01 $01 $01
    ld [bc], a                                    ; $6a2d: $02
    ld bc, $0103                                  ; $6a2e: $01 $03 $01
    ld [bc], a                                    ; $6a31: $02
    inc bc                                        ; $6a32: $03
    ld bc, $0203                                  ; $6a33: $01 $03 $02
    pop af                                        ; $6a36: $f1
    pop de                                        ; $6a37: $d1
    pop de                                        ; $6a38: $d1
    pop de                                        ; $6a39: $d1
    ld a, [c]                                     ; $6a3a: $f2
    pop de                                        ; $6a3b: $d1
    pop de                                        ; $6a3c: $d1
    pop de                                        ; $6a3d: $d1
    di                                            ; $6a3e: $f3
    pop de                                        ; $6a3f: $d1
    pop de                                        ; $6a40: $d1
    pop de                                        ; $6a41: $d1
    push de                                       ; $6a42: $d5
    call nc, $4d4c                                ; $6a43: $d4 $4c $4d
    ld b, $04                                     ; $6a46: $06 $04

jr_07b_6a48:
    inc b                                         ; $6a48: $04
    inc b                                         ; $6a49: $04
    inc b                                         ; $6a4a: $04
    inc b                                         ; $6a4b: $04
    inc b                                         ; $6a4c: $04
    inc b                                         ; $6a4d: $04
    ld b, $04                                     ; $6a4e: $06 $04
    inc b                                         ; $6a50: $04
    inc b                                         ; $6a51: $04
    inc h                                         ; $6a52: $24
    ld h, $06                                     ; $6a53: $26 $06
    inc b                                         ; $6a55: $04
    pop de                                        ; $6a56: $d1
    di                                            ; $6a57: $f3
    ld l, e                                       ; $6a58: $6b
    ld h, $d1                                     ; $6a59: $26 $d1
    db $f4                                        ; $6a5b: $f4
    ld c, $35                                     ; $6a5c: $0e $35
    call nc, $38d5                                ; $6a5e: $d4 $d5 $38
    db $fd                                        ; $6a61: $fd
    rst $10                                       ; $6a62: $d7
    ret c                                         ; $6a63: $d8

Jump_07b_6a64:
    add hl, de                                    ; $6a64: $19
    ld a, [de]                                    ; $6a65: $1a
    inc b                                         ; $6a66: $04
    inc h                                         ; $6a67: $24
    ld [bc], a                                    ; $6a68: $02
    ld bc, $0604                                  ; $6a69: $01 $04 $06
    ld [bc], a                                    ; $6a6c: $02
    inc bc                                        ; $6a6d: $03
    inc b                                         ; $6a6e: $04
    rlca                                          ; $6a6f: $07
    ld [bc], a                                    ; $6a70: $02
    inc bc                                        ; $6a71: $03
    inc b                                         ; $6a72: $04
    inc b                                         ; $6a73: $04
    ld [bc], a                                    ; $6a74: $02
    ld bc, $2f2e                                  ; $6a75: $01 $2e $2f
    inc hl                                        ; $6a78: $23
    inc h                                         ; $6a79: $24
    inc a                                         ; $6a7a: $3c
    dec hl                                        ; $6a7b: $2b
    inc l                                         ; $6a7c: $2c
    and c                                         ; $6a7d: $a1
    inc b                                         ; $6a7e: $04
    dec b                                         ; $6a7f: $05
    ld e, b                                       ; $6a80: $58
    ld e, c                                       ; $6a81: $59
    daa                                           ; $6a82: $27
    jr z, @+$19                                   ; $6a83: $28 $17

    jr @+$03                                      ; $6a85: $18 $01

    ld bc, $0201                                  ; $6a87: $01 $01 $02
    ld bc, $0301                                  ; $6a8a: $01 $01 $03
    ld a, [bc]                                    ; $6a8d: $0a
    ld bc, $0103                                  ; $6a8e: $01 $03 $01
    ld [bc], a                                    ; $6a91: $02
    ld bc, $0301                                  ; $6a92: $01 $01 $03
    ld [bc], a                                    ; $6a95: $02
    ret c                                         ; $6a96: $d8

    rst $10                                       ; $6a97: $d7
    ld c, [hl]                                    ; $6a98: $4e
    ld c, a                                       ; $6a99: $4f
    pop hl                                        ; $6a9a: $e1
    ldh [$50], a                                  ; $6a9b: $e0 $50
    ld d, c                                       ; $6a9d: $51
    or $f5                                        ; $6a9e: $f6 $f5
    ld d, d                                       ; $6aa0: $52
    ld d, e                                       ; $6aa1: $53
    ld sp, hl                                     ; $6aa2: $f9
    ld hl, sp+$54                                 ; $6aa3: $f8 $54
    ld d, l                                       ; $6aa5: $55
    daa                                           ; $6aa6: $27
    ld h, $06                                     ; $6aa7: $26 $06
    inc b                                         ; $6aa9: $04
    inc h                                         ; $6aaa: $24
    inc h                                         ; $6aab: $24
    rlca                                          ; $6aac: $07
    ld b, $27                                     ; $6aad: $06 $27
    ld h, $04                                     ; $6aaf: $26 $04
    rlca                                          ; $6ab1: $07
    ld h, $26                                     ; $6ab2: $26 $26
    rlca                                          ; $6ab4: $07
    inc b                                         ; $6ab5: $04
    push de                                       ; $6ab6: $d5
    call nc, Call_07b_4c4d                        ; $6ab7: $d4 $4d $4c
    ret c                                         ; $6aba: $d8

    rst $10                                       ; $6abb: $d7
    ld c, a                                       ; $6abc: $4f
    ld c, [hl]                                    ; $6abd: $4e
    pop hl                                        ; $6abe: $e1
    ldh [rHDMA1], a                               ; $6abf: $e0 $51
    ld d, b                                       ; $6ac1: $50
    or $f5                                        ; $6ac2: $f6 $f5
    ld d, e                                       ; $6ac4: $53
    ld d, d                                       ; $6ac5: $52
    inc h                                         ; $6ac6: $24
    ld h, $26                                     ; $6ac7: $26 $26
    inc h                                         ; $6ac9: $24
    inc h                                         ; $6aca: $24
    ld h, $24                                     ; $6acb: $26 $24
    inc h                                         ; $6acd: $24
    daa                                           ; $6ace: $27
    inc h                                         ; $6acf: $24
    daa                                           ; $6ad0: $27
    daa                                           ; $6ad1: $27
    inc h                                         ; $6ad2: $24
    daa                                           ; $6ad3: $27
    daa                                           ; $6ad4: $27
    daa                                           ; $6ad5: $27
    ldh [$e1], a                                  ; $6ad6: $e0 $e1
    dec e                                         ; $6ad8: $1d
    ld e, $f5                                     ; $6ad9: $1e $f5
    or $21                                        ; $6adb: $f6 $21
    rlca                                          ; $6add: $07
    ld hl, sp-$07                                 ; $6ade: $f8 $f9
    dec h                                         ; $6ae0: $25
    ld h, $fb                                     ; $6ae1: $26 $fb
    db $fc                                        ; $6ae3: $fc
    ld c, $35                                     ; $6ae4: $0e $35
    ld b, $07                                     ; $6ae6: $06 $07
    ld [bc], a                                    ; $6ae8: $02
    ld bc, $0604                                  ; $6ae9: $01 $04 $06
    ld [bc], a                                    ; $6aec: $02
    ld bc, $0707                                  ; $6aed: $01 $07 $07
    ld [bc], a                                    ; $6af0: $02
    ld bc, $0704                                  ; $6af1: $01 $04 $07
    ld [bc], a                                    ; $6af4: $02
    ld [bc], a                                    ; $6af5: $02
    add hl, hl                                    ; $6af6: $29
    ld a, [hl+]                                   ; $6af7: $2a
    dec de                                        ; $6af8: $1b
    inc e                                         ; $6af9: $1c
    ld [de], a                                    ; $6afa: $12
    inc de                                        ; $6afb: $13
    inc d                                         ; $6afc: $14
    dec hl                                        ; $6afd: $2b
    inc l                                         ; $6afe: $2c
    ld a, [hl-]                                   ; $6aff: $3a
    dec l                                         ; $6b00: $2d
    inc h                                         ; $6b01: $24
    inc a                                         ; $6b02: $3c
    ld de, $0302                                  ; $6b03: $11 $02 $03
    inc bc                                        ; $6b06: $03
    add hl, bc                                    ; $6b07: $09
    ld bc, $0102                                  ; $6b08: $01 $02 $01
    ld bc, $0a02                                  ; $6b0b: $01 $02 $0a
    add hl, bc                                    ; $6b0e: $09
    ld [bc], a                                    ; $6b0f: $02
    ld a, [bc]                                    ; $6b10: $0a
    ld [bc], a                                    ; $6b11: $02
    ld [bc], a                                    ; $6b12: $02
    ld [bc], a                                    ; $6b13: $02
    ld [bc], a                                    ; $6b14: $02
    ld [bc], a                                    ; $6b15: $02
    db $fc                                        ; $6b16: $fc
    ei                                            ; $6b17: $fb
    ld d, [hl]                                    ; $6b18: $56
    ld d, a                                       ; $6b19: $57
    ld hl, $3322                                  ; $6b1a: $21 $22 $33
    inc [hl]                                      ; $6b1d: $34
    dec h                                         ; $6b1e: $25
    ld h, $2e                                     ; $6b1f: $26 $2e
    cpl                                           ; $6b21: $2f
    ld c, $35                                     ; $6b22: $0e $35
    inc a                                         ; $6b24: $3c
    ld de, $2424                                  ; $6b25: $11 $24 $24
    inc b                                         ; $6b28: $04
    inc b                                         ; $6b29: $04
    ld [bc], a                                    ; $6b2a: $02
    dec b                                         ; $6b2b: $05
    dec b                                         ; $6b2c: $05
    dec b                                         ; $6b2d: $05
    ld [bc], a                                    ; $6b2e: $02
    ld [bc], a                                    ; $6b2f: $02
    ld [bc], a                                    ; $6b30: $02
    ld [bc], a                                    ; $6b31: $02
    ld [bc], a                                    ; $6b32: $02
    ld [bc], a                                    ; $6b33: $02
    ld [bc], a                                    ; $6b34: $02
    ld [bc], a                                    ; $6b35: $02
    ld sp, hl                                     ; $6b36: $f9
    ld hl, sp+$55                                 ; $6b37: $f8 $55
    ld d, h                                       ; $6b39: $54
    db $fc                                        ; $6b3a: $fc
    ei                                            ; $6b3b: $fb
    ld d, a                                       ; $6b3c: $57
    ld d, [hl]                                    ; $6b3d: $56
    inc hl                                        ; $6b3e: $23
    inc h                                         ; $6b3f: $24
    dec h                                         ; $6b40: $25
    ld h, $02                                     ; $6b41: $26 $02
    inc bc                                        ; $6b43: $03
    ld c, $35                                     ; $6b44: $0e $35
    inc h                                         ; $6b46: $24
    ld h, $26                                     ; $6b47: $26 $26
    inc h                                         ; $6b49: $24
    inc h                                         ; $6b4a: $24
    ld h, $24                                     ; $6b4b: $26 $24
    inc h                                         ; $6b4d: $24
    ld [bc], a                                    ; $6b4e: $02
    dec b                                         ; $6b4f: $05
    dec b                                         ; $6b50: $05
    dec b                                         ; $6b51: $05
    ld [bc], a                                    ; $6b52: $02
    ld [bc], a                                    ; $6b53: $02
    ld [bc], a                                    ; $6b54: $02
    ld [bc], a                                    ; $6b55: $02
    ld e, b                                       ; $6b56: $58
    ld e, c                                       ; $6b57: $59
    jr c, jr_07b_6b85                             ; $6b58: $38 $2b

    rla                                           ; $6b5a: $17
    jr jr_07b_6b76                                ; $6b5b: $18 $19

    ld a, [de]                                    ; $6b5d: $1a
    ld b, l                                       ; $6b5e: $45
    inc e                                         ; $6b5f: $1c
    dec e                                         ; $6b60: $1d
    ld e, $47                                     ; $6b61: $1e $47
    jr nz, @+$23                                  ; $6b63: $20 $21

    ld [hl+], a                                   ; $6b65: $22
    dec b                                         ; $6b66: $05
    dec b                                         ; $6b67: $05
    ld [bc], a                                    ; $6b68: $02
    ld [bc], a                                    ; $6b69: $02
    ld [bc], a                                    ; $6b6a: $02
    ld [bc], a                                    ; $6b6b: $02
    ld [bc], a                                    ; $6b6c: $02
    ld [bc], a                                    ; $6b6d: $02
    ld [bc], a                                    ; $6b6e: $02
    ld [bc], a                                    ; $6b6f: $02
    ld [bc], a                                    ; $6b70: $02
    ld [bc], a                                    ; $6b71: $02
    dec b                                         ; $6b72: $05
    ld [bc], a                                    ; $6b73: $02
    ld [bc], a                                    ; $6b74: $02
    ld [bc], a                                    ; $6b75: $02

jr_07b_6b76:
    inc l                                         ; $6b76: $2c
    dec d                                         ; $6b77: $15
    ld e, b                                       ; $6b78: $58
    ld e, c                                       ; $6b79: $59
    daa                                           ; $6b7a: $27
    jr z, jr_07b_6b94                             ; $6b7b: $28 $17

    jr jr_07b_6ba8                                ; $6b7d: $18 $29

    ld [hl-], a                                   ; $6b7f: $32
    dec de                                        ; $6b80: $1b
    inc e                                         ; $6b81: $1c
    inc sp                                        ; $6b82: $33
    inc [hl]                                      ; $6b83: $34
    rra                                           ; $6b84: $1f

jr_07b_6b85:
    jr nz, jr_07b_6b89                            ; $6b85: $20 $02

    ld [bc], a                                    ; $6b87: $02
    ld [bc], a                                    ; $6b88: $02

jr_07b_6b89:
    ld [bc], a                                    ; $6b89: $02
    ld [bc], a                                    ; $6b8a: $02
    ld [bc], a                                    ; $6b8b: $02
    ld [bc], a                                    ; $6b8c: $02
    ld [bc], a                                    ; $6b8d: $02
    ld [bc], a                                    ; $6b8e: $02
    ld [bc], a                                    ; $6b8f: $02
    ld [bc], a                                    ; $6b90: $02
    ld [bc], a                                    ; $6b91: $02
    ld [bc], a                                    ; $6b92: $02
    ld [bc], a                                    ; $6b93: $02

jr_07b_6b94:
    ld [bc], a                                    ; $6b94: $02
    ld [bc], a                                    ; $6b95: $02
    jr c, @+$5c                                   ; $6b96: $38 $5a

    ld e, e                                       ; $6b98: $5b
    ld l, $2f                                     ; $6b99: $2e $2f
    ld h, e                                       ; $6b9b: $63
    ld h, h                                       ; $6b9c: $64
    ld l, d                                       ; $6b9d: $6a
    jr nc, jr_07b_6c06                            ; $6b9e: $30 $66

    add e                                         ; $6ba0: $83
    ld l, e                                       ; $6ba1: $6b
    ld b, c                                       ; $6ba2: $41
    ld b, d                                       ; $6ba3: $42
    ld b, h                                       ; $6ba4: $44
    ld c, b                                       ; $6ba5: $48
    ld [bc], a                                    ; $6ba6: $02
    ld [bc], a                                    ; $6ba7: $02

jr_07b_6ba8:
    ld [bc], a                                    ; $6ba8: $02
    ld a, [bc]                                    ; $6ba9: $0a
    ld a, [bc]                                    ; $6baa: $0a
    ld [bc], a                                    ; $6bab: $02
    ld [bc], a                                    ; $6bac: $02
    ld [bc], a                                    ; $6bad: $02
    ld a, [bc]                                    ; $6bae: $0a
    ld [bc], a                                    ; $6baf: $02
    ld a, [bc]                                    ; $6bb0: $0a
    ld [bc], a                                    ; $6bb1: $02
    add h                                         ; $6bb2: $84
    add [hl]                                      ; $6bb3: $86
    add [hl]                                      ; $6bb4: $86
    add a                                         ; $6bb5: $87
    add c                                         ; $6bb6: $81
    ld sp, $fd38                                  ; $6bb7: $31 $38 $fd
    add d                                         ; $6bba: $82
    jr jr_07b_6bd6                                ; $6bbb: $18 $19

    ld a, [de]                                    ; $6bbd: $1a
    ld b, c                                       ; $6bbe: $41
    ld b, d                                       ; $6bbf: $42
    ld b, h                                       ; $6bc0: $44
    ld c, b                                       ; $6bc1: $48
    ld c, c                                       ; $6bc2: $49
    pop de                                        ; $6bc3: $d1
    pop de                                        ; $6bc4: $d1
    pop de                                        ; $6bc5: $d1
    ld a, [bc]                                    ; $6bc6: $0a
    ld a, [bc]                                    ; $6bc7: $0a
    ld [bc], a                                    ; $6bc8: $02
    ld [bc], a                                    ; $6bc9: $02
    ld a, [bc]                                    ; $6bca: $0a
    ld [bc], a                                    ; $6bcb: $02
    ld [bc], a                                    ; $6bcc: $02
    ld [bc], a                                    ; $6bcd: $02
    add h                                         ; $6bce: $84
    add a                                         ; $6bcf: $87
    add [hl]                                      ; $6bd0: $86
    add [hl]                                      ; $6bd1: $86
    add h                                         ; $6bd2: $84
    add h                                         ; $6bd3: $84
    add h                                         ; $6bd4: $84
    add h                                         ; $6bd5: $84

jr_07b_6bd6:
    pop de                                        ; $6bd6: $d1
    di                                            ; $6bd7: $f3
    adc b                                         ; $6bd8: $88
    adc c                                         ; $6bd9: $89
    pop de                                        ; $6bda: $d1
    db $f4                                        ; $6bdb: $f4
    inc de                                        ; $6bdc: $13
    inc d                                         ; $6bdd: $14
    pop de                                        ; $6bde: $d1
    ld d, $31                                     ; $6bdf: $16 $31
    ld [hl], h                                    ; $6be1: $74
    pop de                                        ; $6be2: $d1
    jp nc, Jump_07b_7719                          ; $6be3: $d2 $19 $77

    add h                                         ; $6be6: $84
    and h                                         ; $6be7: $a4
    ld a, [bc]                                    ; $6be8: $0a
    ld a, [bc]                                    ; $6be9: $0a
    add h                                         ; $6bea: $84
    add [hl]                                      ; $6beb: $86
    ld [bc], a                                    ; $6bec: $02
    ld bc, $8684                                  ; $6bed: $01 $84 $86
    ld [bc], a                                    ; $6bf0: $02
    ld bc, $a784                                  ; $6bf1: $01 $84 $a7
    ld [bc], a                                    ; $6bf4: $02
    ld bc, $8a2e                                  ; $6bf5: $01 $2e $8a
    inc hl                                        ; $6bf8: $23
    di                                            ; $6bf9: $f3
    adc e                                         ; $6bfa: $8b
    adc h                                         ; $6bfb: $8c
    adc [hl]                                      ; $6bfc: $8e
    db $f4                                        ; $6bfd: $f4
    ld [hl], l                                    ; $6bfe: $75
    halt                                          ; $6bff: $76
    ld l, l                                       ; $6c00: $6d
    push de                                       ; $6c01: $d5
    daa                                           ; $6c02: $27
    ld a, b                                       ; $6c03: $78
    rla                                           ; $6c04: $17
    ret c                                         ; $6c05: $d8

jr_07b_6c06:
    ld bc, $0209                                  ; $6c06: $01 $09 $02
    rlca                                          ; $6c09: $07
    add hl, bc                                    ; $6c0a: $09
    dec bc                                        ; $6c0b: $0b
    ld a, [bc]                                    ; $6c0c: $0a
    inc h                                         ; $6c0d: $24
    ld [bc], a                                    ; $6c0e: $02
    inc bc                                        ; $6c0f: $03
    ld [bc], a                                    ; $6c10: $02
    ld h, $01                                     ; $6c11: $26 $01
    ld bc, $2702                                  ; $6c13: $01 $02 $27
    pop de                                        ; $6c16: $d1
    pop de                                        ; $6c17: $d1
    pop de                                        ; $6c18: $d1
    pop de                                        ; $6c19: $d1
    pop de                                        ; $6c1a: $d1
    pop de                                        ; $6c1b: $d1
    pop de                                        ; $6c1c: $d1
    pop de                                        ; $6c1d: $d1
    call nc, Call_07b_4ce6                        ; $6c1e: $d4 $e6 $4c
    ld c, l                                       ; $6c21: $4d
    rst $10                                       ; $6c22: $d7
    jp hl                                         ; $6c23: $e9


    ld c, [hl]                                    ; $6c24: $4e
    ld c, a                                       ; $6c25: $4f
    inc b                                         ; $6c26: $04
    inc b                                         ; $6c27: $04
    inc b                                         ; $6c28: $04
    inc b                                         ; $6c29: $04
    inc b                                         ; $6c2a: $04
    inc b                                         ; $6c2b: $04
    inc b                                         ; $6c2c: $04
    inc b                                         ; $6c2d: $04
    inc h                                         ; $6c2e: $24
    ld b, $04                                     ; $6c2f: $06 $04
    inc b                                         ; $6c31: $04
    ld h, $06                                     ; $6c32: $26 $06
    ld b, $06                                     ; $6c34: $06 $06
    pop de                                        ; $6c36: $d1
    pop de                                        ; $6c37: $d1
    pop de                                        ; $6c38: $d1
    pop de                                        ; $6c39: $d1
    ld a, [c]                                     ; $6c3a: $f2
    pop de                                        ; $6c3b: $d1
    pop de                                        ; $6c3c: $d1
    pop de                                        ; $6c3d: $d1
    di                                            ; $6c3e: $f3
    pop de                                        ; $6c3f: $d1
    pop de                                        ; $6c40: $d1
    pop de                                        ; $6c41: $d1
    db $f4                                        ; $6c42: $f4
    pop de                                        ; $6c43: $d1
    pop de                                        ; $6c44: $d1
    pop de                                        ; $6c45: $d1
    inc b                                         ; $6c46: $04
    inc b                                         ; $6c47: $04
    inc b                                         ; $6c48: $04
    inc b                                         ; $6c49: $04
    inc b                                         ; $6c4a: $04
    inc b                                         ; $6c4b: $04
    inc b                                         ; $6c4c: $04
    inc b                                         ; $6c4d: $04
    inc b                                         ; $6c4e: $04
    inc b                                         ; $6c4f: $04
    inc b                                         ; $6c50: $04
    inc b                                         ; $6c51: $04
    ld h, $04                                     ; $6c52: $26 $04
    inc b                                         ; $6c54: $04
    inc b                                         ; $6c55: $04
    pop de                                        ; $6c56: $d1
    pop af                                        ; $6c57: $f1
    ld a, c                                       ; $6c58: $79
    ld e, $d1                                     ; $6c59: $1e $d1
    ld a, [c]                                     ; $6c5b: $f2
    ld hl, $d122                                  ; $6c5c: $21 $22 $d1
    di                                            ; $6c5f: $f3
    dec h                                         ; $6c60: $25
    adc l                                         ; $6c61: $8d
    pop de                                        ; $6c62: $d1
    db $f4                                        ; $6c63: $f4
    ld c, $35                                     ; $6c64: $0e $35
    add h                                         ; $6c66: $84
    and h                                         ; $6c67: $a4
    ld [bc], a                                    ; $6c68: $02
    inc bc                                        ; $6c69: $03
    add h                                         ; $6c6a: $84
    and a                                         ; $6c6b: $a7
    ld [bc], a                                    ; $6c6c: $02
    ld bc, $a784                                  ; $6c6d: $01 $84 $a7
    ld [bc], a                                    ; $6c70: $02
    ld a, [bc]                                    ; $6c71: $0a
    add h                                         ; $6c72: $84
    add h                                         ; $6c73: $84
    ld [bc], a                                    ; $6c74: $02
    ld bc, $327a                                  ; $6c75: $01 $7a $32
    ld e, [hl]                                    ; $6c78: $5e
    pop hl                                        ; $6c79: $e1
    di                                            ; $6c7a: $f3
    add l                                         ; $6c7b: $85
    add [hl]                                      ; $6c7c: $86
    or $2e                                        ; $6c7d: $f6 $2e
    rla                                           ; $6c7f: $17
    inc hl                                        ; $6c80: $23
    ld sp, hl                                     ; $6c81: $f9
    adc e                                         ; $6c82: $8b
    adc h                                         ; $6c83: $8c
    adc [hl]                                      ; $6c84: $8e
    db $fc                                        ; $6c85: $fc
    ld bc, $0203                                  ; $6c86: $01 $03 $02
    ld h, $0a                                     ; $6c89: $26 $0a
    add hl, bc                                    ; $6c8b: $09
    ld a, [bc]                                    ; $6c8c: $0a
    inc h                                         ; $6c8d: $24
    ld bc, $0209                                  ; $6c8e: $01 $09 $02
    daa                                           ; $6c91: $27
    dec bc                                        ; $6c92: $0b
    add hl, bc                                    ; $6c93: $09
    ld a, [bc]                                    ; $6c94: $0a
    inc h                                         ; $6c95: $24
    ldh [$ec], a                                  ; $6c96: $e0 $ec
    ld d, b                                       ; $6c98: $50
    ld d, c                                       ; $6c99: $51
    push af                                       ; $6c9a: $f5
    ldh a, [rHDMA2]                               ; $6c9b: $f0 $52
    ld d, e                                       ; $6c9d: $53
    ld hl, sp+$0a                                 ; $6c9e: $f8 $0a
    ld d, h                                       ; $6ca0: $54
    ld d, l                                       ; $6ca1: $55
    ei                                            ; $6ca2: $fb
    dec c                                         ; $6ca3: $0d
    ld d, [hl]                                    ; $6ca4: $56
    ld d, a                                       ; $6ca5: $57
    ld h, $04                                     ; $6ca6: $26 $04
    rlca                                          ; $6ca8: $07
    ld b, $26                                     ; $6ca9: $06 $26
    rlca                                          ; $6cab: $07
    rlca                                          ; $6cac: $07
    ld b, $24                                     ; $6cad: $06 $24
    ld b, $04                                     ; $6caf: $06 $04
    inc b                                         ; $6cb1: $04
    inc h                                         ; $6cb2: $24
    ld b, $04                                     ; $6cb3: $06 $04
    rlca                                          ; $6cb5: $07
    ld d, $d1                                     ; $6cb6: $16 $d1
    pop de                                        ; $6cb8: $d1
    pop de                                        ; $6cb9: $d1
    jp nc, $d1d1                                  ; $6cba: $d2 $d1 $d1

    pop de                                        ; $6cbd: $d1
    pop af                                        ; $6cbe: $f1
    pop de                                        ; $6cbf: $d1
    pop de                                        ; $6cc0: $d1
    pop de                                        ; $6cc1: $d1
    ld a, [c]                                     ; $6cc2: $f2
    pop de                                        ; $6cc3: $d1
    pop de                                        ; $6cc4: $d1
    pop de                                        ; $6cc5: $d1
    and a                                         ; $6cc6: $a7
    add h                                         ; $6cc7: $84
    inc b                                         ; $6cc8: $04
    inc b                                         ; $6cc9: $04
    add h                                         ; $6cca: $84
    add h                                         ; $6ccb: $84
    inc b                                         ; $6ccc: $04
    inc b                                         ; $6ccd: $04
    add [hl]                                      ; $6cce: $86
    add h                                         ; $6ccf: $84
    inc b                                         ; $6cd0: $04
    inc b                                         ; $6cd1: $04
    add h                                         ; $6cd2: $84
    add h                                         ; $6cd3: $84
    inc b                                         ; $6cd4: $04
    inc b                                         ; $6cd5: $04
    pop de                                        ; $6cd6: $d1
    ld d, $7d                                     ; $6cd7: $16 $7d
    ld e, d                                       ; $6cd9: $5a
    pop de                                        ; $6cda: $d1
    jp nc, $632f                                  ; $6cdb: $d2 $2f $63

    pop de                                        ; $6cde: $d1
    pop af                                        ; $6cdf: $f1
    jr nc, jr_07b_6d48                            ; $6ce0: $30 $66

    pop de                                        ; $6ce2: $d1
    ld a, [c]                                     ; $6ce3: $f2
    ld hl, $8422                                  ; $6ce4: $21 $22 $84
    add a                                         ; $6ce7: $87
    ld [bc], a                                    ; $6ce8: $02
    ld bc, $a784                                  ; $6ce9: $01 $84 $a7
    ld a, [bc]                                    ; $6cec: $0a
    ld [bc], a                                    ; $6ced: $02
    add h                                         ; $6cee: $84
    and [hl]                                      ; $6cef: $a6
    ld a, [bc]                                    ; $6cf0: $0a
    inc bc                                        ; $6cf1: $03
    add h                                         ; $6cf2: $84
    and a                                         ; $6cf3: $a7
    ld [bc], a                                    ; $6cf4: $02
    inc bc                                        ; $6cf5: $03
    ld e, e                                       ; $6cf6: $5b
    ld l, $81                                     ; $6cf7: $2e $81
    ld sp, $6a64                                  ; $6cf9: $31 $64 $6a
    add d                                         ; $6cfc: $82
    ld e, l                                       ; $6cfd: $5d
    add e                                         ; $6cfe: $83
    ld l, e                                       ; $6cff: $6b
    ld e, [hl]                                    ; $6d00: $5e
    ld e, a                                       ; $6d01: $5f
    ld a, e                                       ; $6d02: $7b
    ld a, h                                       ; $6d03: $7c
    ld h, b                                       ; $6d04: $60
    ld h, c                                       ; $6d05: $61
    ld bc, $090a                                  ; $6d06: $01 $0a $09
    ld a, [bc]                                    ; $6d09: $0a
    ld bc, $0901                                  ; $6d0a: $01 $01 $09
    ld bc, $0109                                  ; $6d0d: $01 $09 $01
    inc bc                                        ; $6d10: $03
    inc bc                                        ; $6d11: $03
    ld bc, $0102                                  ; $6d12: $01 $02 $01
    ld bc, $747d                                  ; $6d15: $01 $7d $74
    ld [hl], l                                    ; $6d18: $75
    halt                                          ; $6d19: $76
    add hl, de                                    ; $6d1a: $19
    ld [hl], a                                    ; $6d1b: $77
    daa                                           ; $6d1c: $27
    ld a, b                                       ; $6d1d: $78
    ld a, c                                       ; $6d1e: $79
    ld e, $7a                                     ; $6d1f: $1e $7a
    ld [hl-], a                                   ; $6d21: $32
    ld hl, $7b22                                  ; $6d22: $21 $22 $7b
    ld a, h                                       ; $6d25: $7c
    dec b                                         ; $6d26: $05
    dec b                                         ; $6d27: $05
    dec b                                         ; $6d28: $05
    dec b                                         ; $6d29: $05
    ld [bc], a                                    ; $6d2a: $02
    ld [bc], a                                    ; $6d2b: $02
    ld [bc], a                                    ; $6d2c: $02
    ld [bc], a                                    ; $6d2d: $02
    ld bc, $0101                                  ; $6d2e: $01 $01 $01
    inc bc                                        ; $6d31: $03
    ld bc, $0102                                  ; $6d32: $01 $02 $01
    ld bc, $d1f3                                  ; $6d35: $01 $f3 $d1
    pop de                                        ; $6d38: $d1
    pop de                                        ; $6d39: $d1
    db $f4                                        ; $6d3a: $f4
    pop de                                        ; $6d3b: $d1
    pop de                                        ; $6d3c: $d1
    pop de                                        ; $6d3d: $d1
    ld c, c                                       ; $6d3e: $49
    pop de                                        ; $6d3f: $d1
    pop de                                        ; $6d40: $d1
    pop de                                        ; $6d41: $d1
    pop de                                        ; $6d42: $d1
    pop de                                        ; $6d43: $d1
    pop de                                        ; $6d44: $d1
    pop de                                        ; $6d45: $d1
    add a                                         ; $6d46: $87
    add h                                         ; $6d47: $84

jr_07b_6d48:
    inc b                                         ; $6d48: $04
    inc b                                         ; $6d49: $04
    and [hl]                                      ; $6d4a: $a6
    add h                                         ; $6d4b: $84
    inc b                                         ; $6d4c: $04
    inc b                                         ; $6d4d: $04
    add h                                         ; $6d4e: $84
    add h                                         ; $6d4f: $84
    inc b                                         ; $6d50: $04
    inc b                                         ; $6d51: $04
    add h                                         ; $6d52: $84
    add h                                         ; $6d53: $84
    inc b                                         ; $6d54: $04
    inc b                                         ; $6d55: $04
    pop de                                        ; $6d56: $d1
    di                                            ; $6d57: $f3
    dec h                                         ; $6d58: $25
    adc l                                         ; $6d59: $8d
    pop de                                        ; $6d5a: $d1
    db $f4                                        ; $6d5b: $f4
    ld c, $35                                     ; $6d5c: $0e $35
    pop de                                        ; $6d5e: $d1
    ld l, c                                       ; $6d5f: $69
    ld b, d                                       ; $6d60: $42
    ld b, h                                       ; $6d61: $44
    pop de                                        ; $6d62: $d1
    pop de                                        ; $6d63: $d1
    pop de                                        ; $6d64: $d1
    pop de                                        ; $6d65: $d1
    add h                                         ; $6d66: $84
    and [hl]                                      ; $6d67: $a6
    ld [bc], a                                    ; $6d68: $02
    add hl, bc                                    ; $6d69: $09
    add h                                         ; $6d6a: $84
    add a                                         ; $6d6b: $87
    ld [bc], a                                    ; $6d6c: $02
    ld [bc], a                                    ; $6d6d: $02
    add h                                         ; $6d6e: $84
    and [hl]                                      ; $6d6f: $a6
    add h                                         ; $6d70: $84
    add a                                         ; $6d71: $87
    add h                                         ; $6d72: $84
    add h                                         ; $6d73: $84
    add h                                         ; $6d74: $84
    add h                                         ; $6d75: $84
    ld l, $8a                                     ; $6d76: $2e $8a
    inc hl                                        ; $6d78: $23
    ld l, h                                       ; $6d79: $6c
    adc e                                         ; $6d7a: $8b
    adc h                                         ; $6d7b: $8c
    adc [hl]                                      ; $6d7c: $8e
    adc a                                         ; $6d7d: $8f
    ld c, b                                       ; $6d7e: $48
    ld c, c                                       ; $6d7f: $49
    ld c, d                                       ; $6d80: $4a
    ld c, e                                       ; $6d81: $4b
    pop de                                        ; $6d82: $d1
    pop de                                        ; $6d83: $d1
    pop de                                        ; $6d84: $d1
    pop de                                        ; $6d85: $d1
    ld [bc], a                                    ; $6d86: $02
    dec bc                                        ; $6d87: $0b
    inc bc                                        ; $6d88: $03
    ld bc, $0b09                                  ; $6d89: $01 $09 $0b
    ld a, [bc]                                    ; $6d8c: $0a
    add hl, bc                                    ; $6d8d: $09
    add h                                         ; $6d8e: $84
    add [hl]                                      ; $6d8f: $86
    add h                                         ; $6d90: $84
    add h                                         ; $6d91: $84
    add h                                         ; $6d92: $84
    add h                                         ; $6d93: $84
    add h                                         ; $6d94: $84
    add h                                         ; $6d95: $84
    dec h                                         ; $6d96: $25
    adc l                                         ; $6d97: $8d
    ld l, $2f                                     ; $6d98: $2e $2f
    ld c, $32                                     ; $6d9a: $0e $32
    rlca                                          ; $6d9c: $07
    ld [de], a                                    ; $6d9d: $12
    ld l, b                                       ; $6d9e: $68
    ld l, c                                       ; $6d9f: $69
    ld b, d                                       ; $6da0: $42
    ld b, h                                       ; $6da1: $44
    pop de                                        ; $6da2: $d1
    pop de                                        ; $6da3: $d1
    pop de                                        ; $6da4: $d1
    pop de                                        ; $6da5: $d1
    inc bc                                        ; $6da6: $03
    dec bc                                        ; $6da7: $0b
    inc bc                                        ; $6da8: $03
    ld bc, $0902                                  ; $6da9: $01 $02 $09
    ld bc, $8401                                  ; $6dac: $01 $01 $84
    add a                                         ; $6daf: $87
    add [hl]                                      ; $6db0: $86
    add [hl]                                      ; $6db1: $86
    add h                                         ; $6db2: $84
    add h                                         ; $6db3: $84
    add h                                         ; $6db4: $84
    add h                                         ; $6db5: $84
    pop de                                        ; $6db6: $d1
    pop de                                        ; $6db7: $d1
    pop de                                        ; $6db8: $d1
    pop de                                        ; $6db9: $d1
    pop de                                        ; $6dba: $d1
    pop de                                        ; $6dbb: $d1
    pop de                                        ; $6dbc: $d1
    pop de                                        ; $6dbd: $d1
    jp c, $d3db                                   ; $6dbe: $da $db $d3

    db $e4                                        ; $6dc1: $e4
    call c, $d6dd                                 ; $6dc2: $dc $dd $d6
    ld l, [hl]                                    ; $6dc5: $6e
    inc b                                         ; $6dc6: $04
    inc b                                         ; $6dc7: $04
    inc b                                         ; $6dc8: $04
    inc b                                         ; $6dc9: $04
    inc b                                         ; $6dca: $04
    inc b                                         ; $6dcb: $04
    inc b                                         ; $6dcc: $04
    inc b                                         ; $6dcd: $04
    inc b                                         ; $6dce: $04
    inc b                                         ; $6dcf: $04
    rlca                                          ; $6dd0: $07
    inc b                                         ; $6dd1: $04
    inc b                                         ; $6dd2: $04
    rlca                                          ; $6dd3: $07
    rlca                                          ; $6dd4: $07
    inc b                                         ; $6dd5: $04
    pop de                                        ; $6dd6: $d1
    pop de                                        ; $6dd7: $d1
    pop de                                        ; $6dd8: $d1
    pop de                                        ; $6dd9: $d1
    pop de                                        ; $6dda: $d1
    pop de                                        ; $6ddb: $d1
    pop de                                        ; $6ddc: $d1
    pop de                                        ; $6ddd: $d1
    push hl                                       ; $6dde: $e5
    and $4c                                       ; $6ddf: $e6 $4c
    ld c, l                                       ; $6de1: $4d
    ld l, a                                       ; $6de2: $6f
    jp hl                                         ; $6de3: $e9


    ld c, [hl]                                    ; $6de4: $4e
    ld c, a                                       ; $6de5: $4f
    inc b                                         ; $6de6: $04
    inc b                                         ; $6de7: $04
    inc b                                         ; $6de8: $04
    inc b                                         ; $6de9: $04
    inc b                                         ; $6dea: $04
    inc b                                         ; $6deb: $04
    inc b                                         ; $6dec: $04
    inc b                                         ; $6ded: $04
    inc b                                         ; $6dee: $04
    ld b, $04                                     ; $6def: $06 $04
    inc b                                         ; $6df1: $04
    inc b                                         ; $6df2: $04
    inc b                                         ; $6df3: $04
    inc b                                         ; $6df4: $04
    rlca                                          ; $6df5: $07
    pop de                                        ; $6df6: $d1
    pop de                                        ; $6df7: $d1
    pop de                                        ; $6df8: $d1
    pop de                                        ; $6df9: $d1
    pop de                                        ; $6dfa: $d1
    pop de                                        ; $6dfb: $d1
    pop de                                        ; $6dfc: $d1
    pop de                                        ; $6dfd: $d1
    jp c, $d3db                                   ; $6dfe: $da $db $d3

    db $e4                                        ; $6e01: $e4
    call c, $d6dd                                 ; $6e02: $dc $dd $d6
    ld l, [hl]                                    ; $6e05: $6e
    inc b                                         ; $6e06: $04
    inc b                                         ; $6e07: $04
    inc b                                         ; $6e08: $04
    inc b                                         ; $6e09: $04
    inc b                                         ; $6e0a: $04
    inc b                                         ; $6e0b: $04
    inc b                                         ; $6e0c: $04
    inc b                                         ; $6e0d: $04
    inc b                                         ; $6e0e: $04
    inc b                                         ; $6e0f: $04
    inc b                                         ; $6e10: $04
    inc b                                         ; $6e11: $04
    rlca                                          ; $6e12: $07
    rlca                                          ; $6e13: $07
    inc b                                         ; $6e14: $04
    inc b                                         ; $6e15: $04
    pop de                                        ; $6e16: $d1
    pop de                                        ; $6e17: $d1
    pop de                                        ; $6e18: $d1
    pop de                                        ; $6e19: $d1
    pop de                                        ; $6e1a: $d1
    pop de                                        ; $6e1b: $d1
    pop de                                        ; $6e1c: $d1
    pop de                                        ; $6e1d: $d1
    push hl                                       ; $6e1e: $e5
    and $4c                                       ; $6e1f: $e6 $4c
    ld c, l                                       ; $6e21: $4d
    ld l, a                                       ; $6e22: $6f
    jp hl                                         ; $6e23: $e9


    ld c, [hl]                                    ; $6e24: $4e
    ld c, a                                       ; $6e25: $4f
    inc b                                         ; $6e26: $04
    inc b                                         ; $6e27: $04
    inc b                                         ; $6e28: $04
    inc b                                         ; $6e29: $04
    inc b                                         ; $6e2a: $04
    inc b                                         ; $6e2b: $04
    inc b                                         ; $6e2c: $04
    inc b                                         ; $6e2d: $04
    inc b                                         ; $6e2e: $04
    inc b                                         ; $6e2f: $04
    inc b                                         ; $6e30: $04
    inc b                                         ; $6e31: $04
    ld b, $06                                     ; $6e32: $06 $06
    inc b                                         ; $6e34: $04
    rlca                                          ; $6e35: $07
    sbc $df                                       ; $6e36: $de $df
    reti                                          ; $6e38: $d9


    ld [hl], b                                    ; $6e39: $70
    ld [c], a                                     ; $6e3a: $e2
    db $e3                                        ; $6e3b: $e3
    db $ed                                        ; $6e3c: $ed
    ld [hl], d                                    ; $6e3d: $72
    cp $ff                                        ; $6e3e: $fe $ff
    rst $30                                       ; $6e40: $f7
    ld [$0100], sp                                ; $6e41: $08 $00 $01
    ld a, [$040b]                                 ; $6e44: $fa $0b $04
    rlca                                          ; $6e47: $07
    inc b                                         ; $6e48: $04
    rlca                                          ; $6e49: $07
    inc b                                         ; $6e4a: $04
    inc b                                         ; $6e4b: $04
    inc b                                         ; $6e4c: $04
    ld b, $04                                     ; $6e4d: $06 $04
    ld b, $06                                     ; $6e4f: $06 $06
    inc b                                         ; $6e51: $04
    rlca                                          ; $6e52: $07
    inc b                                         ; $6e53: $04
    inc b                                         ; $6e54: $04
    inc b                                         ; $6e55: $04
    ld [hl], c                                    ; $6e56: $71
    db $ec                                        ; $6e57: $ec
    ld d, b                                       ; $6e58: $50
    ld d, c                                       ; $6e59: $51
    ld [hl], e                                    ; $6e5a: $73
    ldh a, [rHDMA2]                               ; $6e5b: $f0 $52
    ld d, e                                       ; $6e5d: $53
    add hl, bc                                    ; $6e5e: $09
    ld a, [bc]                                    ; $6e5f: $0a
    ld d, h                                       ; $6e60: $54
    ld d, l                                       ; $6e61: $55
    inc c                                         ; $6e62: $0c
    dec c                                         ; $6e63: $0d
    ld d, [hl]                                    ; $6e64: $56
    ld d, a                                       ; $6e65: $57
    rlca                                          ; $6e66: $07
    rlca                                          ; $6e67: $07
    rlca                                          ; $6e68: $07
    rlca                                          ; $6e69: $07
    ld b, $07                                     ; $6e6a: $06 $07
    inc b                                         ; $6e6c: $04
    inc b                                         ; $6e6d: $04
    inc b                                         ; $6e6e: $04
    rlca                                          ; $6e6f: $07
    rlca                                          ; $6e70: $07
    rlca                                          ; $6e71: $07
    inc b                                         ; $6e72: $04
    inc b                                         ; $6e73: $04
    inc b                                         ; $6e74: $04
    inc b                                         ; $6e75: $04
    sbc $df                                       ; $6e76: $de $df
    reti                                          ; $6e78: $d9


    ld [hl], b                                    ; $6e79: $70
    ld [c], a                                     ; $6e7a: $e2
    db $e3                                        ; $6e7b: $e3
    db $ed                                        ; $6e7c: $ed
    ld [hl], d                                    ; $6e7d: $72
    cp $ff                                        ; $6e7e: $fe $ff
    rst $30                                       ; $6e80: $f7
    ld [$0100], sp                                ; $6e81: $08 $00 $01
    ld a, [$060b]                                 ; $6e84: $fa $0b $06
    rlca                                          ; $6e87: $07
    inc b                                         ; $6e88: $04
    inc b                                         ; $6e89: $04
    inc b                                         ; $6e8a: $04
    inc b                                         ; $6e8b: $04
    rlca                                          ; $6e8c: $07
    inc b                                         ; $6e8d: $04
    inc b                                         ; $6e8e: $04
    ld b, $04                                     ; $6e8f: $06 $04
    rlca                                          ; $6e91: $07
    inc b                                         ; $6e92: $04
    inc b                                         ; $6e93: $04
    ld b, $06                                     ; $6e94: $06 $06
    ld [hl], c                                    ; $6e96: $71
    db $ec                                        ; $6e97: $ec
    ld d, b                                       ; $6e98: $50
    ld d, c                                       ; $6e99: $51
    ld [hl], e                                    ; $6e9a: $73
    ldh a, [rHDMA2]                               ; $6e9b: $f0 $52
    ld d, e                                       ; $6e9d: $53
    add hl, bc                                    ; $6e9e: $09
    ld a, [bc]                                    ; $6e9f: $0a
    ld d, h                                       ; $6ea0: $54
    ld d, l                                       ; $6ea1: $55
    inc c                                         ; $6ea2: $0c
    dec c                                         ; $6ea3: $0d
    ld d, [hl]                                    ; $6ea4: $56
    ld d, a                                       ; $6ea5: $57
    ld b, $06                                     ; $6ea6: $06 $06
    inc b                                         ; $6ea8: $04
    ld b, $06                                     ; $6ea9: $06 $06
    ld b, $06                                     ; $6eab: $06 $06
    inc b                                         ; $6ead: $04
    inc b                                         ; $6eae: $04
    inc b                                         ; $6eaf: $04
    inc b                                         ; $6eb0: $04
    inc b                                         ; $6eb1: $04
    inc b                                         ; $6eb2: $04
    inc b                                         ; $6eb3: $04
    inc b                                         ; $6eb4: $04
    ld b, $6d                                     ; $6eb5: $06 $6d
    ld e, c                                       ; $6eb7: $59
    ld a, l                                       ; $6eb8: $7d
    ld [hl], h                                    ; $6eb9: $74
    rla                                           ; $6eba: $17
    ld e, l                                       ; $6ebb: $5d
    dec hl                                        ; $6ebc: $2b
    inc l                                         ; $6ebd: $2c
    ld e, [hl]                                    ; $6ebe: $5e
    ld e, a                                       ; $6ebf: $5f
    ld a, c                                       ; $6ec0: $79
    inc sp                                        ; $6ec1: $33
    ld h, b                                       ; $6ec2: $60
    ld h, c                                       ; $6ec3: $61
    ld hl, $0522                                  ; $6ec4: $21 $22 $05
    dec b                                         ; $6ec7: $05
    dec b                                         ; $6ec8: $05
    dec b                                         ; $6ec9: $05
    ld [bc], a                                    ; $6eca: $02
    ld [bc], a                                    ; $6ecb: $02
    ld [bc], a                                    ; $6ecc: $02
    ld [bc], a                                    ; $6ecd: $02
    ld bc, $0102                                  ; $6ece: $01 $02 $01
    add hl, bc                                    ; $6ed1: $09
    inc bc                                        ; $6ed2: $03
    ld bc, $0103                                  ; $6ed3: $01 $03 $01
    ld [hl], l                                    ; $6ed6: $75
    halt                                          ; $6ed7: $76
    ld l, l                                       ; $6ed8: $6d
    ld e, c                                       ; $6ed9: $59
    sub h                                         ; $6eda: $94
    ld a, b                                       ; $6edb: $78
    rla                                           ; $6edc: $17
    ld e, l                                       ; $6edd: $5d
    add l                                         ; $6ede: $85
    add [hl]                                      ; $6edf: $86
    add a                                         ; $6ee0: $87
    ld e, a                                       ; $6ee1: $5f
    inc [hl]                                      ; $6ee2: $34
    ld a, h                                       ; $6ee3: $7c
    ld h, b                                       ; $6ee4: $60
    ld h, c                                       ; $6ee5: $61
    dec b                                         ; $6ee6: $05
    dec b                                         ; $6ee7: $05
    dec b                                         ; $6ee8: $05
    dec b                                         ; $6ee9: $05
    ld a, [bc]                                    ; $6eea: $0a
    ld [bc], a                                    ; $6eeb: $02
    ld [bc], a                                    ; $6eec: $02
    ld [bc], a                                    ; $6eed: $02
    add hl, bc                                    ; $6eee: $09
    ld a, [bc]                                    ; $6eef: $0a
    add hl, bc                                    ; $6ef0: $09
    inc bc                                        ; $6ef1: $03
    ld a, [bc]                                    ; $6ef2: $0a
    ld bc, $0301                                  ; $6ef3: $01 $01 $03
    ld a, l                                       ; $6ef6: $7d
    ld [hl], h                                    ; $6ef7: $74
    ld [hl], l                                    ; $6ef8: $75
    halt                                          ; $6ef9: $76
    add hl, de                                    ; $6efa: $19
    ld [hl], a                                    ; $6efb: $77
    daa                                           ; $6efc: $27
    ld a, b                                       ; $6efd: $78
    ld a, c                                       ; $6efe: $79
    ld e, $5a                                     ; $6eff: $1e $5a
    ld e, e                                       ; $6f01: $5b
    ld hl, $63cf                                  ; $6f02: $21 $cf $63
    ld h, h                                       ; $6f05: $64
    dec b                                         ; $6f06: $05
    dec b                                         ; $6f07: $05
    dec b                                         ; $6f08: $05
    dec b                                         ; $6f09: $05
    ld [bc], a                                    ; $6f0a: $02
    ld [bc], a                                    ; $6f0b: $02
    ld [bc], a                                    ; $6f0c: $02
    ld [bc], a                                    ; $6f0d: $02
    inc bc                                        ; $6f0e: $03
    ld bc, $0101                                  ; $6f0f: $01 $01 $01
    inc bc                                        ; $6f12: $03
    dec bc                                        ; $6f13: $0b
    ld bc, $6d03                                  ; $6f14: $01 $03 $6d
    ld e, c                                       ; $6f17: $59
    ld a, l                                       ; $6f18: $7d
    ld [hl], h                                    ; $6f19: $74
    rla                                           ; $6f1a: $17
    ld e, l                                       ; $6f1b: $5d
    add hl, de                                    ; $6f1c: $19
    ld [hl], a                                    ; $6f1d: $77
    ld e, h                                       ; $6f1e: $5c
    add c                                         ; $6f1f: $81
    ld a, c                                       ; $6f20: $79
    ld e, $6a                                     ; $6f21: $1e $6a
    add d                                         ; $6f23: $82
    ld hl, $0522                                  ; $6f24: $21 $22 $05
    dec b                                         ; $6f27: $05
    dec b                                         ; $6f28: $05
    dec b                                         ; $6f29: $05
    ld [bc], a                                    ; $6f2a: $02
    ld [bc], a                                    ; $6f2b: $02
    ld [bc], a                                    ; $6f2c: $02
    ld [bc], a                                    ; $6f2d: $02
    ld bc, $030b                                  ; $6f2e: $01 $0b $03
    ld bc, $0901                                  ; $6f31: $01 $01 $09
    ld bc, $3501                                  ; $6f34: $01 $01 $35
    ld [hl], $25                                  ; $6f37: $36 $25
    adc l                                         ; $6f39: $8d
    inc de                                        ; $6f3a: $13
    inc d                                         ; $6f3b: $14
    ld c, $35                                     ; $6f3c: $0e $35
    ld c, b                                       ; $6f3e: $48
    ld c, c                                       ; $6f3f: $49
    ld c, d                                       ; $6f40: $4a
    ld c, e                                       ; $6f41: $4b
    pop de                                        ; $6f42: $d1
    pop de                                        ; $6f43: $d1
    pop de                                        ; $6f44: $d1
    pop de                                        ; $6f45: $d1
    dec bc                                        ; $6f46: $0b
    dec bc                                        ; $6f47: $0b
    inc bc                                        ; $6f48: $03
    add hl, bc                                    ; $6f49: $09
    ld bc, $0101                                  ; $6f4a: $01 $01 $01
    ld bc, $8687                                  ; $6f4d: $01 $87 $86
    add [hl]                                      ; $6f50: $86
    add a                                         ; $6f51: $87
    add h                                         ; $6f52: $84
    add h                                         ; $6f53: $84
    add h                                         ; $6f54: $84
    add h                                         ; $6f55: $84
    ld l, $8a                                     ; $6f56: $2e $8a
    inc hl                                        ; $6f58: $23
    ld l, h                                       ; $6f59: $6c
    adc e                                         ; $6f5a: $8b
    adc h                                         ; $6f5b: $8c
    adc [hl]                                      ; $6f5c: $8e
    adc a                                         ; $6f5d: $8f
    ld l, b                                       ; $6f5e: $68
    ld l, c                                       ; $6f5f: $69
    ld b, d                                       ; $6f60: $42
    ld b, h                                       ; $6f61: $44
    pop de                                        ; $6f62: $d1
    pop de                                        ; $6f63: $d1
    pop de                                        ; $6f64: $d1
    pop de                                        ; $6f65: $d1
    ld bc, $030b                                  ; $6f66: $01 $0b $03
    ld bc, $090b                                  ; $6f69: $01 $0b $09
    ld a, [bc]                                    ; $6f6c: $0a
    add hl, bc                                    ; $6f6d: $09
    add h                                         ; $6f6e: $84
    add h                                         ; $6f6f: $84
    add [hl]                                      ; $6f70: $86
    add h                                         ; $6f71: $84
    add h                                         ; $6f72: $84
    add h                                         ; $6f73: $84
    add h                                         ; $6f74: $84
    add h                                         ; $6f75: $84
    dec h                                         ; $6f76: $25
    scf                                           ; $6f77: $37
    ld h, [hl]                                    ; $6f78: $66
    jr c, jr_07b_6f89                             ; $6f79: $38 $0e

    ld b, c                                       ; $6f7b: $41
    ld l, c                                       ; $6f7c: $69
    ld b, d                                       ; $6f7d: $42
    ld c, b                                       ; $6f7e: $48
    ld c, c                                       ; $6f7f: $49
    pop de                                        ; $6f80: $d1
    pop de                                        ; $6f81: $d1
    pop de                                        ; $6f82: $d1
    pop de                                        ; $6f83: $d1
    pop de                                        ; $6f84: $d1
    pop de                                        ; $6f85: $d1
    ld bc, $0209                                  ; $6f86: $01 $09 $02

jr_07b_6f89:
    add hl, bc                                    ; $6f89: $09
    ld [bc], a                                    ; $6f8a: $02
    add h                                         ; $6f8b: $84
    add [hl]                                      ; $6f8c: $86
    add a                                         ; $6f8d: $87
    add a                                         ; $6f8e: $87
    add h                                         ; $6f8f: $84
    add h                                         ; $6f90: $84
    add h                                         ; $6f91: $84
    add h                                         ; $6f92: $84

jr_07b_6f93:
    add h                                         ; $6f93: $84
    inc b                                         ; $6f94: $04
    inc b                                         ; $6f95: $04
    ld l, e                                       ; $6f96: $6b
    ld l, h                                       ; $6f97: $6c
    dec h                                         ; $6f98: $25
    adc l                                         ; $6f99: $8d
    ld b, h                                       ; $6f9a: $44
    ld c, b                                       ; $6f9b: $48
    ld c, c                                       ; $6f9c: $49
    ld c, d                                       ; $6f9d: $4a
    pop de                                        ; $6f9e: $d1
    pop de                                        ; $6f9f: $d1
    pop de                                        ; $6fa0: $d1
    pop de                                        ; $6fa1: $d1
    pop de                                        ; $6fa2: $d1
    pop de                                        ; $6fa3: $d1
    pop de                                        ; $6fa4: $d1
    pop de                                        ; $6fa5: $d1
    ld [bc], a                                    ; $6fa6: $02
    ld bc, $0a01                                  ; $6fa7: $01 $01 $0a
    add h                                         ; $6faa: $84
    add h                                         ; $6fab: $84
    add a                                         ; $6fac: $87
    add h                                         ; $6fad: $84
    add h                                         ; $6fae: $84
    add h                                         ; $6faf: $84
    add h                                         ; $6fb0: $84
    add h                                         ; $6fb1: $84
    inc b                                         ; $6fb2: $04
    inc b                                         ; $6fb3: $04
    inc b                                         ; $6fb4: $04
    inc b                                         ; $6fb5: $04
    pop de                                        ; $6fb6: $d1
    di                                            ; $6fb7: $f3
    ld e, b                                       ; $6fb8: $58
    ld e, c                                       ; $6fb9: $59
    pop de                                        ; $6fba: $d1
    db $f4                                        ; $6fbb: $f4
    rla                                           ; $6fbc: $17
    jr jr_07b_6f93                                ; $6fbd: $18 $d4

    push de                                       ; $6fbf: $d5
    dec de                                        ; $6fc0: $1b
    inc e                                         ; $6fc1: $1c
    rst $10                                       ; $6fc2: $d7
    ret c                                         ; $6fc3: $d8

    rra                                           ; $6fc4: $1f
    jr nz, jr_07b_6fcb                            ; $6fc5: $20 $04

    daa                                           ; $6fc7: $27
    ld [bc], a                                    ; $6fc8: $02
    ld [bc], a                                    ; $6fc9: $02
    inc b                                         ; $6fca: $04

jr_07b_6fcb:
    inc b                                         ; $6fcb: $04
    ld [bc], a                                    ; $6fcc: $02
    ld [bc], a                                    ; $6fcd: $02
    inc b                                         ; $6fce: $04
    ld b, $02                                     ; $6fcf: $06 $02
    ld [bc], a                                    ; $6fd1: $02
    inc b                                         ; $6fd2: $04
    inc b                                         ; $6fd3: $04
    ld [bc], a                                    ; $6fd4: $02

jr_07b_6fd5:
    ld [bc], a                                    ; $6fd5: $02
    jr c, jr_07b_6fd5                             ; $6fd6: $38 $fd

    inc b                                         ; $6fd8: $04
    dec b                                         ; $6fd9: $05
    add hl, de                                    ; $6fda: $19
    ld a, [de]                                    ; $6fdb: $1a
    daa                                           ; $6fdc: $27
    jr z, jr_07b_6ffc                             ; $6fdd: $28 $1d

    ld e, $29                                     ; $6fdf: $1e $29
    ld a, [hl+]                                   ; $6fe1: $2a
    ld hl, $1207                                  ; $6fe2: $21 $07 $12
    inc de                                        ; $6fe5: $13
    ld [bc], a                                    ; $6fe6: $02
    ld [bc], a                                    ; $6fe7: $02
    ld [bc], a                                    ; $6fe8: $02
    ld [bc], a                                    ; $6fe9: $02
    ld [bc], a                                    ; $6fea: $02
    ld [bc], a                                    ; $6feb: $02
    ld [bc], a                                    ; $6fec: $02
    ld [bc], a                                    ; $6fed: $02
    ld [bc], a                                    ; $6fee: $02
    ld [bc], a                                    ; $6fef: $02
    ld [bc], a                                    ; $6ff0: $02
    ld a, [bc]                                    ; $6ff1: $0a
    ld [bc], a                                    ; $6ff2: $02
    ld [bc], a                                    ; $6ff3: $02
    ld [bc], a                                    ; $6ff4: $02
    ld [bc], a                                    ; $6ff5: $02
    dec de                                        ; $6ff6: $1b
    pop de                                        ; $6ff7: $d1
    pop de                                        ; $6ff8: $d1
    pop de                                        ; $6ff9: $d1
    inc e                                         ; $6ffa: $1c
    dec e                                         ; $6ffb: $1d

jr_07b_6ffc:
    pop de                                        ; $6ffc: $d1
    pop de                                        ; $6ffd: $d1
    push de                                       ; $6ffe: $d5
    call nc, $e4d3                                ; $6fff: $d4 $d3 $e4
    ret c                                         ; $7002: $d8

    rst $10                                       ; $7003: $d7
    sub $6e                                       ; $7004: $d6 $6e
    rrca                                          ; $7006: $0f
    inc b                                         ; $7007: $04
    inc b                                         ; $7008: $04
    inc b                                         ; $7009: $04
    rrca                                          ; $700a: $0f
    inc c                                         ; $700b: $0c
    inc b                                         ; $700c: $04
    inc b                                         ; $700d: $04
    daa                                           ; $700e: $27
    inc h                                         ; $700f: $24
    ld b, $06                                     ; $7010: $06 $06
    inc h                                         ; $7012: $24
    ld h, $04                                     ; $7013: $26 $04
    ld b, $d1                                     ; $7015: $06 $d1
    pop de                                        ; $7017: $d1
    pop de                                        ; $7018: $d1
    pop de                                        ; $7019: $d1
    pop de                                        ; $701a: $d1
    pop de                                        ; $701b: $d1
    pop de                                        ; $701c: $d1
    pop de                                        ; $701d: $d1
    push hl                                       ; $701e: $e5
    and $d4                                       ; $701f: $e6 $d4
    push de                                       ; $7021: $d5
    ld l, a                                       ; $7022: $6f
    jp hl                                         ; $7023: $e9


    rst $10                                       ; $7024: $d7
    ret c                                         ; $7025: $d8

    inc b                                         ; $7026: $04
    inc b                                         ; $7027: $04
    inc b                                         ; $7028: $04
    inc b                                         ; $7029: $04
    inc b                                         ; $702a: $04
    inc b                                         ; $702b: $04
    inc b                                         ; $702c: $04
    inc b                                         ; $702d: $04
    inc b                                         ; $702e: $04
    inc b                                         ; $702f: $04
    inc b                                         ; $7030: $04
    inc b                                         ; $7031: $04
    inc b                                         ; $7032: $04
    rlca                                          ; $7033: $07
    inc b                                         ; $7034: $04
    inc b                                         ; $7035: $04
    ldh [$e1], a                                  ; $7036: $e0 $e1
    ld e, e                                       ; $7038: $5b
    rst $08                                       ; $7039: $cf
    push af                                       ; $703a: $f5
    or $64                                        ; $703b: $f6 $64
    ld l, d                                       ; $703d: $6a
    ld hl, sp-$07                                 ; $703e: $f8 $f9
    pop de                                        ; $7040: $d1
    ld l, e                                       ; $7041: $6b
    ei                                            ; $7042: $fb
    db $fc                                        ; $7043: $fc
    rla                                           ; $7044: $17
    jr jr_07b_704b                                ; $7045: $18 $04

    inc b                                         ; $7047: $04
    ld [bc], a                                    ; $7048: $02
    ld a, [bc]                                    ; $7049: $0a
    inc b                                         ; $704a: $04

jr_07b_704b:
    inc b                                         ; $704b: $04
    ld [bc], a                                    ; $704c: $02
    ld [bc], a                                    ; $704d: $02
    ld b, $06                                     ; $704e: $06 $06
    ld a, [bc]                                    ; $7050: $0a
    ld bc, $0406                                  ; $7051: $01 $06 $04
    ld [bc], a                                    ; $7054: $02
    ld bc, $2681                                  ; $7055: $01 $81 $26
    inc l                                         ; $7058: $2c
    ld a, [hl-]                                   ; $7059: $3a
    add d                                         ; $705a: $82
    ld b, [hl]                                    ; $705b: $46
    inc a                                         ; $705c: $3c
    ld de, $fd38                                  ; $705d: $11 $38 $fd
    inc b                                         ; $7060: $04
    dec b                                         ; $7061: $05
    add hl, sp                                    ; $7062: $39
    add l                                         ; $7063: $85
    add [hl]                                      ; $7064: $86
    add a                                         ; $7065: $87
    ld a, [bc]                                    ; $7066: $0a
    ld [bc], a                                    ; $7067: $02
    ld a, [bc]                                    ; $7068: $0a
    ld [bc], a                                    ; $7069: $02
    ld a, [bc]                                    ; $706a: $0a
    ld [bc], a                                    ; $706b: $02
    ld [bc], a                                    ; $706c: $02
    ld [bc], a                                    ; $706d: $02
    ld bc, $0101                                  ; $706e: $01 $01 $01
    ld [bc], a                                    ; $7071: $02
    add hl, bc                                    ; $7072: $09
    add hl, bc                                    ; $7073: $09
    add hl, bc                                    ; $7074: $09
    ld a, [bc]                                    ; $7075: $0a
    pop hl                                        ; $7076: $e1
    ldh [$d9], a                                  ; $7077: $e0 $d9
    ld [hl], b                                    ; $7079: $70
    or $f5                                        ; $707a: $f6 $f5
    db $ed                                        ; $707c: $ed
    ld [hl], d                                    ; $707d: $72
    ld sp, hl                                     ; $707e: $f9
    ld hl, sp-$09                                 ; $707f: $f8 $f7
    ld [$fbfc], sp                                ; $7081: $08 $fc $fb
    ld a, [$260b]                                 ; $7084: $fa $0b $26
    ld h, $07                                     ; $7087: $26 $07
    rlca                                          ; $7089: $07
    inc h                                         ; $708a: $24
    daa                                           ; $708b: $27
    inc b                                         ; $708c: $04
    inc b                                         ; $708d: $04
    inc h                                         ; $708e: $24
    ld h, $06                                     ; $708f: $26 $06
    inc b                                         ; $7091: $04
    inc h                                         ; $7092: $24
    ld h, $06                                     ; $7093: $26 $06
    inc b                                         ; $7095: $04
    ld [hl], c                                    ; $7096: $71
    db $ec                                        ; $7097: $ec
    ldh [$e1], a                                  ; $7098: $e0 $e1
    ld [hl], e                                    ; $709a: $73
    ldh a, [$f5]                                  ; $709b: $f0 $f5
    or $09                                        ; $709d: $f6 $09
    ld a, [bc]                                    ; $709f: $0a
    ld hl, sp-$07                                 ; $70a0: $f8 $f9
    inc c                                         ; $70a2: $0c
    dec c                                         ; $70a3: $0d
    ei                                            ; $70a4: $fb
    db $fc                                        ; $70a5: $fc
    rlca                                          ; $70a6: $07
    rlca                                          ; $70a7: $07
    inc b                                         ; $70a8: $04
    ld b, $07                                     ; $70a9: $06 $07
    inc b                                         ; $70ab: $04
    inc b                                         ; $70ac: $04
    rlca                                          ; $70ad: $07
    inc b                                         ; $70ae: $04
    ld b, $04                                     ; $70af: $06 $04
    rlca                                          ; $70b1: $07
    ld b, $06                                     ; $70b2: $06 $06
    ld b, $07                                     ; $70b4: $06 $07
    ld [hl], l                                    ; $70b6: $75
    halt                                          ; $70b7: $76
    ld l, l                                       ; $70b8: $6d
    ld e, c                                       ; $70b9: $59
    daa                                           ; $70ba: $27
    ld a, b                                       ; $70bb: $78
    rla                                           ; $70bc: $17
    ld e, l                                       ; $70bd: $5d
    ld a, d                                       ; $70be: $7a
    ld [hl-], a                                   ; $70bf: $32
    dec hl                                        ; $70c0: $2b
    inc l                                         ; $70c1: $2c
    ld a, e                                       ; $70c2: $7b
    ld a, h                                       ; $70c3: $7c
    ld h, b                                       ; $70c4: $60
    ld h, c                                       ; $70c5: $61
    dec b                                         ; $70c6: $05
    ld [bc], a                                    ; $70c7: $02
    ld bc, $0203                                  ; $70c8: $01 $03 $02
    inc bc                                        ; $70cb: $03
    inc bc                                        ; $70cc: $03
    ld bc, $0103                                  ; $70cd: $01 $03 $01
    ld bc, $0301                                  ; $70d0: $01 $01 $03
    ld bc, $0301                                  ; $70d3: $01 $01 $03
    ld a, l                                       ; $70d6: $7d
    ld a, [hl-]                                   ; $70d7: $3a
    ld [hl], l                                    ; $70d8: $75
    halt                                          ; $70d9: $76
    add hl, de                                    ; $70da: $19
    ld [hl], a                                    ; $70db: $77
    daa                                           ; $70dc: $27
    ld a, b                                       ; $70dd: $78
    sbc d                                         ; $70de: $9a
    ld e, $7a                                     ; $70df: $1e $7a
    ld [hl-], a                                   ; $70e1: $32
    ld hl, $7b22                                  ; $70e2: $21 $22 $7b
    ld a, h                                       ; $70e5: $7c
    ld bc, $0109                                  ; $70e6: $01 $09 $01
    ld bc, $0101                                  ; $70e9: $01 $01 $01
    ld bc, $0903                                  ; $70ec: $01 $03 $09
    ld bc, $0101                                  ; $70ef: $01 $01 $01
    inc bc                                        ; $70f2: $03
    ld bc, $0101                                  ; $70f3: $01 $01 $01
    ld l, l                                       ; $70f6: $6d
    ld e, c                                       ; $70f7: $59
    ld a, l                                       ; $70f8: $7d
    call c, Call_000_3b17                         ; $70f9: $dc $17 $3b
    rlca                                          ; $70fc: $07
    ld [de], a                                    ; $70fd: $12
    ld e, [hl]                                    ; $70fe: $5e
    ld e, a                                       ; $70ff: $5f
    ld a, c                                       ; $7100: $79
    inc a                                         ; $7101: $3c
    ld h, b                                       ; $7102: $60
    ld h, c                                       ; $7103: $61
    ld hl, $0222                                  ; $7104: $21 $22 $02
    dec b                                         ; $7107: $05
    dec b                                         ; $7108: $05
    dec c                                         ; $7109: $0d
    ld bc, $020a                                  ; $710a: $01 $0a $02
    ld [bc], a                                    ; $710d: $02
    ld bc, $0103                                  ; $710e: $01 $03 $01
    add hl, bc                                    ; $7111: $09
    ld bc, $0101                                  ; $7112: $01 $01 $01
    ld bc, $3e3d                                  ; $7115: $01 $3d $3e
    ld l, l                                       ; $7118: $6d
    ld e, c                                       ; $7119: $59
    inc de                                        ; $711a: $13
    inc d                                         ; $711b: $14
    ccf                                           ; $711c: $3f
    ld e, l                                       ; $711d: $5d
    ld b, b                                       ; $711e: $40
    ld [hl-], a                                   ; $711f: $32
    ld e, [hl]                                    ; $7120: $5e
    ld e, a                                       ; $7121: $5f
    ld a, e                                       ; $7122: $7b
    ld a, h                                       ; $7123: $7c
    ld h, b                                       ; $7124: $60
    ld h, c                                       ; $7125: $61
    dec c                                         ; $7126: $0d
    dec c                                         ; $7127: $0d
    dec b                                         ; $7128: $05
    ld [bc], a                                    ; $7129: $02
    ld [bc], a                                    ; $712a: $02
    ld [bc], a                                    ; $712b: $02
    ld a, [bc]                                    ; $712c: $0a
    ld [bc], a                                    ; $712d: $02
    add hl, bc                                    ; $712e: $09
    ld bc, $0101                                  ; $712f: $01 $01 $01
    inc bc                                        ; $7132: $03
    ld bc, $0103                                  ; $7133: $01 $03 $01
    ld b, c                                       ; $7136: $41
    ld l, c                                       ; $7137: $69
    ld c, b                                       ; $7138: $48
    ld c, c                                       ; $7139: $49
    ld c, e                                       ; $713a: $4b
    pop de                                        ; $713b: $d1
    pop de                                        ; $713c: $d1
    pop de                                        ; $713d: $d1
    pop de                                        ; $713e: $d1
    pop de                                        ; $713f: $d1
    pop de                                        ; $7140: $d1
    pop de                                        ; $7141: $d1
    pop de                                        ; $7142: $d1
    pop de                                        ; $7143: $d1
    pop de                                        ; $7144: $d1
    pop de                                        ; $7145: $d1
    add h                                         ; $7146: $84
    add [hl]                                      ; $7147: $86
    add [hl]                                      ; $7148: $86
    add a                                         ; $7149: $87
    add h                                         ; $714a: $84
    add h                                         ; $714b: $84
    add h                                         ; $714c: $84
    add h                                         ; $714d: $84
    add h                                         ; $714e: $84
    inc b                                         ; $714f: $04
    inc b                                         ; $7150: $04
    inc b                                         ; $7151: $04
    inc b                                         ; $7152: $04
    inc b                                         ; $7153: $04
    inc b                                         ; $7154: $04
    inc b                                         ; $7155: $04
    ld c, d                                       ; $7156: $4a
    ld c, e                                       ; $7157: $4b
    ld l, b                                       ; $7158: $68
    ld l, c                                       ; $7159: $69
    pop de                                        ; $715a: $d1
    pop de                                        ; $715b: $d1
    pop de                                        ; $715c: $d1
    pop de                                        ; $715d: $d1
    pop de                                        ; $715e: $d1
    pop de                                        ; $715f: $d1
    pop de                                        ; $7160: $d1
    pop de                                        ; $7161: $d1
    pop de                                        ; $7162: $d1
    pop de                                        ; $7163: $d1
    pop de                                        ; $7164: $d1
    pop de                                        ; $7165: $d1
    add h                                         ; $7166: $84
    add h                                         ; $7167: $84
    add a                                         ; $7168: $87
    add [hl]                                      ; $7169: $86
    add h                                         ; $716a: $84
    add h                                         ; $716b: $84
    add h                                         ; $716c: $84
    add h                                         ; $716d: $84
    inc b                                         ; $716e: $04
    inc b                                         ; $716f: $04

Call_07b_7170:
    inc b                                         ; $7170: $04
    inc b                                         ; $7171: $04
    inc b                                         ; $7172: $04
    inc b                                         ; $7173: $04
    inc b                                         ; $7174: $04
    inc b                                         ; $7175: $04
    ld l, c                                       ; $7176: $69
    ld b, c                                       ; $7177: $41
    dec h                                         ; $7178: $25
    adc l                                         ; $7179: $8d
    pop de                                        ; $717a: $d1
    ld a, [c]                                     ; $717b: $f2
    add l                                         ; $717c: $85
    add [hl]                                      ; $717d: $86
    pop de                                        ; $717e: $d1
    di                                            ; $717f: $f3
    ld b, c                                       ; $7180: $41
    ld a, [hl-]                                   ; $7181: $3a
    pop de                                        ; $7182: $d1
    db $f4                                        ; $7183: $f4
    add hl, de                                    ; $7184: $19
    ld [hl], a                                    ; $7185: $77
    and h                                         ; $7186: $a4
    and [hl]                                      ; $7187: $a6
    inc bc                                        ; $7188: $03
    add hl, bc                                    ; $7189: $09
    add h                                         ; $718a: $84
    and h                                         ; $718b: $a4
    ld a, [bc]                                    ; $718c: $0a
    add hl, bc                                    ; $718d: $09
    inc b                                         ; $718e: $04
    and a                                         ; $718f: $a7
    ld a, [bc]                                    ; $7190: $0a
    add hl, bc                                    ; $7191: $09
    inc b                                         ; $7192: $04
    add [hl]                                      ; $7193: $86
    ld [bc], a                                    ; $7194: $02
    ld bc, $8a2e                                  ; $7195: $01 $2e $8a
    inc hl                                        ; $7198: $23
    ld l, h                                       ; $7199: $6c
    add a                                         ; $719a: $87
    adc h                                         ; $719b: $8c
    adc [hl]                                      ; $719c: $8e
    ld e, d                                       ; $719d: $5a
    ld [hl], l                                    ; $719e: $75
    halt                                          ; $719f: $76
    ld l, l                                       ; $71a0: $6d
    ld b, d                                       ; $71a1: $42
    daa                                           ; $71a2: $27
    ld a, b                                       ; $71a3: $78
    ld b, e                                       ; $71a4: $43
    ld h, [hl]                                    ; $71a5: $66
    ld bc, $010b                                  ; $71a6: $01 $0b $01
    ld bc, $0909                                  ; $71a9: $01 $09 $09
    add hl, bc                                    ; $71ac: $09
    ld bc, $0101                                  ; $71ad: $01 $01 $01
    inc bc                                        ; $71b0: $03
    add hl, bc                                    ; $71b1: $09
    ld bc, $0901                                  ; $71b2: $01 $01 $09
    ld bc, $d1d1                                  ; $71b5: $01 $d1 $d1
    pop de                                        ; $71b8: $d1
    pop de                                        ; $71b9: $d1
    jp c, $d3db                                   ; $71ba: $da $db $d3

    db $e4                                        ; $71bd: $e4
    call c, $d6dd                                 ; $71be: $dc $dd $d6
    ld l, [hl]                                    ; $71c1: $6e
    sbc $df                                       ; $71c2: $de $df
    reti                                          ; $71c4: $d9


    ld [hl], b                                    ; $71c5: $70
    inc b                                         ; $71c6: $04
    inc b                                         ; $71c7: $04
    inc b                                         ; $71c8: $04
    inc b                                         ; $71c9: $04
    ld b, $04                                     ; $71ca: $06 $04
    inc b                                         ; $71cc: $04
    inc b                                         ; $71cd: $04
    ld b, $07                                     ; $71ce: $06 $07
    ld b, $04                                     ; $71d0: $06 $04
    rlca                                          ; $71d2: $07
    rlca                                          ; $71d3: $07
    ld b, $06                                     ; $71d4: $06 $06
    pop de                                        ; $71d6: $d1
    pop de                                        ; $71d7: $d1
    pop de                                        ; $71d8: $d1
    pop de                                        ; $71d9: $d1
    push hl                                       ; $71da: $e5
    ld d, $d1                                     ; $71db: $16 $d1
    pop de                                        ; $71dd: $d1
    ld l, a                                       ; $71de: $6f
    jp nc, $d1d1                                  ; $71df: $d2 $d1 $d1

    ld [hl], c                                    ; $71e2: $71
    pop af                                        ; $71e3: $f1
    pop de                                        ; $71e4: $d1
    pop de                                        ; $71e5: $d1
    inc b                                         ; $71e6: $04
    inc b                                         ; $71e7: $04
    inc b                                         ; $71e8: $04
    inc b                                         ; $71e9: $04
    inc b                                         ; $71ea: $04
    inc h                                         ; $71eb: $24
    inc b                                         ; $71ec: $04
    inc b                                         ; $71ed: $04
    rlca                                          ; $71ee: $07
    inc b                                         ; $71ef: $04
    inc b                                         ; $71f0: $04
    inc b                                         ; $71f1: $04
    rlca                                          ; $71f2: $07
    inc b                                         ; $71f3: $04
    inc b                                         ; $71f4: $04
    inc b                                         ; $71f5: $04
    pop de                                        ; $71f6: $d1
    pop de                                        ; $71f7: $d1
    pop de                                        ; $71f8: $d1
    pop de                                        ; $71f9: $d1
    pop de                                        ; $71fa: $d1
    pop de                                        ; $71fb: $d1
    pop de                                        ; $71fc: $d1
    pop de                                        ; $71fd: $d1
    pop de                                        ; $71fe: $d1
    pop de                                        ; $71ff: $d1
    pop de                                        ; $7200: $d1
    pop de                                        ; $7201: $d1
    pop de                                        ; $7202: $d1
    pop de                                        ; $7203: $d1
    pop de                                        ; $7204: $d1
    ld d, $04                                     ; $7205: $16 $04
    add h                                         ; $7207: $84
    add h                                         ; $7208: $84
    add h                                         ; $7209: $84
    inc b                                         ; $720a: $04
    inc b                                         ; $720b: $04
    inc b                                         ; $720c: $04
    inc b                                         ; $720d: $04
    inc b                                         ; $720e: $04
    inc b                                         ; $720f: $04
    inc b                                         ; $7210: $04
    inc b                                         ; $7211: $04
    inc b                                         ; $7212: $04
    inc b                                         ; $7213: $04
    inc b                                         ; $7214: $04
    and h                                         ; $7215: $a4
    ld [c], a                                     ; $7216: $e2
    db $e3                                        ; $7217: $e3
    db $ed                                        ; $7218: $ed
    ld [hl], d                                    ; $7219: $72
    cp $ff                                        ; $721a: $fe $ff
    rst $30                                       ; $721c: $f7
    ld [$0100], sp                                ; $721d: $08 $00 $01
    ld a, [$0e0b]                                 ; $7220: $fa $0b $0e
    dec [hl]                                      ; $7223: $35
    adc e                                         ; $7224: $8b
    ld b, h                                       ; $7225: $44
    rlca                                          ; $7226: $07
    rlca                                          ; $7227: $07
    inc b                                         ; $7228: $04
    inc b                                         ; $7229: $04
    rlca                                          ; $722a: $07
    inc b                                         ; $722b: $04
    inc b                                         ; $722c: $04
    inc b                                         ; $722d: $04
    rlca                                          ; $722e: $07
    rlca                                          ; $722f: $07
    rlca                                          ; $7230: $07
    rlca                                          ; $7231: $07
    dec b                                         ; $7232: $05
    dec b                                         ; $7233: $05
    dec c                                         ; $7234: $0d
    dec c                                         ; $7235: $0d
    ld [hl], e                                    ; $7236: $73
    ld a, [c]                                     ; $7237: $f2
    or l                                          ; $7238: $b5
    or [hl]                                       ; $7239: $b6
    add hl, bc                                    ; $723a: $09
    di                                            ; $723b: $f3
    ld b, l                                       ; $723c: $45
    ld b, [hl]                                    ; $723d: $46
    inc c                                         ; $723e: $0c
    db $f4                                        ; $723f: $f4
    push bc                                       ; $7240: $c5
    cp b                                          ; $7241: $b8
    ld h, e                                       ; $7242: $63
    ld d, $47                                     ; $7243: $16 $47
    ld c, b                                       ; $7245: $48
    rlca                                          ; $7246: $07
    inc b                                         ; $7247: $04
    ld a, [bc]                                    ; $7248: $0a
    inc c                                         ; $7249: $0c
    rlca                                          ; $724a: $07
    inc b                                         ; $724b: $04
    inc c                                         ; $724c: $0c
    ld c, $04                                     ; $724d: $0e $04
    inc h                                         ; $724f: $24
    add hl, hl                                    ; $7250: $29
    inc l                                         ; $7251: $2c
    dec b                                         ; $7252: $05
    inc h                                         ; $7253: $24
    add hl, hl                                    ; $7254: $29
    add hl, hl                                    ; $7255: $29
    or a                                          ; $7256: $b7
    cp b                                          ; $7257: $b8
    push bc                                       ; $7258: $c5
    jp nc, Jump_07b_4849                          ; $7259: $d2 $49 $48

    ld b, a                                       ; $725c: $47
    pop af                                        ; $725d: $f1
    or a                                          ; $725e: $b7
    or [hl]                                       ; $725f: $b6
    or l                                          ; $7260: $b5
    ld a, [c]                                     ; $7261: $f2
    ld c, c                                       ; $7262: $49
    ld b, [hl]                                    ; $7263: $46
    ld b, l                                       ; $7264: $45
    di                                            ; $7265: $f3
    add hl, bc                                    ; $7266: $09
    inc c                                         ; $7267: $0c
    ld a, [bc]                                    ; $7268: $0a
    add h                                         ; $7269: $84
    inc c                                         ; $726a: $0c
    add hl, bc                                    ; $726b: $09
    ld a, [bc]                                    ; $726c: $0a
    add h                                         ; $726d: $84
    add hl, hl                                    ; $726e: $29
    inc l                                         ; $726f: $2c
    inc l                                         ; $7270: $2c
    add h                                         ; $7271: $84
    ld l, $2e                                     ; $7272: $2e $2e
    ld a, [hl+]                                   ; $7274: $2a
    add h                                         ; $7275: $84
    ld a, l                                       ; $7276: $7d
    ld [hl], h                                    ; $7277: $74
    ld [hl], l                                    ; $7278: $75
    ld c, d                                       ; $7279: $4a
    add hl, de                                    ; $727a: $19
    ld [hl], a                                    ; $727b: $77
    daa                                           ; $727c: $27
    ld a, b                                       ; $727d: $78
    ld a, c                                       ; $727e: $79
    ld e, $7a                                     ; $727f: $1e $7a
    ld c, e                                       ; $7281: $4b
    ld hl, $7b22                                  ; $7282: $21 $22 $7b
    ld a, h                                       ; $7285: $7c
    ld [bc], a                                    ; $7286: $02
    ld [bc], a                                    ; $7287: $02
    ld [bc], a                                    ; $7288: $02
    ld a, [bc]                                    ; $7289: $0a
    ld bc, $0101                                  ; $728a: $01 $01 $01
    inc bc                                        ; $728d: $03
    inc bc                                        ; $728e: $03
    ld bc, $0901                                  ; $728f: $01 $01 $09
    inc bc                                        ; $7292: $03
    inc bc                                        ; $7293: $03
    ld bc, $6601                                  ; $7294: $01 $01 $66
    jp nc, $b6b5                                  ; $7297: $d2 $b5 $b6

    ld c, h                                       ; $729a: $4c
    pop af                                        ; $729b: $f1
    ld b, l                                       ; $729c: $45
    ld b, [hl]                                    ; $729d: $46
    inc a                                         ; $729e: $3c
    ld a, [c]                                     ; $729f: $f2
    push bc                                       ; $72a0: $c5
    cp b                                          ; $72a1: $b8
    ld h, b                                       ; $72a2: $60
    ld h, c                                       ; $72a3: $61
    ld hl, $0222                                  ; $72a4: $21 $22 $02
    inc b                                         ; $72a7: $04
    add hl, bc                                    ; $72a8: $09
    inc c                                         ; $72a9: $0c
    ld a, [bc]                                    ; $72aa: $0a
    inc b                                         ; $72ab: $04
    ld a, [bc]                                    ; $72ac: $0a
    inc c                                         ; $72ad: $0c
    ld a, [bc]                                    ; $72ae: $0a
    inc b                                         ; $72af: $04
    add hl, hl                                    ; $72b0: $29
    inc l                                         ; $72b1: $2c
    ld [bc], a                                    ; $72b2: $02
    ld [bc], a                                    ; $72b3: $02
    ld [bc], a                                    ; $72b4: $02
    ld [bc], a                                    ; $72b5: $02
    or a                                          ; $72b6: $b7
    cp b                                          ; $72b7: $b8
    push bc                                       ; $72b8: $c5
    db $f4                                        ; $72b9: $f4
    ld c, c                                       ; $72ba: $49
    ld c, b                                       ; $72bb: $48
    ld b, a                                       ; $72bc: $47
    ld d, $b7                                     ; $72bd: $16 $b7
    or [hl]                                       ; $72bf: $b6
    or l                                          ; $72c0: $b5
    jp nc, Jump_07b_7c7b                          ; $72c1: $d2 $7b $7c

    ld h, b                                       ; $72c4: $60
    pop af                                        ; $72c5: $f1
    ld c, $0c                                     ; $72c6: $0e $0c
    inc c                                         ; $72c8: $0c
    and h                                         ; $72c9: $a4
    add hl, bc                                    ; $72ca: $09
    inc c                                         ; $72cb: $0c
    ld a, [bc]                                    ; $72cc: $0a
    and h                                         ; $72cd: $a4
    inc l                                         ; $72ce: $2c
    add hl, hl                                    ; $72cf: $29
    ld a, [hl+]                                   ; $72d0: $2a
    add h                                         ; $72d1: $84
    ld [bc], a                                    ; $72d2: $02
    ld [bc], a                                    ; $72d3: $02
    ld [bc], a                                    ; $72d4: $02
    add a                                         ; $72d5: $87
    dec h                                         ; $72d6: $25
    adc l                                         ; $72d7: $8d
    ld l, $8a                                     ; $72d8: $2e $8a
    ld e, e                                       ; $72da: $5b
    ld c, l                                       ; $72db: $4d
    add c                                         ; $72dc: $81
    ld c, [hl]                                    ; $72dd: $4e
    ld h, h                                       ; $72de: $64
    ld l, d                                       ; $72df: $6a
    add d                                         ; $72e0: $82
    halt                                          ; $72e1: $76
    ld h, a                                       ; $72e2: $67
    ld l, e                                       ; $72e3: $6b
    daa                                           ; $72e4: $27
    ld a, b                                       ; $72e5: $78
    inc bc                                        ; $72e6: $03
    add hl, bc                                    ; $72e7: $09
    ld bc, $0109                                  ; $72e8: $01 $09 $01
    dec bc                                        ; $72eb: $0b
    add hl, bc                                    ; $72ec: $09
    add hl, bc                                    ; $72ed: $09
    ld bc, $0901                                  ; $72ee: $01 $01 $09
    ld bc, $0101                                  ; $72f1: $01 $01 $01
    ld bc, $2301                                  ; $72f4: $01 $01 $23
    ld l, h                                       ; $72f7: $6c
    dec h                                         ; $72f8: $25
    adc l                                         ; $72f9: $8d
    adc [hl]                                      ; $72fa: $8e
    adc a                                         ; $72fb: $8f
    ld c, $35                                     ; $72fc: $0e $35
    ld l, l                                       ; $72fe: $6d
    ld e, c                                       ; $72ff: $59
    ld a, l                                       ; $7300: $7d
    call c, Call_07b_5d17                         ; $7301: $dc $17 $5d
    add hl, de                                    ; $7304: $19
    or h                                          ; $7305: $b4
    ld bc, $0101                                  ; $7306: $01 $01 $01
    add hl, bc                                    ; $7309: $09
    add hl, bc                                    ; $730a: $09
    add hl, bc                                    ; $730b: $09
    ld bc, $0101                                  ; $730c: $01 $01 $01
    ld bc, $0903                                  ; $730f: $01 $03 $09
    ld bc, $0101                                  ; $7312: $01 $01 $01
    add hl, bc                                    ; $7315: $09
    ld l, $8a                                     ; $7316: $2e $8a
    inc hl                                        ; $7318: $23
    ld a, [c]                                     ; $7319: $f2
    adc e                                         ; $731a: $8b
    adc h                                         ; $731b: $8c
    adc [hl]                                      ; $731c: $8e
    di                                            ; $731d: $f3
    add l                                         ; $731e: $85
    add [hl]                                      ; $731f: $86
    add a                                         ; $7320: $87
    db $f4                                        ; $7321: $f4
    ld c, a                                       ; $7322: $4f
    ld b, c                                       ; $7323: $41
    ld l, c                                       ; $7324: $69
    ld l, b                                       ; $7325: $68
    ld bc, $020b                                  ; $7326: $01 $0b $02
    add [hl]                                      ; $7329: $86
    add hl, bc                                    ; $732a: $09
    add hl, bc                                    ; $732b: $09
    ld a, [bc]                                    ; $732c: $0a
    add h                                         ; $732d: $84
    add hl, bc                                    ; $732e: $09
    add hl, bc                                    ; $732f: $09
    ld a, [bc]                                    ; $7330: $0a
    and h                                         ; $7331: $a4
    ld a, [bc]                                    ; $7332: $0a
    add h                                         ; $7333: $84
    add [hl]                                      ; $7334: $86
    add h                                         ; $7335: $84
    pop de                                        ; $7336: $d1
    pop de                                        ; $7337: $d1
    pop de                                        ; $7338: $d1
    pop de                                        ; $7339: $d1
    pop de                                        ; $733a: $d1
    pop de                                        ; $733b: $d1
    pop de                                        ; $733c: $d1
    pop de                                        ; $733d: $d1
    pop de                                        ; $733e: $d1
    pop de                                        ; $733f: $d1
    pop de                                        ; $7340: $d1
    pop de                                        ; $7341: $d1
    pop de                                        ; $7342: $d1
    db $d3                                        ; $7343: $d3
    db $db                                        ; $7344: $db
    jp c, $8484                                   ; $7345: $da $84 $84

    add h                                         ; $7348: $84
    add h                                         ; $7349: $84
    inc b                                         ; $734a: $04
    inc b                                         ; $734b: $04
    inc b                                         ; $734c: $04
    inc b                                         ; $734d: $04
    inc b                                         ; $734e: $04
    inc b                                         ; $734f: $04
    inc b                                         ; $7350: $04
    inc b                                         ; $7351: $04
    inc b                                         ; $7352: $04
    ld h, $24                                     ; $7353: $26 $24
    inc h                                         ; $7355: $24
    pop de                                        ; $7356: $d1
    pop de                                        ; $7357: $d1
    pop de                                        ; $7358: $d1
    pop de                                        ; $7359: $d1
    pop de                                        ; $735a: $d1
    pop de                                        ; $735b: $d1
    pop de                                        ; $735c: $d1
    pop de                                        ; $735d: $d1
    pop de                                        ; $735e: $d1
    pop de                                        ; $735f: $d1
    db $e4                                        ; $7360: $e4
    push hl                                       ; $7361: $e5
    call nc, $6ed5                                ; $7362: $d4 $d5 $6e
    ld l, a                                       ; $7365: $6f
    add h                                         ; $7366: $84
    add h                                         ; $7367: $84
    add h                                         ; $7368: $84
    add h                                         ; $7369: $84
    inc b                                         ; $736a: $04
    inc b                                         ; $736b: $04
    inc b                                         ; $736c: $04
    inc b                                         ; $736d: $04
    inc b                                         ; $736e: $04
    inc b                                         ; $736f: $04
    inc b                                         ; $7370: $04
    inc b                                         ; $7371: $04
    ld b, $04                                     ; $7372: $06 $04
    rlca                                          ; $7374: $07
    rlca                                          ; $7375: $07
    pop de                                        ; $7376: $d1
    pop de                                        ; $7377: $d1
    pop de                                        ; $7378: $d1
    pop de                                        ; $7379: $d1
    pop de                                        ; $737a: $d1

jr_07b_737b:
    pop de                                        ; $737b: $d1
    pop de                                        ; $737c: $d1
    pop de                                        ; $737d: $d1
    and $4c                                       ; $737e: $e6 $4c
    ld c, l                                       ; $7380: $4d
    call nc, Call_07b_4ee9                        ; $7381: $d4 $e9 $4e
    ld c, a                                       ; $7384: $4f
    rst $10                                       ; $7385: $d7
    add h                                         ; $7386: $84
    add h                                         ; $7387: $84
    add h                                         ; $7388: $84
    add h                                         ; $7389: $84
    inc b                                         ; $738a: $04
    inc b                                         ; $738b: $04
    inc b                                         ; $738c: $04
    inc b                                         ; $738d: $04
    inc b                                         ; $738e: $04
    ld b, $04                                     ; $738f: $06 $04
    rlca                                          ; $7391: $07
    rlca                                          ; $7392: $07
    ld b, $06                                     ; $7393: $06 $06
    inc b                                         ; $7395: $04
    db $f4                                        ; $7396: $f4
    ld l, e                                       ; $7397: $6b
    inc h                                         ; $7398: $24
    dec h                                         ; $7399: $25
    ld d, $02                                     ; $739a: $16 $02
    inc bc                                        ; $739c: $03
    ld c, $d5                                     ; $739d: $0e $d5
    ld e, b                                       ; $739f: $58
    ld e, c                                       ; $73a0: $59
    jr c, jr_07b_737b                             ; $73a1: $38 $d8

    rla                                           ; $73a3: $17
    jr @+$1b                                      ; $73a4: $18 $19

    add h                                         ; $73a6: $84
    ld [bc], a                                    ; $73a7: $02
    ld bc, $0401                                  ; $73a8: $01 $01 $04
    ld [bc], a                                    ; $73ab: $02
    inc bc                                        ; $73ac: $03
    ld bc, $0207                                  ; $73ad: $01 $07 $02
    ld bc, $0602                                  ; $73b0: $01 $02 $06
    ld [bc], a                                    ; $73b3: $02
    ld bc, $f401                                  ; $73b4: $01 $01 $f4
    sub $eb                                       ; $73b7: $d6 $eb
    xor $16                                       ; $73b9: $ee $16
    reti                                          ; $73bb: $d9


    db $ec                                        ; $73bc: $ec
    rst $28                                       ; $73bd: $ef
    jp nc, $eded                                  ; $73be: $d2 $ed $ed

    ldh a, [$f1]                                  ; $73c1: $f0 $f1
    rst $30                                       ; $73c3: $f7
    rst $38                                       ; $73c4: $ff
    cp $04                                        ; $73c5: $fe $04
    inc h                                         ; $73c7: $24
    inc c                                         ; $73c8: $0c
    inc c                                         ; $73c9: $0c
    ld b, $24                                     ; $73ca: $06 $24
    inc c                                         ; $73cc: $0c
    inc c                                         ; $73cd: $0c
    inc h                                         ; $73ce: $24
    daa                                           ; $73cf: $27
    inc c                                         ; $73d0: $0c
    inc c                                         ; $73d1: $0c
    inc h                                         ; $73d2: $24
    inc h                                         ; $73d3: $24
    ld h, $27                                     ; $73d4: $26 $27
    rst $10                                       ; $73d6: $d7
    ret c                                         ; $73d7: $d8

    ld [hl], b                                    ; $73d8: $70
    ld [hl], c                                    ; $73d9: $71
    ldh [$e1], a                                  ; $73da: $e0 $e1
    ld [hl], d                                    ; $73dc: $72
    ld [hl], e                                    ; $73dd: $73
    push af                                       ; $73de: $f5
    or $08                                        ; $73df: $f6 $08
    add hl, bc                                    ; $73e1: $09
    ld hl, sp-$07                                 ; $73e2: $f8 $f9
    dec bc                                        ; $73e4: $0b
    inc c                                         ; $73e5: $0c
    ld b, $04                                     ; $73e6: $06 $04
    rlca                                          ; $73e8: $07
    inc b                                         ; $73e9: $04
    rlca                                          ; $73ea: $07
    rlca                                          ; $73eb: $07
    inc b                                         ; $73ec: $04
    ld b, $07                                     ; $73ed: $06 $07
    rlca                                          ; $73ef: $07
    inc b                                         ; $73f0: $04
    inc b                                         ; $73f1: $04
    inc b                                         ; $73f2: $04
    inc b                                         ; $73f3: $04
    inc b                                         ; $73f4: $04
    inc b                                         ; $73f5: $04
    db $ec                                        ; $73f6: $ec
    ld d, b                                       ; $73f7: $50
    ld d, c                                       ; $73f8: $51
    ldh [$f0], a                                  ; $73f9: $e0 $f0
    ld d, d                                       ; $73fb: $52
    ld d, e                                       ; $73fc: $53
    push af                                       ; $73fd: $f5
    ld a, [bc]                                    ; $73fe: $0a
    ld d, h                                       ; $73ff: $54
    ld d, l                                       ; $7400: $55
    ld hl, sp+$0d                                 ; $7401: $f8 $0d
    ld d, [hl]                                    ; $7403: $56
    ld d, a                                       ; $7404: $57
    ei                                            ; $7405: $fb
    rlca                                          ; $7406: $07
    rlca                                          ; $7407: $07
    rlca                                          ; $7408: $07
    rlca                                          ; $7409: $07
    rlca                                          ; $740a: $07
    inc b                                         ; $740b: $04
    inc b                                         ; $740c: $04
    rlca                                          ; $740d: $07
    inc b                                         ; $740e: $04
    rlca                                          ; $740f: $07
    rlca                                          ; $7410: $07
    ld b, $04                                     ; $7411: $06 $04
    inc b                                         ; $7413: $04
    inc b                                         ; $7414: $04
    inc b                                         ; $7415: $04
    pop hl                                        ; $7416: $e1
    dec de                                        ; $7417: $1b
    inc e                                         ; $7418: $1c
    dec e                                         ; $7419: $1d
    or $1f                                        ; $741a: $f6 $1f
    jr nz, jr_07b_743f                            ; $741c: $20 $21

    ld sp, hl                                     ; $741e: $f9
    inc hl                                        ; $741f: $23
    inc h                                         ; $7420: $24
    dec h                                         ; $7421: $25
    db $fc                                        ; $7422: $fc
    ld b, l                                       ; $7423: $45
    inc bc                                        ; $7424: $03
    dec hl                                        ; $7425: $2b
    inc b                                         ; $7426: $04
    ld [bc], a                                    ; $7427: $02
    inc bc                                        ; $7428: $03
    ld bc, $0206                                  ; $7429: $01 $06 $02
    ld [bc], a                                    ; $742c: $02
    ld bc, $0204                                  ; $742d: $01 $04 $02
    ld bc, $0403                                  ; $7430: $01 $03 $04
    ld [bc], a                                    ; $7433: $02
    inc bc                                        ; $7434: $03
    ld bc, $faf2                                  ; $7435: $01 $f2 $fa
    ld bc, $f300                                  ; $7438: $01 $00 $f3
    rla                                           ; $743b: $17
    jr jr_07b_7457                                ; $743c: $18 $19

    db $f4                                        ; $743e: $f4

jr_07b_743f:
    dec de                                        ; $743f: $1b
    inc e                                         ; $7440: $1c
    dec e                                         ; $7441: $1d
    ld d, $5b                                     ; $7442: $16 $5b
    daa                                           ; $7444: $27
    add c                                         ; $7445: $81
    and a                                         ; $7446: $a7
    inc h                                         ; $7447: $24
    inc h                                         ; $7448: $24
    ld h, $a7                                     ; $7449: $26 $a7
    dec b                                         ; $744b: $05
    dec b                                         ; $744c: $05
    dec b                                         ; $744d: $05
    add a                                         ; $744e: $87
    ld [bc], a                                    ; $744f: $02
    ld [bc], a                                    ; $7450: $02
    ld [bc], a                                    ; $7451: $02
    add h                                         ; $7452: $84
    ld [bc], a                                    ; $7453: $02
    add hl, bc                                    ; $7454: $09
    add hl, bc                                    ; $7455: $09
    ei                                            ; $7456: $fb

jr_07b_7457:
    db $fc                                        ; $7457: $fc
    dec b                                         ; $7458: $05
    ld e, b                                       ; $7459: $58
    dec hl                                        ; $745a: $2b
    inc l                                         ; $745b: $2c
    ld d, b                                       ; $745c: $50
    rla                                           ; $745d: $17
    ld e, $29                                     ; $745e: $1e $29
    ld [hl-], a                                   ; $7460: $32
    dec de                                        ; $7461: $1b
    ld [hl+], a                                   ; $7462: $22
    inc sp                                        ; $7463: $33
    inc [hl]                                      ; $7464: $34
    rra                                           ; $7465: $1f
    inc b                                         ; $7466: $04
    ld b, $05                                     ; $7467: $06 $05
    dec b                                         ; $7469: $05
    dec b                                         ; $746a: $05
    ld [bc], a                                    ; $746b: $02
    ld a, [bc]                                    ; $746c: $0a
    ld [bc], a                                    ; $746d: $02
    ld [bc], a                                    ; $746e: $02
    ld bc, $0201                                  ; $746f: $01 $01 $02
    ld bc, $0103                                  ; $7472: $01 $03 $01
    ld bc, $3859                                  ; $7475: $01 $59 $38
    ld d, c                                       ; $7478: $51
    ccf                                           ; $7479: $3f
    jr jr_07b_7495                                ; $747a: $18 $19

    ld a, [de]                                    ; $747c: $1a
    daa                                           ; $747d: $27
    inc e                                         ; $747e: $1c
    dec e                                         ; $747f: $1d
    ld e, $29                                     ; $7480: $1e $29
    jr nz, jr_07b_74a5                            ; $7482: $20 $21

    ld [hl+], a                                   ; $7484: $22
    inc sp                                        ; $7485: $33
    dec b                                         ; $7486: $05
    dec b                                         ; $7487: $05
    dec c                                         ; $7488: $0d
    dec b                                         ; $7489: $05
    ld [bc], a                                    ; $748a: $02
    ld [bc], a                                    ; $748b: $02
    ld [bc], a                                    ; $748c: $02
    ld [bc], a                                    ; $748d: $02
    ld bc, $0103                                  ; $748e: $01 $03 $01
    ld bc, $0302                                  ; $7491: $01 $02 $03
    inc bc                                        ; $7494: $03

jr_07b_7495:
    ld bc, $4740                                  ; $7495: $01 $40 $47
    ld e, c                                       ; $7498: $59
    jr c, jr_07b_74ed                             ; $7499: $38 $52

    rla                                           ; $749b: $17
    jr @+$1b                                      ; $749c: $18 $19

    ld [hl-], a                                   ; $749e: $32
    dec de                                        ; $749f: $1b
    inc e                                         ; $74a0: $1c
    dec e                                         ; $74a1: $1d
    ld d, e                                       ; $74a2: $53
    ld d, h                                       ; $74a3: $54
    ld d, l                                       ; $74a4: $55

jr_07b_74a5:
    ld hl, $0102                                  ; $74a5: $21 $02 $01
    inc bc                                        ; $74a8: $03
    ld bc, $0309                                  ; $74a9: $01 $09 $03
    ld bc, $0103                                  ; $74ac: $01 $03 $01
    ld bc, $0103                                  ; $74af: $01 $03 $01
    ld a, [bc]                                    ; $74b2: $0a
    add hl, bc                                    ; $74b3: $09
    add hl, bc                                    ; $74b4: $09
    inc bc                                        ; $74b5: $03
    jp nc, Jump_07b_6a64                          ; $74b6: $d2 $64 $6a

    add d                                         ; $74b9: $82
    pop af                                        ; $74ba: $f1
    ld h, a                                       ; $74bb: $67
    dec c                                         ; $74bc: $0d
    ld c, $42                                     ; $74bd: $0e $42
    ld b, h                                       ; $74bf: $44
    ld c, b                                       ; $74c0: $48
    ld c, c                                       ; $74c1: $49
    pop de                                        ; $74c2: $d1
    pop de                                        ; $74c3: $d1
    pop de                                        ; $74c4: $d1
    pop de                                        ; $74c5: $d1
    and [hl]                                      ; $74c6: $a6
    ld [bc], a                                    ; $74c7: $02
    ld bc, $a409                                  ; $74c8: $01 $09 $a4
    ld [bc], a                                    ; $74cb: $02
    add hl, bc                                    ; $74cc: $09
    ld [bc], a                                    ; $74cd: $02
    add h                                         ; $74ce: $84
    add a                                         ; $74cf: $87
    add [hl]                                      ; $74d0: $86
    add [hl]                                      ; $74d1: $86
    add h                                         ; $74d2: $84
    add h                                         ; $74d3: $84
    add h                                         ; $74d4: $84
    add h                                         ; $74d5: $84
    ld h, $2e                                     ; $74d6: $26 $2e
    cpl                                           ; $74d8: $2f
    inc hl                                        ; $74d9: $23
    db $e4                                        ; $74da: $e4
    add l                                         ; $74db: $85
    add [hl]                                      ; $74dc: $86
    add a                                         ; $74dd: $87
    ld c, d                                       ; $74de: $4a
    ld c, e                                       ; $74df: $4b
    ld l, b                                       ; $74e0: $68
    ld l, c                                       ; $74e1: $69
    pop de                                        ; $74e2: $d1
    pop de                                        ; $74e3: $d1
    pop de                                        ; $74e4: $d1
    pop de                                        ; $74e5: $d1
    ld [bc], a                                    ; $74e6: $02
    ld bc, $0301                                  ; $74e7: $01 $01 $03
    add hl, bc                                    ; $74ea: $09
    add hl, bc                                    ; $74eb: $09
    add hl, bc                                    ; $74ec: $09

jr_07b_74ed:
    add hl, bc                                    ; $74ed: $09
    add [hl]                                      ; $74ee: $86
    add h                                         ; $74ef: $84
    add a                                         ; $74f0: $87
    add a                                         ; $74f1: $87
    add h                                         ; $74f2: $84
    add h                                         ; $74f3: $84
    add h                                         ; $74f4: $84
    add h                                         ; $74f5: $84
    inc h                                         ; $74f6: $24
    dec h                                         ; $74f7: $25
    adc l                                         ; $74f8: $8d
    rlca                                          ; $74f9: $07
    jp hl                                         ; $74fa: $e9


    ld c, $35                                     ; $74fb: $0e $35
    inc a                                         ; $74fd: $3c
    ld b, d                                       ; $74fe: $42
    ld b, h                                       ; $74ff: $44
    ld c, b                                       ; $7500: $48
    ld c, c                                       ; $7501: $49
    pop de                                        ; $7502: $d1
    pop de                                        ; $7503: $d1
    pop de                                        ; $7504: $d1
    pop de                                        ; $7505: $d1
    ld bc, $0902                                  ; $7506: $01 $02 $09
    ld bc, $0309                                  ; $7509: $01 $09 $03
    ld bc, $8401                                  ; $750c: $01 $01 $84
    add a                                         ; $750f: $87
    add h                                         ; $7510: $84
    add h                                         ; $7511: $84
    add h                                         ; $7512: $84
    add h                                         ; $7513: $84
    add h                                         ; $7514: $84
    add h                                         ; $7515: $84
    ld [de], a                                    ; $7516: $12
    inc de                                        ; $7517: $13
    inc d                                         ; $7518: $14
    ld d, [hl]                                    ; $7519: $56
    ld de, $5857                                  ; $751a: $11 $57 $58
    ld c, $4a                                     ; $751d: $0e $4a
    ld c, e                                       ; $751f: $4b
    ld l, b                                       ; $7520: $68
    ld l, c                                       ; $7521: $69
    pop de                                        ; $7522: $d1
    pop de                                        ; $7523: $d1
    pop de                                        ; $7524: $d1
    pop de                                        ; $7525: $d1
    ld bc, $0303                                  ; $7526: $01 $03 $03
    add hl, bc                                    ; $7529: $09
    inc bc                                        ; $752a: $03
    ld a, [bc]                                    ; $752b: $0a
    add hl, bc                                    ; $752c: $09
    inc bc                                        ; $752d: $03
    add [hl]                                      ; $752e: $86
    add [hl]                                      ; $752f: $86
    add a                                         ; $7530: $87
    add a                                         ; $7531: $87
    add h                                         ; $7532: $84
    add h                                         ; $7533: $84
    add h                                         ; $7534: $84
    add h                                         ; $7535: $84
    ld h, $f2                                     ; $7536: $26 $f2
    pop de                                        ; $7538: $d1
    pop de                                        ; $7539: $d1
    dec [hl]                                      ; $753a: $35
    di                                            ; $753b: $f3
    pop de                                        ; $753c: $d1
    pop de                                        ; $753d: $d1
    db $fd                                        ; $753e: $fd
    db $f4                                        ; $753f: $f4
    pop de                                        ; $7540: $d1
    pop de                                        ; $7541: $d1
    ld a, [de]                                    ; $7542: $1a
    ld d, $d1                                     ; $7543: $16 $d1
    pop de                                        ; $7545: $d1
    ld [bc], a                                    ; $7546: $02
    add h                                         ; $7547: $84
    add h                                         ; $7548: $84
    inc b                                         ; $7549: $04
    ld [bc], a                                    ; $754a: $02
    add a                                         ; $754b: $87
    add h                                         ; $754c: $84
    inc b                                         ; $754d: $04
    ld [bc], a                                    ; $754e: $02
    and h                                         ; $754f: $a4
    add h                                         ; $7550: $84
    inc b                                         ; $7551: $04
    ld [bc], a                                    ; $7552: $02
    and [hl]                                      ; $7553: $a6
    add h                                         ; $7554: $84
    inc b                                         ; $7555: $04
    ld e, $d2                                     ; $7556: $1e $d2
    pop de                                        ; $7558: $d1
    pop de                                        ; $7559: $d1
    ld [hl+], a                                   ; $755a: $22
    pop af                                        ; $755b: $f1
    pop de                                        ; $755c: $d1
    pop de                                        ; $755d: $d1
    ld h, $f2                                     ; $755e: $26 $f2
    pop de                                        ; $7560: $d1
    pop de                                        ; $7561: $d1
    inc l                                         ; $7562: $2c
    di                                            ; $7563: $f3
    pop de                                        ; $7564: $d1
    pop de                                        ; $7565: $d1
    ld [bc], a                                    ; $7566: $02
    add [hl]                                      ; $7567: $86
    add h                                         ; $7568: $84
    inc b                                         ; $7569: $04
    ld [bc], a                                    ; $756a: $02
    add a                                         ; $756b: $87
    add h                                         ; $756c: $84
    inc b                                         ; $756d: $04
    ld [bc], a                                    ; $756e: $02
    add [hl]                                      ; $756f: $86
    add h                                         ; $7570: $84
    inc b                                         ; $7571: $04
    ld [bc], a                                    ; $7572: $02
    add [hl]                                      ; $7573: $86
    add h                                         ; $7574: $84
    inc b                                         ; $7575: $04
    db $fd                                        ; $7576: $fd
    db $f4                                        ; $7577: $f4
    pop de                                        ; $7578: $d1
    pop de                                        ; $7579: $d1
    ld a, [de]                                    ; $757a: $1a
    ld d, $d1                                     ; $757b: $16 $d1
    pop de                                        ; $757d: $d1
    ld e, $d2                                     ; $757e: $1e $d2
    pop de                                        ; $7580: $d1
    pop de                                        ; $7581: $d1
    ld [hl+], a                                   ; $7582: $22
    pop af                                        ; $7583: $f1
    pop de                                        ; $7584: $d1
    pop de                                        ; $7585: $d1
    ld [bc], a                                    ; $7586: $02
    and h                                         ; $7587: $a4
    add h                                         ; $7588: $84
    inc b                                         ; $7589: $04
    ld [bc], a                                    ; $758a: $02
    and h                                         ; $758b: $a4
    add h                                         ; $758c: $84
    inc b                                         ; $758d: $04
    ld [bc], a                                    ; $758e: $02
    add a                                         ; $758f: $87
    add h                                         ; $7590: $84
    inc b                                         ; $7591: $04
    ld [bc], a                                    ; $7592: $02
    add h                                         ; $7593: $84
    add h                                         ; $7594: $84
    inc b                                         ; $7595: $04
    ld h, $f2                                     ; $7596: $26 $f2
    pop de                                        ; $7598: $d1
    pop de                                        ; $7599: $d1
    dec [hl]                                      ; $759a: $35
    di                                            ; $759b: $f3
    pop de                                        ; $759c: $d1
    pop de                                        ; $759d: $d1
    ld b, d                                       ; $759e: $42
    ld b, h                                       ; $759f: $44
    pop de                                        ; $75a0: $d1
    pop de                                        ; $75a1: $d1
    pop de                                        ; $75a2: $d1
    pop de                                        ; $75a3: $d1
    pop de                                        ; $75a4: $d1
    pop de                                        ; $75a5: $d1
    ld [bc], a                                    ; $75a6: $02
    add h                                         ; $75a7: $84
    add h                                         ; $75a8: $84
    inc b                                         ; $75a9: $04
    ld [bc], a                                    ; $75aa: $02
    add h                                         ; $75ab: $84
    add h                                         ; $75ac: $84
    inc b                                         ; $75ad: $04
    add h                                         ; $75ae: $84
    add a                                         ; $75af: $87
    add h                                         ; $75b0: $84
    inc b                                         ; $75b1: $04
    add h                                         ; $75b2: $84
    add h                                         ; $75b3: $84
    add h                                         ; $75b4: $84
    inc b                                         ; $75b5: $04
    db $f4                                        ; $75b6: $f4
    inc h                                         ; $75b7: $24
    dec h                                         ; $75b8: $25
    ld h, $42                                     ; $75b9: $26 $42
    ld b, h                                       ; $75bb: $44
    ld c, b                                       ; $75bc: $48
    ld c, c                                       ; $75bd: $49
    pop de                                        ; $75be: $d1
    pop de                                        ; $75bf: $d1
    pop de                                        ; $75c0: $d1
    pop de                                        ; $75c1: $d1
    pop de                                        ; $75c2: $d1
    pop de                                        ; $75c3: $d1
    pop de                                        ; $75c4: $d1
    pop de                                        ; $75c5: $d1
    add a                                         ; $75c6: $87
    dec b                                         ; $75c7: $05
    dec b                                         ; $75c8: $05
    dec b                                         ; $75c9: $05
    add h                                         ; $75ca: $84
    add [hl]                                      ; $75cb: $86
    add a                                         ; $75cc: $87
    add h                                         ; $75cd: $84
    add h                                         ; $75ce: $84
    add h                                         ; $75cf: $84
    add h                                         ; $75d0: $84
    add h                                         ; $75d1: $84
    inc b                                         ; $75d2: $04
    inc b                                         ; $75d3: $04
    inc b                                         ; $75d4: $04
    inc b                                         ; $75d5: $04
    ld e, c                                       ; $75d6: $59
    ld h, e                                       ; $75d7: $63
    ld h, h                                       ; $75d8: $64
    ld l, d                                       ; $75d9: $6a
    ld c, d                                       ; $75da: $4a
    ld c, e                                       ; $75db: $4b
    ld l, b                                       ; $75dc: $68
    ld l, c                                       ; $75dd: $69
    pop de                                        ; $75de: $d1
    pop de                                        ; $75df: $d1
    pop de                                        ; $75e0: $d1
    pop de                                        ; $75e1: $d1
    pop de                                        ; $75e2: $d1
    pop de                                        ; $75e3: $d1
    pop de                                        ; $75e4: $d1
    pop de                                        ; $75e5: $d1
    dec c                                         ; $75e6: $0d
    dec b                                         ; $75e7: $05
    dec b                                         ; $75e8: $05
    dec b                                         ; $75e9: $05
    add [hl]                                      ; $75ea: $86
    add [hl]                                      ; $75eb: $86
    add a                                         ; $75ec: $87
    add [hl]                                      ; $75ed: $86
    add h                                         ; $75ee: $84
    add h                                         ; $75ef: $84
    add h                                         ; $75f0: $84
    add h                                         ; $75f1: $84
    inc b                                         ; $75f2: $04
    inc b                                         ; $75f3: $04
    inc b                                         ; $75f4: $04
    inc b                                         ; $75f5: $04
    add d                                         ; $75f6: $82
    ld h, $41                                     ; $75f7: $26 $41
    ld b, d                                       ; $75f9: $42
    ld c, e                                       ; $75fa: $4b
    ld l, b                                       ; $75fb: $68
    ld l, c                                       ; $75fc: $69
    pop de                                        ; $75fd: $d1
    pop de                                        ; $75fe: $d1
    pop de                                        ; $75ff: $d1
    pop de                                        ; $7600: $d1
    pop de                                        ; $7601: $d1
    pop de                                        ; $7602: $d1
    pop de                                        ; $7603: $d1
    pop de                                        ; $7604: $d1
    pop de                                        ; $7605: $d1
    dec c                                         ; $7606: $0d
    dec b                                         ; $7607: $05
    add a                                         ; $7608: $87
    add h                                         ; $7609: $84
    add h                                         ; $760a: $84
    add a                                         ; $760b: $87
    add h                                         ; $760c: $84
    add h                                         ; $760d: $84
    add h                                         ; $760e: $84
    add h                                         ; $760f: $84
    add h                                         ; $7610: $84
    inc b                                         ; $7611: $04
    inc b                                         ; $7612: $04
    inc b                                         ; $7613: $04
    inc b                                         ; $7614: $04
    inc b                                         ; $7615: $04
    ld b, h                                       ; $7616: $44
    ld b, d                                       ; $7617: $42
    ld b, h                                       ; $7618: $44
    ld c, b                                       ; $7619: $48
    pop de                                        ; $761a: $d1
    pop de                                        ; $761b: $d1
    pop de                                        ; $761c: $d1
    pop de                                        ; $761d: $d1
    pop de                                        ; $761e: $d1
    pop de                                        ; $761f: $d1
    pop de                                        ; $7620: $d1
    pop de                                        ; $7621: $d1
    pop de                                        ; $7622: $d1
    pop de                                        ; $7623: $d1
    pop de                                        ; $7624: $d1
    pop de                                        ; $7625: $d1
    add [hl]                                      ; $7626: $86
    add a                                         ; $7627: $87
    add h                                         ; $7628: $84
    add [hl]                                      ; $7629: $86
    add h                                         ; $762a: $84
    add h                                         ; $762b: $84
    add h                                         ; $762c: $84
    add h                                         ; $762d: $84
    inc b                                         ; $762e: $04
    inc b                                         ; $762f: $04
    inc b                                         ; $7630: $04
    inc b                                         ; $7631: $04
    inc b                                         ; $7632: $04
    inc b                                         ; $7633: $04
    inc b                                         ; $7634: $04
    inc b                                         ; $7635: $04
    ld c, c                                       ; $7636: $49
    ld c, d                                       ; $7637: $4a
    ld c, e                                       ; $7638: $4b
    ld l, b                                       ; $7639: $68
    pop de                                        ; $763a: $d1
    pop de                                        ; $763b: $d1
    pop de                                        ; $763c: $d1
    pop de                                        ; $763d: $d1
    pop de                                        ; $763e: $d1
    pop de                                        ; $763f: $d1
    pop de                                        ; $7640: $d1
    pop de                                        ; $7641: $d1
    pop de                                        ; $7642: $d1
    pop de                                        ; $7643: $d1
    pop de                                        ; $7644: $d1
    pop de                                        ; $7645: $d1
    add a                                         ; $7646: $87
    add h                                         ; $7647: $84
    add [hl]                                      ; $7648: $86
    add a                                         ; $7649: $87
    add h                                         ; $764a: $84
    add h                                         ; $764b: $84
    add h                                         ; $764c: $84
    add h                                         ; $764d: $84
    inc b                                         ; $764e: $04
    inc b                                         ; $764f: $04
    inc b                                         ; $7650: $04
    inc b                                         ; $7651: $04
    inc b                                         ; $7652: $04
    inc b                                         ; $7653: $04
    inc b                                         ; $7654: $04
    inc b                                         ; $7655: $04
    ld l, c                                       ; $7656: $69
    pop de                                        ; $7657: $d1
    pop de                                        ; $7658: $d1
    pop de                                        ; $7659: $d1
    pop de                                        ; $765a: $d1
    pop de                                        ; $765b: $d1
    pop de                                        ; $765c: $d1
    pop de                                        ; $765d: $d1
    pop de                                        ; $765e: $d1
    pop de                                        ; $765f: $d1
    pop de                                        ; $7660: $d1
    pop de                                        ; $7661: $d1
    pop de                                        ; $7662: $d1
    pop de                                        ; $7663: $d1
    pop de                                        ; $7664: $d1
    pop de                                        ; $7665: $d1
    add h                                         ; $7666: $84
    add h                                         ; $7667: $84
    add h                                         ; $7668: $84
    add h                                         ; $7669: $84
    add h                                         ; $766a: $84
    inc b                                         ; $766b: $04
    inc b                                         ; $766c: $04
    inc b                                         ; $766d: $04
    inc b                                         ; $766e: $04
    inc b                                         ; $766f: $04
    inc b                                         ; $7670: $04
    inc b                                         ; $7671: $04
    inc b                                         ; $7672: $04
    inc b                                         ; $7673: $04
    inc b                                         ; $7674: $04
    inc b                                         ; $7675: $04
    pop de                                        ; $7676: $d1
    ld l, b                                       ; $7677: $68
    ld b, d                                       ; $7678: $42
    ld b, h                                       ; $7679: $44
    pop de                                        ; $767a: $d1
    pop de                                        ; $767b: $d1
    pop de                                        ; $767c: $d1
    pop de                                        ; $767d: $d1
    pop de                                        ; $767e: $d1
    pop de                                        ; $767f: $d1
    pop de                                        ; $7680: $d1

Call_07b_7681:
    pop de                                        ; $7681: $d1
    pop de                                        ; $7682: $d1
    pop de                                        ; $7683: $d1
    pop de                                        ; $7684: $d1
    pop de                                        ; $7685: $d1
    inc b                                         ; $7686: $04
    and h                                         ; $7687: $a4
    add a                                         ; $7688: $87
    add [hl]                                      ; $7689: $86
    inc b                                         ; $768a: $04
    add h                                         ; $768b: $84
    add h                                         ; $768c: $84
    add h                                         ; $768d: $84
    inc b                                         ; $768e: $04
    inc b                                         ; $768f: $04
    inc b                                         ; $7690: $04
    inc b                                         ; $7691: $04
    inc b                                         ; $7692: $04
    inc b                                         ; $7693: $04
    inc b                                         ; $7694: $04
    inc b                                         ; $7695: $04
    ld c, b                                       ; $7696: $48
    ld c, c                                       ; $7697: $49
    ld c, d                                       ; $7698: $4a
    ld c, e                                       ; $7699: $4b
    pop de                                        ; $769a: $d1
    pop de                                        ; $769b: $d1
    pop de                                        ; $769c: $d1
    pop de                                        ; $769d: $d1
    pop de                                        ; $769e: $d1
    pop de                                        ; $769f: $d1
    pop de                                        ; $76a0: $d1
    pop de                                        ; $76a1: $d1
    pop de                                        ; $76a2: $d1
    pop de                                        ; $76a3: $d1
    pop de                                        ; $76a4: $d1
    pop de                                        ; $76a5: $d1
    add [hl]                                      ; $76a6: $86
    add a                                         ; $76a7: $87
    add [hl]                                      ; $76a8: $86
    add a                                         ; $76a9: $87
    add h                                         ; $76aa: $84
    add h                                         ; $76ab: $84
    add h                                         ; $76ac: $84
    add h                                         ; $76ad: $84
    inc b                                         ; $76ae: $04
    inc b                                         ; $76af: $04
    inc b                                         ; $76b0: $04
    inc b                                         ; $76b1: $04
    inc b                                         ; $76b2: $04
    inc b                                         ; $76b3: $04
    inc b                                         ; $76b4: $04
    inc b                                         ; $76b5: $04
    ld l, b                                       ; $76b6: $68
    ld l, c                                       ; $76b7: $69
    ld b, d                                       ; $76b8: $42
    ld b, h                                       ; $76b9: $44
    pop de                                        ; $76ba: $d1
    pop de                                        ; $76bb: $d1
    pop de                                        ; $76bc: $d1
    pop de                                        ; $76bd: $d1
    pop de                                        ; $76be: $d1
    pop de                                        ; $76bf: $d1
    pop de                                        ; $76c0: $d1
    pop de                                        ; $76c1: $d1
    pop de                                        ; $76c2: $d1
    pop de                                        ; $76c3: $d1
    pop de                                        ; $76c4: $d1
    pop de                                        ; $76c5: $d1
    add a                                         ; $76c6: $87
    add h                                         ; $76c7: $84
    add h                                         ; $76c8: $84
    add [hl]                                      ; $76c9: $86
    add h                                         ; $76ca: $84
    add h                                         ; $76cb: $84
    add h                                         ; $76cc: $84
    add h                                         ; $76cd: $84
    inc b                                         ; $76ce: $04
    inc b                                         ; $76cf: $04
    inc b                                         ; $76d0: $04
    inc b                                         ; $76d1: $04
    inc b                                         ; $76d2: $04
    inc b                                         ; $76d3: $04
    inc b                                         ; $76d4: $04
    inc b                                         ; $76d5: $04
    ld c, b                                       ; $76d6: $48
    ld c, c                                       ; $76d7: $49
    ld c, d                                       ; $76d8: $4a
    ld c, e                                       ; $76d9: $4b
    pop de                                        ; $76da: $d1
    pop de                                        ; $76db: $d1
    pop de                                        ; $76dc: $d1
    pop de                                        ; $76dd: $d1
    pop de                                        ; $76de: $d1
    pop de                                        ; $76df: $d1
    pop de                                        ; $76e0: $d1
    pop de                                        ; $76e1: $d1
    pop de                                        ; $76e2: $d1
    pop de                                        ; $76e3: $d1
    pop de                                        ; $76e4: $d1
    pop de                                        ; $76e5: $d1
    add a                                         ; $76e6: $87
    add [hl]                                      ; $76e7: $86
    add a                                         ; $76e8: $87
    add a                                         ; $76e9: $87
    add h                                         ; $76ea: $84
    add h                                         ; $76eb: $84
    add h                                         ; $76ec: $84
    add h                                         ; $76ed: $84
    inc b                                         ; $76ee: $04
    inc b                                         ; $76ef: $04
    inc b                                         ; $76f0: $04
    inc b                                         ; $76f1: $04
    inc b                                         ; $76f2: $04
    inc b                                         ; $76f3: $04
    inc b                                         ; $76f4: $04
    inc b                                         ; $76f5: $04
    ld l, b                                       ; $76f6: $68
    ld l, b                                       ; $76f7: $68
    pop de                                        ; $76f8: $d1
    pop de                                        ; $76f9: $d1
    pop de                                        ; $76fa: $d1
    pop de                                        ; $76fb: $d1
    pop de                                        ; $76fc: $d1
    pop de                                        ; $76fd: $d1
    pop de                                        ; $76fe: $d1
    pop de                                        ; $76ff: $d1
    pop de                                        ; $7700: $d1
    pop de                                        ; $7701: $d1
    pop de                                        ; $7702: $d1
    pop de                                        ; $7703: $d1
    pop de                                        ; $7704: $d1
    pop de                                        ; $7705: $d1
    add h                                         ; $7706: $84
    add h                                         ; $7707: $84
    add h                                         ; $7708: $84
    inc b                                         ; $7709: $04
    add h                                         ; $770a: $84
    add h                                         ; $770b: $84
    inc b                                         ; $770c: $04
    inc b                                         ; $770d: $04
    inc b                                         ; $770e: $04
    inc b                                         ; $770f: $04
    inc b                                         ; $7710: $04
    inc b                                         ; $7711: $04
    inc b                                         ; $7712: $04
    inc b                                         ; $7713: $04
    inc b                                         ; $7714: $04
    inc b                                         ; $7715: $04
    add hl, bc                                    ; $7716: $09
    nop                                           ; $7717: $00
    dec b                                         ; $7718: $05

Jump_07b_7719:
    nop                                           ; $7719: $00
    add b                                         ; $771a: $80
    dec b                                         ; $771b: $05
    pop de                                        ; $771c: $d1
    pop de                                        ; $771d: $d1
    pop de                                        ; $771e: $d1
    pop de                                        ; $771f: $d1
    pop de                                        ; $7720: $d1
    pop de                                        ; $7721: $d1
    pop de                                        ; $7722: $d1
    pop de                                        ; $7723: $d1
    pop de                                        ; $7724: $d1
    pop de                                        ; $7725: $d1
    pop de                                        ; $7726: $d1
    pop de                                        ; $7727: $d1
    pop de                                        ; $7728: $d1
    pop de                                        ; $7729: $d1
    pop de                                        ; $772a: $d1
    pop de                                        ; $772b: $d1
    add b                                         ; $772c: $80
    add b                                         ; $772d: $80
    add b                                         ; $772e: $80
    add b                                         ; $772f: $80
    add b                                         ; $7730: $80
    add b                                         ; $7731: $80
    add b                                         ; $7732: $80
    add b                                         ; $7733: $80
    add b                                         ; $7734: $80
    add b                                         ; $7735: $80
    add b                                         ; $7736: $80
    add b                                         ; $7737: $80
    add b                                         ; $7738: $80
    add b                                         ; $7739: $80
    add b                                         ; $773a: $80
    add b                                         ; $773b: $80
    pop de                                        ; $773c: $d1
    pop de                                        ; $773d: $d1
    pop de                                        ; $773e: $d1
    jp nc, $d1d1                                  ; $773f: $d2 $d1 $d1

    pop de                                        ; $7742: $d1
    jp nc, $d1d1                                  ; $7743: $d2 $d1 $d1

    pop de                                        ; $7746: $d1
    jp nc, $d1d1                                  ; $7747: $d2 $d1 $d1

    pop de                                        ; $774a: $d1
    jp nc, $8080                                  ; $774b: $d2 $80 $80

    add b                                         ; $774e: $80
    add b                                         ; $774f: $80
    add b                                         ; $7750: $80
    add b                                         ; $7751: $80
    add b                                         ; $7752: $80
    add b                                         ; $7753: $80
    add b                                         ; $7754: $80
    add b                                         ; $7755: $80
    add b                                         ; $7756: $80
    add b                                         ; $7757: $80
    add b                                         ; $7758: $80
    add b                                         ; $7759: $80
    add b                                         ; $775a: $80
    add b                                         ; $775b: $80
    db $d3                                        ; $775c: $d3
    call nc, $d6d5                                ; $775d: $d4 $d5 $d6
    rst $10                                       ; $7760: $d7
    ret c                                         ; $7761: $d8

    reti                                          ; $7762: $d9


    jp c, $dcdb                                   ; $7763: $da $db $dc

    db $dd                                        ; $7766: $dd
    sbc $df                                       ; $7767: $de $df
    ldh [$e1], a                                  ; $7769: $e0 $e1
    jp c, Jump_000_0303                           ; $776b: $da $03 $03

    inc bc                                        ; $776e: $03
    ld [bc], a                                    ; $776f: $02
    inc bc                                        ; $7770: $03
    inc bc                                        ; $7771: $03
    inc bc                                        ; $7772: $03
    ld [bc], a                                    ; $7773: $02
    inc bc                                        ; $7774: $03
    inc bc                                        ; $7775: $03
    inc bc                                        ; $7776: $03
    ld [bc], a                                    ; $7777: $02
    inc bc                                        ; $7778: $03
    inc bc                                        ; $7779: $03
    inc bc                                        ; $777a: $03
    ld [bc], a                                    ; $777b: $02
    sub $e2                                       ; $777c: $d6 $e2
    sub $d6                                       ; $777e: $d6 $d6
    jp c, $dae2                                   ; $7780: $da $e2 $da

    jp c, $e2de                                   ; $7783: $da $de $e2

    sbc $de                                       ; $7786: $de $de
    jp c, $dae2                                   ; $7788: $da $e2 $da

    jp c, $0202                                   ; $778b: $da $02 $02

    ld [bc], a                                    ; $778e: $02
    ld [bc], a                                    ; $778f: $02
    ld [bc], a                                    ; $7790: $02
    ld [bc], a                                    ; $7791: $02
    ld [bc], a                                    ; $7792: $02
    ld [bc], a                                    ; $7793: $02
    ld [bc], a                                    ; $7794: $02
    ld [bc], a                                    ; $7795: $02
    ld [bc], a                                    ; $7796: $02
    ld [bc], a                                    ; $7797: $02
    ld [bc], a                                    ; $7798: $02
    ld [bc], a                                    ; $7799: $02
    ld [bc], a                                    ; $779a: $02
    ld [bc], a                                    ; $779b: $02
    pop de                                        ; $779c: $d1
    pop de                                        ; $779d: $d1
    pop de                                        ; $779e: $d1
    pop de                                        ; $779f: $d1
    pop de                                        ; $77a0: $d1
    pop de                                        ; $77a1: $d1
    pop de                                        ; $77a2: $d1
    pop de                                        ; $77a3: $d1
    pop de                                        ; $77a4: $d1
    db $e3                                        ; $77a5: $e3
    db $e4                                        ; $77a6: $e4
    db $e4                                        ; $77a7: $e4
    pop de                                        ; $77a8: $d1
    jp nc, $e6e5                                  ; $77a9: $d2 $e5 $e6

    add b                                         ; $77ac: $80
    add b                                         ; $77ad: $80
    add b                                         ; $77ae: $80
    add b                                         ; $77af: $80
    add b                                         ; $77b0: $80
    add b                                         ; $77b1: $80
    add b                                         ; $77b2: $80
    add b                                         ; $77b3: $80
    add b                                         ; $77b4: $80
    add b                                         ; $77b5: $80
    add b                                         ; $77b6: $80
    add b                                         ; $77b7: $80
    add b                                         ; $77b8: $80
    add b                                         ; $77b9: $80
    ld [bc], a                                    ; $77ba: $02
    ld [bc], a                                    ; $77bb: $02
    pop de                                        ; $77bc: $d1
    pop de                                        ; $77bd: $d1
    pop de                                        ; $77be: $d1
    jp nc, $d1d1                                  ; $77bf: $d2 $d1 $d1

    pop de                                        ; $77c2: $d1
    jp nc, $e4e4                                  ; $77c3: $d2 $e4 $e4

    db $e4                                        ; $77c6: $e4
    rst $20                                       ; $77c7: $e7
    add sp, -$17                                  ; $77c8: $e8 $e9
    ld [$80eb], a                                 ; $77ca: $ea $eb $80
    add b                                         ; $77cd: $80
    add b                                         ; $77ce: $80
    add b                                         ; $77cf: $80
    add b                                         ; $77d0: $80
    add b                                         ; $77d1: $80
    add b                                         ; $77d2: $80
    add b                                         ; $77d3: $80
    add b                                         ; $77d4: $80
    add b                                         ; $77d5: $80
    add b                                         ; $77d6: $80
    add b                                         ; $77d7: $80
    ld [bc], a                                    ; $77d8: $02
    ld [bc], a                                    ; $77d9: $02
    ld [bc], a                                    ; $77da: $02
    ld [bc], a                                    ; $77db: $02
    db $ec                                        ; $77dc: $ec
    db $ed                                        ; $77dd: $ed
    xor $ef                                       ; $77de: $ee $ef
    ldh a, [$f1]                                  ; $77e0: $f0 $f1
    ld a, [c]                                     ; $77e2: $f2
    di                                            ; $77e3: $f3
    db $f4                                        ; $77e4: $f4
    push af                                       ; $77e5: $f5
    or $f7                                        ; $77e6: $f6 $f7
    ld hl, sp-$07                                 ; $77e8: $f8 $f9
    ld a, [$03fb]                                 ; $77ea: $fa $fb $03
    inc bc                                        ; $77ed: $03
    inc bc                                        ; $77ee: $03
    ld [bc], a                                    ; $77ef: $02
    rlca                                          ; $77f0: $07
    rlca                                          ; $77f1: $07
    rlca                                          ; $77f2: $07
    rlca                                          ; $77f3: $07
    rlca                                          ; $77f4: $07
    dec b                                         ; $77f5: $05
    inc b                                         ; $77f6: $04
    dec b                                         ; $77f7: $05
    rlca                                          ; $77f8: $07
    inc b                                         ; $77f9: $04
    dec b                                         ; $77fa: $05
    dec b                                         ; $77fb: $05
    db $fc                                        ; $77fc: $fc
    db $fd                                        ; $77fd: $fd
    rst $28                                       ; $77fe: $ef
    db $fc                                        ; $77ff: $fc
    cp $ff                                        ; $7800: $fe $ff
    nop                                           ; $7802: $00
    ld bc, $0302                                  ; $7803: $01 $02 $03
    inc b                                         ; $7806: $04
    dec b                                         ; $7807: $05
    ld b, $07                                     ; $7808: $06 $07
    ld [$0209], sp                                ; $780a: $08 $09 $02
    ld [bc], a                                    ; $780d: $02
    ld [bc], a                                    ; $780e: $02
    ld [bc], a                                    ; $780f: $02
    rlca                                          ; $7810: $07
    rlca                                          ; $7811: $07
    rlca                                          ; $7812: $07
    rlca                                          ; $7813: $07
    dec b                                         ; $7814: $05
    inc b                                         ; $7815: $04
    inc b                                         ; $7816: $04
    inc b                                         ; $7817: $04
    ld b, $06                                     ; $7818: $06 $06
    ld b, $06                                     ; $781a: $06 $06
    pop de                                        ; $781c: $d1
    ld a, [bc]                                    ; $781d: $0a
    dec bc                                        ; $781e: $0b
    inc c                                         ; $781f: $0c
    pop de                                        ; $7820: $d1
    ld a, [bc]                                    ; $7821: $0a
    dec c                                         ; $7822: $0d
    ld c, $d1                                     ; $7823: $0e $d1
    ld a, [bc]                                    ; $7825: $0a
    rrca                                          ; $7826: $0f
    db $10                                        ; $7827: $10
    pop de                                        ; $7828: $d1
    ld a, [bc]                                    ; $7829: $0a
    ld de, $8012                                  ; $782a: $11 $12 $80
    add b                                         ; $782d: $80
    ld [bc], a                                    ; $782e: $02
    ld [bc], a                                    ; $782f: $02
    add b                                         ; $7830: $80
    add b                                         ; $7831: $80
    ld [bc], a                                    ; $7832: $02
    ld [bc], a                                    ; $7833: $02
    add b                                         ; $7834: $80
    add b                                         ; $7835: $80
    ld [bc], a                                    ; $7836: $02
    ld [bc], a                                    ; $7837: $02
    add b                                         ; $7838: $80
    add b                                         ; $7839: $80
    ld [bc], a                                    ; $783a: $02
    ld [bc], a                                    ; $783b: $02
    inc de                                        ; $783c: $13
    inc d                                         ; $783d: $14
    dec d                                         ; $783e: $15
    ld d, $17                                     ; $783f: $16 $17
    jr jr_07b_785c                                ; $7841: $18 $19

    ld a, [de]                                    ; $7843: $1a
    dec de                                        ; $7844: $1b
    inc e                                         ; $7845: $1c
    dec e                                         ; $7846: $1d
    ld e, $1f                                     ; $7847: $1e $1f
    jr nz, jr_07b_786c                            ; $7849: $20 $21

    ld [hl+], a                                   ; $784b: $22
    ld [bc], a                                    ; $784c: $02
    ld [bc], a                                    ; $784d: $02
    ld [bc], a                                    ; $784e: $02
    ld [bc], a                                    ; $784f: $02
    ld [bc], a                                    ; $7850: $02
    ld [bc], a                                    ; $7851: $02
    ld [bc], a                                    ; $7852: $02
    ld [bc], a                                    ; $7853: $02
    ld [bc], a                                    ; $7854: $02
    ld [bc], a                                    ; $7855: $02
    ld [bc], a                                    ; $7856: $02
    ld [bc], a                                    ; $7857: $02
    ld [bc], a                                    ; $7858: $02
    ld [bc], a                                    ; $7859: $02
    ld [bc], a                                    ; $785a: $02
    ld [bc], a                                    ; $785b: $02

jr_07b_785c:
    inc hl                                        ; $785c: $23
    inc h                                         ; $785d: $24
    dec h                                         ; $785e: $25
    ld h, $fe                                     ; $785f: $26 $fe
    rst $38                                       ; $7861: $ff
    nop                                           ; $7862: $00
    ld bc, $0302                                  ; $7863: $01 $02 $03
    inc b                                         ; $7866: $04
    dec b                                         ; $7867: $05
    daa                                           ; $7868: $27
    jr z, @+$2b                                   ; $7869: $28 $29

    ld a, [hl+]                                   ; $786b: $2a

jr_07b_786c:
    rlca                                          ; $786c: $07
    dec b                                         ; $786d: $05
    inc b                                         ; $786e: $04
    rlca                                          ; $786f: $07
    rlca                                          ; $7870: $07
    inc b                                         ; $7871: $04
    dec b                                         ; $7872: $05
    rlca                                          ; $7873: $07
    rlca                                          ; $7874: $07
    inc b                                         ; $7875: $04
    dec b                                         ; $7876: $05
    rlca                                          ; $7877: $07
    rlca                                          ; $7878: $07
    dec b                                         ; $7879: $05
    dec b                                         ; $787a: $05
    rlca                                          ; $787b: $07
    dec hl                                        ; $787c: $2b
    inc l                                         ; $787d: $2c
    dec l                                         ; $787e: $2d
    ld l, $2f                                     ; $787f: $2e $2f
    jr nc, jr_07b_78b4                            ; $7881: $30 $31

    ld [hl-], a                                   ; $7883: $32
    inc sp                                        ; $7884: $33
    inc [hl]                                      ; $7885: $34
    dec [hl]                                      ; $7886: $35
    ld [hl], $f8                                  ; $7887: $36 $f8
    ld sp, hl                                     ; $7889: $f9
    ld a, [$06fb]                                 ; $788a: $fa $fb $06
    ld b, $06                                     ; $788d: $06 $06
    ld b, $06                                     ; $788f: $06 $06
    ld b, $06                                     ; $7891: $06 $06
    ld b, $06                                     ; $7893: $06 $06
    ld b, $06                                     ; $7895: $06 $06
    ld b, $07                                     ; $7897: $06 $07
    rlca                                          ; $7899: $07
    rlca                                          ; $789a: $07
    rlca                                          ; $789b: $07
    scf                                           ; $789c: $37
    ld a, [bc]                                    ; $789d: $0a
    jr c, jr_07b_78d9                             ; $789e: $38 $39

    scf                                           ; $78a0: $37
    jp nc, $f3f2                                  ; $78a1: $d2 $f2 $f3

    scf                                           ; $78a4: $37
    ld a, [hl-]                                   ; $78a5: $3a
    db $e4                                        ; $78a6: $e4
    db $e4                                        ; $78a7: $e4
    pop de                                        ; $78a8: $d1
    pop de                                        ; $78a9: $d1
    pop de                                        ; $78aa: $d1
    pop de                                        ; $78ab: $d1
    add b                                         ; $78ac: $80
    add b                                         ; $78ad: $80
    rlca                                          ; $78ae: $07
    rlca                                          ; $78af: $07
    add b                                         ; $78b0: $80
    add b                                         ; $78b1: $80
    rlca                                          ; $78b2: $07
    dec b                                         ; $78b3: $05

jr_07b_78b4:
    add b                                         ; $78b4: $80
    add b                                         ; $78b5: $80
    add b                                         ; $78b6: $80
    add b                                         ; $78b7: $80
    add b                                         ; $78b8: $80
    add b                                         ; $78b9: $80
    add b                                         ; $78ba: $80
    add b                                         ; $78bb: $80
    inc hl                                        ; $78bc: $23
    inc h                                         ; $78bd: $24
    dec h                                         ; $78be: $25
    ld h, $fe                                     ; $78bf: $26 $fe
    rst $38                                       ; $78c1: $ff
    nop                                           ; $78c2: $00
    ld bc, $e4e4                                  ; $78c3: $01 $e4 $e4
    db $e4                                        ; $78c6: $e4
    dec sp                                        ; $78c7: $3b
    pop de                                        ; $78c8: $d1
    pop de                                        ; $78c9: $d1
    pop de                                        ; $78ca: $d1
    jp nc, $0707                                  ; $78cb: $d2 $07 $07

    rlca                                          ; $78ce: $07
    rlca                                          ; $78cf: $07
    inc b                                         ; $78d0: $04
    dec b                                         ; $78d1: $05
    inc b                                         ; $78d2: $04
    dec b                                         ; $78d3: $05
    add b                                         ; $78d4: $80
    add b                                         ; $78d5: $80
    add b                                         ; $78d6: $80
    add b                                         ; $78d7: $80
    add b                                         ; $78d8: $80

jr_07b_78d9:
    add b                                         ; $78d9: $80
    add b                                         ; $78da: $80
    add b                                         ; $78db: $80
    inc a                                         ; $78dc: $3c
    dec a                                         ; $78dd: $3d
    jr c, jr_07b_7919                             ; $78de: $38 $39

    ldh a, [$f1]                                  ; $78e0: $f0 $f1
    ld a, [c]                                     ; $78e2: $f2
    di                                            ; $78e3: $f3
    db $f4                                        ; $78e4: $f4
    push af                                       ; $78e5: $f5
    or $f7                                        ; $78e6: $f6 $f7
    ld hl, sp-$07                                 ; $78e8: $f8 $f9
    ld a, [$07fb]                                 ; $78ea: $fa $fb $07
    inc b                                         ; $78ed: $04
    inc b                                         ; $78ee: $04
    dec b                                         ; $78ef: $05
    dec b                                         ; $78f0: $05
    dec b                                         ; $78f1: $05
    inc b                                         ; $78f2: $04
    dec b                                         ; $78f3: $05
    dec b                                         ; $78f4: $05
    dec b                                         ; $78f5: $05
    dec b                                         ; $78f6: $05
    inc b                                         ; $78f7: $04
    dec b                                         ; $78f8: $05
    inc b                                         ; $78f9: $04
    dec b                                         ; $78fa: $05
    dec b                                         ; $78fb: $05
    inc hl                                        ; $78fc: $23
    inc h                                         ; $78fd: $24
    dec h                                         ; $78fe: $25
    ld a, $fe                                     ; $78ff: $3e $fe
    rst $38                                       ; $7901: $ff
    nop                                           ; $7902: $00
    ccf                                           ; $7903: $3f
    ld [bc], a                                    ; $7904: $02
    inc bc                                        ; $7905: $03
    ld b, b                                       ; $7906: $40
    ld b, c                                       ; $7907: $41
    daa                                           ; $7908: $27
    jr z, jr_07b_794d                             ; $7909: $28 $42

    ld b, e                                       ; $790b: $43
    dec b                                         ; $790c: $05
    inc b                                         ; $790d: $04
    dec b                                         ; $790e: $05
    inc b                                         ; $790f: $04
    inc b                                         ; $7910: $04
    dec b                                         ; $7911: $05
    dec b                                         ; $7912: $05
    add [hl]                                      ; $7913: $86
    dec b                                         ; $7914: $05
    dec b                                         ; $7915: $05
    add [hl]                                      ; $7916: $86
    add [hl]                                      ; $7917: $86
    dec b                                         ; $7918: $05

jr_07b_7919:
    dec b                                         ; $7919: $05
    add [hl]                                      ; $791a: $86
    add [hl]                                      ; $791b: $86
    ld b, h                                       ; $791c: $44
    ld b, l                                       ; $791d: $45
    ld b, [hl]                                    ; $791e: $46
    ld b, a                                       ; $791f: $47
    ld c, b                                       ; $7920: $48
    ld c, c                                       ; $7921: $49
    ld c, d                                       ; $7922: $4a
    ld c, e                                       ; $7923: $4b
    ld c, h                                       ; $7924: $4c
    ld c, l                                       ; $7925: $4d
    ld c, [hl]                                    ; $7926: $4e
    ld c, a                                       ; $7927: $4f
    ld d, b                                       ; $7928: $50
    ld d, c                                       ; $7929: $51
    ld d, d                                       ; $792a: $52
    ld d, e                                       ; $792b: $53
    inc bc                                        ; $792c: $03
    inc bc                                        ; $792d: $03
    inc bc                                        ; $792e: $03
    ld [bc], a                                    ; $792f: $02
    inc bc                                        ; $7930: $03
    inc bc                                        ; $7931: $03
    inc bc                                        ; $7932: $03
    ld [bc], a                                    ; $7933: $02
    inc bc                                        ; $7934: $03
    inc bc                                        ; $7935: $03
    inc bc                                        ; $7936: $03
    ld [bc], a                                    ; $7937: $02
    inc bc                                        ; $7938: $03
    inc bc                                        ; $7939: $03
    inc bc                                        ; $793a: $03
    ld [bc], a                                    ; $793b: $02
    ld d, h                                       ; $793c: $54
    ld d, l                                       ; $793d: $55
    ld d, [hl]                                    ; $793e: $56
    ld d, a                                       ; $793f: $57
    ld e, b                                       ; $7940: $58
    ld e, c                                       ; $7941: $59
    ld e, d                                       ; $7942: $5a
    ld e, e                                       ; $7943: $5b
    ld e, h                                       ; $7944: $5c
    ld e, l                                       ; $7945: $5d
    ld e, [hl]                                    ; $7946: $5e
    ld e, a                                       ; $7947: $5f
    ld h, b                                       ; $7948: $60
    ld h, c                                       ; $7949: $61
    ld h, d                                       ; $794a: $62
    ld h, e                                       ; $794b: $63
    ld [bc], a                                    ; $794c: $02

jr_07b_794d:
    ld bc, $0101                                  ; $794d: $01 $01 $01
    ld [bc], a                                    ; $7950: $02
    ld bc, $0202                                  ; $7951: $01 $02 $02
    ld [bc], a                                    ; $7954: $02
    ld bc, $0202                                  ; $7955: $01 $02 $02
    ld [bc], a                                    ; $7958: $02
    ld bc, $0202                                  ; $7959: $01 $02 $02
    ld d, [hl]                                    ; $795c: $56
    ld d, l                                       ; $795d: $55
    ld h, h                                       ; $795e: $64
    ld h, l                                       ; $795f: $65
    ld e, d                                       ; $7960: $5a
    ld e, c                                       ; $7961: $59
    ld h, [hl]                                    ; $7962: $66
    ld h, a                                       ; $7963: $67
    ld l, b                                       ; $7964: $68
    ld e, l                                       ; $7965: $5d
    ld [c], a                                     ; $7966: $e2
    ld l, c                                       ; $7967: $69
    ld l, d                                       ; $7968: $6a
    ld h, c                                       ; $7969: $61
    ld [c], a                                     ; $796a: $e2
    ld l, e                                       ; $796b: $6b
    ld hl, $0221                                  ; $796c: $21 $21 $02
    ld [bc], a                                    ; $796f: $02
    ld [hl+], a                                   ; $7970: $22
    ld hl, $0202                                  ; $7971: $21 $02 $02
    ld [bc], a                                    ; $7974: $02
    ld hl, $0202                                  ; $7975: $21 $02 $02
    ld [bc], a                                    ; $7978: $02
    ld hl, $0202                                  ; $7979: $21 $02 $02
    ld [$6cea], a                                 ; $797c: $ea $ea $6c
    ld l, l                                       ; $797f: $6d
    ld l, [hl]                                    ; $7980: $6e
    ld [$706f], a                                 ; $7981: $ea $6f $70
    ld [hl], c                                    ; $7984: $71
    ld [$6c72], a                                 ; $7985: $ea $72 $6c
    ld [hl], e                                    ; $7988: $73
    ld [hl], h                                    ; $7989: $74
    ld [hl], l                                    ; $798a: $75
    halt                                          ; $798b: $76
    ld [bc], a                                    ; $798c: $02
    ld [bc], a                                    ; $798d: $02
    ld [bc], a                                    ; $798e: $02
    ld [bc], a                                    ; $798f: $02
    ld [bc], a                                    ; $7990: $02
    ld [bc], a                                    ; $7991: $02
    ld [bc], a                                    ; $7992: $02
    ld [bc], a                                    ; $7993: $02
    ld [bc], a                                    ; $7994: $02
    ld [bc], a                                    ; $7995: $02
    ld [bc], a                                    ; $7996: $02
    ld [bc], a                                    ; $7997: $02
    ld [bc], a                                    ; $7998: $02
    ld [bc], a                                    ; $7999: $02
    ld [bc], a                                    ; $799a: $02
    ld [bc], a                                    ; $799b: $02
    ld [hl], a                                    ; $799c: $77
    ld a, b                                       ; $799d: $78
    ld a, c                                       ; $799e: $79
    ld a, d                                       ; $799f: $7a
    ldh a, [$f1]                                  ; $79a0: $f0 $f1
    ld a, [c]                                     ; $79a2: $f2
    di                                            ; $79a3: $f3
    db $f4                                        ; $79a4: $f4
    push af                                       ; $79a5: $f5
    or $f7                                        ; $79a6: $f6 $f7
    ld hl, sp-$07                                 ; $79a8: $f8 $f9
    ld a, [$03fb]                                 ; $79aa: $fa $fb $03
    inc bc                                        ; $79ad: $03
    inc bc                                        ; $79ae: $03
    ld [bc], a                                    ; $79af: $02
    rlca                                          ; $79b0: $07
    rlca                                          ; $79b1: $07
    rlca                                          ; $79b2: $07
    rlca                                          ; $79b3: $07
    dec b                                         ; $79b4: $05
    inc b                                         ; $79b5: $04
    dec b                                         ; $79b6: $05
    dec b                                         ; $79b7: $05
    dec b                                         ; $79b8: $05
    dec b                                         ; $79b9: $05
    inc b                                         ; $79ba: $04
    dec b                                         ; $79bb: $05
    ld a, e                                       ; $79bc: $7b
    ld a, h                                       ; $79bd: $7c
    ld a, l                                       ; $79be: $7d
    ld a, [hl]                                    ; $79bf: $7e
    cp $7f                                        ; $79c0: $fe $7f
    add b                                         ; $79c2: $80
    add c                                         ; $79c3: $81
    ld [bc], a                                    ; $79c4: $02
    inc bc                                        ; $79c5: $03
    inc b                                         ; $79c6: $04
    add d                                         ; $79c7: $82
    daa                                           ; $79c8: $27
    jr z, jr_07b_79f4                             ; $79c9: $28 $29

    ld a, [hl+]                                   ; $79cb: $2a
    ld [bc], a                                    ; $79cc: $02
    ld bc, $0202                                  ; $79cd: $01 $02 $02
    rlca                                          ; $79d0: $07
    rlca                                          ; $79d1: $07
    rrca                                          ; $79d2: $0f
    rrca                                          ; $79d3: $0f
    inc b                                         ; $79d4: $04
    dec b                                         ; $79d5: $05
    inc b                                         ; $79d6: $04
    dec c                                         ; $79d7: $0d
    dec b                                         ; $79d8: $05
    inc b                                         ; $79d9: $04
    dec b                                         ; $79da: $05
    dec b                                         ; $79db: $05
    add e                                         ; $79dc: $83
    ld a, h                                       ; $79dd: $7c
    add h                                         ; $79de: $84
    add l                                         ; $79df: $85
    add [hl]                                      ; $79e0: $86
    add a                                         ; $79e1: $87
    ld a, [c]                                     ; $79e2: $f2
    di                                            ; $79e3: $f3
    db $f4                                        ; $79e4: $f4
    push af                                       ; $79e5: $f5
    or $f7                                        ; $79e6: $f6 $f7
    ld hl, sp-$07                                 ; $79e8: $f8 $f9
    ld a, [$0afb]                                 ; $79ea: $fa $fb $0a
    ld hl, $0a0a                                  ; $79ed: $21 $0a $0a
    rrca                                          ; $79f0: $0f
    rrca                                          ; $79f1: $0f
    rlca                                          ; $79f2: $07
    rlca                                          ; $79f3: $07

jr_07b_79f4:
    dec b                                         ; $79f4: $05
    dec b                                         ; $79f5: $05
    dec b                                         ; $79f6: $05
    dec b                                         ; $79f7: $05
    dec b                                         ; $79f8: $05
    inc b                                         ; $79f9: $04
    inc b                                         ; $79fa: $04
    dec b                                         ; $79fb: $05
    adc b                                         ; $79fc: $88
    adc c                                         ; $79fd: $89
    adc d                                         ; $79fe: $8a
    adc e                                         ; $79ff: $8b
    cp $ff                                        ; $7a00: $fe $ff
    nop                                           ; $7a02: $00
    ld bc, $0302                                  ; $7a03: $01 $02 $03
    inc b                                         ; $7a06: $04
    dec b                                         ; $7a07: $05
    daa                                           ; $7a08: $27
    jr z, jr_07b_7a34                             ; $7a09: $28 $29

    ld a, [hl+]                                   ; $7a0b: $2a
    ld a, [bc]                                    ; $7a0c: $0a
    ld a, [bc]                                    ; $7a0d: $0a
    ld a, [bc]                                    ; $7a0e: $0a
    ld a, [bc]                                    ; $7a0f: $0a
    rlca                                          ; $7a10: $07
    rlca                                          ; $7a11: $07
    rlca                                          ; $7a12: $07
    rlca                                          ; $7a13: $07
    inc b                                         ; $7a14: $04
    inc b                                         ; $7a15: $04
    inc b                                         ; $7a16: $04
    dec b                                         ; $7a17: $05
    dec b                                         ; $7a18: $05
    dec b                                         ; $7a19: $05
    dec b                                         ; $7a1a: $05
    dec b                                         ; $7a1b: $05
    inc hl                                        ; $7a1c: $23
    inc h                                         ; $7a1d: $24
    dec h                                         ; $7a1e: $25
    ld h, $fe                                     ; $7a1f: $26 $fe
    adc h                                         ; $7a21: $8c
    adc l                                         ; $7a22: $8d
    ld bc, $8e02                                  ; $7a23: $01 $02 $8e
    adc a                                         ; $7a26: $8f
    dec b                                         ; $7a27: $05
    daa                                           ; $7a28: $27
    jr z, jr_07b_7a54                             ; $7a29: $28 $29

    ld a, [hl+]                                   ; $7a2b: $2a
    rlca                                          ; $7a2c: $07
    dec b                                         ; $7a2d: $05
    dec b                                         ; $7a2e: $05
    inc b                                         ; $7a2f: $04
    rlca                                          ; $7a30: $07
    ld c, $0e                                     ; $7a31: $0e $0e
    dec b                                         ; $7a33: $05

jr_07b_7a34:
    rlca                                          ; $7a34: $07
    ld c, $0e                                     ; $7a35: $0e $0e
    dec b                                         ; $7a37: $05
    rlca                                          ; $7a38: $07
    rlca                                          ; $7a39: $07
    rlca                                          ; $7a3a: $07
    dec b                                         ; $7a3b: $05
    inc a                                         ; $7a3c: $3c
    dec a                                         ; $7a3d: $3d
    jr c, jr_07b_7a79                             ; $7a3e: $38 $39

    ldh a, [$f1]                                  ; $7a40: $f0 $f1
    ld a, [c]                                     ; $7a42: $f2
    di                                            ; $7a43: $f3
    db $f4                                        ; $7a44: $f4
    push af                                       ; $7a45: $f5
    or $f7                                        ; $7a46: $f6 $f7
    ld hl, sp-$07                                 ; $7a48: $f8 $f9
    ld a, [$05fb]                                 ; $7a4a: $fa $fb $05
    inc b                                         ; $7a4d: $04
    dec b                                         ; $7a4e: $05
    inc b                                         ; $7a4f: $04
    dec b                                         ; $7a50: $05
    dec b                                         ; $7a51: $05
    inc b                                         ; $7a52: $04
    inc b                                         ; $7a53: $04

jr_07b_7a54:
    dec b                                         ; $7a54: $05
    inc b                                         ; $7a55: $04
    dec b                                         ; $7a56: $05
    dec b                                         ; $7a57: $05
    inc b                                         ; $7a58: $04
    dec b                                         ; $7a59: $05
    dec b                                         ; $7a5a: $05
    dec b                                         ; $7a5b: $05
    inc hl                                        ; $7a5c: $23
    inc h                                         ; $7a5d: $24
    dec h                                         ; $7a5e: $25
    ld h, $fe                                     ; $7a5f: $26 $fe
    rst $38                                       ; $7a61: $ff
    nop                                           ; $7a62: $00
    ld bc, $0302                                  ; $7a63: $01 $02 $03
    inc b                                         ; $7a66: $04
    dec b                                         ; $7a67: $05
    daa                                           ; $7a68: $27
    jr z, jr_07b_7a94                             ; $7a69: $28 $29

    ld a, [hl+]                                   ; $7a6b: $2a
    dec b                                         ; $7a6c: $05
    dec b                                         ; $7a6d: $05
    dec b                                         ; $7a6e: $05
    inc b                                         ; $7a6f: $04
    dec b                                         ; $7a70: $05
    dec b                                         ; $7a71: $05
    dec b                                         ; $7a72: $05
    dec b                                         ; $7a73: $05
    inc b                                         ; $7a74: $04
    inc b                                         ; $7a75: $04
    dec b                                         ; $7a76: $05
    dec b                                         ; $7a77: $05
    inc b                                         ; $7a78: $04

jr_07b_7a79:
    dec b                                         ; $7a79: $05
    dec b                                         ; $7a7a: $05
    dec b                                         ; $7a7b: $05
    inc a                                         ; $7a7c: $3c
    dec a                                         ; $7a7d: $3d
    sub b                                         ; $7a7e: $90
    sub c                                         ; $7a7f: $91
    ldh a, [$f1]                                  ; $7a80: $f0 $f1
    sub d                                         ; $7a82: $92
    sub e                                         ; $7a83: $93
    db $f4                                        ; $7a84: $f4
    add d                                         ; $7a85: $82
    sub h                                         ; $7a86: $94
    sub l                                         ; $7a87: $95
    sub [hl]                                      ; $7a88: $96
    sub a                                         ; $7a89: $97
    sbc b                                         ; $7a8a: $98
    sbc c                                         ; $7a8b: $99
    dec b                                         ; $7a8c: $05
    dec b                                         ; $7a8d: $05
    adc [hl]                                      ; $7a8e: $8e
    adc [hl]                                      ; $7a8f: $8e
    dec b                                         ; $7a90: $05
    dec b                                         ; $7a91: $05
    adc [hl]                                      ; $7a92: $8e
    adc [hl]                                      ; $7a93: $8e

jr_07b_7a94:
    dec b                                         ; $7a94: $05
    dec c                                         ; $7a95: $0d
    adc [hl]                                      ; $7a96: $8e
    adc [hl]                                      ; $7a97: $8e
    dec c                                         ; $7a98: $0d
    xor [hl]                                      ; $7a99: $ae
    adc [hl]                                      ; $7a9a: $8e
    adc [hl]                                      ; $7a9b: $8e
    sbc d                                         ; $7a9c: $9a
    dec a                                         ; $7a9d: $3d
    jr c, jr_07b_7ad9                             ; $7a9e: $38 $39

    sub a                                         ; $7aa0: $97
    sub [hl]                                      ; $7aa1: $96
    ld a, [c]                                     ; $7aa2: $f2
    di                                            ; $7aa3: $f3
    sbc e                                         ; $7aa4: $9b
    sbc h                                         ; $7aa5: $9c
    or $f7                                        ; $7aa6: $f6 $f7
    sbc l                                         ; $7aa8: $9d
    sbc [hl]                                      ; $7aa9: $9e
    sbc a                                         ; $7aaa: $9f
    and b                                         ; $7aab: $a0
    dec c                                         ; $7aac: $0d
    dec b                                         ; $7aad: $05
    inc b                                         ; $7aae: $04
    dec b                                         ; $7aaf: $05
    adc [hl]                                      ; $7ab0: $8e
    dec c                                         ; $7ab1: $0d
    dec b                                         ; $7ab2: $05
    inc b                                         ; $7ab3: $04
    adc [hl]                                      ; $7ab4: $8e
    adc [hl]                                      ; $7ab5: $8e
    dec b                                         ; $7ab6: $05
    dec b                                         ; $7ab7: $05
    xor [hl]                                      ; $7ab8: $ae
    adc [hl]                                      ; $7ab9: $8e
    dec c                                         ; $7aba: $0d
    dec c                                         ; $7abb: $0d
    inc hl                                        ; $7abc: $23
    inc h                                         ; $7abd: $24
    dec h                                         ; $7abe: $25
    ld h, $fe                                     ; $7abf: $26 $fe
    rst $38                                       ; $7ac1: $ff
    nop                                           ; $7ac2: $00
    ld bc, $a2a1                                  ; $7ac3: $01 $a1 $a2
    inc b                                         ; $7ac6: $04
    add d                                         ; $7ac7: $82
    and e                                         ; $7ac8: $a3
    and h                                         ; $7ac9: $a4
    and l                                         ; $7aca: $a5
    and [hl]                                      ; $7acb: $a6
    inc b                                         ; $7acc: $04
    dec b                                         ; $7acd: $05
    inc b                                         ; $7ace: $04
    inc b                                         ; $7acf: $04
    dec b                                         ; $7ad0: $05
    dec b                                         ; $7ad1: $05
    dec b                                         ; $7ad2: $05
    dec b                                         ; $7ad3: $05
    adc [hl]                                      ; $7ad4: $8e
    adc [hl]                                      ; $7ad5: $8e
    dec b                                         ; $7ad6: $05
    dec c                                         ; $7ad7: $0d
    adc [hl]                                      ; $7ad8: $8e

jr_07b_7ad9:
    adc [hl]                                      ; $7ad9: $8e
    adc [hl]                                      ; $7ada: $8e
    adc [hl]                                      ; $7adb: $8e
    inc a                                         ; $7adc: $3c
    dec a                                         ; $7add: $3d
    and a                                         ; $7ade: $a7
    sub c                                         ; $7adf: $91
    add [hl]                                      ; $7ae0: $86
    sub [hl]                                      ; $7ae1: $96
    xor b                                         ; $7ae2: $a8
    xor c                                         ; $7ae3: $a9
    ccf                                           ; $7ae4: $3f
    sub a                                         ; $7ae5: $97
    xor d                                         ; $7ae6: $aa
    xor e                                         ; $7ae7: $ab
    xor h                                         ; $7ae8: $ac
    xor l                                         ; $7ae9: $ad
    sbc l                                         ; $7aea: $9d
    xor [hl]                                      ; $7aeb: $ae
    dec b                                         ; $7aec: $05
    dec b                                         ; $7aed: $05
    adc [hl]                                      ; $7aee: $8e
    adc [hl]                                      ; $7aef: $8e
    dec c                                         ; $7af0: $0d
    dec c                                         ; $7af1: $0d
    adc [hl]                                      ; $7af2: $8e
    adc [hl]                                      ; $7af3: $8e
    add [hl]                                      ; $7af4: $86
    adc [hl]                                      ; $7af5: $8e
    adc [hl]                                      ; $7af6: $8e
    adc [hl]                                      ; $7af7: $8e
    adc [hl]                                      ; $7af8: $8e
    adc [hl]                                      ; $7af9: $8e
    adc [hl]                                      ; $7afa: $8e
    adc [hl]                                      ; $7afb: $8e
    and l                                         ; $7afc: $a5
    xor a                                         ; $7afd: $af
    sbc c                                         ; $7afe: $99
    or b                                          ; $7aff: $b0
    or c                                          ; $7b00: $b1
    sbc l                                         ; $7b01: $9d
    or d                                          ; $7b02: $b2
    or e                                          ; $7b03: $b3
    sub c                                         ; $7b04: $91
    or h                                          ; $7b05: $b4
    or l                                          ; $7b06: $b5
    or [hl]                                       ; $7b07: $b6
    or a                                          ; $7b08: $b7
    cp b                                          ; $7b09: $b8
    cp c                                          ; $7b0a: $b9
    cp d                                          ; $7b0b: $ba
    adc [hl]                                      ; $7b0c: $8e
    adc [hl]                                      ; $7b0d: $8e
    xor [hl]                                      ; $7b0e: $ae
    adc [hl]                                      ; $7b0f: $8e
    adc [hl]                                      ; $7b10: $8e
    adc [hl]                                      ; $7b11: $8e
    adc [hl]                                      ; $7b12: $8e
    adc [hl]                                      ; $7b13: $8e
    adc [hl]                                      ; $7b14: $8e
    xor [hl]                                      ; $7b15: $ae
    adc [hl]                                      ; $7b16: $8e
    adc [hl]                                      ; $7b17: $8e
    adc [hl]                                      ; $7b18: $8e
    adc [hl]                                      ; $7b19: $8e
    adc [hl]                                      ; $7b1a: $8e
    adc [hl]                                      ; $7b1b: $8e
    cp e                                          ; $7b1c: $bb
    ld [$d1d2], a                                 ; $7b1d: $ea $d2 $d1
    cp h                                          ; $7b20: $bc
    cp l                                          ; $7b21: $bd
    jp nc, $bed1                                  ; $7b22: $d2 $d1 $be

    cp a                                          ; $7b25: $bf
    jp nc, $c0d1                                  ; $7b26: $d2 $d1 $c0

    pop bc                                        ; $7b29: $c1
    jp nc, Jump_000_0ad1                          ; $7b2a: $d2 $d1 $0a

    ld [bc], a                                    ; $7b2d: $02
    add b                                         ; $7b2e: $80
    add b                                         ; $7b2f: $80
    ld a, [bc]                                    ; $7b30: $0a
    ld a, [bc]                                    ; $7b31: $0a
    add b                                         ; $7b32: $80
    add b                                         ; $7b33: $80
    ld a, [bc]                                    ; $7b34: $0a
    ld a, [bc]                                    ; $7b35: $0a
    add b                                         ; $7b36: $80
    add b                                         ; $7b37: $80
    ld a, [bc]                                    ; $7b38: $0a
    ld a, [bc]                                    ; $7b39: $0a
    add b                                         ; $7b3a: $80
    add b                                         ; $7b3b: $80
    jp nz, $d2c3                                  ; $7b3c: $c2 $c3 $d2

    pop de                                        ; $7b3f: $d1
    ldh a, [$f1]                                  ; $7b40: $f0 $f1
    jp nc, $a1d1                                  ; $7b42: $d2 $d1 $a1

    and d                                         ; $7b45: $a2
    jp nc, $a3d1                                  ; $7b46: $d2 $d1 $a3

    and h                                         ; $7b49: $a4
    jp nc, Jump_000_0ad1                          ; $7b4a: $d2 $d1 $0a

    ld a, [bc]                                    ; $7b4d: $0a
    add b                                         ; $7b4e: $80
    add b                                         ; $7b4f: $80
    rlca                                          ; $7b50: $07
    rlca                                          ; $7b51: $07
    add b                                         ; $7b52: $80
    add b                                         ; $7b53: $80
    adc [hl]                                      ; $7b54: $8e
    adc [hl]                                      ; $7b55: $8e
    add b                                         ; $7b56: $80
    add b                                         ; $7b57: $80
    adc [hl]                                      ; $7b58: $8e
    adc [hl]                                      ; $7b59: $8e
    add b                                         ; $7b5a: $80
    add b                                         ; $7b5b: $80
    call nz, $d2c5                                ; $7b5c: $c4 $c5 $d2
    pop de                                        ; $7b5f: $d1
    add $b4                                       ; $7b60: $c6 $b4
    jp nc, $c7d1                                  ; $7b62: $d2 $d1 $c7

    ret z                                         ; $7b65: $c8

    jp nc, $c9d1                                  ; $7b66: $d2 $d1 $c9

    jp z, $d1d2                                   ; $7b69: $ca $d2 $d1

    adc [hl]                                      ; $7b6c: $8e
    adc [hl]                                      ; $7b6d: $8e
    add b                                         ; $7b6e: $80
    add b                                         ; $7b6f: $80
    adc [hl]                                      ; $7b70: $8e
    adc [hl]                                      ; $7b71: $8e
    add b                                         ; $7b72: $80
    add b                                         ; $7b73: $80
    adc [hl]                                      ; $7b74: $8e
    adc [hl]                                      ; $7b75: $8e
    add b                                         ; $7b76: $80
    add b                                         ; $7b77: $80
    adc [hl]                                      ; $7b78: $8e
    adc [hl]                                      ; $7b79: $8e
    add b                                         ; $7b7a: $80
    add b                                         ; $7b7b: $80
    set 1, h                                      ; $7b7c: $cb $cc
    jp nc, $cdd1                                  ; $7b7e: $d2 $d1 $cd

    adc $d2                                       ; $7b81: $ce $d2
    pop de                                        ; $7b83: $d1
    rst $08                                       ; $7b84: $cf
    ret nc                                        ; $7b85: $d0

    jp nc, $d1d1                                  ; $7b86: $d2 $d1 $d1

    jp nc, $d1d2                                  ; $7b89: $d2 $d2 $d1

    adc [hl]                                      ; $7b8c: $8e
    adc [hl]                                      ; $7b8d: $8e
    add b                                         ; $7b8e: $80
    add b                                         ; $7b8f: $80
    adc [hl]                                      ; $7b90: $8e
    adc [hl]                                      ; $7b91: $8e
    add b                                         ; $7b92: $80
    add b                                         ; $7b93: $80
    adc [hl]                                      ; $7b94: $8e
    adc [hl]                                      ; $7b95: $8e
    add b                                         ; $7b96: $80
    add b                                         ; $7b97: $80
    adc [hl]                                      ; $7b98: $8e
    adc [hl]                                      ; $7b99: $8e
    add b                                         ; $7b9a: $80
    add b                                         ; $7b9b: $80
    pop de                                        ; $7b9c: $d1
    pop de                                        ; $7b9d: $d1
    pop de                                        ; $7b9e: $d1
    jp nc, $d1d1                                  ; $7b9f: $d2 $d1 $d1

    pop de                                        ; $7ba2: $d1
    ld a, [hl-]                                   ; $7ba3: $3a
    pop de                                        ; $7ba4: $d1
    pop de                                        ; $7ba5: $d1
    pop de                                        ; $7ba6: $d1
    pop de                                        ; $7ba7: $d1
    pop de                                        ; $7ba8: $d1
    pop de                                        ; $7ba9: $d1
    pop de                                        ; $7baa: $d1
    pop de                                        ; $7bab: $d1
    add b                                         ; $7bac: $80
    add b                                         ; $7bad: $80
    add b                                         ; $7bae: $80
    add b                                         ; $7baf: $80
    add b                                         ; $7bb0: $80
    add b                                         ; $7bb1: $80
    add b                                         ; $7bb2: $80
    add b                                         ; $7bb3: $80
    add b                                         ; $7bb4: $80
    add b                                         ; $7bb5: $80
    add b                                         ; $7bb6: $80
    add b                                         ; $7bb7: $80
    add b                                         ; $7bb8: $80
    add b                                         ; $7bb9: $80
    add b                                         ; $7bba: $80
    add b                                         ; $7bbb: $80
    inc hl                                        ; $7bbc: $23
    inc h                                         ; $7bbd: $24
    dec h                                         ; $7bbe: $25
    ld h, $e4                                     ; $7bbf: $26 $e4
    db $e4                                        ; $7bc1: $e4
    db $e4                                        ; $7bc2: $e4
    db $e4                                        ; $7bc3: $e4
    pop de                                        ; $7bc4: $d1
    pop de                                        ; $7bc5: $d1
    pop de                                        ; $7bc6: $d1
    pop de                                        ; $7bc7: $d1
    pop de                                        ; $7bc8: $d1
    pop de                                        ; $7bc9: $d1
    pop de                                        ; $7bca: $d1
    pop de                                        ; $7bcb: $d1
    rlca                                          ; $7bcc: $07
    inc b                                         ; $7bcd: $04
    dec b                                         ; $7bce: $05
    dec b                                         ; $7bcf: $05
    add b                                         ; $7bd0: $80
    add b                                         ; $7bd1: $80
    add b                                         ; $7bd2: $80
    add b                                         ; $7bd3: $80
    add b                                         ; $7bd4: $80
    add b                                         ; $7bd5: $80
    add b                                         ; $7bd6: $80
    add b                                         ; $7bd7: $80
    add b                                         ; $7bd8: $80
    add b                                         ; $7bd9: $80
    add b                                         ; $7bda: $80
    add b                                         ; $7bdb: $80
    and c                                         ; $7bdc: $a1
    and d                                         ; $7bdd: $a2
    db $d3                                        ; $7bde: $d3
    add $e4                                       ; $7bdf: $c6 $e4
    db $e4                                        ; $7be1: $e4
    db $e4                                        ; $7be2: $e4
    db $e4                                        ; $7be3: $e4
    pop de                                        ; $7be4: $d1
    pop de                                        ; $7be5: $d1
    pop de                                        ; $7be6: $d1
    pop de                                        ; $7be7: $d1
    pop de                                        ; $7be8: $d1
    pop de                                        ; $7be9: $d1
    pop de                                        ; $7bea: $d1
    pop de                                        ; $7beb: $d1
    adc [hl]                                      ; $7bec: $8e
    adc [hl]                                      ; $7bed: $8e
    adc [hl]                                      ; $7bee: $8e
    adc [hl]                                      ; $7bef: $8e
    add b                                         ; $7bf0: $80
    add b                                         ; $7bf1: $80
    add b                                         ; $7bf2: $80
    add b                                         ; $7bf3: $80
    add b                                         ; $7bf4: $80
    add b                                         ; $7bf5: $80
    add b                                         ; $7bf6: $80
    add b                                         ; $7bf7: $80
    add b                                         ; $7bf8: $80
    add b                                         ; $7bf9: $80
    add b                                         ; $7bfa: $80
    add b                                         ; $7bfb: $80
    or h                                          ; $7bfc: $b4
    call nc, $973f                                ; $7bfd: $d4 $3f $97
    db $e4                                        ; $7c00: $e4
    db $e4                                        ; $7c01: $e4
    db $e4                                        ; $7c02: $e4
    db $e4                                        ; $7c03: $e4
    pop de                                        ; $7c04: $d1
    pop de                                        ; $7c05: $d1
    pop de                                        ; $7c06: $d1
    pop de                                        ; $7c07: $d1
    pop de                                        ; $7c08: $d1
    pop de                                        ; $7c09: $d1
    pop de                                        ; $7c0a: $d1
    pop de                                        ; $7c0b: $d1
    adc [hl]                                      ; $7c0c: $8e
    adc [hl]                                      ; $7c0d: $8e
    add [hl]                                      ; $7c0e: $86
    adc [hl]                                      ; $7c0f: $8e
    add b                                         ; $7c10: $80
    add b                                         ; $7c11: $80
    add b                                         ; $7c12: $80
    add b                                         ; $7c13: $80
    add b                                         ; $7c14: $80
    add b                                         ; $7c15: $80
    add b                                         ; $7c16: $80
    add b                                         ; $7c17: $80
    add b                                         ; $7c18: $80
    add b                                         ; $7c19: $80
    add b                                         ; $7c1a: $80
    add b                                         ; $7c1b: $80
    call nz, $b1c5                                ; $7c1c: $c4 $c5 $b1
    push de                                       ; $7c1f: $d5
    db $e4                                        ; $7c20: $e4
    db $e4                                        ; $7c21: $e4
    db $e4                                        ; $7c22: $e4
    db $e4                                        ; $7c23: $e4
    pop de                                        ; $7c24: $d1
    pop de                                        ; $7c25: $d1
    pop de                                        ; $7c26: $d1
    pop de                                        ; $7c27: $d1
    pop de                                        ; $7c28: $d1
    pop de                                        ; $7c29: $d1
    pop de                                        ; $7c2a: $d1
    pop de                                        ; $7c2b: $d1
    adc [hl]                                      ; $7c2c: $8e
    adc [hl]                                      ; $7c2d: $8e
    adc [hl]                                      ; $7c2e: $8e
    adc [hl]                                      ; $7c2f: $8e
    add b                                         ; $7c30: $80
    add b                                         ; $7c31: $80
    add b                                         ; $7c32: $80
    add b                                         ; $7c33: $80
    add b                                         ; $7c34: $80
    add b                                         ; $7c35: $80
    add b                                         ; $7c36: $80
    add b                                         ; $7c37: $80
    add b                                         ; $7c38: $80
    add b                                         ; $7c39: $80
    add b                                         ; $7c3a: $80
    add b                                         ; $7c3b: $80
    ld b, e                                       ; $7c3c: $43
    sub $d7                                       ; $7c3d: $d6 $d7
    ret c                                         ; $7c3f: $d8

    db $e4                                        ; $7c40: $e4
    db $e4                                        ; $7c41: $e4
    db $e4                                        ; $7c42: $e4
    db $e4                                        ; $7c43: $e4
    pop de                                        ; $7c44: $d1
    pop de                                        ; $7c45: $d1
    pop de                                        ; $7c46: $d1
    pop de                                        ; $7c47: $d1
    pop de                                        ; $7c48: $d1
    pop de                                        ; $7c49: $d1
    pop de                                        ; $7c4a: $d1
    pop de                                        ; $7c4b: $d1
    add [hl]                                      ; $7c4c: $86
    adc [hl]                                      ; $7c4d: $8e
    adc [hl]                                      ; $7c4e: $8e
    adc [hl]                                      ; $7c4f: $8e
    add b                                         ; $7c50: $80
    add b                                         ; $7c51: $80
    add b                                         ; $7c52: $80
    add b                                         ; $7c53: $80
    add b                                         ; $7c54: $80
    add b                                         ; $7c55: $80
    add b                                         ; $7c56: $80
    add b                                         ; $7c57: $80
    add b                                         ; $7c58: $80
    add b                                         ; $7c59: $80
    add b                                         ; $7c5a: $80
    add b                                         ; $7c5b: $80
    reti                                          ; $7c5c: $d9


    jp c, $dcdb                                   ; $7c5d: $da $db $dc

    db $e4                                        ; $7c60: $e4
    db $e4                                        ; $7c61: $e4
    db $e4                                        ; $7c62: $e4
    db $e4                                        ; $7c63: $e4
    pop de                                        ; $7c64: $d1
    pop de                                        ; $7c65: $d1
    pop de                                        ; $7c66: $d1
    pop de                                        ; $7c67: $d1
    pop de                                        ; $7c68: $d1
    pop de                                        ; $7c69: $d1
    pop de                                        ; $7c6a: $d1
    pop de                                        ; $7c6b: $d1
    adc [hl]                                      ; $7c6c: $8e
    adc [hl]                                      ; $7c6d: $8e
    adc [hl]                                      ; $7c6e: $8e
    adc [hl]                                      ; $7c6f: $8e
    add b                                         ; $7c70: $80
    add b                                         ; $7c71: $80
    add b                                         ; $7c72: $80
    add b                                         ; $7c73: $80
    add b                                         ; $7c74: $80
    add b                                         ; $7c75: $80
    add b                                         ; $7c76: $80
    add b                                         ; $7c77: $80
    add b                                         ; $7c78: $80
    add b                                         ; $7c79: $80
    add b                                         ; $7c7a: $80

Jump_07b_7c7b:
    add b                                         ; $7c7b: $80
    db $dd                                        ; $7c7c: $dd
    sbc $d2                                       ; $7c7d: $de $d2
    pop de                                        ; $7c7f: $d1
    db $e4                                        ; $7c80: $e4
    db $e4                                        ; $7c81: $e4
    rst $20                                       ; $7c82: $e7
    pop de                                        ; $7c83: $d1
    pop de                                        ; $7c84: $d1
    pop de                                        ; $7c85: $d1
    pop de                                        ; $7c86: $d1
    pop de                                        ; $7c87: $d1
    pop de                                        ; $7c88: $d1
    pop de                                        ; $7c89: $d1
    pop de                                        ; $7c8a: $d1
    pop de                                        ; $7c8b: $d1
    adc [hl]                                      ; $7c8c: $8e
    adc [hl]                                      ; $7c8d: $8e
    add b                                         ; $7c8e: $80
    add b                                         ; $7c8f: $80
    add b                                         ; $7c90: $80
    add b                                         ; $7c91: $80
    add b                                         ; $7c92: $80
    add b                                         ; $7c93: $80
    add b                                         ; $7c94: $80
    add b                                         ; $7c95: $80
    add b                                         ; $7c96: $80
    add b                                         ; $7c97: $80
    add b                                         ; $7c98: $80
    add b                                         ; $7c99: $80
    add b                                         ; $7c9a: $80
    add b                                         ; $7c9b: $80
    dec b                                         ; $7c9c: $05
    nop                                           ; $7c9d: $00
    dec b                                         ; $7c9e: $05
    nop                                           ; $7c9f: $00
    nop                                           ; $7ca0: $00
    inc bc                                        ; $7ca1: $03
    pop de                                        ; $7ca2: $d1
    jp nc, $d4d3                                  ; $7ca3: $d2 $d3 $d4

    pop de                                        ; $7ca6: $d1
    jp nc, $d6d5                                  ; $7ca7: $d2 $d5 $d6

    pop de                                        ; $7caa: $d1
    jp nc, $d8d7                                  ; $7cab: $d2 $d7 $d8

    pop de                                        ; $7cae: $d1
    jp nc, $dad9                                  ; $7caf: $d2 $d9 $da

    add b                                         ; $7cb2: $80
    add c                                         ; $7cb3: $81
    rlca                                          ; $7cb4: $07
    rlca                                          ; $7cb5: $07
    add b                                         ; $7cb6: $80
    add c                                         ; $7cb7: $81
    dec b                                         ; $7cb8: $05
    rlca                                          ; $7cb9: $07
    add b                                         ; $7cba: $80
    add c                                         ; $7cbb: $81
    dec b                                         ; $7cbc: $05
    dec b                                         ; $7cbd: $05
    add b                                         ; $7cbe: $80
    add c                                         ; $7cbf: $81
    dec b                                         ; $7cc0: $05
    dec b                                         ; $7cc1: $05
    db $db                                        ; $7cc2: $db
    call c, $dedd                                 ; $7cc3: $dc $dd $de
    rst $18                                       ; $7cc6: $df
    ldh [$e1], a                                  ; $7cc7: $e0 $e1
    sbc $e2                                       ; $7cc9: $de $e2
    db $e3                                        ; $7ccb: $e3
    db $e4                                        ; $7ccc: $e4
    sbc $e5                                       ; $7ccd: $de $e5
    and $e7                                       ; $7ccf: $e6 $e7
    add sp, $07                                   ; $7cd1: $e8 $07
    rlca                                          ; $7cd3: $07
    rlca                                          ; $7cd4: $07
    ld bc, $0707                                  ; $7cd5: $01 $07 $07
    rlca                                          ; $7cd8: $07
    ld bc, $0507                                  ; $7cd9: $01 $07 $05
    rlca                                          ; $7cdc: $07
    ld bc, $0505                                  ; $7cdd: $01 $05 $05
    dec b                                         ; $7ce0: $05
    ld bc, $eae9                                  ; $7ce1: $01 $e9 $ea
    db $eb                                        ; $7ce4: $eb
    db $ec                                        ; $7ce5: $ec
    db $ed                                        ; $7ce6: $ed
    xor $ef                                       ; $7ce7: $ee $ef
    ldh a, [$f1]                                  ; $7ce9: $f0 $f1
    ld a, [c]                                     ; $7ceb: $f2
    di                                            ; $7cec: $f3
    db $f4                                        ; $7ced: $f4
    push af                                       ; $7cee: $f5
    or $f7                                        ; $7cef: $f6 $f7
    ld hl, sp+$07                                 ; $7cf1: $f8 $07
    rlca                                          ; $7cf3: $07
    rlca                                          ; $7cf4: $07
    rlca                                          ; $7cf5: $07
    rlca                                          ; $7cf6: $07
    rlca                                          ; $7cf7: $07
    rlca                                          ; $7cf8: $07
    rlca                                          ; $7cf9: $07
    rlca                                          ; $7cfa: $07
    rlca                                          ; $7cfb: $07
    rlca                                          ; $7cfc: $07
    rlca                                          ; $7cfd: $07
    rlca                                          ; $7cfe: $07
    rlca                                          ; $7cff: $07
    rlca                                          ; $7d00: $07
    rlca                                          ; $7d01: $07
    sbc $f9                                       ; $7d02: $de $f9
    ld a, [$defb]                                 ; $7d04: $fa $fb $de
    db $fc                                        ; $7d07: $fc
    db $fd                                        ; $7d08: $fd
    cp $de                                        ; $7d09: $fe $de
    rst $38                                       ; $7d0b: $ff
    nop                                           ; $7d0c: $00
    ld bc, $02e8                                  ; $7d0d: $01 $e8 $02
    inc bc                                        ; $7d10: $03
    inc b                                         ; $7d11: $04
    ld bc, $0707                                  ; $7d12: $01 $07 $07
    rlca                                          ; $7d15: $07
    ld bc, $0707                                  ; $7d16: $01 $07 $07
    rlca                                          ; $7d19: $07
    ld bc, $0607                                  ; $7d1a: $01 $07 $06
    ld b, $01                                     ; $7d1d: $06 $01
    ld b, $06                                     ; $7d1f: $06 $06
    ld b, $d1                                     ; $7d21: $06 $d1
    dec b                                         ; $7d23: $05
    ld b, $07                                     ; $7d24: $06 $07
    pop de                                        ; $7d26: $d1
    ld [$0a09], sp                                ; $7d27: $08 $09 $0a
    pop de                                        ; $7d2a: $d1
    jp nc, Jump_000_0c0b                          ; $7d2b: $d2 $0b $0c

    pop de                                        ; $7d2e: $d1
    jp nc, Jump_000_0e0d                          ; $7d2f: $d2 $0d $0e

    add b                                         ; $7d32: $80
    add c                                         ; $7d33: $81
    inc bc                                        ; $7d34: $03
    inc bc                                        ; $7d35: $03
    add b                                         ; $7d36: $80
    add c                                         ; $7d37: $81
    inc bc                                        ; $7d38: $03
    inc bc                                        ; $7d39: $03
    add b                                         ; $7d3a: $80
    add c                                         ; $7d3b: $81
    inc bc                                        ; $7d3c: $03
    inc bc                                        ; $7d3d: $03
    add b                                         ; $7d3e: $80
    add c                                         ; $7d3f: $81
    inc bc                                        ; $7d40: $03
    inc bc                                        ; $7d41: $03
    rrca                                          ; $7d42: $0f
    db $10                                        ; $7d43: $10
    ld de, $1312                                  ; $7d44: $11 $12 $13
    inc d                                         ; $7d47: $14
    dec d                                         ; $7d48: $15
    ld d, $17                                     ; $7d49: $16 $17
    jr jr_07b_7d66                                ; $7d4b: $18 $19

    ld a, [de]                                    ; $7d4d: $1a
    dec de                                        ; $7d4e: $1b
    inc e                                         ; $7d4f: $1c
    dec e                                         ; $7d50: $1d
    ld e, $03                                     ; $7d51: $1e $03
    inc bc                                        ; $7d53: $03
    inc bc                                        ; $7d54: $03
    ld [bc], a                                    ; $7d55: $02
    inc bc                                        ; $7d56: $03
    inc bc                                        ; $7d57: $03
    inc bc                                        ; $7d58: $03
    ld [bc], a                                    ; $7d59: $02
    inc bc                                        ; $7d5a: $03
    inc bc                                        ; $7d5b: $03
    ld [bc], a                                    ; $7d5c: $02
    ld [bc], a                                    ; $7d5d: $02
    ld [bc], a                                    ; $7d5e: $02
    ld [bc], a                                    ; $7d5f: $02
    ld [bc], a                                    ; $7d60: $02
    ld [bc], a                                    ; $7d61: $02
    rra                                           ; $7d62: $1f
    jr nz, jr_07b_7d86                            ; $7d63: $20 $21

    ld [hl+], a                                   ; $7d65: $22

jr_07b_7d66:
    ld a, [de]                                    ; $7d66: $1a
    inc hl                                        ; $7d67: $23
    inc h                                         ; $7d68: $24
    dec h                                         ; $7d69: $25
    ld h, $27                                     ; $7d6a: $26 $27
    jr z, jr_07b_7d97                             ; $7d6c: $28 $29

    ld a, [hl+]                                   ; $7d6e: $2a
    dec hl                                        ; $7d6f: $2b
    inc l                                         ; $7d70: $2c
    dec l                                         ; $7d71: $2d
    ld [bc], a                                    ; $7d72: $02
    ld [bc], a                                    ; $7d73: $02
    ld [bc], a                                    ; $7d74: $02
    ld [bc], a                                    ; $7d75: $02
    ld [bc], a                                    ; $7d76: $02
    ld [bc], a                                    ; $7d77: $02
    ld [bc], a                                    ; $7d78: $02
    ld [bc], a                                    ; $7d79: $02
    ld [bc], a                                    ; $7d7a: $02
    ld [bc], a                                    ; $7d7b: $02
    ld [bc], a                                    ; $7d7c: $02
    ld [bc], a                                    ; $7d7d: $02
    ld [bc], a                                    ; $7d7e: $02
    ld [bc], a                                    ; $7d7f: $02
    ld [bc], a                                    ; $7d80: $02
    ld [bc], a                                    ; $7d81: $02
    ld l, $2f                                     ; $7d82: $2e $2f
    jr nc, jr_07b_7db7                            ; $7d84: $30 $31

jr_07b_7d86:
    ld [hl-], a                                   ; $7d86: $32
    inc sp                                        ; $7d87: $33
    inc [hl]                                      ; $7d88: $34
    dec [hl]                                      ; $7d89: $35
    ld [hl], $37                                  ; $7d8a: $36 $37
    jr c, jr_07b_7dc7                             ; $7d8c: $38 $39

    ld a, [hl-]                                   ; $7d8e: $3a
    dec sp                                        ; $7d8f: $3b
    inc a                                         ; $7d90: $3c
    dec a                                         ; $7d91: $3d
    ld [bc], a                                    ; $7d92: $02
    inc b                                         ; $7d93: $04
    inc b                                         ; $7d94: $04
    inc b                                         ; $7d95: $04
    ld [bc], a                                    ; $7d96: $02

jr_07b_7d97:
    ld [bc], a                                    ; $7d97: $02
    inc b                                         ; $7d98: $04
    inc b                                         ; $7d99: $04
    ld [bc], a                                    ; $7d9a: $02
    ld [bc], a                                    ; $7d9b: $02
    inc b                                         ; $7d9c: $04
    inc b                                         ; $7d9d: $04
    ld [bc], a                                    ; $7d9e: $02
    ld [bc], a                                    ; $7d9f: $02
    inc b                                         ; $7da0: $04
    inc b                                         ; $7da1: $04
    pop de                                        ; $7da2: $d1
    jp nc, Jump_000_3f3e                          ; $7da3: $d2 $3e $3f

    pop de                                        ; $7da6: $d1
    jp nc, $4140                                  ; $7da7: $d2 $40 $41

    pop de                                        ; $7daa: $d1
    dec b                                         ; $7dab: $05
    ld b, d                                       ; $7dac: $42
    ld b, e                                       ; $7dad: $43
    pop de                                        ; $7dae: $d1
    ld [$4544], sp                                ; $7daf: $08 $44 $45
    add b                                         ; $7db2: $80
    add c                                         ; $7db3: $81
    inc bc                                        ; $7db4: $03
    ld [bc], a                                    ; $7db5: $02
    add b                                         ; $7db6: $80

jr_07b_7db7:
    add c                                         ; $7db7: $81
    ld [bc], a                                    ; $7db8: $02
    ld [bc], a                                    ; $7db9: $02
    add b                                         ; $7dba: $80
    add c                                         ; $7dbb: $81
    ld [bc], a                                    ; $7dbc: $02
    ld [bc], a                                    ; $7dbd: $02
    add b                                         ; $7dbe: $80
    add c                                         ; $7dbf: $81
    and h                                         ; $7dc0: $a4
    ld [bc], a                                    ; $7dc1: $02
    ld b, [hl]                                    ; $7dc2: $46
    ld b, a                                       ; $7dc3: $47
    ld h, $48                                     ; $7dc4: $26 $48
    ld a, [de]                                    ; $7dc6: $1a

jr_07b_7dc7:
    ld c, c                                       ; $7dc7: $49
    ld c, b                                       ; $7dc8: $48
    dec h                                         ; $7dc9: $25
    ld h, $4a                                     ; $7dca: $26 $4a
    dec h                                         ; $7dcc: $25
    add hl, hl                                    ; $7dcd: $29
    ld c, e                                       ; $7dce: $4b
    ld c, h                                       ; $7dcf: $4c
    ld c, l                                       ; $7dd0: $4d
    dec l                                         ; $7dd1: $2d
    ld [bc], a                                    ; $7dd2: $02
    ld [bc], a                                    ; $7dd3: $02
    ld [bc], a                                    ; $7dd4: $02
    ld [bc], a                                    ; $7dd5: $02
    ld [bc], a                                    ; $7dd6: $02
    ld [bc], a                                    ; $7dd7: $02
    ld [bc], a                                    ; $7dd8: $02
    ld [bc], a                                    ; $7dd9: $02
    ld [bc], a                                    ; $7dda: $02
    ld [bc], a                                    ; $7ddb: $02
    ld [bc], a                                    ; $7ddc: $02
    ld [bc], a                                    ; $7ddd: $02
    ld [bc], a                                    ; $7dde: $02
    ld [bc], a                                    ; $7ddf: $02
    ld [bc], a                                    ; $7de0: $02
    ld [bc], a                                    ; $7de1: $02
    dec h                                         ; $7de2: $25
    ld c, [hl]                                    ; $7de3: $4e
    ld c, a                                       ; $7de4: $4f
    ld d, b                                       ; $7de5: $50
    add hl, hl                                    ; $7de6: $29
    ld d, c                                       ; $7de7: $51
    ld d, d                                       ; $7de8: $52
    ld d, e                                       ; $7de9: $53
    ld [hl], $54                                  ; $7dea: $36 $54
    ld d, l                                       ; $7dec: $55
    ld b, [hl]                                    ; $7ded: $46
    ld a, [hl-]                                   ; $7dee: $3a
    ld d, [hl]                                    ; $7def: $56
    ld d, a                                       ; $7df0: $57
    ld e, b                                       ; $7df1: $58
    ld [bc], a                                    ; $7df2: $02
    ld [bc], a                                    ; $7df3: $02
    ld [bc], a                                    ; $7df4: $02
    ld [bc], a                                    ; $7df5: $02
    ld [bc], a                                    ; $7df6: $02
    ld [bc], a                                    ; $7df7: $02
    ld [bc], a                                    ; $7df8: $02
    ld [bc], a                                    ; $7df9: $02
    ld [bc], a                                    ; $7dfa: $02
    ld [bc], a                                    ; $7dfb: $02
    ld [bc], a                                    ; $7dfc: $02
    ld [bc], a                                    ; $7dfd: $02
    ld [bc], a                                    ; $7dfe: $02
    ld [bc], a                                    ; $7dff: $02
    ld [bc], a                                    ; $7e00: $02
    ld [bc], a                                    ; $7e01: $02
    ld d, e                                       ; $7e02: $53
    ld e, c                                       ; $7e03: $59
    ld e, d                                       ; $7e04: $5a
    ld e, e                                       ; $7e05: $5b
    ld b, [hl]                                    ; $7e06: $46
    ld a, [de]                                    ; $7e07: $1a
    ld e, h                                       ; $7e08: $5c
    ld e, l                                       ; $7e09: $5d
    ld a, [de]                                    ; $7e0a: $1a
    ld h, $4a                                     ; $7e0b: $26 $4a
    ld e, [hl]                                    ; $7e0d: $5e
    ld e, $2a                                     ; $7e0e: $1e $2a
    ld e, a                                       ; $7e10: $5f
    ld h, b                                       ; $7e11: $60
    ld [bc], a                                    ; $7e12: $02
    ld [bc], a                                    ; $7e13: $02
    ld [bc], a                                    ; $7e14: $02
    inc b                                         ; $7e15: $04
    ld [bc], a                                    ; $7e16: $02
    ld [bc], a                                    ; $7e17: $02
    ld [bc], a                                    ; $7e18: $02
    ld [bc], a                                    ; $7e19: $02
    ld [bc], a                                    ; $7e1a: $02
    ld [bc], a                                    ; $7e1b: $02
    ld [bc], a                                    ; $7e1c: $02
    ld [bc], a                                    ; $7e1d: $02
    ld [bc], a                                    ; $7e1e: $02
    ld [bc], a                                    ; $7e1f: $02
    ld [bc], a                                    ; $7e20: $02
    ld [bc], a                                    ; $7e21: $02
    pop de                                        ; $7e22: $d1
    jp nc, Jump_07b_6261                          ; $7e23: $d2 $61 $62

    pop de                                        ; $7e26: $d1
    jp nc, $6463                                  ; $7e27: $d2 $63 $64

    pop de                                        ; $7e2a: $d1
    jp nc, Jump_07b_6665                          ; $7e2b: $d2 $65 $66

    pop de                                        ; $7e2e: $d1
    dec b                                         ; $7e2f: $05
    ld h, a                                       ; $7e30: $67
    ld h, a                                       ; $7e31: $67
    add b                                         ; $7e32: $80
    add c                                         ; $7e33: $81
    and h                                         ; $7e34: $a4
    and h                                         ; $7e35: $a4
    add b                                         ; $7e36: $80
    add c                                         ; $7e37: $81
    and h                                         ; $7e38: $a4
    and h                                         ; $7e39: $a4
    add b                                         ; $7e3a: $80
    add c                                         ; $7e3b: $81
    and h                                         ; $7e3c: $a4
    and h                                         ; $7e3d: $a4
    add b                                         ; $7e3e: $80
    add c                                         ; $7e3f: $81
    add c                                         ; $7e40: $81
    add c                                         ; $7e41: $81
    ld l, b                                       ; $7e42: $68
    ld l, c                                       ; $7e43: $69
    ld l, d                                       ; $7e44: $6a
    ld d, b                                       ; $7e45: $50
    ld bc, $6b00                                  ; $7e46: $01 $00 $6b
    ld l, h                                       ; $7e49: $6c
    inc b                                         ; $7e4a: $04
    inc bc                                        ; $7e4b: $03
    ld [bc], a                                    ; $7e4c: $02
    ld l, l                                       ; $7e4d: $6d
    ld h, a                                       ; $7e4e: $67
    ld h, a                                       ; $7e4f: $67
    ld h, a                                       ; $7e50: $67
    dec b                                         ; $7e51: $05
    ld [bc], a                                    ; $7e52: $02
    ld [bc], a                                    ; $7e53: $02
    ld [bc], a                                    ; $7e54: $02
    ld [bc], a                                    ; $7e55: $02
    and h                                         ; $7e56: $a4
    add h                                         ; $7e57: $84
    ld [bc], a                                    ; $7e58: $02
    ld [bc], a                                    ; $7e59: $02
    and h                                         ; $7e5a: $a4
    and h                                         ; $7e5b: $a4
    and h                                         ; $7e5c: $a4
    ld [bc], a                                    ; $7e5d: $02
    add c                                         ; $7e5e: $81
    add c                                         ; $7e5f: $81
    add c                                         ; $7e60: $81
    add c                                         ; $7e61: $81
    ld d, e                                       ; $7e62: $53
    ld l, [hl]                                    ; $7e63: $6e
    ld l, a                                       ; $7e64: $6f
    ld h, $46                                     ; $7e65: $26 $46
    ld [hl], b                                    ; $7e67: $70
    ld [hl], c                                    ; $7e68: $71
    ld c, b                                       ; $7e69: $48
    ld a, [de]                                    ; $7e6a: $1a
    inc hl                                        ; $7e6b: $23
    inc h                                         ; $7e6c: $24
    dec h                                         ; $7e6d: $25
    ld [hl], d                                    ; $7e6e: $72
    ld [hl], e                                    ; $7e6f: $73
    ld [hl], h                                    ; $7e70: $74
    ld [hl], l                                    ; $7e71: $75
    ld [bc], a                                    ; $7e72: $02
    ld [bc], a                                    ; $7e73: $02
    ld [bc], a                                    ; $7e74: $02
    ld [bc], a                                    ; $7e75: $02
    ld [bc], a                                    ; $7e76: $02
    ld [bc], a                                    ; $7e77: $02
    ld [bc], a                                    ; $7e78: $02
    ld [bc], a                                    ; $7e79: $02
    ld [bc], a                                    ; $7e7a: $02
    ld [bc], a                                    ; $7e7b: $02
    ld [bc], a                                    ; $7e7c: $02
    ld [bc], a                                    ; $7e7d: $02
    ld [bc], a                                    ; $7e7e: $02
    ld [bc], a                                    ; $7e7f: $02
    ld [bc], a                                    ; $7e80: $02
    ld [bc], a                                    ; $7e81: $02
    ld c, b                                       ; $7e82: $48
    dec h                                         ; $7e83: $25
    halt                                          ; $7e84: $76
    ld l, d                                       ; $7e85: $6a
    dec h                                         ; $7e86: $25
    ld [hl], a                                    ; $7e87: $77
    db $e3                                        ; $7e88: $e3
    ld a, b                                       ; $7e89: $78
    ld a, c                                       ; $7e8a: $79
    rst $20                                       ; $7e8b: $e7
    and $e5                                       ; $7e8c: $e6 $e5
    dec b                                         ; $7e8e: $05
    ld h, a                                       ; $7e8f: $67
    ld h, a                                       ; $7e90: $67
    ld h, a                                       ; $7e91: $67
    ld [bc], a                                    ; $7e92: $02
    ld [bc], a                                    ; $7e93: $02
    ld [bc], a                                    ; $7e94: $02
    ld [bc], a                                    ; $7e95: $02
    ld [bc], a                                    ; $7e96: $02
    ld [bc], a                                    ; $7e97: $02
    and e                                         ; $7e98: $a3
    ld [bc], a                                    ; $7e99: $02
    ld [bc], a                                    ; $7e9a: $02
    and e                                         ; $7e9b: $a3
    and e                                         ; $7e9c: $a3
    and e                                         ; $7e9d: $a3
    add c                                         ; $7e9e: $81
    add c                                         ; $7e9f: $81
    add c                                         ; $7ea0: $81
    add c                                         ; $7ea1: $81
    ld a, d                                       ; $7ea2: $7a
    ld b, h                                       ; $7ea3: $44
    jp nc, Jump_07b_62d1                          ; $7ea4: $d2 $d1 $62

    ld h, c                                       ; $7ea7: $61
    jp nc, Jump_07b_64d1                          ; $7ea8: $d2 $d1 $64

    ld h, e                                       ; $7eab: $63
    jp nc, Jump_07b_66d1                          ; $7eac: $d2 $d1 $66

    ld h, l                                       ; $7eaf: $65
    jp nc, Jump_000_07d1                          ; $7eb0: $d2 $d1 $07

    ld b, $81                                     ; $7eb3: $06 $81
    add b                                         ; $7eb5: $80
    ld b, $06                                     ; $7eb6: $06 $06
    add c                                         ; $7eb8: $81
    add b                                         ; $7eb9: $80
    ld b, $06                                     ; $7eba: $06 $06
    add c                                         ; $7ebc: $81
    add b                                         ; $7ebd: $80
    ld b, $06                                     ; $7ebe: $06 $06
    add c                                         ; $7ec0: $81
    add b                                         ; $7ec1: $80
    ld a, e                                       ; $7ec2: $7b
    ld a, h                                       ; $7ec3: $7c
    dec b                                         ; $7ec4: $05
    pop de                                        ; $7ec5: $d1
    ld a, l                                       ; $7ec6: $7d
    ld a, [hl]                                    ; $7ec7: $7e
    ld [$7fd1], sp                                ; $7ec8: $08 $d1 $7f
    add b                                         ; $7ecb: $80
    jp nc, $81d1                                  ; $7ecc: $d2 $d1 $81

    add d                                         ; $7ecf: $82
    jp nc, Jump_000_04d1                          ; $7ed0: $d2 $d1 $04

    inc b                                         ; $7ed3: $04
    add c                                         ; $7ed4: $81
    add b                                         ; $7ed5: $80
    inc b                                         ; $7ed6: $04
    inc b                                         ; $7ed7: $04
    add c                                         ; $7ed8: $81
    add b                                         ; $7ed9: $80
    inc b                                         ; $7eda: $04
    inc c                                         ; $7edb: $0c
    add c                                         ; $7edc: $81
    add b                                         ; $7edd: $80
    inc c                                         ; $7ede: $0c
    inc c                                         ; $7edf: $0c
    add c                                         ; $7ee0: $81
    add b                                         ; $7ee1: $80
    add e                                         ; $7ee2: $83
    add h                                         ; $7ee3: $84
    jp nc, $85d1                                  ; $7ee4: $d2 $d1 $85

    add [hl]                                      ; $7ee7: $86
    jp nc, $87d1                                  ; $7ee8: $d2 $d1 $87

    adc b                                         ; $7eeb: $88
    dec b                                         ; $7eec: $05
    pop de                                        ; $7eed: $d1
    adc c                                         ; $7eee: $89
    adc d                                         ; $7eef: $8a
    ld [$0cd1], sp                                ; $7ef0: $08 $d1 $0c
    inc c                                         ; $7ef3: $0c
    add c                                         ; $7ef4: $81
    add b                                         ; $7ef5: $80
    inc c                                         ; $7ef6: $0c
    inc c                                         ; $7ef7: $0c
    add c                                         ; $7ef8: $81
    add b                                         ; $7ef9: $80
    ld a, [bc]                                    ; $7efa: $0a
    ld a, [bc]                                    ; $7efb: $0a
    add c                                         ; $7efc: $81
    add b                                         ; $7efd: $80
    ld a, [bc]                                    ; $7efe: $0a
    ld a, [bc]                                    ; $7eff: $0a
    add c                                         ; $7f00: $81
    add b                                         ; $7f01: $80
    adc e                                         ; $7f02: $8b
    push de                                       ; $7f03: $d5
    jp nc, $d8d1                                  ; $7f04: $d2 $d1 $d8

    rst $10                                       ; $7f07: $d7
    jp nc, $dad1                                  ; $7f08: $d2 $d1 $da

    reti                                          ; $7f0b: $d9


    jp nc, Jump_07b_67d1                          ; $7f0c: $d2 $d1 $67

    ld h, a                                       ; $7f0f: $67
    dec b                                         ; $7f10: $05
    pop de                                        ; $7f11: $d1
    ld a, [bc]                                    ; $7f12: $0a
    and e                                         ; $7f13: $a3
    add c                                         ; $7f14: $81
    add b                                         ; $7f15: $80
    and e                                         ; $7f16: $a3
    and e                                         ; $7f17: $a3
    add c                                         ; $7f18: $81
    add b                                         ; $7f19: $80
    and e                                         ; $7f1a: $a3
    and e                                         ; $7f1b: $a3
    add c                                         ; $7f1c: $81
    add b                                         ; $7f1d: $80
    add c                                         ; $7f1e: $81
    add c                                         ; $7f1f: $81
    add c                                         ; $7f20: $81
    add b                                         ; $7f21: $80
    pop de                                        ; $7f22: $d1
    pop de                                        ; $7f23: $d1
    pop de                                        ; $7f24: $d1
    pop de                                        ; $7f25: $d1
    pop de                                        ; $7f26: $d1
    pop de                                        ; $7f27: $d1
    pop de                                        ; $7f28: $d1
    pop de                                        ; $7f29: $d1
    pop de                                        ; $7f2a: $d1
    pop de                                        ; $7f2b: $d1
    pop de                                        ; $7f2c: $d1
    pop de                                        ; $7f2d: $d1
    pop de                                        ; $7f2e: $d1
    pop de                                        ; $7f2f: $d1
    pop de                                        ; $7f30: $d1
    pop de                                        ; $7f31: $d1
    add b                                         ; $7f32: $80
    add b                                         ; $7f33: $80
    add b                                         ; $7f34: $80
    add b                                         ; $7f35: $80
    add b                                         ; $7f36: $80
    add b                                         ; $7f37: $80
    add b                                         ; $7f38: $80
    add b                                         ; $7f39: $80
    add b                                         ; $7f3a: $80
    add b                                         ; $7f3b: $80
    add b                                         ; $7f3c: $80
    add b                                         ; $7f3d: $80
    add b                                         ; $7f3e: $80
    add b                                         ; $7f3f: $80
    add b                                         ; $7f40: $80
    add b                                         ; $7f41: $80
    pop de                                        ; $7f42: $d1
    pop de                                        ; $7f43: $d1
    pop de                                        ; $7f44: $d1
    ld [$d1d1], sp                                ; $7f45: $08 $d1 $d1
    pop de                                        ; $7f48: $d1
    dec b                                         ; $7f49: $05
    pop de                                        ; $7f4a: $d1
    pop de                                        ; $7f4b: $d1
    pop de                                        ; $7f4c: $d1
    pop de                                        ; $7f4d: $d1
    pop de                                        ; $7f4e: $d1
    pop de                                        ; $7f4f: $d1
    pop de                                        ; $7f50: $d1
    pop de                                        ; $7f51: $d1
    add b                                         ; $7f52: $80
    add b                                         ; $7f53: $80
    add b                                         ; $7f54: $80
    add c                                         ; $7f55: $81
    add b                                         ; $7f56: $80
    add b                                         ; $7f57: $80
    add b                                         ; $7f58: $80
    add c                                         ; $7f59: $81
    add b                                         ; $7f5a: $80
    add b                                         ; $7f5b: $80
    add b                                         ; $7f5c: $80
    add b                                         ; $7f5d: $80
    add b                                         ; $7f5e: $80
    add b                                         ; $7f5f: $80
    add b                                         ; $7f60: $80
    add b                                         ; $7f61: $80
    ld c, b                                       ; $7f62: $48
    adc h                                         ; $7f63: $8c
    adc l                                         ; $7f64: $8d
    ld [hl], $8e                                  ; $7f65: $36 $8e
    adc [hl]                                      ; $7f67: $8e
    adc [hl]                                      ; $7f68: $8e
    adc [hl]                                      ; $7f69: $8e
    adc a                                         ; $7f6a: $8f
    adc a                                         ; $7f6b: $8f
    adc a                                         ; $7f6c: $8f
    adc a                                         ; $7f6d: $8f
    pop de                                        ; $7f6e: $d1
    pop de                                        ; $7f6f: $d1
    pop de                                        ; $7f70: $d1
    pop de                                        ; $7f71: $d1
    ld [bc], a                                    ; $7f72: $02
    ld a, [bc]                                    ; $7f73: $0a
    ld a, [bc]                                    ; $7f74: $0a
    ld [bc], a                                    ; $7f75: $02
    adc c                                         ; $7f76: $89
    adc c                                         ; $7f77: $89
    adc c                                         ; $7f78: $89
    adc c                                         ; $7f79: $89
    adc b                                         ; $7f7a: $88
    adc b                                         ; $7f7b: $88
    adc b                                         ; $7f7c: $88
    adc b                                         ; $7f7d: $88
    add b                                         ; $7f7e: $80
    add b                                         ; $7f7f: $80
    add b                                         ; $7f80: $80
    add b                                         ; $7f81: $80
    ld [$d1d1], sp                                ; $7f82: $08 $d1 $d1
    pop de                                        ; $7f85: $d1
    dec b                                         ; $7f86: $05
    pop de                                        ; $7f87: $d1
    pop de                                        ; $7f88: $d1
    pop de                                        ; $7f89: $d1
    pop de                                        ; $7f8a: $d1
    pop de                                        ; $7f8b: $d1
    pop de                                        ; $7f8c: $d1
    pop de                                        ; $7f8d: $d1
    pop de                                        ; $7f8e: $d1
    pop de                                        ; $7f8f: $d1
    pop de                                        ; $7f90: $d1
    pop de                                        ; $7f91: $d1
    add c                                         ; $7f92: $81
    add b                                         ; $7f93: $80
    add b                                         ; $7f94: $80
    add b                                         ; $7f95: $80
    add c                                         ; $7f96: $81
    add b                                         ; $7f97: $80
    add b                                         ; $7f98: $80
    add b                                         ; $7f99: $80
    add b                                         ; $7f9a: $80
    add b                                         ; $7f9b: $80
    add b                                         ; $7f9c: $80
    add b                                         ; $7f9d: $80
    add b                                         ; $7f9e: $80
    add b                                         ; $7f9f: $80
    add b                                         ; $7fa0: $80
    add b                                         ; $7fa1: $80
    ld b, [hl]                                    ; $7fa2: $46
    nop                                           ; $7fa3: $00
    nop                                           ; $7fa4: $00
    nop                                           ; $7fa5: $00
    nop                                           ; $7fa6: $00
    ld bc, $0200                                  ; $7fa7: $01 $00 $02
    nop                                           ; $7faa: $00
    inc bc                                        ; $7fab: $03
    nop                                           ; $7fac: $00
    nop                                           ; $7fad: $00
    stop                                          ; $7fae: $10 $00
    ld de, $1200                                  ; $7fb0: $11 $00 $12
    nop                                           ; $7fb3: $00
    inc b                                         ; $7fb4: $04
    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    dec b                                         ; $7fb7: $05
    nop                                           ; $7fb8: $00
    ld b, $00                                     ; $7fb9: $06 $00
    rlca                                          ; $7fbb: $07
    nop                                           ; $7fbc: $00
    inc de                                        ; $7fbd: $13
    nop                                           ; $7fbe: $00
    nop                                           ; $7fbf: $00
    inc d                                         ; $7fc0: $14
    nop                                           ; $7fc1: $00
    dec d                                         ; $7fc2: $15
    nop                                           ; $7fc3: $00
    ld [$0900], sp                                ; $7fc4: $08 $00 $09
    nop                                           ; $7fc7: $00
    nop                                           ; $7fc8: $00
    ld a, [bc]                                    ; $7fc9: $0a
    nop                                           ; $7fca: $00
    dec bc                                        ; $7fcb: $0b
    nop                                           ; $7fcc: $00
    ld d, $00                                     ; $7fcd: $16 $00
    rla                                           ; $7fcf: $17
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    jr jr_07b_7fd4                                ; $7fd2: $18 $00

jr_07b_7fd4:
    inc c                                         ; $7fd4: $0c
    nop                                           ; $7fd5: $00
    dec c                                         ; $7fd6: $0d
    nop                                           ; $7fd7: $00
    ld c, $00                                     ; $7fd8: $0e $00
    nop                                           ; $7fda: $00
    rrca                                          ; $7fdb: $0f
    nop                                           ; $7fdc: $00
    add hl, de                                    ; $7fdd: $19
    nop                                           ; $7fde: $00
    ld a, [de]                                    ; $7fdf: $1a
    nop                                           ; $7fe0: $00
    dec de                                        ; $7fe1: $1b
    nop                                           ; $7fe2: $00
    nop                                           ; $7fe3: $00
    inc e                                         ; $7fe4: $1c
    nop                                           ; $7fe5: $00
    dec e                                         ; $7fe6: $1d
    nop                                           ; $7fe7: $00
    ld e, $00                                     ; $7fe8: $1e $00
    rra                                           ; $7fea: $1f
    nop                                           ; $7feb: $00
    nop                                           ; $7fec: $00
    jr nz, jr_07b_7fef                            ; $7fed: $20 $00

jr_07b_7fef:
    ld hl, $2200                                  ; $7fef: $21 $00 $22
    nop                                           ; $7ff2: $00
    ld h, b                                       ; $7ff3: $60
    ld c, l                                       ; $7ff4: $4d
    rst $18                                       ; $7ff5: $df
    inc bc                                        ; $7ff6: $03
    adc l                                         ; $7ff7: $8d
    ld [bc], a                                    ; $7ff8: $02
    add b                                         ; $7ff9: $80
    nop                                           ; $7ffa: $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
