; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

    db $77

    ld sp, $3332                                  ; $4001: $31 $32 $33
    inc [hl]                                      ; $4004: $34
    dec [hl]                                      ; $4005: $35
    ld [hl], $37                                  ; $4006: $36 $37
    jr c, jr_077_4043                             ; $4008: $38 $39

    jr nc, jr_077_403d                            ; $400a: $30 $31

    ld [hl-], a                                   ; $400c: $32
    inc sp                                        ; $400d: $33
    inc [hl]                                      ; $400e: $34
    dec [hl]                                      ; $400f: $35
    rst $38                                       ; $4010: $ff
    nop                                           ; $4011: $00
    rst $38                                       ; $4012: $ff
    nop                                           ; $4013: $00
    rst $38                                       ; $4014: $ff
    nop                                           ; $4015: $00
    xor $00                                       ; $4016: $ee $00
    rst $38                                       ; $4018: $ff
    nop                                           ; $4019: $00
    xor d                                         ; $401a: $aa
    nop                                           ; $401b: $00
    ld [hl], a                                    ; $401c: $77
    nop                                           ; $401d: $00
    xor d                                         ; $401e: $aa
    nop                                           ; $401f: $00
    ld d, l                                       ; $4020: $55
    nop                                           ; $4021: $00
    xor d                                         ; $4022: $aa
    nop                                           ; $4023: $00
    ld d, l                                       ; $4024: $55
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    ld d, l                                       ; $4028: $55
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    add b                                         ; $4034: $80
    nop                                           ; $4035: $00
    db $20, $c0                                   ; $4036: $20 $c0
    nop                                           ; $4038: $00
    rst $38                                       ; $4039: $ff
    ld [bc], a                                    ; $403a: $02
    rst $38                                       ; $403b: $ff
    ld [bc], a                                    ; $403c: $02

jr_077_403d:
    rst $38                                       ; $403d: $ff
    ld b, $ff                                     ; $403e: $06 $ff
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00

jr_077_4043:
    nop                                           ; $4043: $00
    nop                                           ; $4044: $00
    nop                                           ; $4045: $00
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    ret nz                                        ; $4048: $c0

    nop                                           ; $4049: $00
    db $10                                        ; $404a: $10
    ldh [rDIV], a                                 ; $404b: $e0 $04
    db $fc                                        ; $404d: $fc
    inc d                                         ; $404e: $14
    rst $28                                       ; $404f: $ef
    nop                                           ; $4050: $00
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    nop                                           ; $4053: $00
    nop                                           ; $4054: $00
    nop                                           ; $4055: $00
    ld bc, $0400                                  ; $4056: $01 $00 $04
    inc bc                                        ; $4059: $03
    ld de, $c40e                                  ; $405a: $11 $0e $c4
    dec sp                                        ; $405d: $3b
    ld [$00f7], sp                                ; $405e: $08 $f7 $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    jr nz, jr_077_4085                            ; $4064: $20 $1f

    inc d                                         ; $4066: $14
    db $eb                                        ; $4067: $eb
    and b                                         ; $4068: $a0
    ld e, a                                       ; $4069: $5f
    ret nc                                        ; $406a: $d0

    cpl                                           ; $406b: $2f
    add b                                         ; $406c: $80
    ld a, a                                       ; $406d: $7f
    nop                                           ; $406e: $00
    rst $38                                       ; $406f: $ff
    rlca                                          ; $4070: $07
    rst $38                                       ; $4071: $ff
    rrca                                          ; $4072: $0f
    rst $38                                       ; $4073: $ff
    rlca                                          ; $4074: $07
    rst $38                                       ; $4075: $ff
    rlca                                          ; $4076: $07
    rst $38                                       ; $4077: $ff
    rrca                                          ; $4078: $0f
    rst $38                                       ; $4079: $ff
    inc bc                                        ; $407a: $03
    rst $38                                       ; $407b: $ff
    nop                                           ; $407c: $00
    rst $38                                       ; $407d: $ff
    nop                                           ; $407e: $00
    rst $38                                       ; $407f: $ff
    ld h, $df                                     ; $4080: $26 $df
    adc [hl]                                      ; $4082: $8e
    rst $38                                       ; $4083: $ff
    rra                                           ; $4084: $1f

jr_077_4085:
    rst $38                                       ; $4085: $ff
    adc [hl]                                      ; $4086: $8e
    rst $38                                       ; $4087: $ff
    sbc $ff                                       ; $4088: $de $ff
    ccf                                           ; $408a: $3f
    rst $38                                       ; $408b: $ff
    inc c                                         ; $408c: $0c
    rst $38                                       ; $408d: $ff
    nop                                           ; $408e: $00
    rst $38                                       ; $408f: $ff
    ld [bc], a                                    ; $4090: $02
    db $fd                                        ; $4091: $fd
    inc h                                         ; $4092: $24
    db $db                                        ; $4093: $db
    ld b, b                                       ; $4094: $40
    cp a                                          ; $4095: $bf
    nop                                           ; $4096: $00
    rst $38                                       ; $4097: $ff
    nop                                           ; $4098: $00
    rst $38                                       ; $4099: $ff
    nop                                           ; $409a: $00
    rst $38                                       ; $409b: $ff
    nop                                           ; $409c: $00
    rst $38                                       ; $409d: $ff
    nop                                           ; $409e: $00
    rst $38                                       ; $409f: $ff
    nop                                           ; $40a0: $00
    rst $38                                       ; $40a1: $ff
    nop                                           ; $40a2: $00
    rst $38                                       ; $40a3: $ff
    nop                                           ; $40a4: $00
    rst $38                                       ; $40a5: $ff
    nop                                           ; $40a6: $00
    rst $38                                       ; $40a7: $ff
    nop                                           ; $40a8: $00
    rst $38                                       ; $40a9: $ff
    nop                                           ; $40aa: $00
    rst $38                                       ; $40ab: $ff
    nop                                           ; $40ac: $00
    rst $38                                       ; $40ad: $ff
    nop                                           ; $40ae: $00
    rst $38                                       ; $40af: $ff
    nop                                           ; $40b0: $00
    rst $38                                       ; $40b1: $ff
    nop                                           ; $40b2: $00
    rst $38                                       ; $40b3: $ff
    ld [$08ff], sp                                ; $40b4: $08 $ff $08
    rst $38                                       ; $40b7: $ff
    ld [$08ff], sp                                ; $40b8: $08 $ff $08
    rst $38                                       ; $40bb: $ff
    inc c                                         ; $40bc: $0c
    rst $38                                       ; $40bd: $ff
    inc c                                         ; $40be: $0c
    rst $38                                       ; $40bf: $ff
    nop                                           ; $40c0: $00
    rst $38                                       ; $40c1: $ff
    nop                                           ; $40c2: $00
    rst $38                                       ; $40c3: $ff
    nop                                           ; $40c4: $00
    rst $38                                       ; $40c5: $ff
    nop                                           ; $40c6: $00
    rst $38                                       ; $40c7: $ff
    nop                                           ; $40c8: $00
    rst $38                                       ; $40c9: $ff
    nop                                           ; $40ca: $00
    rst $38                                       ; $40cb: $ff
    nop                                           ; $40cc: $00
    rst $38                                       ; $40cd: $ff
    nop                                           ; $40ce: $00
    rst $38                                       ; $40cf: $ff
    ld e, $ff                                     ; $40d0: $1e $ff
    ld e, $ff                                     ; $40d2: $1e $ff
    ccf                                           ; $40d4: $3f
    rst $38                                       ; $40d5: $ff
    ld a, a                                       ; $40d6: $7f
    rst $38                                       ; $40d7: $ff
    ccf                                           ; $40d8: $3f
    rst $38                                       ; $40d9: $ff
    ld e, $ff                                     ; $40da: $1e $ff
    rra                                           ; $40dc: $1f
    rst $38                                       ; $40dd: $ff
    ccf                                           ; $40de: $3f
    rst $38                                       ; $40df: $ff
    nop                                           ; $40e0: $00
    rst $38                                       ; $40e1: $ff
    nop                                           ; $40e2: $00
    rst $38                                       ; $40e3: $ff
    nop                                           ; $40e4: $00
    rst $38                                       ; $40e5: $ff
    add b                                         ; $40e6: $80
    rst $38                                       ; $40e7: $ff
    nop                                           ; $40e8: $00
    rst $38                                       ; $40e9: $ff
    nop                                           ; $40ea: $00
    rst $38                                       ; $40eb: $ff
    nop                                           ; $40ec: $00
    rst $38                                       ; $40ed: $ff
    nop                                           ; $40ee: $00
    rst $38                                       ; $40ef: $ff
    ccf                                           ; $40f0: $3f
    rst $38                                       ; $40f1: $ff
    ccf                                           ; $40f2: $3f
    rst $38                                       ; $40f3: $ff
    ld a, a                                       ; $40f4: $7f
    rst $38                                       ; $40f5: $ff
    rst $38                                       ; $40f6: $ff
    rst $38                                       ; $40f7: $ff
    inc c                                         ; $40f8: $0c
    rst $38                                       ; $40f9: $ff
    inc c                                         ; $40fa: $0c
    rst $38                                       ; $40fb: $ff
    nop                                           ; $40fc: $00
    rst $38                                       ; $40fd: $ff
    nop                                           ; $40fe: $00
    rst $38                                       ; $40ff: $ff
    add b                                         ; $4100: $80
    rst $38                                       ; $4101: $ff
    add b                                         ; $4102: $80
    rst $38                                       ; $4103: $ff
    ret nz                                        ; $4104: $c0

    rst $38                                       ; $4105: $ff
    ldh [rIE], a                                  ; $4106: $e0 $ff
    nop                                           ; $4108: $00
    rst $38                                       ; $4109: $ff
    nop                                           ; $410a: $00
    rst $38                                       ; $410b: $ff
    nop                                           ; $410c: $00
    rst $38                                       ; $410d: $ff
    nop                                           ; $410e: $00
    rst $38                                       ; $410f: $ff
    nop                                           ; $4110: $00
    rst $38                                       ; $4111: $ff
    nop                                           ; $4112: $00
    rst $38                                       ; $4113: $ff
    nop                                           ; $4114: $00
    rst $38                                       ; $4115: $ff
    nop                                           ; $4116: $00
    rst $38                                       ; $4117: $ff
    nop                                           ; $4118: $00
    rst $38                                       ; $4119: $ff
    nop                                           ; $411a: $00
    rst $38                                       ; $411b: $ff
    nop                                           ; $411c: $00
    rst $38                                       ; $411d: $ff
    ld bc, $00fe                                  ; $411e: $01 $fe $00
    rst $38                                       ; $4121: $ff
    nop                                           ; $4122: $00
    rst $38                                       ; $4123: $ff
    nop                                           ; $4124: $00
    rst $38                                       ; $4125: $ff
    nop                                           ; $4126: $00
    rst $38                                       ; $4127: $ff
    nop                                           ; $4128: $00
    rst $38                                       ; $4129: $ff
    nop                                           ; $412a: $00
    rst $38                                       ; $412b: $ff
    rra                                           ; $412c: $1f
    ldh [$f5], a                                  ; $412d: $e0 $f5
    nop                                           ; $412f: $00
    nop                                           ; $4130: $00
    rst $38                                       ; $4131: $ff
    nop                                           ; $4132: $00
    rst $38                                       ; $4133: $ff
    nop                                           ; $4134: $00
    rst $38                                       ; $4135: $ff
    nop                                           ; $4136: $00
    rst $38                                       ; $4137: $ff
    nop                                           ; $4138: $00
    rst $38                                       ; $4139: $ff
    nop                                           ; $413a: $00
    rst $38                                       ; $413b: $ff
    db $fc                                        ; $413c: $fc
    inc bc                                        ; $413d: $03
    rlca                                          ; $413e: $07
    nop                                           ; $413f: $00
    nop                                           ; $4140: $00
    rst $38                                       ; $4141: $ff
    nop                                           ; $4142: $00
    rst $38                                       ; $4143: $ff
    nop                                           ; $4144: $00
    rst $38                                       ; $4145: $ff
    nop                                           ; $4146: $00
    rst $38                                       ; $4147: $ff
    nop                                           ; $4148: $00
    rst $38                                       ; $4149: $ff
    nop                                           ; $414a: $00
    rst $38                                       ; $414b: $ff
    nop                                           ; $414c: $00
    rst $38                                       ; $414d: $ff
    ld hl, sp+$07                                 ; $414e: $f8 $07
    rrca                                          ; $4150: $0f
    ldh a, [rIE]                                  ; $4151: $f0 $ff
    nop                                           ; $4153: $00
    ld a, [$5400]                                 ; $4154: $fa $00 $54
    nop                                           ; $4157: $00
    xor b                                         ; $4158: $a8
    nop                                           ; $4159: $00
    ld d, b                                       ; $415a: $50
    nop                                           ; $415b: $00
    nop                                           ; $415c: $00
    nop                                           ; $415d: $00
    nop                                           ; $415e: $00
    nop                                           ; $415f: $00
    add sp, $00                                   ; $4160: $e8 $00
    ld b, b                                       ; $4162: $40
    nop                                           ; $4163: $00
    add b                                         ; $4164: $80
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    nop                                           ; $416b: $00
    nop                                           ; $416c: $00
    nop                                           ; $416d: $00
    nop                                           ; $416e: $00
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    nop                                           ; $417b: $00
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    nop                                           ; $417e: $00
    nop                                           ; $417f: $00
    rra                                           ; $4180: $1f
    nop                                           ; $4181: $00
    dec b                                         ; $4182: $05
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00
    rst $38                                       ; $4190: $ff
    nop                                           ; $4191: $00
    ei                                            ; $4192: $fb
    nop                                           ; $4193: $00
    cp a                                          ; $4194: $bf
    nop                                           ; $4195: $00
    or $08                                        ; $4196: $f6 $08
    ld a, a                                       ; $4198: $7f
    nop                                           ; $4199: $00
    rst $38                                       ; $419a: $ff
    nop                                           ; $419b: $00
    cp $01                                        ; $419c: $fe $01
    rst $28                                       ; $419e: $ef
    nop                                           ; $419f: $00
    db $fd                                        ; $41a0: $fd
    ld [bc], a                                    ; $41a1: $02
    rst $10                                       ; $41a2: $d7

jr_077_41a3:
    jr nz, jr_077_41a3                            ; $41a3: $20 $fe

    ld bc, $00ff                                  ; $41a5: $01 $ff $00
    ei                                            ; $41a8: $fb
    nop                                           ; $41a9: $00
    rst $18                                       ; $41aa: $df
    jr nz, @+$01                                  ; $41ab: $20 $ff

    nop                                           ; $41ad: $00
    rst $38                                       ; $41ae: $ff
    nop                                           ; $41af: $00
    rst $38                                       ; $41b0: $ff
    nop                                           ; $41b1: $00
    cp [hl]                                       ; $41b2: $be
    ld bc, $08f6                                  ; $41b3: $01 $f6 $08
    rst $38                                       ; $41b6: $ff
    nop                                           ; $41b7: $00
    rst $28                                       ; $41b8: $ef
    nop                                           ; $41b9: $00
    ld a, a                                       ; $41ba: $7f
    add b                                         ; $41bb: $80
    ei                                            ; $41bc: $fb
    nop                                           ; $41bd: $00
    rst $38                                       ; $41be: $ff
    nop                                           ; $41bf: $00
    ei                                            ; $41c0: $fb
    inc b                                         ; $41c1: $04
    sbc $00                                       ; $41c2: $de $00
    rst $38                                       ; $41c4: $ff
    nop                                           ; $41c5: $00
    rst $28                                       ; $41c6: $ef
    nop                                           ; $41c7: $00
    cp e                                          ; $41c8: $bb
    inc b                                         ; $41c9: $04
    rst $38                                       ; $41ca: $ff
    nop                                           ; $41cb: $00
    cp a                                          ; $41cc: $bf
    nop                                           ; $41cd: $00
    cp $00                                        ; $41ce: $fe $00
    ld l, a                                       ; $41d0: $6f

Call_077_41d1:
    db $10                                        ; $41d1: $10
    ei                                            ; $41d2: $fb
    nop                                           ; $41d3: $00
    rst $38                                       ; $41d4: $ff
    nop                                           ; $41d5: $00
    ld a, a                                       ; $41d6: $7f
    nop                                           ; $41d7: $00
    rst $38                                       ; $41d8: $ff
    nop                                           ; $41d9: $00
    xor $10                                       ; $41da: $ee $10
    rst $38                                       ; $41dc: $ff
    nop                                           ; $41dd: $00
    rst $38                                       ; $41de: $ff
    nop                                           ; $41df: $00
    cp a                                          ; $41e0: $bf
    ld b, b                                       ; $41e1: $40
    db $ed                                        ; $41e2: $ed
    ld [bc], a                                    ; $41e3: $02
    rst $38                                       ; $41e4: $ff
    nop                                           ; $41e5: $00
    cp a                                          ; $41e6: $bf
    nop                                           ; $41e7: $00
    sbc $20                                       ; $41e8: $de $20
    rst $38                                       ; $41ea: $ff
    nop                                           ; $41eb: $00
    rst $28                                       ; $41ec: $ef
    nop                                           ; $41ed: $00
    rst $38                                       ; $41ee: $ff
    nop                                           ; $41ef: $00
    add c                                         ; $41f0: $81
    rst $38                                       ; $41f1: $ff
    xor c                                         ; $41f2: $a9
    rst $10                                       ; $41f3: $d7
    or e                                          ; $41f4: $b3
    push bc                                       ; $41f5: $c5
    sub a                                         ; $41f6: $97
    pop bc                                        ; $41f7: $c1
    xor e                                         ; $41f8: $ab
    pop de                                        ; $41f9: $d1
    sub e                                         ; $41fa: $93
    ret                                           ; $41fb: $c9


    xor e                                         ; $41fc: $ab
    pop de                                        ; $41fd: $d1
    rst $10                                       ; $41fe: $d7
    jp hl                                         ; $41ff: $e9


    rst $38                                       ; $4200: $ff
    nop                                           ; $4201: $00
    rst $38                                       ; $4202: $ff
    nop                                           ; $4203: $00
    ld a, [hl]                                    ; $4204: $7e
    add c                                         ; $4205: $81
    ld a, [hl]                                    ; $4206: $7e
    add c                                         ; $4207: $81
    ld a, [hl]                                    ; $4208: $7e
    add c                                         ; $4209: $81
    ld a, [hl]                                    ; $420a: $7e
    add c                                         ; $420b: $81

jr_077_420c:
    ld a, [hl]                                    ; $420c: $7e
    add c                                         ; $420d: $81
    ld a, [hl]                                    ; $420e: $7e
    add c                                         ; $420f: $81
    rst $38                                       ; $4210: $ff
    nop                                           ; $4211: $00
    rst $38                                       ; $4212: $ff
    nop                                           ; $4213: $00
    rst $38                                       ; $4214: $ff
    nop                                           ; $4215: $00
    xor $00                                       ; $4216: $ee $00
    rst $38                                       ; $4218: $ff
    nop                                           ; $4219: $00
    xor d                                         ; $421a: $aa
    nop                                           ; $421b: $00
    ld [hl], a                                    ; $421c: $77
    nop                                           ; $421d: $00
    xor d                                         ; $421e: $aa
    nop                                           ; $421f: $00
    ld d, l                                       ; $4220: $55
    nop                                           ; $4221: $00
    xor d                                         ; $4222: $aa
    nop                                           ; $4223: $00
    ld d, l                                       ; $4224: $55
    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    nop                                           ; $4227: $00
    ld d, l                                       ; $4228: $55
    nop                                           ; $4229: $00
    nop                                           ; $422a: $00
    nop                                           ; $422b: $00
    nop                                           ; $422c: $00
    nop                                           ; $422d: $00
    nop                                           ; $422e: $00
    nop                                           ; $422f: $00
    nop                                           ; $4230: $00
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00
    nop                                           ; $4233: $00
    nop                                           ; $4234: $00
    nop                                           ; $4235: $00
    ld b, b                                       ; $4236: $40
    add b                                         ; $4237: $80
    ld bc, $08fe                                  ; $4238: $01 $fe $08
    rst $38                                       ; $423b: $ff
    ld [$18ff], sp                                ; $423c: $08 $ff $18
    rst $38                                       ; $423f: $ff
    nop                                           ; $4240: $00

Call_077_4241:
    nop                                           ; $4241: $00
    nop                                           ; $4242: $00
    nop                                           ; $4243: $00
    nop                                           ; $4244: $00
    nop                                           ; $4245: $00
    nop                                           ; $4246: $00
    nop                                           ; $4247: $00
    add b                                         ; $4248: $80
    nop                                           ; $4249: $00
    jr nz, jr_077_420c                            ; $424a: $20 $c0

    add hl, de                                    ; $424c: $19
    ldh a, [$30]                                  ; $424d: $f0 $30
    rst $18                                       ; $424f: $df
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    ld [bc], a                                    ; $4256: $02
    ld bc, $0609                                  ; $4257: $01 $09 $06
    inc hl                                        ; $425a: $23
    inc e                                         ; $425b: $1c
    adc c                                         ; $425c: $89
    halt                                          ; $425d: $76
    db $10                                        ; $425e: $10
    rst $28                                       ; $425f: $ef
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    nop                                           ; $4262: $00
    nop                                           ; $4263: $00
    ld b, c                                       ; $4264: $41
    ld a, $28                                     ; $4265: $3e $28
    rst $10                                       ; $4267: $d7
    ld b, b                                       ; $4268: $40
    cp a                                          ; $4269: $bf
    and b                                         ; $426a: $a0
    ld e, a                                       ; $426b: $5f
    nop                                           ; $426c: $00
    rst $38                                       ; $426d: $ff
    nop                                           ; $426e: $00
    rst $38                                       ; $426f: $ff
    inc e                                         ; $4270: $1c
    rst $38                                       ; $4271: $ff
    ld a, $ff                                     ; $4272: $3e $ff
    inc e                                         ; $4274: $1c
    rst $38                                       ; $4275: $ff
    ld e, $ff                                     ; $4276: $1e $ff
    ccf                                           ; $4278: $3f
    rst $38                                       ; $4279: $ff
    inc c                                         ; $427a: $0c
    rst $38                                       ; $427b: $ff
    nop                                           ; $427c: $00
    rst $38                                       ; $427d: $ff
    nop                                           ; $427e: $00
    rst $38                                       ; $427f: $ff
    ld e, b                                       ; $4280: $58
    cp a                                          ; $4281: $bf
    jr c, @+$01                                   ; $4282: $38 $ff

    ld a, h                                       ; $4284: $7c
    rst $38                                       ; $4285: $ff
    jr c, @+$01                                   ; $4286: $38 $ff

    ld a, b                                       ; $4288: $78
    rst $38                                       ; $4289: $ff
    db $fc                                        ; $428a: $fc
    rst $38                                       ; $428b: $ff
    jr nc, @+$01                                  ; $428c: $30 $ff

    nop                                           ; $428e: $00
    rst $38                                       ; $428f: $ff
    inc b                                         ; $4290: $04
    ei                                            ; $4291: $fb
    ld c, b                                       ; $4292: $48
    or a                                          ; $4293: $b7
    add b                                         ; $4294: $80
    ld a, a                                       ; $4295: $7f
    nop                                           ; $4296: $00
    rst $38                                       ; $4297: $ff
    nop                                           ; $4298: $00
    rst $38                                       ; $4299: $ff
    nop                                           ; $429a: $00
    rst $38                                       ; $429b: $ff
    nop                                           ; $429c: $00
    rst $38                                       ; $429d: $ff
    nop                                           ; $429e: $00
    rst $38                                       ; $429f: $ff
    nop                                           ; $42a0: $00
    rst $38                                       ; $42a1: $ff
    nop                                           ; $42a2: $00
    rst $38                                       ; $42a3: $ff
    nop                                           ; $42a4: $00
    rst $38                                       ; $42a5: $ff
    nop                                           ; $42a6: $00
    rst $38                                       ; $42a7: $ff
    nop                                           ; $42a8: $00
    rst $38                                       ; $42a9: $ff
    nop                                           ; $42aa: $00
    rst $38                                       ; $42ab: $ff
    nop                                           ; $42ac: $00
    rst $38                                       ; $42ad: $ff
    nop                                           ; $42ae: $00
    rst $38                                       ; $42af: $ff
    nop                                           ; $42b0: $00
    rst $38                                       ; $42b1: $ff
    nop                                           ; $42b2: $00
    rst $38                                       ; $42b3: $ff
    add b                                         ; $42b4: $80
    rst $38                                       ; $42b5: $ff
    add b                                         ; $42b6: $80
    rst $38                                       ; $42b7: $ff
    add b                                         ; $42b8: $80
    rst $38                                       ; $42b9: $ff
    add b                                         ; $42ba: $80
    rst $38                                       ; $42bb: $ff
    ret nz                                        ; $42bc: $c0

    rst $38                                       ; $42bd: $ff
    ret nz                                        ; $42be: $c0

    rst $38                                       ; $42bf: $ff
    nop                                           ; $42c0: $00
    rst $38                                       ; $42c1: $ff
    nop                                           ; $42c2: $00
    rst $38                                       ; $42c3: $ff
    nop                                           ; $42c4: $00
    rst $38                                       ; $42c5: $ff
    nop                                           ; $42c6: $00
    rst $38                                       ; $42c7: $ff
    nop                                           ; $42c8: $00
    rst $38                                       ; $42c9: $ff
    nop                                           ; $42ca: $00
    rst $38                                       ; $42cb: $ff
    nop                                           ; $42cc: $00
    rst $38                                       ; $42cd: $ff
    nop                                           ; $42ce: $00
    rst $38                                       ; $42cf: $ff
    ldh [rIE], a                                  ; $42d0: $e0 $ff
    ldh [rIE], a                                  ; $42d2: $e0 $ff
    ldh a, [rIE]                                  ; $42d4: $f0 $ff
    ld hl, sp-$01                                 ; $42d6: $f8 $ff
    ldh a, [rIE]                                  ; $42d8: $f0 $ff
    ldh [rIE], a                                  ; $42da: $e0 $ff
    ldh a, [rIE]                                  ; $42dc: $f0 $ff
    ldh a, [rIE]                                  ; $42de: $f0 $ff
    ld bc, $01ff                                  ; $42e0: $01 $ff $01
    rst $38                                       ; $42e3: $ff
    inc bc                                        ; $42e4: $03
    rst $38                                       ; $42e5: $ff
    rlca                                          ; $42e6: $07
    rst $38                                       ; $42e7: $ff
    inc bc                                        ; $42e8: $03
    rst $38                                       ; $42e9: $ff
    ld bc, $01ff                                  ; $42ea: $01 $ff $01
    rst $38                                       ; $42ed: $ff
    inc bc                                        ; $42ee: $03
    rst $38                                       ; $42ef: $ff
    ld hl, sp-$01                                 ; $42f0: $f8 $ff
    ld hl, sp-$01                                 ; $42f2: $f8 $ff
    db $fc                                        ; $42f4: $fc
    rst $38                                       ; $42f5: $ff
    cp $ff                                        ; $42f6: $fe $ff
    ret nz                                        ; $42f8: $c0

    rst $38                                       ; $42f9: $ff
    ret nz                                        ; $42fa: $c0

    rst $38                                       ; $42fb: $ff
    nop                                           ; $42fc: $00
    rst $38                                       ; $42fd: $ff
    nop                                           ; $42fe: $00
    rst $38                                       ; $42ff: $ff
    inc bc                                        ; $4300: $03
    rst $38                                       ; $4301: $ff
    inc bc                                        ; $4302: $03
    rst $38                                       ; $4303: $ff
    rlca                                          ; $4304: $07
    rst $38                                       ; $4305: $ff
    rrca                                          ; $4306: $0f
    rst $38                                       ; $4307: $ff
    nop                                           ; $4308: $00
    rst $38                                       ; $4309: $ff
    nop                                           ; $430a: $00
    rst $38                                       ; $430b: $ff
    nop                                           ; $430c: $00
    rst $38                                       ; $430d: $ff
    nop                                           ; $430e: $00
    rst $38                                       ; $430f: $ff
    nop                                           ; $4310: $00
    rst $38                                       ; $4311: $ff
    nop                                           ; $4312: $00
    rst $38                                       ; $4313: $ff
    nop                                           ; $4314: $00
    rst $38                                       ; $4315: $ff
    nop                                           ; $4316: $00
    rst $38                                       ; $4317: $ff
    nop                                           ; $4318: $00
    rst $38                                       ; $4319: $ff
    nop                                           ; $431a: $00
    rst $38                                       ; $431b: $ff
    rlca                                          ; $431c: $07
    ld hl, sp+$7d                                 ; $431d: $f8 $7d
    add b                                         ; $431f: $80
    nop                                           ; $4320: $00
    rst $38                                       ; $4321: $ff
    nop                                           ; $4322: $00
    rst $38                                       ; $4323: $ff
    nop                                           ; $4324: $00
    rst $38                                       ; $4325: $ff
    nop                                           ; $4326: $00
    rst $38                                       ; $4327: $ff
    nop                                           ; $4328: $00
    rst $38                                       ; $4329: $ff
    nop                                           ; $432a: $00
    rst $38                                       ; $432b: $ff
    rst $38                                       ; $432c: $ff
    nop                                           ; $432d: $00
    ld b, c                                       ; $432e: $41
    nop                                           ; $432f: $00
    nop                                           ; $4330: $00
    rst $38                                       ; $4331: $ff
    nop                                           ; $4332: $00
    rst $38                                       ; $4333: $ff
    nop                                           ; $4334: $00
    rst $38                                       ; $4335: $ff
    nop                                           ; $4336: $00
    rst $38                                       ; $4337: $ff
    nop                                           ; $4338: $00
    rst $38                                       ; $4339: $ff
    nop                                           ; $433a: $00
    rst $38                                       ; $433b: $ff
    nop                                           ; $433c: $00
    rst $38                                       ; $433d: $ff
    cp $01                                        ; $433e: $fe $01
    nop                                           ; $4340: $00
    rst $38                                       ; $4341: $ff
    nop                                           ; $4342: $00
    rst $38                                       ; $4343: $ff
    nop                                           ; $4344: $00
    rst $38                                       ; $4345: $ff
    nop                                           ; $4346: $00
    rst $38                                       ; $4347: $ff
    nop                                           ; $4348: $00
    rst $38                                       ; $4349: $ff
    nop                                           ; $434a: $00
    rst $38                                       ; $434b: $ff
    nop                                           ; $434c: $00
    rst $38                                       ; $434d: $ff
    nop                                           ; $434e: $00
    rst $38                                       ; $434f: $ff
    ld a, [$d000]                                 ; $4350: $fa $00 $d0
    nop                                           ; $4353: $00
    and b                                         ; $4354: $a0
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435a: $00
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    nop                                           ; $435d: $00
    nop                                           ; $435e: $00
    nop                                           ; $435f: $00
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    nop                                           ; $436a: $00
    nop                                           ; $436b: $00
    nop                                           ; $436c: $00
    nop                                           ; $436d: $00
    nop                                           ; $436e: $00
    nop                                           ; $436f: $00
    rlca                                          ; $4370: $07
    nop                                           ; $4371: $00
    ld bc, $0000                                  ; $4372: $01 $00 $00
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    nop                                           ; $4379: $00
    nop                                           ; $437a: $00
    nop                                           ; $437b: $00
    nop                                           ; $437c: $00
    nop                                           ; $437d: $00
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    ldh a, [rIF]                                  ; $4380: $f0 $0f
    ld a, h                                       ; $4382: $7c
    inc bc                                        ; $4383: $03
    cpl                                           ; $4384: $2f
    nop                                           ; $4385: $00
    dec d                                         ; $4386: $15
    nop                                           ; $4387: $00
    ld a, [bc]                                    ; $4388: $0a
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    db $fd                                        ; $4390: $fd
    ld [bc], a                                    ; $4391: $02
    rst $10                                       ; $4392: $d7

jr_077_4393:
    jr nz, jr_077_4393                            ; $4393: $20 $fe

    ld bc, $00ff                                  ; $4395: $01 $ff $00
    ei                                            ; $4398: $fb
    nop                                           ; $4399: $00
    rst $18                                       ; $439a: $df
    jr nz, @+$01                                  ; $439b: $20 $ff

    nop                                           ; $439d: $00
    rst $38                                       ; $439e: $ff
    nop                                           ; $439f: $00
    rst $38                                       ; $43a0: $ff
    nop                                           ; $43a1: $00
    cp [hl]                                       ; $43a2: $be
    ld bc, $08f6                                  ; $43a3: $01 $f6 $08
    rst $38                                       ; $43a6: $ff
    nop                                           ; $43a7: $00
    rst $28                                       ; $43a8: $ef
    nop                                           ; $43a9: $00
    ld a, a                                       ; $43aa: $7f
    add b                                         ; $43ab: $80
    ei                                            ; $43ac: $fb
    nop                                           ; $43ad: $00
    rst $38                                       ; $43ae: $ff
    nop                                           ; $43af: $00
    ei                                            ; $43b0: $fb
    inc b                                         ; $43b1: $04
    sbc $00                                       ; $43b2: $de $00
    rst $38                                       ; $43b4: $ff
    nop                                           ; $43b5: $00
    rst $28                                       ; $43b6: $ef
    nop                                           ; $43b7: $00
    cp e                                          ; $43b8: $bb
    inc b                                         ; $43b9: $04
    rst $38                                       ; $43ba: $ff
    nop                                           ; $43bb: $00
    cp a                                          ; $43bc: $bf
    nop                                           ; $43bd: $00
    cp $00                                        ; $43be: $fe $00
    rst $38                                       ; $43c0: $ff
    nop                                           ; $43c1: $00
    ei                                            ; $43c2: $fb
    nop                                           ; $43c3: $00
    cp a                                          ; $43c4: $bf
    nop                                           ; $43c5: $00
    or $08                                        ; $43c6: $f6 $08
    ld a, a                                       ; $43c8: $7f
    nop                                           ; $43c9: $00
    rst $38                                       ; $43ca: $ff
    nop                                           ; $43cb: $00
    cp $01                                        ; $43cc: $fe $01
    rst $28                                       ; $43ce: $ef
    nop                                           ; $43cf: $00
    cp a                                          ; $43d0: $bf
    ld b, b                                       ; $43d1: $40
    db $ed                                        ; $43d2: $ed
    ld [bc], a                                    ; $43d3: $02
    rst $38                                       ; $43d4: $ff
    nop                                           ; $43d5: $00
    cp a                                          ; $43d6: $bf
    nop                                           ; $43d7: $00
    sbc $20                                       ; $43d8: $de $20
    rst $38                                       ; $43da: $ff
    nop                                           ; $43db: $00
    rst $28                                       ; $43dc: $ef
    nop                                           ; $43dd: $00
    rst $38                                       ; $43de: $ff
    nop                                           ; $43df: $00
    ld l, a                                       ; $43e0: $6f
    db $10                                        ; $43e1: $10
    ei                                            ; $43e2: $fb
    nop                                           ; $43e3: $00
    rst $38                                       ; $43e4: $ff
    nop                                           ; $43e5: $00
    ld a, a                                       ; $43e6: $7f
    nop                                           ; $43e7: $00
    rst $38                                       ; $43e8: $ff
    nop                                           ; $43e9: $00
    xor $10                                       ; $43ea: $ee $10
    rst $38                                       ; $43ec: $ff
    nop                                           ; $43ed: $00
    rst $38                                       ; $43ee: $ff
    nop                                           ; $43ef: $00
    rst $38                                       ; $43f0: $ff
    nop                                           ; $43f1: $00
    rst $38                                       ; $43f2: $ff
    nop                                           ; $43f3: $00
    ld a, [hl]                                    ; $43f4: $7e
    add c                                         ; $43f5: $81
    ld a, [hl]                                    ; $43f6: $7e
    add c                                         ; $43f7: $81
    ld a, [hl]                                    ; $43f8: $7e
    add c                                         ; $43f9: $81
    ld a, [hl]                                    ; $43fa: $7e
    add c                                         ; $43fb: $81
    ld a, [hl]                                    ; $43fc: $7e
    add c                                         ; $43fd: $81
    ld a, [hl]                                    ; $43fe: $7e
    add c                                         ; $43ff: $81
    add c                                         ; $4400: $81
    rst $38                                       ; $4401: $ff
    xor c                                         ; $4402: $a9
    rst $10                                       ; $4403: $d7
    or e                                          ; $4404: $b3
    push bc                                       ; $4405: $c5
    sub a                                         ; $4406: $97
    pop bc                                        ; $4407: $c1
    xor e                                         ; $4408: $ab
    pop de                                        ; $4409: $d1
    sub e                                         ; $440a: $93
    ret                                           ; $440b: $c9


    xor e                                         ; $440c: $ab
    pop de                                        ; $440d: $d1
    rst $10                                       ; $440e: $d7
    jp hl                                         ; $440f: $e9


    rst $38                                       ; $4410: $ff
    nop                                           ; $4411: $00
    rst $38                                       ; $4412: $ff
    nop                                           ; $4413: $00
    rst $38                                       ; $4414: $ff
    nop                                           ; $4415: $00
    db $dd                                        ; $4416: $dd
    nop                                           ; $4417: $00
    rst $38                                       ; $4418: $ff
    nop                                           ; $4419: $00
    ld d, l                                       ; $441a: $55
    nop                                           ; $441b: $00
    xor $00                                       ; $441c: $ee $00
    ld d, l                                       ; $441e: $55
    nop                                           ; $441f: $00
    xor d                                         ; $4420: $aa
    nop                                           ; $4421: $00
    ld d, l                                       ; $4422: $55
    nop                                           ; $4423: $00
    xor d                                         ; $4424: $aa
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    xor d                                         ; $4428: $aa
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    add b                                         ; $4436: $80
    nop                                           ; $4437: $00
    inc bc                                        ; $4438: $03
    db $fc                                        ; $4439: $fc
    jr nz, @+$01                                  ; $443a: $20 $ff

    jr nz, @+$01                                  ; $443c: $20 $ff

    ld h, b                                       ; $443e: $60

jr_077_443f:
    rst $38                                       ; $443f: $ff
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00

Call_077_4443:
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    ld b, b                                       ; $444a: $40
    add b                                         ; $444b: $80
    ld d, e                                       ; $444c: $53
    ldh [rLCDC], a                                ; $444d: $e0 $40
    rst $38                                       ; $444f: $ff
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    inc b                                         ; $4456: $04
    inc bc                                        ; $4457: $03
    ld [de], a                                    ; $4458: $12
    dec c                                         ; $4459: $0d
    ld b, a                                       ; $445a: $47
    jr c, jr_077_446f                             ; $445b: $38 $12

    db $ed                                        ; $445d: $ed
    jr nz, jr_077_443f                            ; $445e: $20 $df

    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    add d                                         ; $4464: $82
    ld a, h                                       ; $4465: $7c
    ld d, b                                       ; $4466: $50
    xor a                                         ; $4467: $af
    add b                                         ; $4468: $80
    ld a, a                                       ; $4469: $7f
    ld b, b                                       ; $446a: $40
    cp a                                          ; $446b: $bf
    nop                                           ; $446c: $00
    rst $38                                       ; $446d: $ff
    nop                                           ; $446e: $00

jr_077_446f:
    rst $38                                       ; $446f: $ff
    ld [hl], b                                    ; $4470: $70
    rst $38                                       ; $4471: $ff
    ld hl, sp-$01                                 ; $4472: $f8 $ff
    ld [hl], c                                    ; $4474: $71
    rst $38                                       ; $4475: $ff
    ld a, b                                       ; $4476: $78
    rst $38                                       ; $4477: $ff
    db $fd                                        ; $4478: $fd
    rst $38                                       ; $4479: $ff
    inc sp                                        ; $447a: $33
    rst $38                                       ; $447b: $ff
    nop                                           ; $447c: $00
    rst $38                                       ; $447d: $ff
    nop                                           ; $447e: $00
    rst $38                                       ; $447f: $ff
    ldh [$7f], a                                  ; $4480: $e0 $7f
    ldh a, [$ef]                                  ; $4482: $f0 $ef
    pop af                                        ; $4484: $f1
    cp $e0                                        ; $4485: $fe $e0
    rst $38                                       ; $4487: $ff
    ldh [rIE], a                                  ; $4488: $e0 $ff
    ldh a, [rIE]                                  ; $448a: $f0 $ff
    ret nz                                        ; $448c: $c0

    rst $38                                       ; $448d: $ff
    nop                                           ; $448e: $00
    rst $38                                       ; $448f: $ff
    ld [$90f7], sp                                ; $4490: $08 $f7 $90
    ld l, a                                       ; $4493: $6f
    nop                                           ; $4494: $00
    rst $38                                       ; $4495: $ff
    nop                                           ; $4496: $00
    rst $38                                       ; $4497: $ff
    nop                                           ; $4498: $00
    rst $38                                       ; $4499: $ff
    nop                                           ; $449a: $00
    rst $38                                       ; $449b: $ff
    nop                                           ; $449c: $00
    rst $38                                       ; $449d: $ff
    nop                                           ; $449e: $00
    rst $38                                       ; $449f: $ff
    nop                                           ; $44a0: $00
    rst $38                                       ; $44a1: $ff
    nop                                           ; $44a2: $00
    rst $38                                       ; $44a3: $ff
    nop                                           ; $44a4: $00
    rst $38                                       ; $44a5: $ff
    nop                                           ; $44a6: $00
    rst $38                                       ; $44a7: $ff
    nop                                           ; $44a8: $00
    rst $38                                       ; $44a9: $ff
    nop                                           ; $44aa: $00
    rst $38                                       ; $44ab: $ff
    nop                                           ; $44ac: $00
    rst $38                                       ; $44ad: $ff
    nop                                           ; $44ae: $00
    rst $38                                       ; $44af: $ff
    nop                                           ; $44b0: $00
    rst $38                                       ; $44b1: $ff
    nop                                           ; $44b2: $00
    rst $38                                       ; $44b3: $ff
    nop                                           ; $44b4: $00
    rst $38                                       ; $44b5: $ff
    nop                                           ; $44b6: $00
    rst $38                                       ; $44b7: $ff
    nop                                           ; $44b8: $00
    rst $38                                       ; $44b9: $ff
    nop                                           ; $44ba: $00
    rst $38                                       ; $44bb: $ff
    nop                                           ; $44bc: $00
    rst $38                                       ; $44bd: $ff
    nop                                           ; $44be: $00
    rst $38                                       ; $44bf: $ff
    nop                                           ; $44c0: $00
    rst $38                                       ; $44c1: $ff
    nop                                           ; $44c2: $00
    rst $38                                       ; $44c3: $ff
    ld [$08ff], sp                                ; $44c4: $08 $ff $08
    rst $38                                       ; $44c7: $ff
    ld [$08ff], sp                                ; $44c8: $08 $ff $08
    rst $38                                       ; $44cb: $ff
    inc c                                         ; $44cc: $0c
    rst $38                                       ; $44cd: $ff
    inc c                                         ; $44ce: $0c
    rst $38                                       ; $44cf: $ff
    nop                                           ; $44d0: $00
    rst $38                                       ; $44d1: $ff
    nop                                           ; $44d2: $00
    rst $38                                       ; $44d3: $ff
    nop                                           ; $44d4: $00
    rst $38                                       ; $44d5: $ff
    add b                                         ; $44d6: $80
    rst $38                                       ; $44d7: $ff
    nop                                           ; $44d8: $00
    rst $38                                       ; $44d9: $ff
    nop                                           ; $44da: $00
    rst $38                                       ; $44db: $ff
    nop                                           ; $44dc: $00
    rst $38                                       ; $44dd: $ff
    nop                                           ; $44de: $00
    rst $38                                       ; $44df: $ff
    ld e, $ff                                     ; $44e0: $1e $ff
    ld e, $ff                                     ; $44e2: $1e $ff
    ccf                                           ; $44e4: $3f
    rst $38                                       ; $44e5: $ff
    ld a, a                                       ; $44e6: $7f
    rst $38                                       ; $44e7: $ff
    ccf                                           ; $44e8: $3f
    rst $38                                       ; $44e9: $ff
    ld e, $ff                                     ; $44ea: $1e $ff
    rra                                           ; $44ec: $1f
    rst $38                                       ; $44ed: $ff
    ccf                                           ; $44ee: $3f
    rst $38                                       ; $44ef: $ff
    add b                                         ; $44f0: $80
    rst $38                                       ; $44f1: $ff
    add b                                         ; $44f2: $80
    rst $38                                       ; $44f3: $ff
    ret nz                                        ; $44f4: $c0

    rst $38                                       ; $44f5: $ff
    ldh [rIE], a                                  ; $44f6: $e0 $ff
    nop                                           ; $44f8: $00
    rst $38                                       ; $44f9: $ff
    nop                                           ; $44fa: $00
    rst $38                                       ; $44fb: $ff
    nop                                           ; $44fc: $00
    rst $38                                       ; $44fd: $ff
    nop                                           ; $44fe: $00
    rst $38                                       ; $44ff: $ff
    ccf                                           ; $4500: $3f
    rst $38                                       ; $4501: $ff
    ccf                                           ; $4502: $3f
    rst $38                                       ; $4503: $ff
    ld a, a                                       ; $4504: $7f
    rst $38                                       ; $4505: $ff
    rst $38                                       ; $4506: $ff
    rst $38                                       ; $4507: $ff
    inc c                                         ; $4508: $0c
    rst $38                                       ; $4509: $ff
    inc c                                         ; $450a: $0c
    rst $38                                       ; $450b: $ff
    nop                                           ; $450c: $00
    rst $38                                       ; $450d: $ff
    nop                                           ; $450e: $00
    rst $38                                       ; $450f: $ff
    nop                                           ; $4510: $00
    rst $38                                       ; $4511: $ff
    nop                                           ; $4512: $00
    rst $38                                       ; $4513: $ff
    nop                                           ; $4514: $00
    rst $38                                       ; $4515: $ff
    nop                                           ; $4516: $00
    rst $38                                       ; $4517: $ff
    nop                                           ; $4518: $00
    rst $38                                       ; $4519: $ff
    nop                                           ; $451a: $00
    rst $38                                       ; $451b: $ff
    rst $38                                       ; $451c: $ff
    nop                                           ; $451d: $00
    ld d, b                                       ; $451e: $50
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    rst $38                                       ; $4521: $ff
    nop                                           ; $4522: $00
    rst $38                                       ; $4523: $ff
    nop                                           ; $4524: $00
    rst $38                                       ; $4525: $ff
    nop                                           ; $4526: $00
    rst $38                                       ; $4527: $ff
    nop                                           ; $4528: $00
    rst $38                                       ; $4529: $ff
    nop                                           ; $452a: $00
    rst $38                                       ; $452b: $ff
    ret nz                                        ; $452c: $c0

    ccf                                           ; $452d: $3f
    ld a, a                                       ; $452e: $7f
    nop                                           ; $452f: $00
    nop                                           ; $4530: $00
    rst $38                                       ; $4531: $ff
    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff
    nop                                           ; $4534: $00
    rst $38                                       ; $4535: $ff
    nop                                           ; $4536: $00
    rst $38                                       ; $4537: $ff
    nop                                           ; $4538: $00
    rst $38                                       ; $4539: $ff
    nop                                           ; $453a: $00
    rst $38                                       ; $453b: $ff
    nop                                           ; $453c: $00
    rst $38                                       ; $453d: $ff
    add b                                         ; $453e: $80
    ld a, a                                       ; $453f: $7f
    nop                                           ; $4540: $00
    rst $38                                       ; $4541: $ff
    nop                                           ; $4542: $00
    rst $38                                       ; $4543: $ff
    nop                                           ; $4544: $00
    rst $38                                       ; $4545: $ff
    nop                                           ; $4546: $00
    rst $38                                       ; $4547: $ff
    nop                                           ; $4548: $00
    rst $38                                       ; $4549: $ff
    nop                                           ; $454a: $00
    rst $38                                       ; $454b: $ff
    nop                                           ; $454c: $00
    rst $38                                       ; $454d: $ff
    nop                                           ; $454e: $00
    rst $38                                       ; $454f: $ff
    add b                                         ; $4550: $80
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    nop                                           ; $455b: $00
    nop                                           ; $455c: $00
    nop                                           ; $455d: $00
    nop                                           ; $455e: $00
    nop                                           ; $455f: $00
    ld bc, $0000                                  ; $4560: $01 $00 $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    nop                                           ; $456b: $00
    nop                                           ; $456c: $00
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    nop                                           ; $456f: $00
    db $fc                                        ; $4570: $fc
    inc bc                                        ; $4571: $03
    ld e, a                                       ; $4572: $5f
    nop                                           ; $4573: $00
    dec bc                                        ; $4574: $0b
    nop                                           ; $4575: $00
    dec b                                         ; $4576: $05
    nop                                           ; $4577: $00
    ld [bc], a                                    ; $4578: $02
    nop                                           ; $4579: $00
    nop                                           ; $457a: $00
    nop                                           ; $457b: $00
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    nop                                           ; $457f: $00
    nop                                           ; $4580: $00
    rst $38                                       ; $4581: $ff
    nop                                           ; $4582: $00
    rst $38                                       ; $4583: $ff
    cp $01                                        ; $4584: $fe $01
    ld a, a                                       ; $4586: $7f
    nop                                           ; $4587: $00
    and d                                         ; $4588: $a2
    nop                                           ; $4589: $00
    stop                                          ; $458a: $10 $00
    nop                                           ; $458c: $00
    nop                                           ; $458d: $00
    nop                                           ; $458e: $00
    nop                                           ; $458f: $00
    rst $38                                       ; $4590: $ff
    nop                                           ; $4591: $00
    cp [hl]                                       ; $4592: $be
    ld bc, $08f6                                  ; $4593: $01 $f6 $08
    rst $38                                       ; $4596: $ff
    nop                                           ; $4597: $00
    rst $28                                       ; $4598: $ef
    nop                                           ; $4599: $00
    ld a, a                                       ; $459a: $7f
    add b                                         ; $459b: $80
    ei                                            ; $459c: $fb
    nop                                           ; $459d: $00
    rst $38                                       ; $459e: $ff
    nop                                           ; $459f: $00
    ei                                            ; $45a0: $fb
    inc b                                         ; $45a1: $04
    sbc $00                                       ; $45a2: $de $00
    rst $38                                       ; $45a4: $ff
    nop                                           ; $45a5: $00
    rst $28                                       ; $45a6: $ef
    nop                                           ; $45a7: $00
    cp e                                          ; $45a8: $bb
    inc b                                         ; $45a9: $04
    rst $38                                       ; $45aa: $ff
    nop                                           ; $45ab: $00
    cp a                                          ; $45ac: $bf
    nop                                           ; $45ad: $00
    cp $00                                        ; $45ae: $fe $00
    rst $38                                       ; $45b0: $ff
    nop                                           ; $45b1: $00
    ei                                            ; $45b2: $fb
    nop                                           ; $45b3: $00
    cp a                                          ; $45b4: $bf
    nop                                           ; $45b5: $00
    or $08                                        ; $45b6: $f6 $08
    ld a, a                                       ; $45b8: $7f
    nop                                           ; $45b9: $00
    rst $38                                       ; $45ba: $ff
    nop                                           ; $45bb: $00
    cp $01                                        ; $45bc: $fe $01
    rst $28                                       ; $45be: $ef
    nop                                           ; $45bf: $00
    db $fd                                        ; $45c0: $fd
    ld [bc], a                                    ; $45c1: $02
    rst $10                                       ; $45c2: $d7

jr_077_45c3:
    jr nz, jr_077_45c3                            ; $45c3: $20 $fe

    ld bc, $00ff                                  ; $45c5: $01 $ff $00
    ei                                            ; $45c8: $fb
    nop                                           ; $45c9: $00
    rst $18                                       ; $45ca: $df
    jr nz, @+$01                                  ; $45cb: $20 $ff

    nop                                           ; $45cd: $00
    rst $38                                       ; $45ce: $ff
    nop                                           ; $45cf: $00
    ld l, a                                       ; $45d0: $6f

Call_077_45d1:
    db $10                                        ; $45d1: $10
    ei                                            ; $45d2: $fb
    nop                                           ; $45d3: $00
    rst $38                                       ; $45d4: $ff
    nop                                           ; $45d5: $00
    ld a, a                                       ; $45d6: $7f
    nop                                           ; $45d7: $00
    rst $38                                       ; $45d8: $ff
    nop                                           ; $45d9: $00
    xor $10                                       ; $45da: $ee $10
    rst $38                                       ; $45dc: $ff
    nop                                           ; $45dd: $00
    rst $38                                       ; $45de: $ff
    nop                                           ; $45df: $00
    cp a                                          ; $45e0: $bf
    ld b, b                                       ; $45e1: $40
    db $ed                                        ; $45e2: $ed
    ld [bc], a                                    ; $45e3: $02
    rst $38                                       ; $45e4: $ff
    nop                                           ; $45e5: $00
    cp a                                          ; $45e6: $bf
    nop                                           ; $45e7: $00
    sbc $20                                       ; $45e8: $de $20
    rst $38                                       ; $45ea: $ff
    nop                                           ; $45eb: $00
    rst $28                                       ; $45ec: $ef
    nop                                           ; $45ed: $00
    rst $38                                       ; $45ee: $ff
    nop                                           ; $45ef: $00
    add c                                         ; $45f0: $81
    rst $38                                       ; $45f1: $ff
    xor c                                         ; $45f2: $a9
    rst $10                                       ; $45f3: $d7
    or e                                          ; $45f4: $b3
    push bc                                       ; $45f5: $c5
    sub a                                         ; $45f6: $97
    pop bc                                        ; $45f7: $c1
    xor e                                         ; $45f8: $ab
    pop de                                        ; $45f9: $d1
    sub e                                         ; $45fa: $93
    ret                                           ; $45fb: $c9


    xor e                                         ; $45fc: $ab
    pop de                                        ; $45fd: $d1
    rst $10                                       ; $45fe: $d7
    jp hl                                         ; $45ff: $e9


    rst $38                                       ; $4600: $ff
    nop                                           ; $4601: $00
    rst $38                                       ; $4602: $ff
    nop                                           ; $4603: $00
    ld a, [hl]                                    ; $4604: $7e
    add c                                         ; $4605: $81
    ld a, [hl]                                    ; $4606: $7e
    add c                                         ; $4607: $81
    ld a, [hl]                                    ; $4608: $7e
    add c                                         ; $4609: $81
    ld a, [hl]                                    ; $460a: $7e
    add c                                         ; $460b: $81
    ld a, [hl]                                    ; $460c: $7e
    add c                                         ; $460d: $81
    ld a, [hl]                                    ; $460e: $7e
    add c                                         ; $460f: $81
    rst $38                                       ; $4610: $ff
    nop                                           ; $4611: $00
    rst $38                                       ; $4612: $ff
    nop                                           ; $4613: $00
    rst $38                                       ; $4614: $ff
    nop                                           ; $4615: $00
    db $dd                                        ; $4616: $dd
    nop                                           ; $4617: $00
    rst $38                                       ; $4618: $ff
    nop                                           ; $4619: $00
    ld d, l                                       ; $461a: $55
    nop                                           ; $461b: $00
    xor $00                                       ; $461c: $ee $00
    ld d, l                                       ; $461e: $55
    nop                                           ; $461f: $00
    xor d                                         ; $4620: $aa
    nop                                           ; $4621: $00
    ld d, l                                       ; $4622: $55
    nop                                           ; $4623: $00
    xor d                                         ; $4624: $aa
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    xor d                                         ; $4628: $aa
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
    ld b, $f8                                     ; $4638: $06 $f8
    add b                                         ; $463a: $80
    rst $38                                       ; $463b: $ff
    add c                                         ; $463c: $81
    rst $38                                       ; $463d: $ff
    add c                                         ; $463e: $81
    rst $38                                       ; $463f: $ff
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    add b                                         ; $464a: $80
    nop                                           ; $464b: $00
    ld h, $c1                                     ; $464c: $26 $c1
    add b                                         ; $464e: $80
    ld a, a                                       ; $464f: $7f
    nop                                           ; $4650: $00
    nop                                           ; $4651: $00
    nop                                           ; $4652: $00
    nop                                           ; $4653: $00
    ld bc, $0800                                  ; $4654: $01 $00 $08
    rlca                                          ; $4657: $07
    dec h                                         ; $4658: $25
    ld a, [de]                                    ; $4659: $1a
    adc [hl]                                      ; $465a: $8e
    ld [hl], c                                    ; $465b: $71
    inc h                                         ; $465c: $24
    db $db                                        ; $465d: $db
    ld b, b                                       ; $465e: $40
    cp a                                          ; $465f: $bf
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    inc b                                         ; $4664: $04
    ld hl, sp-$5f                                 ; $4665: $f8 $a1
    ld e, [hl]                                    ; $4667: $5e
    nop                                           ; $4668: $00
    rst $38                                       ; $4669: $ff
    add b                                         ; $466a: $80
    ld a, a                                       ; $466b: $7f
    nop                                           ; $466c: $00
    rst $38                                       ; $466d: $ff
    nop                                           ; $466e: $00
    rst $38                                       ; $466f: $ff
    pop bc                                        ; $4670: $c1
    rst $38                                       ; $4671: $ff
    db $e3                                        ; $4672: $e3

jr_077_4673:
    rst $38                                       ; $4673: $ff
    rst $00                                       ; $4674: $c7
    rst $38                                       ; $4675: $ff
    db $e3                                        ; $4676: $e3
    rst $38                                       ; $4677: $ff
    rst $30                                       ; $4678: $f7
    rst $38                                       ; $4679: $ff
    rst $08                                       ; $467a: $cf
    rst $38                                       ; $467b: $ff
    inc bc                                        ; $467c: $03
    rst $38                                       ; $467d: $ff
    nop                                           ; $467e: $00
    rst $38                                       ; $467f: $ff
    add b                                         ; $4680: $80
    rst $38                                       ; $4681: $ff
    and c                                         ; $4682: $a1
    sbc $c2                                       ; $4683: $de $c2
    db $fd                                        ; $4685: $fd
    add b                                         ; $4686: $80
    rst $38                                       ; $4687: $ff
    add b                                         ; $4688: $80
    rst $38                                       ; $4689: $ff
    ret nz                                        ; $468a: $c0

    rst $38                                       ; $468b: $ff
    nop                                           ; $468c: $00
    rst $38                                       ; $468d: $ff
    nop                                           ; $468e: $00
    rst $38                                       ; $468f: $ff
    db $10                                        ; $4690: $10
    rst $28                                       ; $4691: $ef
    jr nz, jr_077_4673                            ; $4692: $20 $df

    nop                                           ; $4694: $00
    rst $38                                       ; $4695: $ff
    nop                                           ; $4696: $00
    rst $38                                       ; $4697: $ff
    nop                                           ; $4698: $00
    rst $38                                       ; $4699: $ff
    nop                                           ; $469a: $00
    rst $38                                       ; $469b: $ff
    nop                                           ; $469c: $00
    rst $38                                       ; $469d: $ff
    nop                                           ; $469e: $00
    rst $38                                       ; $469f: $ff
    nop                                           ; $46a0: $00
    rst $38                                       ; $46a1: $ff
    nop                                           ; $46a2: $00
    rst $38                                       ; $46a3: $ff
    nop                                           ; $46a4: $00
    rst $38                                       ; $46a5: $ff
    nop                                           ; $46a6: $00
    rst $38                                       ; $46a7: $ff
    nop                                           ; $46a8: $00
    rst $38                                       ; $46a9: $ff
    nop                                           ; $46aa: $00
    rst $38                                       ; $46ab: $ff
    nop                                           ; $46ac: $00
    rst $38                                       ; $46ad: $ff
    nop                                           ; $46ae: $00
    rst $38                                       ; $46af: $ff
    nop                                           ; $46b0: $00
    rst $38                                       ; $46b1: $ff
    nop                                           ; $46b2: $00
    rst $38                                       ; $46b3: $ff
    nop                                           ; $46b4: $00
    rst $38                                       ; $46b5: $ff
    nop                                           ; $46b6: $00
    rst $38                                       ; $46b7: $ff
    nop                                           ; $46b8: $00
    rst $38                                       ; $46b9: $ff
    nop                                           ; $46ba: $00
    rst $38                                       ; $46bb: $ff
    nop                                           ; $46bc: $00
    rst $38                                       ; $46bd: $ff
    nop                                           ; $46be: $00
    rst $38                                       ; $46bf: $ff
    nop                                           ; $46c0: $00
    rst $38                                       ; $46c1: $ff
    nop                                           ; $46c2: $00
    rst $38                                       ; $46c3: $ff
    add b                                         ; $46c4: $80
    rst $38                                       ; $46c5: $ff
    add b                                         ; $46c6: $80
    rst $38                                       ; $46c7: $ff
    add b                                         ; $46c8: $80
    rst $38                                       ; $46c9: $ff
    add b                                         ; $46ca: $80
    rst $38                                       ; $46cb: $ff
    ret nz                                        ; $46cc: $c0

    rst $38                                       ; $46cd: $ff
    ret nz                                        ; $46ce: $c0

    rst $38                                       ; $46cf: $ff
    ld bc, $01ff                                  ; $46d0: $01 $ff $01
    rst $38                                       ; $46d3: $ff
    inc bc                                        ; $46d4: $03
    rst $38                                       ; $46d5: $ff
    rlca                                          ; $46d6: $07
    rst $38                                       ; $46d7: $ff
    inc bc                                        ; $46d8: $03
    rst $38                                       ; $46d9: $ff
    ld bc, $01ff                                  ; $46da: $01 $ff $01
    rst $38                                       ; $46dd: $ff
    inc bc                                        ; $46de: $03
    rst $38                                       ; $46df: $ff
    ldh [rIE], a                                  ; $46e0: $e0 $ff
    ldh [rIE], a                                  ; $46e2: $e0 $ff
    ldh a, [rIE]                                  ; $46e4: $f0 $ff
    ld hl, sp-$01                                 ; $46e6: $f8 $ff
    ldh a, [rIE]                                  ; $46e8: $f0 $ff
    ldh [rIE], a                                  ; $46ea: $e0 $ff
    ldh a, [rIE]                                  ; $46ec: $f0 $ff
    ldh a, [rIE]                                  ; $46ee: $f0 $ff
    inc bc                                        ; $46f0: $03
    rst $38                                       ; $46f1: $ff
    inc bc                                        ; $46f2: $03
    rst $38                                       ; $46f3: $ff
    rlca                                          ; $46f4: $07
    rst $38                                       ; $46f5: $ff
    rrca                                          ; $46f6: $0f
    rst $38                                       ; $46f7: $ff
    nop                                           ; $46f8: $00
    rst $38                                       ; $46f9: $ff
    nop                                           ; $46fa: $00
    rst $38                                       ; $46fb: $ff
    nop                                           ; $46fc: $00
    rst $38                                       ; $46fd: $ff
    nop                                           ; $46fe: $00
    rst $38                                       ; $46ff: $ff
    ld hl, sp-$01                                 ; $4700: $f8 $ff
    ld hl, sp-$01                                 ; $4702: $f8 $ff
    db $fc                                        ; $4704: $fc
    rst $38                                       ; $4705: $ff
    cp $ff                                        ; $4706: $fe $ff
    ret nz                                        ; $4708: $c0

    rst $38                                       ; $4709: $ff
    ret nz                                        ; $470a: $c0

    rst $38                                       ; $470b: $ff
    nop                                           ; $470c: $00
    rst $38                                       ; $470d: $ff
    nop                                           ; $470e: $00
    rst $38                                       ; $470f: $ff
    nop                                           ; $4710: $00
    rst $38                                       ; $4711: $ff
    nop                                           ; $4712: $00
    rst $38                                       ; $4713: $ff
    nop                                           ; $4714: $00
    rst $38                                       ; $4715: $ff
    nop                                           ; $4716: $00
    rst $38                                       ; $4717: $ff
    nop                                           ; $4718: $00
    rst $38                                       ; $4719: $ff
    nop                                           ; $471a: $00
    rst $38                                       ; $471b: $ff
    ldh a, [rIF]                                  ; $471c: $f0 $0f
    rra                                           ; $471e: $1f
    nop                                           ; $471f: $00
    nop                                           ; $4720: $00
    rst $38                                       ; $4721: $ff
    nop                                           ; $4722: $00
    rst $38                                       ; $4723: $ff
    nop                                           ; $4724: $00
    rst $38                                       ; $4725: $ff
    nop                                           ; $4726: $00
    rst $38                                       ; $4727: $ff
    nop                                           ; $4728: $00
    rst $38                                       ; $4729: $ff
    nop                                           ; $472a: $00
    rst $38                                       ; $472b: $ff
    nop                                           ; $472c: $00
    rst $38                                       ; $472d: $ff
    ldh [$1f], a                                  ; $472e: $e0 $1f
    nop                                           ; $4730: $00
    rst $38                                       ; $4731: $ff
    nop                                           ; $4732: $00
    rst $38                                       ; $4733: $ff
    nop                                           ; $4734: $00
    rst $38                                       ; $4735: $ff
    nop                                           ; $4736: $00
    rst $38                                       ; $4737: $ff
    nop                                           ; $4738: $00
    rst $38                                       ; $4739: $ff
    nop                                           ; $473a: $00
    rst $38                                       ; $473b: $ff
    nop                                           ; $473c: $00
    rst $38                                       ; $473d: $ff
    nop                                           ; $473e: $00
    rst $38                                       ; $473f: $ff
    nop                                           ; $4740: $00
    rst $38                                       ; $4741: $ff
    nop                                           ; $4742: $00
    rst $38                                       ; $4743: $ff
    nop                                           ; $4744: $00
    rst $38                                       ; $4745: $ff

Call_077_4746:
    nop                                           ; $4746: $00
    rst $38                                       ; $4747: $ff
    nop                                           ; $4748: $00
    rst $38                                       ; $4749: $ff
    nop                                           ; $474a: $00
    rst $38                                       ; $474b: $ff
    nop                                           ; $474c: $00
    rst $38                                       ; $474d: $ff
    nop                                           ; $474e: $00
    rst $38                                       ; $474f: $ff
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
    ld a, a                                       ; $4760: $7f
    nop                                           ; $4761: $00
    rla                                           ; $4762: $17
    nop                                           ; $4763: $00
    ld [bc], a                                    ; $4764: $02
    nop                                           ; $4765: $00
    ld bc, $0000                                  ; $4766: $01 $00 $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    nop                                           ; $476d: $00
    nop                                           ; $476e: $00
    nop                                           ; $476f: $00
    nop                                           ; $4770: $00
    rst $38                                       ; $4771: $ff
    ret nz                                        ; $4772: $c0

    ccf                                           ; $4773: $3f
    rst $38                                       ; $4774: $ff
    nop                                           ; $4775: $00
    ld e, a                                       ; $4776: $5f
    nop                                           ; $4777: $00
    xor b                                         ; $4778: $a8
    nop                                           ; $4779: $00
    inc b                                         ; $477a: $04
    nop                                           ; $477b: $00
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    nop                                           ; $4780: $00
    rst $38                                       ; $4781: $ff
    nop                                           ; $4782: $00
    rst $38                                       ; $4783: $ff
    add e                                         ; $4784: $83
    ld a, h                                       ; $4785: $7c
    rst $38                                       ; $4786: $ff
    nop                                           ; $4787: $00
    sub b                                         ; $4788: $90
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    ei                                            ; $4790: $fb
    inc b                                         ; $4791: $04
    sbc $00                                       ; $4792: $de $00
    rst $38                                       ; $4794: $ff
    nop                                           ; $4795: $00
    rst $28                                       ; $4796: $ef
    nop                                           ; $4797: $00
    cp e                                          ; $4798: $bb
    inc b                                         ; $4799: $04
    rst $38                                       ; $479a: $ff
    nop                                           ; $479b: $00
    cp a                                          ; $479c: $bf
    nop                                           ; $479d: $00
    cp $00                                        ; $479e: $fe $00
    rst $38                                       ; $47a0: $ff
    nop                                           ; $47a1: $00
    ei                                            ; $47a2: $fb
    nop                                           ; $47a3: $00
    cp a                                          ; $47a4: $bf
    nop                                           ; $47a5: $00
    or $08                                        ; $47a6: $f6 $08
    ld a, a                                       ; $47a8: $7f
    nop                                           ; $47a9: $00
    rst $38                                       ; $47aa: $ff
    nop                                           ; $47ab: $00
    cp $01                                        ; $47ac: $fe $01
    rst $28                                       ; $47ae: $ef
    nop                                           ; $47af: $00
    db $fd                                        ; $47b0: $fd
    ld [bc], a                                    ; $47b1: $02
    rst $10                                       ; $47b2: $d7

jr_077_47b3:
    jr nz, jr_077_47b3                            ; $47b3: $20 $fe

    ld bc, $00ff                                  ; $47b5: $01 $ff $00
    ei                                            ; $47b8: $fb
    nop                                           ; $47b9: $00
    rst $18                                       ; $47ba: $df
    jr nz, @+$01                                  ; $47bb: $20 $ff

    nop                                           ; $47bd: $00
    rst $38                                       ; $47be: $ff
    nop                                           ; $47bf: $00
    rst $38                                       ; $47c0: $ff
    nop                                           ; $47c1: $00
    cp [hl]                                       ; $47c2: $be
    ld bc, $08f6                                  ; $47c3: $01 $f6 $08
    rst $38                                       ; $47c6: $ff
    nop                                           ; $47c7: $00
    rst $28                                       ; $47c8: $ef
    nop                                           ; $47c9: $00
    ld a, a                                       ; $47ca: $7f
    add b                                         ; $47cb: $80
    ei                                            ; $47cc: $fb
    nop                                           ; $47cd: $00
    rst $38                                       ; $47ce: $ff
    nop                                           ; $47cf: $00
    cp a                                          ; $47d0: $bf
    ld b, b                                       ; $47d1: $40
    db $ed                                        ; $47d2: $ed
    ld [bc], a                                    ; $47d3: $02
    rst $38                                       ; $47d4: $ff
    nop                                           ; $47d5: $00
    cp a                                          ; $47d6: $bf
    nop                                           ; $47d7: $00
    sbc $20                                       ; $47d8: $de $20
    rst $38                                       ; $47da: $ff
    nop                                           ; $47db: $00
    rst $28                                       ; $47dc: $ef
    nop                                           ; $47dd: $00
    rst $38                                       ; $47de: $ff
    nop                                           ; $47df: $00
    ld l, a                                       ; $47e0: $6f
    db $10                                        ; $47e1: $10
    ei                                            ; $47e2: $fb
    nop                                           ; $47e3: $00
    rst $38                                       ; $47e4: $ff
    nop                                           ; $47e5: $00
    ld a, a                                       ; $47e6: $7f
    nop                                           ; $47e7: $00
    rst $38                                       ; $47e8: $ff
    nop                                           ; $47e9: $00
    xor $10                                       ; $47ea: $ee $10
    rst $38                                       ; $47ec: $ff
    nop                                           ; $47ed: $00
    rst $38                                       ; $47ee: $ff
    nop                                           ; $47ef: $00
    rst $38                                       ; $47f0: $ff
    nop                                           ; $47f1: $00
    rst $38                                       ; $47f2: $ff
    nop                                           ; $47f3: $00
    ld a, [hl]                                    ; $47f4: $7e
    add c                                         ; $47f5: $81
    ld a, [hl]                                    ; $47f6: $7e
    add c                                         ; $47f7: $81
    ld a, [hl]                                    ; $47f8: $7e
    add c                                         ; $47f9: $81
    ld a, [hl]                                    ; $47fa: $7e
    add c                                         ; $47fb: $81
    ld a, [hl]                                    ; $47fc: $7e
    add c                                         ; $47fd: $81
    ld a, [hl]                                    ; $47fe: $7e
    add c                                         ; $47ff: $81
    add c                                         ; $4800: $81
    rst $38                                       ; $4801: $ff
    xor c                                         ; $4802: $a9
    rst $10                                       ; $4803: $d7
    or e                                          ; $4804: $b3
    push bc                                       ; $4805: $c5
    sub a                                         ; $4806: $97
    pop bc                                        ; $4807: $c1
    xor e                                         ; $4808: $ab
    pop de                                        ; $4809: $d1
    sub e                                         ; $480a: $93
    ret                                           ; $480b: $c9


    xor e                                         ; $480c: $ab
    pop de                                        ; $480d: $d1
    rst $10                                       ; $480e: $d7
    jp hl                                         ; $480f: $e9


    rst $38                                       ; $4810: $ff
    nop                                           ; $4811: $00
    rst $38                                       ; $4812: $ff
    nop                                           ; $4813: $00
    rst $38                                       ; $4814: $ff
    nop                                           ; $4815: $00
    cp e                                          ; $4816: $bb
    nop                                           ; $4817: $00
    rst $38                                       ; $4818: $ff
    nop                                           ; $4819: $00
    xor d                                         ; $481a: $aa
    nop                                           ; $481b: $00
    db $dd                                        ; $481c: $dd
    nop                                           ; $481d: $00
    xor d                                         ; $481e: $aa
    nop                                           ; $481f: $00
    ld d, l                                       ; $4820: $55
    nop                                           ; $4821: $00
    xor d                                         ; $4822: $aa
    nop                                           ; $4823: $00
    ld d, l                                       ; $4824: $55
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    ld d, l                                       ; $4828: $55
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
    inc c                                         ; $4838: $0c
    ldh a, [rSB]                                  ; $4839: $f0 $01
    cp $04                                        ; $483b: $fe $04
    rst $38                                       ; $483d: $ff
    dec b                                         ; $483e: $05
    cp $00                                        ; $483f: $fe $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    ld bc, $4c00                                  ; $484a: $01 $00 $4c
    add e                                         ; $484d: $83
    nop                                           ; $484e: $00
    rst $38                                       ; $484f: $ff
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    ld [bc], a                                    ; $4854: $02
    ld bc, $0e11                                  ; $4855: $01 $11 $0e
    ld c, d                                       ; $4858: $4a
    dec [hl]                                      ; $4859: $35
    dec e                                         ; $485a: $1d
    ld [c], a                                     ; $485b: $e2
    ld c, b                                       ; $485c: $48
    or a                                          ; $485d: $b7
    add b                                         ; $485e: $80
    ld a, a                                       ; $485f: $7f
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    ld [$42f0], sp                                ; $4864: $08 $f0 $42
    cp h                                          ; $4867: $bc
    nop                                           ; $4868: $00
    rst $38                                       ; $4869: $ff
    nop                                           ; $486a: $00
    rst $38                                       ; $486b: $ff
    nop                                           ; $486c: $00
    rst $38                                       ; $486d: $ff
    nop                                           ; $486e: $00
    rst $38                                       ; $486f: $ff
    ld b, $ff                                     ; $4870: $06 $ff
    adc [hl]                                      ; $4872: $8e
    rst $38                                       ; $4873: $ff
    rra                                           ; $4874: $1f
    rst $38                                       ; $4875: $ff
    adc [hl]                                      ; $4876: $8e
    rst $38                                       ; $4877: $ff
    sbc $ff                                       ; $4878: $de $ff
    ccf                                           ; $487a: $3f
    rst $38                                       ; $487b: $ff
    inc c                                         ; $487c: $0c
    rst $38                                       ; $487d: $ff
    nop                                           ; $487e: $00
    rst $38                                       ; $487f: $ff
    nop                                           ; $4880: $00
    rst $38                                       ; $4881: $ff
    ld b, d                                       ; $4882: $42
    cp l                                          ; $4883: $bd
    inc b                                         ; $4884: $04
    ei                                            ; $4885: $fb
    nop                                           ; $4886: $00
    rst $38                                       ; $4887: $ff
    nop                                           ; $4888: $00
    rst $38                                       ; $4889: $ff
    nop                                           ; $488a: $00
    rst $38                                       ; $488b: $ff
    nop                                           ; $488c: $00
    rst $38                                       ; $488d: $ff
    nop                                           ; $488e: $00
    rst $38                                       ; $488f: $ff
    jr nz, @-$1f                                  ; $4890: $20 $df

    ld b, b                                       ; $4892: $40
    cp a                                          ; $4893: $bf
    nop                                           ; $4894: $00
    rst $38                                       ; $4895: $ff
    nop                                           ; $4896: $00
    rst $38                                       ; $4897: $ff
    nop                                           ; $4898: $00
    rst $38                                       ; $4899: $ff
    nop                                           ; $489a: $00
    rst $38                                       ; $489b: $ff
    nop                                           ; $489c: $00
    rst $38                                       ; $489d: $ff
    nop                                           ; $489e: $00
    rst $38                                       ; $489f: $ff
    nop                                           ; $48a0: $00
    rst $38                                       ; $48a1: $ff
    nop                                           ; $48a2: $00
    rst $38                                       ; $48a3: $ff
    nop                                           ; $48a4: $00
    rst $38                                       ; $48a5: $ff
    nop                                           ; $48a6: $00
    rst $38                                       ; $48a7: $ff
    nop                                           ; $48a8: $00
    rst $38                                       ; $48a9: $ff
    nop                                           ; $48aa: $00
    rst $38                                       ; $48ab: $ff
    nop                                           ; $48ac: $00
    rst $38                                       ; $48ad: $ff
    nop                                           ; $48ae: $00
    rst $38                                       ; $48af: $ff
    nop                                           ; $48b0: $00
    rst $38                                       ; $48b1: $ff
    nop                                           ; $48b2: $00
    rst $38                                       ; $48b3: $ff
    ld [$08ff], sp                                ; $48b4: $08 $ff $08
    rst $38                                       ; $48b7: $ff
    ld [$08ff], sp                                ; $48b8: $08 $ff $08
    rst $38                                       ; $48bb: $ff
    inc c                                         ; $48bc: $0c
    rst $38                                       ; $48bd: $ff
    inc c                                         ; $48be: $0c
    rst $38                                       ; $48bf: $ff
    nop                                           ; $48c0: $00
    rst $38                                       ; $48c1: $ff
    nop                                           ; $48c2: $00
    rst $38                                       ; $48c3: $ff
    nop                                           ; $48c4: $00
    rst $38                                       ; $48c5: $ff
    nop                                           ; $48c6: $00
    rst $38                                       ; $48c7: $ff
    nop                                           ; $48c8: $00
    rst $38                                       ; $48c9: $ff
    nop                                           ; $48ca: $00
    rst $38                                       ; $48cb: $ff
    nop                                           ; $48cc: $00
    rst $38                                       ; $48cd: $ff
    nop                                           ; $48ce: $00
    rst $38                                       ; $48cf: $ff
    ld e, $ff                                     ; $48d0: $1e $ff
    ld e, $ff                                     ; $48d2: $1e $ff
    ccf                                           ; $48d4: $3f
    rst $38                                       ; $48d5: $ff
    ld a, a                                       ; $48d6: $7f
    rst $38                                       ; $48d7: $ff
    ccf                                           ; $48d8: $3f
    rst $38                                       ; $48d9: $ff
    ld e, $ff                                     ; $48da: $1e $ff
    rra                                           ; $48dc: $1f
    rst $38                                       ; $48dd: $ff
    ccf                                           ; $48de: $3f
    rst $38                                       ; $48df: $ff
    nop                                           ; $48e0: $00
    rst $38                                       ; $48e1: $ff
    nop                                           ; $48e2: $00
    rst $38                                       ; $48e3: $ff
    nop                                           ; $48e4: $00
    rst $38                                       ; $48e5: $ff
    add b                                         ; $48e6: $80
    rst $38                                       ; $48e7: $ff
    nop                                           ; $48e8: $00
    rst $38                                       ; $48e9: $ff
    nop                                           ; $48ea: $00
    rst $38                                       ; $48eb: $ff
    nop                                           ; $48ec: $00
    rst $38                                       ; $48ed: $ff
    nop                                           ; $48ee: $00
    rst $38                                       ; $48ef: $ff
    ccf                                           ; $48f0: $3f
    rst $38                                       ; $48f1: $ff
    ccf                                           ; $48f2: $3f
    rst $38                                       ; $48f3: $ff
    ld a, a                                       ; $48f4: $7f
    rst $38                                       ; $48f5: $ff
    rst $38                                       ; $48f6: $ff
    rst $38                                       ; $48f7: $ff
    inc c                                         ; $48f8: $0c
    rst $38                                       ; $48f9: $ff
    inc c                                         ; $48fa: $0c
    rst $38                                       ; $48fb: $ff
    nop                                           ; $48fc: $00
    rst $38                                       ; $48fd: $ff
    nop                                           ; $48fe: $00
    rst $38                                       ; $48ff: $ff
    add b                                         ; $4900: $80
    rst $38                                       ; $4901: $ff
    add b                                         ; $4902: $80
    rst $38                                       ; $4903: $ff
    ret nz                                        ; $4904: $c0

    rst $38                                       ; $4905: $ff
    ldh [rIE], a                                  ; $4906: $e0 $ff
    nop                                           ; $4908: $00
    rst $38                                       ; $4909: $ff
    nop                                           ; $490a: $00
    rst $38                                       ; $490b: $ff
    nop                                           ; $490c: $00
    rst $38                                       ; $490d: $ff
    nop                                           ; $490e: $00
    rst $38                                       ; $490f: $ff
    nop                                           ; $4910: $00
    rst $38                                       ; $4911: $ff
    nop                                           ; $4912: $00
    rst $38                                       ; $4913: $ff
    nop                                           ; $4914: $00
    rst $38                                       ; $4915: $ff
    nop                                           ; $4916: $00
    rst $38                                       ; $4917: $ff
    nop                                           ; $4918: $00
    rst $38                                       ; $4919: $ff
    nop                                           ; $491a: $00
    rst $38                                       ; $491b: $ff
    nop                                           ; $491c: $00
    rst $38                                       ; $491d: $ff
    ld hl, sp+$07                                 ; $491e: $f8 $07
    nop                                           ; $4920: $00
    rst $38                                       ; $4921: $ff
    nop                                           ; $4922: $00
    rst $38                                       ; $4923: $ff
    nop                                           ; $4924: $00
    rst $38                                       ; $4925: $ff
    nop                                           ; $4926: $00
    rst $38                                       ; $4927: $ff
    nop                                           ; $4928: $00
    rst $38                                       ; $4929: $ff
    nop                                           ; $492a: $00
    rst $38                                       ; $492b: $ff
    nop                                           ; $492c: $00
    rst $38                                       ; $492d: $ff
    nop                                           ; $492e: $00
    rst $38                                       ; $492f: $ff
    nop                                           ; $4930: $00
    rst $38                                       ; $4931: $ff
    nop                                           ; $4932: $00
    rst $38                                       ; $4933: $ff
    nop                                           ; $4934: $00
    rst $38                                       ; $4935: $ff
    nop                                           ; $4936: $00
    rst $38                                       ; $4937: $ff
    nop                                           ; $4938: $00
    rst $38                                       ; $4939: $ff
    nop                                           ; $493a: $00
    rst $38                                       ; $493b: $ff
    nop                                           ; $493c: $00
    rst $38                                       ; $493d: $ff
    nop                                           ; $493e: $00
    rst $38                                       ; $493f: $ff
    nop                                           ; $4940: $00
    rst $38                                       ; $4941: $ff
    nop                                           ; $4942: $00
    rst $38                                       ; $4943: $ff
    nop                                           ; $4944: $00
    rst $38                                       ; $4945: $ff
    nop                                           ; $4946: $00
    rst $38                                       ; $4947: $ff

Call_077_4948:
    nop                                           ; $4948: $00
    rst $38                                       ; $4949: $ff
    nop                                           ; $494a: $00
    rst $38                                       ; $494b: $ff
    nop                                           ; $494c: $00
    rst $38                                       ; $494d: $ff
    ld bc, $1ffe                                  ; $494e: $01 $fe $1f
    nop                                           ; $4951: $00
    dec b                                         ; $4952: $05
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    nop                                           ; $4955: $00
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    nop                                           ; $495d: $00
    nop                                           ; $495e: $00
    nop                                           ; $495f: $00
    ret nz                                        ; $4960: $c0

    ccf                                           ; $4961: $3f
    ldh a, [rIF]                                  ; $4962: $f0 $0f
    cp a                                          ; $4964: $bf
    nop                                           ; $4965: $00
    ld d, a                                       ; $4966: $57
    nop                                           ; $4967: $00
    ld a, [hl+]                                   ; $4968: $2a
    nop                                           ; $4969: $00
    ld bc, $0000                                  ; $496a: $01 $00 $00
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    rst $38                                       ; $4971: $ff
    nop                                           ; $4972: $00
    rst $38                                       ; $4973: $ff
    ldh [$1f], a                                  ; $4974: $e0 $1f
    rst $38                                       ; $4976: $ff
    nop                                           ; $4977: $00
    inc h                                         ; $4978: $24
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    nop                                           ; $497e: $00
    nop                                           ; $497f: $00
    rrca                                          ; $4980: $0f
    ldh a, [$1f]                                  ; $4981: $f0 $1f
    ldh [$fa], a                                  ; $4983: $e0 $fa
    nop                                           ; $4985: $00
    push af                                       ; $4986: $f5
    nop                                           ; $4987: $00
    ld [$0000], sp                                ; $4988: $08 $00 $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    rst $38                                       ; $4990: $ff
    nop                                           ; $4991: $00
    ei                                            ; $4992: $fb
    nop                                           ; $4993: $00
    cp a                                          ; $4994: $bf
    nop                                           ; $4995: $00
    or $08                                        ; $4996: $f6 $08
    ld a, a                                       ; $4998: $7f
    nop                                           ; $4999: $00
    rst $38                                       ; $499a: $ff
    nop                                           ; $499b: $00
    cp $01                                        ; $499c: $fe $01
    rst $28                                       ; $499e: $ef
    nop                                           ; $499f: $00
    db $fd                                        ; $49a0: $fd
    ld [bc], a                                    ; $49a1: $02
    rst $10                                       ; $49a2: $d7

jr_077_49a3:
    jr nz, jr_077_49a3                            ; $49a3: $20 $fe

    ld bc, $00ff                                  ; $49a5: $01 $ff $00
    ei                                            ; $49a8: $fb
    nop                                           ; $49a9: $00
    rst $18                                       ; $49aa: $df
    jr nz, @+$01                                  ; $49ab: $20 $ff

    nop                                           ; $49ad: $00
    rst $38                                       ; $49ae: $ff
    nop                                           ; $49af: $00
    rst $38                                       ; $49b0: $ff
    nop                                           ; $49b1: $00
    cp [hl]                                       ; $49b2: $be
    ld bc, $08f6                                  ; $49b3: $01 $f6 $08
    rst $38                                       ; $49b6: $ff
    nop                                           ; $49b7: $00
    rst $28                                       ; $49b8: $ef
    nop                                           ; $49b9: $00
    ld a, a                                       ; $49ba: $7f
    add b                                         ; $49bb: $80
    ei                                            ; $49bc: $fb
    nop                                           ; $49bd: $00
    rst $38                                       ; $49be: $ff
    nop                                           ; $49bf: $00
    ei                                            ; $49c0: $fb
    inc b                                         ; $49c1: $04
    sbc $00                                       ; $49c2: $de $00
    rst $38                                       ; $49c4: $ff
    nop                                           ; $49c5: $00
    rst $28                                       ; $49c6: $ef
    nop                                           ; $49c7: $00
    cp e                                          ; $49c8: $bb
    inc b                                         ; $49c9: $04
    rst $38                                       ; $49ca: $ff
    nop                                           ; $49cb: $00
    cp a                                          ; $49cc: $bf
    nop                                           ; $49cd: $00
    cp $00                                        ; $49ce: $fe $00
    ld l, a                                       ; $49d0: $6f
    db $10                                        ; $49d1: $10
    ei                                            ; $49d2: $fb
    nop                                           ; $49d3: $00
    rst $38                                       ; $49d4: $ff
    nop                                           ; $49d5: $00
    ld a, a                                       ; $49d6: $7f
    nop                                           ; $49d7: $00
    rst $38                                       ; $49d8: $ff
    nop                                           ; $49d9: $00
    xor $10                                       ; $49da: $ee $10
    rst $38                                       ; $49dc: $ff
    nop                                           ; $49dd: $00
    rst $38                                       ; $49de: $ff
    nop                                           ; $49df: $00
    cp a                                          ; $49e0: $bf
    ld b, b                                       ; $49e1: $40
    db $ed                                        ; $49e2: $ed
    ld [bc], a                                    ; $49e3: $02
    rst $38                                       ; $49e4: $ff
    nop                                           ; $49e5: $00
    cp a                                          ; $49e6: $bf
    nop                                           ; $49e7: $00
    sbc $20                                       ; $49e8: $de $20
    rst $38                                       ; $49ea: $ff
    nop                                           ; $49eb: $00
    rst $28                                       ; $49ec: $ef
    nop                                           ; $49ed: $00
    rst $38                                       ; $49ee: $ff
    nop                                           ; $49ef: $00
    add c                                         ; $49f0: $81
    rst $38                                       ; $49f1: $ff
    xor c                                         ; $49f2: $a9
    rst $10                                       ; $49f3: $d7
    or e                                          ; $49f4: $b3
    push bc                                       ; $49f5: $c5
    sub a                                         ; $49f6: $97
    pop bc                                        ; $49f7: $c1
    xor e                                         ; $49f8: $ab
    pop de                                        ; $49f9: $d1
    sub e                                         ; $49fa: $93
    ret                                           ; $49fb: $c9


    xor e                                         ; $49fc: $ab
    pop de                                        ; $49fd: $d1
    rst $10                                       ; $49fe: $d7
    jp hl                                         ; $49ff: $e9


    rst $38                                       ; $4a00: $ff
    nop                                           ; $4a01: $00
    rst $38                                       ; $4a02: $ff
    nop                                           ; $4a03: $00
    ld a, [hl]                                    ; $4a04: $7e
    add c                                         ; $4a05: $81
    ld a, [hl]                                    ; $4a06: $7e
    add c                                         ; $4a07: $81
    ld a, [hl]                                    ; $4a08: $7e
    add c                                         ; $4a09: $81
    ld a, [hl]                                    ; $4a0a: $7e
    add c                                         ; $4a0b: $81
    ld a, [hl]                                    ; $4a0c: $7e
    add c                                         ; $4a0d: $81
    ld a, [hl]                                    ; $4a0e: $7e
    add c                                         ; $4a0f: $81
    rst $38                                       ; $4a10: $ff
    nop                                           ; $4a11: $00
    rst $38                                       ; $4a12: $ff
    nop                                           ; $4a13: $00
    rst $38                                       ; $4a14: $ff
    nop                                           ; $4a15: $00
    ld [hl], a                                    ; $4a16: $77
    nop                                           ; $4a17: $00
    rst $38                                       ; $4a18: $ff
    nop                                           ; $4a19: $00

jr_077_4a1a:
    ld d, l                                       ; $4a1a: $55
    nop                                           ; $4a1b: $00
    cp e                                          ; $4a1c: $bb
    nop                                           ; $4a1d: $00
    ld d, l                                       ; $4a1e: $55
    nop                                           ; $4a1f: $00
    xor d                                         ; $4a20: $aa
    nop                                           ; $4a21: $00
    ld d, l                                       ; $4a22: $55
    nop                                           ; $4a23: $00
    xor d                                         ; $4a24: $aa
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    xor d                                         ; $4a28: $aa
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    nop                                           ; $4a32: $00
    nop                                           ; $4a33: $00
    nop                                           ; $4a34: $00
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    jr jr_077_4a1a                                ; $4a38: $18 $e0

    ld [bc], a                                    ; $4a3a: $02
    db $fc                                        ; $4a3b: $fc
    db $10                                        ; $4a3c: $10
    rst $38                                       ; $4a3d: $ff
    ld [de], a                                    ; $4a3e: $12
    db $fd                                        ; $4a3f: $fd
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    ld [bc], a                                    ; $4a4a: $02
    ld bc, $0798                                  ; $4a4b: $01 $98 $07
    ld bc, $00fe                                  ; $4a4e: $01 $fe $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    inc b                                         ; $4a54: $04
    inc bc                                        ; $4a55: $03
    ld [hl+], a                                   ; $4a56: $22
    dec e                                         ; $4a57: $1d
    sub h                                         ; $4a58: $94
    ld l, e                                       ; $4a59: $6b
    ld a, [hl-]                                   ; $4a5a: $3a
    push bc                                       ; $4a5b: $c5
    sub b                                         ; $4a5c: $90
    ld l, a                                       ; $4a5d: $6f
    nop                                           ; $4a5e: $00
    rst $38                                       ; $4a5f: $ff
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    db $10                                        ; $4a64: $10
    ldh [$84], a                                  ; $4a65: $e0 $84
    ld a, b                                       ; $4a67: $78
    nop                                           ; $4a68: $00
    rst $38                                       ; $4a69: $ff
    nop                                           ; $4a6a: $00
    rst $38                                       ; $4a6b: $ff
    nop                                           ; $4a6c: $00
    rst $38                                       ; $4a6d: $ff
    nop                                           ; $4a6e: $00
    rst $38                                       ; $4a6f: $ff
    jr @+$01                                      ; $4a70: $18 $ff

    jr c, @+$01                                   ; $4a72: $38 $ff

    ld a, h                                       ; $4a74: $7c
    rst $38                                       ; $4a75: $ff
    jr c, @+$01                                   ; $4a76: $38 $ff

    ld a, b                                       ; $4a78: $78
    rst $38                                       ; $4a79: $ff
    db $fc                                        ; $4a7a: $fc
    rst $38                                       ; $4a7b: $ff
    jr nc, @+$01                                  ; $4a7c: $30 $ff

    nop                                           ; $4a7e: $00
    rst $38                                       ; $4a7f: $ff
    nop                                           ; $4a80: $00
    rst $38                                       ; $4a81: $ff
    add h                                         ; $4a82: $84
    ld a, e                                       ; $4a83: $7b
    ld [$00f7], sp                                ; $4a84: $08 $f7 $00
    rst $38                                       ; $4a87: $ff
    nop                                           ; $4a88: $00
    rst $38                                       ; $4a89: $ff
    nop                                           ; $4a8a: $00
    rst $38                                       ; $4a8b: $ff
    nop                                           ; $4a8c: $00
    rst $38                                       ; $4a8d: $ff
    nop                                           ; $4a8e: $00
    rst $38                                       ; $4a8f: $ff
    ld b, b                                       ; $4a90: $40
    cp a                                          ; $4a91: $bf
    add b                                         ; $4a92: $80
    ld a, a                                       ; $4a93: $7f
    nop                                           ; $4a94: $00
    rst $38                                       ; $4a95: $ff
    nop                                           ; $4a96: $00
    rst $38                                       ; $4a97: $ff
    nop                                           ; $4a98: $00
    rst $38                                       ; $4a99: $ff
    nop                                           ; $4a9a: $00
    rst $38                                       ; $4a9b: $ff
    nop                                           ; $4a9c: $00
    rst $38                                       ; $4a9d: $ff
    nop                                           ; $4a9e: $00
    rst $38                                       ; $4a9f: $ff
    nop                                           ; $4aa0: $00
    rst $38                                       ; $4aa1: $ff
    nop                                           ; $4aa2: $00
    rst $38                                       ; $4aa3: $ff
    nop                                           ; $4aa4: $00
    rst $38                                       ; $4aa5: $ff
    nop                                           ; $4aa6: $00
    rst $38                                       ; $4aa7: $ff
    nop                                           ; $4aa8: $00
    rst $38                                       ; $4aa9: $ff
    nop                                           ; $4aaa: $00
    rst $38                                       ; $4aab: $ff
    nop                                           ; $4aac: $00
    rst $38                                       ; $4aad: $ff
    nop                                           ; $4aae: $00
    rst $38                                       ; $4aaf: $ff
    nop                                           ; $4ab0: $00
    rst $38                                       ; $4ab1: $ff
    nop                                           ; $4ab2: $00
    rst $38                                       ; $4ab3: $ff
    add b                                         ; $4ab4: $80
    rst $38                                       ; $4ab5: $ff
    add b                                         ; $4ab6: $80
    rst $38                                       ; $4ab7: $ff
    add b                                         ; $4ab8: $80
    rst $38                                       ; $4ab9: $ff
    add b                                         ; $4aba: $80
    rst $38                                       ; $4abb: $ff
    ret nz                                        ; $4abc: $c0

    rst $38                                       ; $4abd: $ff
    ret nz                                        ; $4abe: $c0

    rst $38                                       ; $4abf: $ff
    nop                                           ; $4ac0: $00
    rst $38                                       ; $4ac1: $ff
    nop                                           ; $4ac2: $00
    rst $38                                       ; $4ac3: $ff
    nop                                           ; $4ac4: $00
    rst $38                                       ; $4ac5: $ff
    nop                                           ; $4ac6: $00
    rst $38                                       ; $4ac7: $ff
    nop                                           ; $4ac8: $00
    rst $38                                       ; $4ac9: $ff
    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    nop                                           ; $4acc: $00
    rst $38                                       ; $4acd: $ff
    nop                                           ; $4ace: $00
    rst $38                                       ; $4acf: $ff
    ldh [rIE], a                                  ; $4ad0: $e0 $ff
    ldh [rIE], a                                  ; $4ad2: $e0 $ff
    ldh a, [rIE]                                  ; $4ad4: $f0 $ff
    ld hl, sp-$01                                 ; $4ad6: $f8 $ff
    ldh a, [rIE]                                  ; $4ad8: $f0 $ff
    ldh [rIE], a                                  ; $4ada: $e0 $ff
    ldh a, [rIE]                                  ; $4adc: $f0 $ff
    ldh a, [rIE]                                  ; $4ade: $f0 $ff
    ld bc, $01ff                                  ; $4ae0: $01 $ff $01
    rst $38                                       ; $4ae3: $ff
    inc bc                                        ; $4ae4: $03
    rst $38                                       ; $4ae5: $ff
    rlca                                          ; $4ae6: $07
    rst $38                                       ; $4ae7: $ff
    inc bc                                        ; $4ae8: $03
    rst $38                                       ; $4ae9: $ff
    ld bc, $01ff                                  ; $4aea: $01 $ff $01
    rst $38                                       ; $4aed: $ff
    inc bc                                        ; $4aee: $03
    rst $38                                       ; $4aef: $ff
    ld hl, sp-$01                                 ; $4af0: $f8 $ff
    ld hl, sp-$01                                 ; $4af2: $f8 $ff
    db $fc                                        ; $4af4: $fc
    rst $38                                       ; $4af5: $ff
    cp $ff                                        ; $4af6: $fe $ff
    ret nz                                        ; $4af8: $c0

    rst $38                                       ; $4af9: $ff
    ret nz                                        ; $4afa: $c0

    rst $38                                       ; $4afb: $ff
    nop                                           ; $4afc: $00
    rst $38                                       ; $4afd: $ff
    nop                                           ; $4afe: $00
    rst $38                                       ; $4aff: $ff
    inc bc                                        ; $4b00: $03
    rst $38                                       ; $4b01: $ff
    inc bc                                        ; $4b02: $03
    rst $38                                       ; $4b03: $ff
    rlca                                          ; $4b04: $07
    rst $38                                       ; $4b05: $ff
    rrca                                          ; $4b06: $0f
    rst $38                                       ; $4b07: $ff
    nop                                           ; $4b08: $00
    rst $38                                       ; $4b09: $ff
    nop                                           ; $4b0a: $00
    rst $38                                       ; $4b0b: $ff
    nop                                           ; $4b0c: $00
    rst $38                                       ; $4b0d: $ff
    nop                                           ; $4b0e: $00
    rst $38                                       ; $4b0f: $ff
    nop                                           ; $4b10: $00
    rst $38                                       ; $4b11: $ff
    nop                                           ; $4b12: $00
    rst $38                                       ; $4b13: $ff
    nop                                           ; $4b14: $00
    rst $38                                       ; $4b15: $ff
    nop                                           ; $4b16: $00
    rst $38                                       ; $4b17: $ff
    nop                                           ; $4b18: $00
    rst $38                                       ; $4b19: $ff
    nop                                           ; $4b1a: $00
    rst $38                                       ; $4b1b: $ff
    nop                                           ; $4b1c: $00
    rst $38                                       ; $4b1d: $ff
    nop                                           ; $4b1e: $00
    rst $38                                       ; $4b1f: $ff
    nop                                           ; $4b20: $00
    rst $38                                       ; $4b21: $ff
    nop                                           ; $4b22: $00
    rst $38                                       ; $4b23: $ff
    nop                                           ; $4b24: $00
    rst $38                                       ; $4b25: $ff
    nop                                           ; $4b26: $00
    rst $38                                       ; $4b27: $ff
    nop                                           ; $4b28: $00
    rst $38                                       ; $4b29: $ff
    nop                                           ; $4b2a: $00
    rst $38                                       ; $4b2b: $ff
    nop                                           ; $4b2c: $00
    rst $38                                       ; $4b2d: $ff
    nop                                           ; $4b2e: $00
    rst $38                                       ; $4b2f: $ff
    nop                                           ; $4b30: $00
    rst $38                                       ; $4b31: $ff
    nop                                           ; $4b32: $00
    rst $38                                       ; $4b33: $ff
    nop                                           ; $4b34: $00
    rst $38                                       ; $4b35: $ff
    nop                                           ; $4b36: $00
    rst $38                                       ; $4b37: $ff
    nop                                           ; $4b38: $00
    rst $38                                       ; $4b39: $ff
    nop                                           ; $4b3a: $00
    rst $38                                       ; $4b3b: $ff
    nop                                           ; $4b3c: $00
    rst $38                                       ; $4b3d: $ff
    nop                                           ; $4b3e: $00
    rst $38                                       ; $4b3f: $ff
    nop                                           ; $4b40: $00
    rst $38                                       ; $4b41: $ff
    nop                                           ; $4b42: $00
    rst $38                                       ; $4b43: $ff
    nop                                           ; $4b44: $00
    rst $38                                       ; $4b45: $ff
    nop                                           ; $4b46: $00
    rst $38                                       ; $4b47: $ff
    nop                                           ; $4b48: $00
    rst $38                                       ; $4b49: $ff

Call_077_4b4a:
    nop                                           ; $4b4a: $00
    rst $38                                       ; $4b4b: $ff
    nop                                           ; $4b4c: $00
    rst $38                                       ; $4b4d: $ff
    ld a, a                                       ; $4b4e: $7f
    add b                                         ; $4b4f: $80
    ldh a, [rIF]                                  ; $4b50: $f0 $0f
    ld a, h                                       ; $4b52: $7c
    inc bc                                        ; $4b53: $03
    cpl                                           ; $4b54: $2f
    nop                                           ; $4b55: $00
    dec d                                         ; $4b56: $15
    nop                                           ; $4b57: $00
    ld a, [bc]                                    ; $4b58: $0a
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    nop                                           ; $4b5d: $00
    nop                                           ; $4b5e: $00
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    rst $38                                       ; $4b61: $ff
    nop                                           ; $4b62: $00
    rst $38                                       ; $4b63: $ff
    ld hl, sp+$07                                 ; $4b64: $f8 $07
    rst $38                                       ; $4b66: $ff
    nop                                           ; $4b67: $00
    adc c                                         ; $4b68: $89
    nop                                           ; $4b69: $00
    ld b, b                                       ; $4b6a: $40
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    inc bc                                        ; $4b70: $03
    db $fc                                        ; $4b71: $fc
    rlca                                          ; $4b72: $07
    ld hl, sp+$3e                                 ; $4b73: $f8 $3e
    ret nz                                        ; $4b75: $c0

    db $fd                                        ; $4b76: $fd
    nop                                           ; $4b77: $00
    ld [bc], a                                    ; $4b78: $02
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    ei                                            ; $4b80: $fb
    nop                                           ; $4b81: $00
    ret nc                                        ; $4b82: $d0

    nop                                           ; $4b83: $00
    and b                                         ; $4b84: $a0
    nop                                           ; $4b85: $00
    ld b, b                                       ; $4b86: $40
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    db $fd                                        ; $4b90: $fd
    ld [bc], a                                    ; $4b91: $02
    rst $10                                       ; $4b92: $d7

jr_077_4b93:
    jr nz, jr_077_4b93                            ; $4b93: $20 $fe

    ld bc, $00ff                                  ; $4b95: $01 $ff $00
    ei                                            ; $4b98: $fb
    nop                                           ; $4b99: $00
    rst $18                                       ; $4b9a: $df
    jr nz, @+$01                                  ; $4b9b: $20 $ff

    nop                                           ; $4b9d: $00
    rst $38                                       ; $4b9e: $ff
    nop                                           ; $4b9f: $00
    rst $38                                       ; $4ba0: $ff
    nop                                           ; $4ba1: $00
    cp [hl]                                       ; $4ba2: $be
    ld bc, $08f6                                  ; $4ba3: $01 $f6 $08
    rst $38                                       ; $4ba6: $ff
    nop                                           ; $4ba7: $00
    rst $28                                       ; $4ba8: $ef
    nop                                           ; $4ba9: $00
    ld a, a                                       ; $4baa: $7f
    add b                                         ; $4bab: $80
    ei                                            ; $4bac: $fb
    nop                                           ; $4bad: $00
    rst $38                                       ; $4bae: $ff
    nop                                           ; $4baf: $00
    ei                                            ; $4bb0: $fb
    inc b                                         ; $4bb1: $04
    sbc $00                                       ; $4bb2: $de $00
    rst $38                                       ; $4bb4: $ff
    nop                                           ; $4bb5: $00
    rst $28                                       ; $4bb6: $ef
    nop                                           ; $4bb7: $00
    cp e                                          ; $4bb8: $bb
    inc b                                         ; $4bb9: $04
    rst $38                                       ; $4bba: $ff
    nop                                           ; $4bbb: $00
    cp a                                          ; $4bbc: $bf
    nop                                           ; $4bbd: $00
    cp $00                                        ; $4bbe: $fe $00
    rst $38                                       ; $4bc0: $ff
    nop                                           ; $4bc1: $00
    ei                                            ; $4bc2: $fb
    nop                                           ; $4bc3: $00
    cp a                                          ; $4bc4: $bf
    nop                                           ; $4bc5: $00
    or $08                                        ; $4bc6: $f6 $08
    ld a, a                                       ; $4bc8: $7f
    nop                                           ; $4bc9: $00
    rst $38                                       ; $4bca: $ff
    nop                                           ; $4bcb: $00
    cp $01                                        ; $4bcc: $fe $01
    rst $28                                       ; $4bce: $ef
    nop                                           ; $4bcf: $00
    cp a                                          ; $4bd0: $bf
    ld b, b                                       ; $4bd1: $40
    db $ed                                        ; $4bd2: $ed
    ld [bc], a                                    ; $4bd3: $02
    rst $38                                       ; $4bd4: $ff
    nop                                           ; $4bd5: $00
    cp a                                          ; $4bd6: $bf
    nop                                           ; $4bd7: $00
    sbc $20                                       ; $4bd8: $de $20
    rst $38                                       ; $4bda: $ff
    nop                                           ; $4bdb: $00
    rst $28                                       ; $4bdc: $ef
    nop                                           ; $4bdd: $00
    rst $38                                       ; $4bde: $ff
    nop                                           ; $4bdf: $00
    ld l, a                                       ; $4be0: $6f
    db $10                                        ; $4be1: $10
    ei                                            ; $4be2: $fb
    nop                                           ; $4be3: $00
    rst $38                                       ; $4be4: $ff
    nop                                           ; $4be5: $00
    ld a, a                                       ; $4be6: $7f
    nop                                           ; $4be7: $00
    rst $38                                       ; $4be8: $ff
    nop                                           ; $4be9: $00
    xor $10                                       ; $4bea: $ee $10
    rst $38                                       ; $4bec: $ff
    nop                                           ; $4bed: $00
    rst $38                                       ; $4bee: $ff
    nop                                           ; $4bef: $00
    rst $38                                       ; $4bf0: $ff
    nop                                           ; $4bf1: $00
    rst $38                                       ; $4bf2: $ff
    nop                                           ; $4bf3: $00
    ld a, [hl]                                    ; $4bf4: $7e
    add c                                         ; $4bf5: $81
    ld a, [hl]                                    ; $4bf6: $7e
    add c                                         ; $4bf7: $81
    ld a, [hl]                                    ; $4bf8: $7e
    add c                                         ; $4bf9: $81
    ld a, [hl]                                    ; $4bfa: $7e
    add c                                         ; $4bfb: $81
    ld a, [hl]                                    ; $4bfc: $7e
    add c                                         ; $4bfd: $81
    ld a, [hl]                                    ; $4bfe: $7e
    add c                                         ; $4bff: $81
    add c                                         ; $4c00: $81
    rst $38                                       ; $4c01: $ff
    xor c                                         ; $4c02: $a9
    rst $10                                       ; $4c03: $d7
    or e                                          ; $4c04: $b3
    push bc                                       ; $4c05: $c5
    sub a                                         ; $4c06: $97
    pop bc                                        ; $4c07: $c1
    xor e                                         ; $4c08: $ab
    pop de                                        ; $4c09: $d1
    sub e                                         ; $4c0a: $93
    ret                                           ; $4c0b: $c9


    xor e                                         ; $4c0c: $ab
    pop de                                        ; $4c0d: $d1
    rst $10                                       ; $4c0e: $d7
    jp hl                                         ; $4c0f: $e9


    dec b                                         ; $4c10: $05
    nop                                           ; $4c11: $00
    dec b                                         ; $4c12: $05
    nop                                           ; $4c13: $00
    ldh [rSC], a                                  ; $4c14: $e0 $02
    pop de                                        ; $4c16: $d1
    pop de                                        ; $4c17: $d1
    pop de                                        ; $4c18: $d1
    pop de                                        ; $4c19: $d1
    pop de                                        ; $4c1a: $d1
    jp nc, $d3d3                                  ; $4c1b: $d2 $d3 $d3

    pop de                                        ; $4c1e: $d1
    call nc, $d6d5                                ; $4c1f: $d4 $d5 $d6
    pop de                                        ; $4c22: $d1
    call nc, $d8d7                                ; $4c23: $d4 $d7 $d8
    rlca                                          ; $4c26: $07
    rlca                                          ; $4c27: $07
    rlca                                          ; $4c28: $07
    rlca                                          ; $4c29: $07
    rlca                                          ; $4c2a: $07
    nop                                           ; $4c2b: $00
    nop                                           ; $4c2c: $00
    nop                                           ; $4c2d: $00
    add a                                         ; $4c2e: $87
    add b                                         ; $4c2f: $80
    inc bc                                        ; $4c30: $03
    inc bc                                        ; $4c31: $03
    add a                                         ; $4c32: $87
    add b                                         ; $4c33: $80
    ld [bc], a                                    ; $4c34: $02
    ld [bc], a                                    ; $4c35: $02
    pop de                                        ; $4c36: $d1
    pop de                                        ; $4c37: $d1
    pop de                                        ; $4c38: $d1
    pop de                                        ; $4c39: $d1
    db $d3                                        ; $4c3a: $d3
    db $d3                                        ; $4c3b: $d3
    db $d3                                        ; $4c3c: $d3
    db $d3                                        ; $4c3d: $d3
    reti                                          ; $4c3e: $d9


    jp c, $dcdb                                   ; $4c3f: $da $db $dc

    db $dd                                        ; $4c42: $dd
    sbc $df                                       ; $4c43: $de $df
    ldh [rTAC], a                                 ; $4c45: $e0 $07
    rlca                                          ; $4c47: $07
    rlca                                          ; $4c48: $07
    rlca                                          ; $4c49: $07
    nop                                           ; $4c4a: $00
    nop                                           ; $4c4b: $00
    nop                                           ; $4c4c: $00
    nop                                           ; $4c4d: $00
    inc bc                                        ; $4c4e: $03
    inc bc                                        ; $4c4f: $03
    inc bc                                        ; $4c50: $03
    inc bc                                        ; $4c51: $03
    ld [bc], a                                    ; $4c52: $02
    ld [bc], a                                    ; $4c53: $02
    ld [bc], a                                    ; $4c54: $02
    ld [bc], a                                    ; $4c55: $02
    pop de                                        ; $4c56: $d1
    pop de                                        ; $4c57: $d1
    pop de                                        ; $4c58: $d1
    pop de                                        ; $4c59: $d1
    db $d3                                        ; $4c5a: $d3
    db $d3                                        ; $4c5b: $d3
    db $d3                                        ; $4c5c: $d3
    db $d3                                        ; $4c5d: $d3
    pop hl                                        ; $4c5e: $e1
    ld [c], a                                     ; $4c5f: $e2
    db $e3                                        ; $4c60: $e3
    db $e4                                        ; $4c61: $e4
    push hl                                       ; $4c62: $e5
    and $e7                                       ; $4c63: $e6 $e7
    add sp, $07                                   ; $4c65: $e8 $07
    rlca                                          ; $4c67: $07
    rlca                                          ; $4c68: $07
    rlca                                          ; $4c69: $07
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    inc bc                                        ; $4c6e: $03
    dec b                                         ; $4c6f: $05
    dec b                                         ; $4c70: $05
    dec b                                         ; $4c71: $05
    ld [bc], a                                    ; $4c72: $02
    dec b                                         ; $4c73: $05
    dec b                                         ; $4c74: $05
    dec b                                         ; $4c75: $05
    pop de                                        ; $4c76: $d1
    pop de                                        ; $4c77: $d1
    pop de                                        ; $4c78: $d1
    pop de                                        ; $4c79: $d1
    db $d3                                        ; $4c7a: $d3
    db $d3                                        ; $4c7b: $d3
    db $d3                                        ; $4c7c: $d3
    db $d3                                        ; $4c7d: $d3
    reti                                          ; $4c7e: $d9


    jp hl                                         ; $4c7f: $e9


    reti                                          ; $4c80: $d9


    db $e4                                        ; $4c81: $e4
    ld [$e6eb], a                                 ; $4c82: $ea $eb $e6
    db $ec                                        ; $4c85: $ec
    rlca                                          ; $4c86: $07
    rlca                                          ; $4c87: $07
    rlca                                          ; $4c88: $07
    rlca                                          ; $4c89: $07
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    dec b                                         ; $4c8e: $05
    dec b                                         ; $4c8f: $05
    dec b                                         ; $4c90: $05
    dec b                                         ; $4c91: $05
    dec b                                         ; $4c92: $05
    dec b                                         ; $4c93: $05
    dec b                                         ; $4c94: $05
    dec b                                         ; $4c95: $05
    pop de                                        ; $4c96: $d1
    call nc, $eeed                                ; $4c97: $d4 $ed $ee
    pop de                                        ; $4c9a: $d1
    call nc, $f0ef                                ; $4c9b: $d4 $ef $f0
    pop de                                        ; $4c9e: $d1
    call nc, $f2f1                                ; $4c9f: $d4 $f1 $f2
    pop de                                        ; $4ca2: $d1
    call nc, $f0f3                                ; $4ca3: $d4 $f3 $f0
    add a                                         ; $4ca6: $87
    add b                                         ; $4ca7: $80
    ld [bc], a                                    ; $4ca8: $02
    ld [bc], a                                    ; $4ca9: $02
    add a                                         ; $4caa: $87
    add b                                         ; $4cab: $80
    ld [bc], a                                    ; $4cac: $02
    ld [bc], a                                    ; $4cad: $02
    add a                                         ; $4cae: $87
    add b                                         ; $4caf: $80
    ld [bc], a                                    ; $4cb0: $02
    ld [bc], a                                    ; $4cb1: $02
    add a                                         ; $4cb2: $87
    add b                                         ; $4cb3: $80
    ld [bc], a                                    ; $4cb4: $02
    ld [bc], a                                    ; $4cb5: $02
    db $f4                                        ; $4cb6: $f4
    push af                                       ; $4cb7: $f5
    or $f7                                        ; $4cb8: $f6 $f7
    ld hl, sp-$07                                 ; $4cba: $f8 $f9
    ld a, [$fcfb]                                 ; $4cbc: $fa $fb $fc
    db $fd                                        ; $4cbf: $fd
    cp $ff                                        ; $4cc0: $fe $ff
    nop                                           ; $4cc2: $00
    ld bc, $0302                                  ; $4cc3: $01 $02 $03
    ld [bc], a                                    ; $4cc6: $02
    ld [bc], a                                    ; $4cc7: $02
    ld [bc], a                                    ; $4cc8: $02
    ld [bc], a                                    ; $4cc9: $02
    inc bc                                        ; $4cca: $03
    inc bc                                        ; $4ccb: $03
    inc bc                                        ; $4ccc: $03
    inc bc                                        ; $4ccd: $03
    ld [bc], a                                    ; $4cce: $02
    ld [bc], a                                    ; $4ccf: $02
    ld [bc], a                                    ; $4cd0: $02
    ld [bc], a                                    ; $4cd1: $02
    ld [bc], a                                    ; $4cd2: $02
    ld [bc], a                                    ; $4cd3: $02
    ld [bc], a                                    ; $4cd4: $02
    ld [bc], a                                    ; $4cd5: $02
    inc b                                         ; $4cd6: $04
    db $ec                                        ; $4cd7: $ec
    dec b                                         ; $4cd8: $05
    db $ec                                        ; $4cd9: $ec
    ld b, $07                                     ; $4cda: $06 $07
    ld [$0907], sp                                ; $4cdc: $08 $07 $09
    ld a, [bc]                                    ; $4cdf: $0a
    dec bc                                        ; $4ce0: $0b
    ld a, [bc]                                    ; $4ce1: $0a
    inc c                                         ; $4ce2: $0c
    dec c                                         ; $4ce3: $0d
    ld c, $0f                                     ; $4ce4: $0e $0f
    ld [bc], a                                    ; $4ce6: $02
    dec b                                         ; $4ce7: $05
    dec b                                         ; $4ce8: $05
    dec b                                         ; $4ce9: $05
    inc bc                                        ; $4cea: $03
    dec b                                         ; $4ceb: $05
    dec b                                         ; $4cec: $05
    dec b                                         ; $4ced: $05
    ld [bc], a                                    ; $4cee: $02
    dec b                                         ; $4cef: $05
    dec b                                         ; $4cf0: $05
    dec b                                         ; $4cf1: $05
    ld [bc], a                                    ; $4cf2: $02
    dec b                                         ; $4cf3: $05
    inc b                                         ; $4cf4: $04
    dec b                                         ; $4cf5: $05
    db $10                                        ; $4cf6: $10
    ld de, $1312                                  ; $4cf7: $11 $12 $13
    inc d                                         ; $4cfa: $14
    dec d                                         ; $4cfb: $15
    ld [$1607], sp                                ; $4cfc: $08 $07 $16
    rla                                           ; $4cff: $17
    dec bc                                        ; $4d00: $0b
    ld a, [bc]                                    ; $4d01: $0a
    jr @+$1b                                      ; $4d02: $18 $19

    dec c                                         ; $4d04: $0d
    rrca                                          ; $4d05: $0f
    dec b                                         ; $4d06: $05
    dec b                                         ; $4d07: $05
    dec b                                         ; $4d08: $05
    dec b                                         ; $4d09: $05
    dec b                                         ; $4d0a: $05
    dec b                                         ; $4d0b: $05
    dec b                                         ; $4d0c: $05
    dec b                                         ; $4d0d: $05
    dec b                                         ; $4d0e: $05
    dec b                                         ; $4d0f: $05
    dec b                                         ; $4d10: $05
    dec b                                         ; $4d11: $05
    dec b                                         ; $4d12: $05
    dec b                                         ; $4d13: $05
    dec b                                         ; $4d14: $05
    dec b                                         ; $4d15: $05
    pop de                                        ; $4d16: $d1
    call nc, Call_000_1b1a                        ; $4d17: $d4 $1a $1b
    pop de                                        ; $4d1a: $d1
    call nc, Call_000_1d1c                        ; $4d1b: $d4 $1c $1d
    pop de                                        ; $4d1e: $d1
    call nc, $1f1e                                ; $4d1f: $d4 $1e $1f
    pop de                                        ; $4d22: $d1
    call nc, $2120                                ; $4d23: $d4 $20 $21
    add a                                         ; $4d26: $87
    add b                                         ; $4d27: $80
    ld [bc], a                                    ; $4d28: $02
    ld [bc], a                                    ; $4d29: $02
    add a                                         ; $4d2a: $87
    add b                                         ; $4d2b: $80
    ld [bc], a                                    ; $4d2c: $02
    ld [bc], a                                    ; $4d2d: $02
    add a                                         ; $4d2e: $87
    add b                                         ; $4d2f: $80
    ld [bc], a                                    ; $4d30: $02
    ld [bc], a                                    ; $4d31: $02
    add a                                         ; $4d32: $87
    add b                                         ; $4d33: $80
    ld [bc], a                                    ; $4d34: $02
    ld [bc], a                                    ; $4d35: $02
    ld [hl+], a                                   ; $4d36: $22
    inc hl                                        ; $4d37: $23
    inc h                                         ; $4d38: $24
    dec h                                         ; $4d39: $25
    ld h, $27                                     ; $4d3a: $26 $27
    jr z, @+$2b                                   ; $4d3c: $28 $29

    ld a, [hl+]                                   ; $4d3e: $2a
    dec hl                                        ; $4d3f: $2b
    inc l                                         ; $4d40: $2c
    dec l                                         ; $4d41: $2d
    ld l, $2f                                     ; $4d42: $2e $2f
    jr nc, jr_077_4d77                            ; $4d44: $30 $31

    ld bc, $0101                                  ; $4d46: $01 $01 $01
    ld bc, $0101                                  ; $4d49: $01 $01 $01
    ld bc, $0101                                  ; $4d4c: $01 $01 $01
    ld bc, $0101                                  ; $4d4f: $01 $01 $01
    ld bc, $0101                                  ; $4d52: $01 $01 $01
    ld bc, $3222                                  ; $4d55: $01 $22 $32
    inc sp                                        ; $4d58: $33
    inc [hl]                                      ; $4d59: $34
    ld h, $27                                     ; $4d5a: $26 $27
    dec [hl]                                      ; $4d5c: $35
    ld [hl], $2a                                  ; $4d5d: $36 $2a
    dec hl                                        ; $4d5f: $2b
    scf                                           ; $4d60: $37
    jr c, jr_077_4d91                             ; $4d61: $38 $2e

    cpl                                           ; $4d63: $2f
    add hl, sp                                    ; $4d64: $39
    ld a, [hl-]                                   ; $4d65: $3a
    ld bc, $0401                                  ; $4d66: $01 $01 $04
    ld bc, $0101                                  ; $4d69: $01 $01 $01
    inc b                                         ; $4d6c: $04
    inc b                                         ; $4d6d: $04
    ld bc, $0401                                  ; $4d6e: $01 $01 $04
    inc b                                         ; $4d71: $04
    ld bc, $0401                                  ; $4d72: $01 $01 $04
    inc b                                         ; $4d75: $04
    dec sp                                        ; $4d76: $3b

jr_077_4d77:
    inc a                                         ; $4d77: $3c
    dec a                                         ; $4d78: $3d
    ld a, $3f                                     ; $4d79: $3e $3f
    ld b, b                                       ; $4d7b: $40
    ld b, c                                       ; $4d7c: $41
    ld b, c                                       ; $4d7d: $41
    ld b, d                                       ; $4d7e: $42
    ld b, e                                       ; $4d7f: $43
    ld b, h                                       ; $4d80: $44
    ld b, h                                       ; $4d81: $44
    ld b, l                                       ; $4d82: $45
    ld a, [hl-]                                   ; $4d83: $3a
    ld b, l                                       ; $4d84: $45
    ld a, [hl-]                                   ; $4d85: $3a
    ld bc, $0101                                  ; $4d86: $01 $01 $01
    ld bc, $0404                                  ; $4d89: $01 $04 $04
    inc b                                         ; $4d8c: $04
    inc b                                         ; $4d8d: $04
    inc b                                         ; $4d8e: $04
    inc b                                         ; $4d8f: $04
    inc b                                         ; $4d90: $04

jr_077_4d91:
    inc b                                         ; $4d91: $04
    inc b                                         ; $4d92: $04
    inc b                                         ; $4d93: $04
    inc b                                         ; $4d94: $04
    inc b                                         ; $4d95: $04
    pop de                                        ; $4d96: $d1
    call nc, Call_077_4746                        ; $4d97: $d4 $46 $47
    pop de                                        ; $4d9a: $d1
    call nc, Call_077_4948                        ; $4d9b: $d4 $48 $49
    pop de                                        ; $4d9e: $d1
    call nc, Call_077_4b4a                        ; $4d9f: $d4 $4a $4b
    pop de                                        ; $4da2: $d1
    ld c, h                                       ; $4da3: $4c
    db $d3                                        ; $4da4: $d3
    db $d3                                        ; $4da5: $d3
    add a                                         ; $4da6: $87
    add b                                         ; $4da7: $80
    ld [bc], a                                    ; $4da8: $02
    ld [bc], a                                    ; $4da9: $02
    add a                                         ; $4daa: $87
    add b                                         ; $4dab: $80
    ld [bc], a                                    ; $4dac: $02
    ld [bc], a                                    ; $4dad: $02
    add a                                         ; $4dae: $87
    add b                                         ; $4daf: $80
    ld [bc], a                                    ; $4db0: $02
    ld [bc], a                                    ; $4db1: $02
    add a                                         ; $4db2: $87
    add b                                         ; $4db3: $80
    add b                                         ; $4db4: $80
    add b                                         ; $4db5: $80
    ld c, l                                       ; $4db6: $4d
    ld c, [hl]                                    ; $4db7: $4e
    ld c, a                                       ; $4db8: $4f
    ld d, b                                       ; $4db9: $50
    ld h, $27                                     ; $4dba: $26 $27
    jr z, @+$2b                                   ; $4dbc: $28 $29

    ld a, [hl+]                                   ; $4dbe: $2a
    dec hl                                        ; $4dbf: $2b
    inc l                                         ; $4dc0: $2c
    dec l                                         ; $4dc1: $2d
    db $d3                                        ; $4dc2: $d3
    db $d3                                        ; $4dc3: $d3
    db $d3                                        ; $4dc4: $d3
    db $d3                                        ; $4dc5: $d3
    ld bc, $0101                                  ; $4dc6: $01 $01 $01
    ld bc, $0101                                  ; $4dc9: $01 $01 $01
    ld bc, $0101                                  ; $4dcc: $01 $01 $01
    ld bc, $0101                                  ; $4dcf: $01 $01 $01
    add b                                         ; $4dd2: $80
    add b                                         ; $4dd3: $80
    add b                                         ; $4dd4: $80
    add b                                         ; $4dd5: $80
    ld c, l                                       ; $4dd6: $4d
    ld c, [hl]                                    ; $4dd7: $4e

jr_077_4dd8:
    inc h                                         ; $4dd8: $24
    dec h                                         ; $4dd9: $25
    ld h, $27                                     ; $4dda: $26 $27
    jr z, @+$2b                                   ; $4ddc: $28 $29

    ld a, [hl+]                                   ; $4dde: $2a
    dec hl                                        ; $4ddf: $2b
    inc l                                         ; $4de0: $2c
    dec l                                         ; $4de1: $2d
    db $d3                                        ; $4de2: $d3
    db $d3                                        ; $4de3: $d3
    db $d3                                        ; $4de4: $d3
    ld d, c                                       ; $4de5: $51
    ld bc, $0101                                  ; $4de6: $01 $01 $01
    ld bc, $0101                                  ; $4de9: $01 $01 $01
    ld bc, $0101                                  ; $4dec: $01 $01 $01
    ld bc, $0101                                  ; $4def: $01 $01 $01
    add b                                         ; $4df2: $80
    add b                                         ; $4df3: $80
    add b                                         ; $4df4: $80
    add b                                         ; $4df5: $80
    ld [hl+], a                                   ; $4df6: $22
    inc hl                                        ; $4df7: $23
    inc h                                         ; $4df8: $24
    dec h                                         ; $4df9: $25
    ld h, $27                                     ; $4dfa: $26 $27
    jr z, jr_077_4e27                             ; $4dfc: $28 $29

    ld a, [hl+]                                   ; $4dfe: $2a
    dec hl                                        ; $4dff: $2b
    inc l                                         ; $4e00: $2c
    dec l                                         ; $4e01: $2d
    ld l, $2f                                     ; $4e02: $2e $2f
    jr nc, jr_077_4dd8                            ; $4e04: $30 $d2

    ld bc, $0101                                  ; $4e06: $01 $01 $01
    ld bc, $0101                                  ; $4e09: $01 $01 $01
    ld bc, $0101                                  ; $4e0c: $01 $01 $01
    ld bc, $0101                                  ; $4e0f: $01 $01 $01
    ld bc, $0101                                  ; $4e12: $01 $01 $01
    add b                                         ; $4e15: $80
    pop de                                        ; $4e16: $d1
    pop de                                        ; $4e17: $d1
    pop de                                        ; $4e18: $d1
    pop de                                        ; $4e19: $d1
    db $d3                                        ; $4e1a: $d3
    db $d3                                        ; $4e1b: $d3
    ld d, c                                       ; $4e1c: $51
    pop de                                        ; $4e1d: $d1
    reti                                          ; $4e1e: $d9


    db $e4                                        ; $4e1f: $e4
    call nc, $e6d1                                ; $4e20: $d4 $d1 $e6
    ld d, d                                       ; $4e23: $52
    call nc, Call_000_07d1                        ; $4e24: $d4 $d1 $07

jr_077_4e27:
    rlca                                          ; $4e27: $07
    rlca                                          ; $4e28: $07
    rlca                                          ; $4e29: $07
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    rlca                                          ; $4e2d: $07
    dec b                                         ; $4e2e: $05
    dec b                                         ; $4e2f: $05
    add b                                         ; $4e30: $80
    add a                                         ; $4e31: $87
    dec b                                         ; $4e32: $05
    dec b                                         ; $4e33: $05
    add b                                         ; $4e34: $80
    add a                                         ; $4e35: $87
    ld d, e                                       ; $4e36: $53
    ld d, h                                       ; $4e37: $54
    call nc, $08d1                                ; $4e38: $d4 $d1 $08
    rlca                                          ; $4e3b: $07
    call nc, $0bd1                                ; $4e3c: $d4 $d1 $0b
    ld a, [bc]                                    ; $4e3f: $0a
    call nc, $0dd1                                ; $4e40: $d4 $d1 $0d
    rrca                                          ; $4e43: $0f
    call nc, Call_000_05d1                        ; $4e44: $d4 $d1 $05
    dec b                                         ; $4e47: $05
    add b                                         ; $4e48: $80
    add a                                         ; $4e49: $87
    dec b                                         ; $4e4a: $05
    dec b                                         ; $4e4b: $05
    add b                                         ; $4e4c: $80

Jump_077_4e4d:
    add a                                         ; $4e4d: $87
    dec b                                         ; $4e4e: $05
    dec b                                         ; $4e4f: $05
    add b                                         ; $4e50: $80
    add a                                         ; $4e51: $87
    dec b                                         ; $4e52: $05
    dec b                                         ; $4e53: $05
    add b                                         ; $4e54: $80
    add a                                         ; $4e55: $87
    ld d, l                                       ; $4e56: $55
    ld d, [hl]                                    ; $4e57: $56
    call nc, $57d1                                ; $4e58: $d4 $d1 $57
    ld b, c                                       ; $4e5b: $41
    call nc, $58d1                                ; $4e5c: $d4 $d1 $58
    ld b, h                                       ; $4e5f: $44
    call nc, Call_077_45d1                        ; $4e60: $d4 $d1 $45
    ld e, c                                       ; $4e63: $59
    call nc, Call_000_01d1                        ; $4e64: $d4 $d1 $01
    ld bc, $8780                                  ; $4e67: $01 $80 $87
    inc b                                         ; $4e6a: $04
    inc b                                         ; $4e6b: $04
    add b                                         ; $4e6c: $80
    add a                                         ; $4e6d: $87
    inc b                                         ; $4e6e: $04
    inc b                                         ; $4e6f: $04
    add b                                         ; $4e70: $80
    add a                                         ; $4e71: $87
    inc b                                         ; $4e72: $04
    inc b                                         ; $4e73: $04
    add b                                         ; $4e74: $80
    add a                                         ; $4e75: $87
    ld [hl+], a                                   ; $4e76: $22
    inc hl                                        ; $4e77: $23
    call nc, $26d1                                ; $4e78: $d4 $d1 $26
    daa                                           ; $4e7b: $27
    call nc, $2ad1                                ; $4e7c: $d4 $d1 $2a
    dec hl                                        ; $4e7f: $2b
    call nc, $d3d1                                ; $4e80: $d4 $d1 $d3
    db $d3                                        ; $4e83: $d3
    ld e, d                                       ; $4e84: $5a
    pop de                                        ; $4e85: $d1
    ld bc, $8001                                  ; $4e86: $01 $01 $80
    add a                                         ; $4e89: $87
    ld bc, $8001                                  ; $4e8a: $01 $01 $80
    add a                                         ; $4e8d: $87
    ld bc, $8001                                  ; $4e8e: $01 $01 $80
    add a                                         ; $4e91: $87
    add b                                         ; $4e92: $80
    add b                                         ; $4e93: $80
    add b                                         ; $4e94: $80
    add a                                         ; $4e95: $87
    pop de                                        ; $4e96: $d1
    pop de                                        ; $4e97: $d1
    pop de                                        ; $4e98: $d1
    pop de                                        ; $4e99: $d1
    pop de                                        ; $4e9a: $d1
    pop de                                        ; $4e9b: $d1
    pop de                                        ; $4e9c: $d1
    pop de                                        ; $4e9d: $d1
    pop de                                        ; $4e9e: $d1
    pop de                                        ; $4e9f: $d1
    pop de                                        ; $4ea0: $d1
    pop de                                        ; $4ea1: $d1
    pop de                                        ; $4ea2: $d1
    pop de                                        ; $4ea3: $d1
    pop de                                        ; $4ea4: $d1
    pop de                                        ; $4ea5: $d1
    add a                                         ; $4ea6: $87
    add a                                         ; $4ea7: $87
    add a                                         ; $4ea8: $87
    add a                                         ; $4ea9: $87
    rlca                                          ; $4eaa: $07
    rlca                                          ; $4eab: $07
    rlca                                          ; $4eac: $07
    rlca                                          ; $4ead: $07
    rlca                                          ; $4eae: $07
    rlca                                          ; $4eaf: $07
    rlca                                          ; $4eb0: $07
    rlca                                          ; $4eb1: $07
    rlca                                          ; $4eb2: $07
    rlca                                          ; $4eb3: $07
    rlca                                          ; $4eb4: $07
    rlca                                          ; $4eb5: $07
    pop de                                        ; $4eb6: $d1
    pop de                                        ; $4eb7: $d1
    pop de                                        ; $4eb8: $d1
    ld c, h                                       ; $4eb9: $4c
    pop de                                        ; $4eba: $d1
    pop de                                        ; $4ebb: $d1
    pop de                                        ; $4ebc: $d1
    pop de                                        ; $4ebd: $d1
    pop de                                        ; $4ebe: $d1
    pop de                                        ; $4ebf: $d1
    pop de                                        ; $4ec0: $d1
    pop de                                        ; $4ec1: $d1
    pop de                                        ; $4ec2: $d1
    pop de                                        ; $4ec3: $d1
    pop de                                        ; $4ec4: $d1
    pop de                                        ; $4ec5: $d1
    add a                                         ; $4ec6: $87
    add a                                         ; $4ec7: $87
    add a                                         ; $4ec8: $87
    add b                                         ; $4ec9: $80
    rlca                                          ; $4eca: $07
    rlca                                          ; $4ecb: $07
    rlca                                          ; $4ecc: $07
    add a                                         ; $4ecd: $87
    rlca                                          ; $4ece: $07
    rlca                                          ; $4ecf: $07
    rlca                                          ; $4ed0: $07
    rlca                                          ; $4ed1: $07
    rlca                                          ; $4ed2: $07
    rlca                                          ; $4ed3: $07
    rlca                                          ; $4ed4: $07
    rlca                                          ; $4ed5: $07
    ld e, e                                       ; $4ed6: $5b
    ld e, e                                       ; $4ed7: $5b
    ld e, e                                       ; $4ed8: $5b
    ld e, d                                       ; $4ed9: $5a
    ld e, h                                       ; $4eda: $5c
    ld e, h                                       ; $4edb: $5c
    ld e, h                                       ; $4edc: $5c
    pop de                                        ; $4edd: $d1
    pop de                                        ; $4ede: $d1
    pop de                                        ; $4edf: $d1
    pop de                                        ; $4ee0: $d1
    pop de                                        ; $4ee1: $d1
    pop de                                        ; $4ee2: $d1
    pop de                                        ; $4ee3: $d1
    pop de                                        ; $4ee4: $d1
    pop de                                        ; $4ee5: $d1
    add b                                         ; $4ee6: $80
    add b                                         ; $4ee7: $80
    add b                                         ; $4ee8: $80
    add b                                         ; $4ee9: $80
    add [hl]                                      ; $4eea: $86
    add [hl]                                      ; $4eeb: $86
    add [hl]                                      ; $4eec: $86
    add a                                         ; $4eed: $87
    rlca                                          ; $4eee: $07
    rlca                                          ; $4eef: $07
    rlca                                          ; $4ef0: $07
    rlca                                          ; $4ef1: $07
    rlca                                          ; $4ef2: $07
    rlca                                          ; $4ef3: $07
    rlca                                          ; $4ef4: $07
    rlca                                          ; $4ef5: $07
    dec b                                         ; $4ef6: $05
    nop                                           ; $4ef7: $00
    dec b                                         ; $4ef8: $05
    nop                                           ; $4ef9: $00
    ldh [rSC], a                                  ; $4efa: $e0 $02
    pop de                                        ; $4efc: $d1
    jp nc, $d3d3                                  ; $4efd: $d2 $d3 $d3

    pop de                                        ; $4f00: $d1
    call nc, $d6d5                                ; $4f01: $d4 $d5 $d6
    pop de                                        ; $4f04: $d1
    call nc, $d8d7                                ; $4f05: $d4 $d7 $d8
    pop de                                        ; $4f08: $d1
    call nc, $dad9                                ; $4f09: $d4 $d9 $da
    add a                                         ; $4f0c: $87
    add b                                         ; $4f0d: $80
    add b                                         ; $4f0e: $80
    add b                                         ; $4f0f: $80
    add a                                         ; $4f10: $87
    add b                                         ; $4f11: $80
    ld [bc], a                                    ; $4f12: $02
    ld [bc], a                                    ; $4f13: $02
    add a                                         ; $4f14: $87
    add b                                         ; $4f15: $80
    dec b                                         ; $4f16: $05
    dec b                                         ; $4f17: $05
    add a                                         ; $4f18: $87
    add b                                         ; $4f19: $80
    dec b                                         ; $4f1a: $05
    dec b                                         ; $4f1b: $05
    db $d3                                        ; $4f1c: $d3
    db $d3                                        ; $4f1d: $d3
    db $d3                                        ; $4f1e: $d3
    db $d3                                        ; $4f1f: $d3
    db $db                                        ; $4f20: $db
    call c, $dedd                                 ; $4f21: $dc $dd $de
    rst $18                                       ; $4f24: $df
    ldh [$e1], a                                  ; $4f25: $e0 $e1
    ld [c], a                                     ; $4f27: $e2
    db $e3                                        ; $4f28: $e3
    db $e4                                        ; $4f29: $e4
    push hl                                       ; $4f2a: $e5
    and $80                                       ; $4f2b: $e6 $80
    add b                                         ; $4f2d: $80
    add b                                         ; $4f2e: $80
    add b                                         ; $4f2f: $80
    ld [bc], a                                    ; $4f30: $02
    ld [bc], a                                    ; $4f31: $02
    ld [bc], a                                    ; $4f32: $02
    ld [bc], a                                    ; $4f33: $02
    ld b, $04                                     ; $4f34: $06 $04
    inc b                                         ; $4f36: $04
    inc b                                         ; $4f37: $04
    ld b, $04                                     ; $4f38: $06 $04
    inc b                                         ; $4f3a: $04
    inc b                                         ; $4f3b: $04
    db $d3                                        ; $4f3c: $d3
    db $d3                                        ; $4f3d: $d3
    db $d3                                        ; $4f3e: $d3
    db $d3                                        ; $4f3f: $d3
    db $dd                                        ; $4f40: $dd
    push de                                       ; $4f41: $d5
    sub $db                                       ; $4f42: $d6 $db
    rst $20                                       ; $4f44: $e7
    add sp, -$17                                  ; $4f45: $e8 $e9
    ld [$eceb], a                                 ; $4f47: $ea $eb $ec
    db $ed                                        ; $4f4a: $ed
    xor $80                                       ; $4f4b: $ee $80
    add b                                         ; $4f4d: $80
    add b                                         ; $4f4e: $80
    add b                                         ; $4f4f: $80
    ld [bc], a                                    ; $4f50: $02
    ld [bc], a                                    ; $4f51: $02
    ld [bc], a                                    ; $4f52: $02
    ld [bc], a                                    ; $4f53: $02
    ld [bc], a                                    ; $4f54: $02
    ld [bc], a                                    ; $4f55: $02
    ld [bc], a                                    ; $4f56: $02
    ld [bc], a                                    ; $4f57: $02
    ld [bc], a                                    ; $4f58: $02
    ld [bc], a                                    ; $4f59: $02
    ld [bc], a                                    ; $4f5a: $02
    ld [bc], a                                    ; $4f5b: $02
    db $d3                                        ; $4f5c: $d3
    db $d3                                        ; $4f5d: $d3
    db $d3                                        ; $4f5e: $d3
    db $d3                                        ; $4f5f: $d3
    rst $28                                       ; $4f60: $ef
    db $db                                        ; $4f61: $db
    db $dd                                        ; $4f62: $dd
    ldh a, [$f1]                                  ; $4f63: $f0 $f1
    ld a, [c]                                     ; $4f65: $f2
    di                                            ; $4f66: $f3
    db $f4                                        ; $4f67: $f4
    push af                                       ; $4f68: $f5
    or $f7                                        ; $4f69: $f6 $f7
    ld hl, sp-$80                                 ; $4f6b: $f8 $80
    add b                                         ; $4f6d: $80
    add b                                         ; $4f6e: $80
    add b                                         ; $4f6f: $80
    ld [bc], a                                    ; $4f70: $02
    ld [bc], a                                    ; $4f71: $02
    ld [bc], a                                    ; $4f72: $02
    ld [bc], a                                    ; $4f73: $02
    inc b                                         ; $4f74: $04
    inc b                                         ; $4f75: $04
    inc b                                         ; $4f76: $04
    inc b                                         ; $4f77: $04
    inc b                                         ; $4f78: $04
    inc b                                         ; $4f79: $04
    inc b                                         ; $4f7a: $04
    inc b                                         ; $4f7b: $04
    pop de                                        ; $4f7c: $d1
    call nc, $faf9                                ; $4f7d: $d4 $f9 $fa
    pop de                                        ; $4f80: $d1
    call nc, $fcfb                                ; $4f81: $d4 $fb $fc
    pop de                                        ; $4f84: $d1
    call nc, $fefd                                ; $4f85: $d4 $fd $fe
    pop de                                        ; $4f88: $d1
    call nc, Call_000_00ff                        ; $4f89: $d4 $ff $00
    add a                                         ; $4f8c: $87
    add b                                         ; $4f8d: $80
    ld [bc], a                                    ; $4f8e: $02
    ld [bc], a                                    ; $4f8f: $02
    add a                                         ; $4f90: $87
    add b                                         ; $4f91: $80
    ld [bc], a                                    ; $4f92: $02
    ld [bc], a                                    ; $4f93: $02
    add a                                         ; $4f94: $87
    add b                                         ; $4f95: $80
    ld [bc], a                                    ; $4f96: $02
    ld [bc], a                                    ; $4f97: $02
    add a                                         ; $4f98: $87
    add b                                         ; $4f99: $80
    ld bc, $0101                                  ; $4f9a: $01 $01 $01
    ld [bc], a                                    ; $4f9d: $02
    inc bc                                        ; $4f9e: $03
    inc b                                         ; $4f9f: $04
    dec b                                         ; $4fa0: $05
    ld b, $07                                     ; $4fa1: $06 $07
    ld [$0909], sp                                ; $4fa3: $08 $09 $09
    ld a, [bc]                                    ; $4fa6: $0a
    db $fd                                        ; $4fa7: $fd
    dec bc                                        ; $4fa8: $0b
    rst $38                                       ; $4fa9: $ff
    nop                                           ; $4faa: $00
    dec bc                                        ; $4fab: $0b
    ld [bc], a                                    ; $4fac: $02
    ld [bc], a                                    ; $4fad: $02
    ld [bc], a                                    ; $4fae: $02
    ld [bc], a                                    ; $4faf: $02
    ld [bc], a                                    ; $4fb0: $02
    ld [bc], a                                    ; $4fb1: $02
    ld [bc], a                                    ; $4fb2: $02
    ld [bc], a                                    ; $4fb3: $02
    ld [bc], a                                    ; $4fb4: $02
    ld [bc], a                                    ; $4fb5: $02
    ld [bc], a                                    ; $4fb6: $02
    ld [bc], a                                    ; $4fb7: $02
    ld bc, $0101                                  ; $4fb8: $01 $01 $01
    ld bc, $0d0c                                  ; $4fbb: $01 $0c $0d
    ld c, $0f                                     ; $4fbe: $0e $0f
    db $10                                        ; $4fc0: $10
    ei                                            ; $4fc1: $fb
    ld de, $0a05                                  ; $4fc2: $11 $05 $0a
    db $fd                                        ; $4fc5: $fd
    cp $09                                        ; $4fc6: $fe $09
    rst $38                                       ; $4fc8: $ff
    nop                                           ; $4fc9: $00
    dec bc                                        ; $4fca: $0b
    rst $38                                       ; $4fcb: $ff
    ld [bc], a                                    ; $4fcc: $02
    ld [bc], a                                    ; $4fcd: $02
    ld [bc], a                                    ; $4fce: $02
    ld [bc], a                                    ; $4fcf: $02
    ld [bc], a                                    ; $4fd0: $02
    ld [bc], a                                    ; $4fd1: $02
    ld [bc], a                                    ; $4fd2: $02
    ld [bc], a                                    ; $4fd3: $02
    ld [bc], a                                    ; $4fd4: $02
    ld [bc], a                                    ; $4fd5: $02
    ld [bc], a                                    ; $4fd6: $02
    ld [bc], a                                    ; $4fd7: $02
    ld bc, $0101                                  ; $4fd8: $01 $01 $01
    ld bc, $1312                                  ; $4fdb: $01 $12 $13
    inc d                                         ; $4fde: $14
    dec d                                         ; $4fdf: $15
    ld d, $06                                     ; $4fe0: $16 $06
    rla                                           ; $4fe2: $17
    ei                                            ; $4fe3: $fb
    cp $09                                        ; $4fe4: $fe $09
    ld a, [bc]                                    ; $4fe6: $0a
    db $fd                                        ; $4fe7: $fd
    nop                                           ; $4fe8: $00
    dec bc                                        ; $4fe9: $0b
    rst $38                                       ; $4fea: $ff
    nop                                           ; $4feb: $00
    ld [bc], a                                    ; $4fec: $02
    ld [bc], a                                    ; $4fed: $02
    ld [bc], a                                    ; $4fee: $02
    ld [bc], a                                    ; $4fef: $02
    ld [bc], a                                    ; $4ff0: $02
    ld [bc], a                                    ; $4ff1: $02
    ld [bc], a                                    ; $4ff2: $02
    ld [bc], a                                    ; $4ff3: $02
    ld [bc], a                                    ; $4ff4: $02
    ld [bc], a                                    ; $4ff5: $02
    ld [bc], a                                    ; $4ff6: $02
    ld [bc], a                                    ; $4ff7: $02
    ld bc, $0101                                  ; $4ff8: $01 $01 $01
    ld bc, $d4d1                                  ; $4ffb: $01 $d1 $d4
    rst $10                                       ; $4ffe: $d7
    ret c                                         ; $4fff: $d8

    pop de                                        ; $5000: $d1
    call nc, $dad9                                ; $5001: $d4 $d9 $da
    pop de                                        ; $5004: $d1
    call nc, $1918                                ; $5005: $d4 $18 $19
    pop de                                        ; $5008: $d1
    call nc, Call_000_00ff                        ; $5009: $d4 $ff $00
    add a                                         ; $500c: $87
    add b                                         ; $500d: $80
    ld b, $06                                     ; $500e: $06 $06
    add a                                         ; $5010: $87
    add b                                         ; $5011: $80
    ld b, $06                                     ; $5012: $06 $06
    add a                                         ; $5014: $87
    add b                                         ; $5015: $80
    inc bc                                        ; $5016: $03
    inc bc                                        ; $5017: $03
    add a                                         ; $5018: $87
    add b                                         ; $5019: $80
    ld bc, $df01                                  ; $501a: $01 $01 $df
    ldh [$e1], a                                  ; $501d: $e0 $e1
    ld [c], a                                     ; $501f: $e2
    db $e3                                        ; $5020: $e3
    db $e4                                        ; $5021: $e4
    push hl                                       ; $5022: $e5
    and $19                                       ; $5023: $e6 $19
    add hl, de                                    ; $5025: $19
    add hl, de                                    ; $5026: $19
    add hl, de                                    ; $5027: $19
    dec bc                                        ; $5028: $0b
    rst $38                                       ; $5029: $ff
    nop                                           ; $502a: $00
    dec bc                                        ; $502b: $0b
    inc b                                         ; $502c: $04
    dec b                                         ; $502d: $05
    inc b                                         ; $502e: $04
    inc b                                         ; $502f: $04
    inc b                                         ; $5030: $04
    dec b                                         ; $5031: $05
    inc b                                         ; $5032: $04
    inc b                                         ; $5033: $04
    inc bc                                        ; $5034: $03
    inc bc                                        ; $5035: $03
    inc bc                                        ; $5036: $03
    inc bc                                        ; $5037: $03
    ld bc, $0101                                  ; $5038: $01 $01 $01
    ld bc, $e2e2                                  ; $503b: $01 $e2 $e2
    ld [c], a                                     ; $503e: $e2
    ld [c], a                                     ; $503f: $e2
    ld [c], a                                     ; $5040: $e2
    ld [c], a                                     ; $5041: $e2
    ld [c], a                                     ; $5042: $e2
    ld [c], a                                     ; $5043: $e2
    add hl, de                                    ; $5044: $19
    add hl, de                                    ; $5045: $19
    add hl, de                                    ; $5046: $19
    add hl, de                                    ; $5047: $19
    rst $38                                       ; $5048: $ff
    nop                                           ; $5049: $00
    dec bc                                        ; $504a: $0b
    rst $38                                       ; $504b: $ff
    inc b                                         ; $504c: $04
    inc b                                         ; $504d: $04
    inc b                                         ; $504e: $04
    inc b                                         ; $504f: $04
    inc b                                         ; $5050: $04
    inc b                                         ; $5051: $04
    inc b                                         ; $5052: $04
    inc b                                         ; $5053: $04
    inc bc                                        ; $5054: $03
    inc bc                                        ; $5055: $03
    inc bc                                        ; $5056: $03
    inc bc                                        ; $5057: $03
    ld bc, $0101                                  ; $5058: $01 $01 $01
    ld bc, $1ad7                                  ; $505b: $01 $d7 $1a
    dec de                                        ; $505e: $1b
    inc e                                         ; $505f: $1c
    reti                                          ; $5060: $d9


    dec e                                         ; $5061: $1d
    ld e, $1f                                     ; $5062: $1e $1f
    add hl, de                                    ; $5064: $19
    add hl, de                                    ; $5065: $19
    add hl, de                                    ; $5066: $19
    add hl, de                                    ; $5067: $19
    nop                                           ; $5068: $00
    dec bc                                        ; $5069: $0b
    rst $38                                       ; $506a: $ff
    nop                                           ; $506b: $00
    inc b                                         ; $506c: $04
    inc b                                         ; $506d: $04
    inc b                                         ; $506e: $04
    inc b                                         ; $506f: $04
    inc b                                         ; $5070: $04
    inc b                                         ; $5071: $04
    inc b                                         ; $5072: $04
    inc b                                         ; $5073: $04
    inc bc                                        ; $5074: $03
    inc bc                                        ; $5075: $03
    inc bc                                        ; $5076: $03
    inc bc                                        ; $5077: $03
    ld bc, $0101                                  ; $5078: $01 $01 $01
    ld bc, $d4d1                                  ; $507b: $01 $d1 $d4
    jr nz, @+$23                                  ; $507e: $20 $21

    pop de                                        ; $5080: $d1
    call nc, Call_000_2322                        ; $5081: $d4 $22 $23
    pop de                                        ; $5084: $d1
    call nc, $2524                                ; $5085: $d4 $24 $25
    pop de                                        ; $5088: $d1
    ld h, $d3                                     ; $5089: $26 $d3
    db $d3                                        ; $508b: $d3
    add a                                         ; $508c: $87
    add b                                         ; $508d: $80
    ld bc, $8701                                  ; $508e: $01 $01 $87
    add b                                         ; $5091: $80
    ld bc, $8701                                  ; $5092: $01 $01 $87
    add b                                         ; $5095: $80
    ld bc, $8701                                  ; $5096: $01 $01 $87
    add b                                         ; $5099: $80
    add b                                         ; $509a: $80
    add b                                         ; $509b: $80

jr_077_509c:
    daa                                           ; $509c: $27
    jr nz, jr_077_50c0                            ; $509d: $20 $21

    daa                                           ; $509f: $27
    jr z, jr_077_50c4                             ; $50a0: $28 $22

    inc hl                                        ; $50a2: $23
    jr z, @+$2b                                   ; $50a3: $28 $29

    inc h                                         ; $50a5: $24
    dec h                                         ; $50a6: $25
    add hl, hl                                    ; $50a7: $29
    db $d3                                        ; $50a8: $d3
    ld a, [hl+]                                   ; $50a9: $2a
    ld hl, $0127                                  ; $50aa: $21 $27 $01
    ld bc, $0101                                  ; $50ad: $01 $01 $01
    ld bc, $0101                                  ; $50b0: $01 $01 $01
    ld bc, $0101                                  ; $50b3: $01 $01 $01
    ld bc, $8001                                  ; $50b6: $01 $01 $80
    add b                                         ; $50b9: $80
    ld bc, $2001                                  ; $50ba: $01 $01 $20
    ld hl, $2027                                  ; $50bd: $21 $27 $20

jr_077_50c0:
    ld [hl+], a                                   ; $50c0: $22
    inc hl                                        ; $50c1: $23
    jr z, jr_077_50e6                             ; $50c2: $28 $22

jr_077_50c4:
    inc h                                         ; $50c4: $24
    dec h                                         ; $50c5: $25
    add hl, hl                                    ; $50c6: $29
    inc h                                         ; $50c7: $24
    jr nz, jr_077_509c                            ; $50c8: $20 $d2

    db $d3                                        ; $50ca: $d3
    db $d3                                        ; $50cb: $d3
    ld bc, $0101                                  ; $50cc: $01 $01 $01
    ld bc, $0101                                  ; $50cf: $01 $01 $01
    ld bc, $0101                                  ; $50d2: $01 $01 $01
    ld bc, $0101                                  ; $50d5: $01 $01 $01
    ld bc, $8080                                  ; $50d8: $01 $80 $80
    add b                                         ; $50db: $80
    ld hl, $2027                                  ; $50dc: $21 $27 $20
    ld hl, $2823                                  ; $50df: $21 $23 $28
    ld [hl+], a                                   ; $50e2: $22
    inc hl                                        ; $50e3: $23
    dec h                                         ; $50e4: $25
    add hl, hl                                    ; $50e5: $29

jr_077_50e6:
    inc h                                         ; $50e6: $24
    dec h                                         ; $50e7: $25
    db $d3                                        ; $50e8: $d3
    db $d3                                        ; $50e9: $d3
    db $d3                                        ; $50ea: $d3
    db $d3                                        ; $50eb: $d3
    ld bc, $0101                                  ; $50ec: $01 $01 $01
    ld bc, $0101                                  ; $50ef: $01 $01 $01
    ld bc, $0101                                  ; $50f2: $01 $01 $01
    ld bc, $0101                                  ; $50f5: $01 $01 $01
    add b                                         ; $50f8: $80
    add b                                         ; $50f9: $80
    add b                                         ; $50fa: $80
    add b                                         ; $50fb: $80
    db $d3                                        ; $50fc: $d3
    db $d3                                        ; $50fd: $d3
    ld a, [hl+]                                   ; $50fe: $2a
    pop de                                        ; $50ff: $d1
    sub $db                                       ; $5100: $d6 $db
    call nc, Call_000_2bd1                        ; $5102: $d4 $d1 $2b
    inc l                                         ; $5105: $2c
    call nc, $2dd1                                ; $5106: $d4 $d1 $2d
    ld l, $d4                                     ; $5109: $2e $d4
    pop de                                        ; $510b: $d1
    add b                                         ; $510c: $80
    add b                                         ; $510d: $80
    add b                                         ; $510e: $80
    add a                                         ; $510f: $87
    ld [bc], a                                    ; $5110: $02
    ld [bc], a                                    ; $5111: $02
    add b                                         ; $5112: $80
    add a                                         ; $5113: $87
    inc b                                         ; $5114: $04
    ld b, $80                                     ; $5115: $06 $80
    add a                                         ; $5117: $87
    inc b                                         ; $5118: $04
    ld b, $80                                     ; $5119: $06 $80

jr_077_511b:
    add a                                         ; $511b: $87
    cpl                                           ; $511c: $2f
    jr nc, @-$2a                                  ; $511d: $30 $d4

    pop de                                        ; $511f: $d1
    ld sp, $d405                                  ; $5120: $31 $05 $d4
    pop de                                        ; $5123: $d1
    cp $09                                        ; $5124: $fe $09
    call nc, $0bd1                                ; $5126: $d4 $d1 $0b
    rst $38                                       ; $5129: $ff
    call nc, Call_000_02d1                        ; $512a: $d4 $d1 $02
    ld [bc], a                                    ; $512d: $02
    add b                                         ; $512e: $80
    add a                                         ; $512f: $87
    ld [bc], a                                    ; $5130: $02
    ld [bc], a                                    ; $5131: $02
    add b                                         ; $5132: $80

jr_077_5133:
    add a                                         ; $5133: $87
    ld [bc], a                                    ; $5134: $02
    ld [bc], a                                    ; $5135: $02
    add b                                         ; $5136: $80
    add a                                         ; $5137: $87
    ld bc, $8001                                  ; $5138: $01 $01 $80
    add a                                         ; $513b: $87
    ld [hl-], a                                   ; $513c: $32
    inc sp                                        ; $513d: $33
    call nc, Call_000_34d1                        ; $513e: $d4 $d1 $34
    dec [hl]                                      ; $5141: $35
    call nc, Call_000_19d1                        ; $5142: $d4 $d1 $19
    jr jr_077_511b                                ; $5145: $18 $d4

    pop de                                        ; $5147: $d1
    dec bc                                        ; $5148: $0b
    rst $38                                       ; $5149: $ff
    call nc, Call_000_04d1                        ; $514a: $d4 $d1 $04
    inc b                                         ; $514d: $04
    add b                                         ; $514e: $80
    add a                                         ; $514f: $87
    inc b                                         ; $5150: $04
    inc b                                         ; $5151: $04
    add b                                         ; $5152: $80
    add a                                         ; $5153: $87
    inc bc                                        ; $5154: $03
    inc hl                                        ; $5155: $23
    add b                                         ; $5156: $80
    add a                                         ; $5157: $87
    ld bc, $8001                                  ; $5158: $01 $01 $80
    add a                                         ; $515b: $87
    daa                                           ; $515c: $27
    jr nz, jr_077_5133                            ; $515d: $20 $d4

    pop de                                        ; $515f: $d1
    jr z, jr_077_5184                             ; $5160: $28 $22

    call nc, Call_000_29d1                        ; $5162: $d4 $d1 $29
    inc h                                         ; $5165: $24
    call nc, $d3d1                                ; $5166: $d4 $d1 $d3
    db $d3                                        ; $5169: $d3
    ld [hl], $d1                                  ; $516a: $36 $d1
    ld bc, $8001                                  ; $516c: $01 $01 $80
    add a                                         ; $516f: $87
    ld bc, $8001                                  ; $5170: $01 $01 $80
    add a                                         ; $5173: $87
    ld bc, $8001                                  ; $5174: $01 $01 $80
    add a                                         ; $5177: $87
    add b                                         ; $5178: $80
    add b                                         ; $5179: $80
    add b                                         ; $517a: $80
    add a                                         ; $517b: $87
    pop de                                        ; $517c: $d1
    pop de                                        ; $517d: $d1
    pop de                                        ; $517e: $d1
    pop de                                        ; $517f: $d1
    pop de                                        ; $5180: $d1
    pop de                                        ; $5181: $d1
    pop de                                        ; $5182: $d1
    pop de                                        ; $5183: $d1

jr_077_5184:
    pop de                                        ; $5184: $d1
    pop de                                        ; $5185: $d1
    pop de                                        ; $5186: $d1
    pop de                                        ; $5187: $d1
    pop de                                        ; $5188: $d1
    pop de                                        ; $5189: $d1
    pop de                                        ; $518a: $d1
    pop de                                        ; $518b: $d1
    add a                                         ; $518c: $87
    add a                                         ; $518d: $87
    add a                                         ; $518e: $87
    add a                                         ; $518f: $87
    add a                                         ; $5190: $87
    add a                                         ; $5191: $87
    add a                                         ; $5192: $87

jr_077_5193:
    add a                                         ; $5193: $87
    add a                                         ; $5194: $87
    add a                                         ; $5195: $87
    add a                                         ; $5196: $87
    add a                                         ; $5197: $87
    add a                                         ; $5198: $87
    add a                                         ; $5199: $87
    add a                                         ; $519a: $87
    add a                                         ; $519b: $87
    pop de                                        ; $519c: $d1
    ld h, $37                                     ; $519d: $26 $37
    scf                                           ; $519f: $37
    pop de                                        ; $51a0: $d1
    pop de                                        ; $51a1: $d1
    jr c, jr_077_51dc                             ; $51a2: $38 $38

    pop de                                        ; $51a4: $d1
    pop de                                        ; $51a5: $d1
    pop de                                        ; $51a6: $d1
    pop de                                        ; $51a7: $d1
    pop de                                        ; $51a8: $d1
    pop de                                        ; $51a9: $d1
    pop de                                        ; $51aa: $d1
    pop de                                        ; $51ab: $d1
    add a                                         ; $51ac: $87
    add b                                         ; $51ad: $80
    add b                                         ; $51ae: $80
    add b                                         ; $51af: $80
    add a                                         ; $51b0: $87
    add a                                         ; $51b1: $87
    add b                                         ; $51b2: $80
    add b                                         ; $51b3: $80
    add a                                         ; $51b4: $87
    add a                                         ; $51b5: $87
    add a                                         ; $51b6: $87
    add a                                         ; $51b7: $87
    add a                                         ; $51b8: $87
    add a                                         ; $51b9: $87
    add a                                         ; $51ba: $87
    add a                                         ; $51bb: $87
    scf                                           ; $51bc: $37
    ld [hl], $d1                                  ; $51bd: $36 $d1
    pop de                                        ; $51bf: $d1
    jr c, jr_077_5193                             ; $51c0: $38 $d1

    pop de                                        ; $51c2: $d1
    pop de                                        ; $51c3: $d1
    pop de                                        ; $51c4: $d1
    pop de                                        ; $51c5: $d1
    pop de                                        ; $51c6: $d1
    pop de                                        ; $51c7: $d1
    pop de                                        ; $51c8: $d1
    pop de                                        ; $51c9: $d1
    pop de                                        ; $51ca: $d1
    pop de                                        ; $51cb: $d1
    add b                                         ; $51cc: $80
    add b                                         ; $51cd: $80
    add a                                         ; $51ce: $87
    add a                                         ; $51cf: $87
    add b                                         ; $51d0: $80

Call_077_51d1:
    add a                                         ; $51d1: $87
    add a                                         ; $51d2: $87
    add a                                         ; $51d3: $87
    add a                                         ; $51d4: $87
    add a                                         ; $51d5: $87
    add a                                         ; $51d6: $87
    add a                                         ; $51d7: $87
    add a                                         ; $51d8: $87
    add a                                         ; $51d9: $87
    add a                                         ; $51da: $87
    add a                                         ; $51db: $87

jr_077_51dc:
    dec b                                         ; $51dc: $05
    nop                                           ; $51dd: $00
    dec b                                         ; $51de: $05
    nop                                           ; $51df: $00
    ld h, b                                       ; $51e0: $60
    inc b                                         ; $51e1: $04
    pop de                                        ; $51e2: $d1
    jp nc, $d3d3                                  ; $51e3: $d2 $d3 $d3

    pop de                                        ; $51e6: $d1
    call nc, $d6d5                                ; $51e7: $d4 $d5 $d6
    pop de                                        ; $51ea: $d1
    call nc, $d8d7                                ; $51eb: $d4 $d7 $d8
    pop de                                        ; $51ee: $d1
    call nc, $dad9                                ; $51ef: $d4 $d9 $da
    rlca                                          ; $51f2: $07
    rlca                                          ; $51f3: $07
    rlca                                          ; $51f4: $07
    rlca                                          ; $51f5: $07
    rlca                                          ; $51f6: $07
    rlca                                          ; $51f7: $07
    inc b                                         ; $51f8: $04
    inc b                                         ; $51f9: $04
    rlca                                          ; $51fa: $07
    rlca                                          ; $51fb: $07
    inc b                                         ; $51fc: $04
    inc b                                         ; $51fd: $04
    rlca                                          ; $51fe: $07
    rlca                                          ; $51ff: $07
    inc b                                         ; $5200: $04
    inc b                                         ; $5201: $04
    db $d3                                        ; $5202: $d3
    db $d3                                        ; $5203: $d3
    db $d3                                        ; $5204: $d3
    db $d3                                        ; $5205: $d3
    db $db                                        ; $5206: $db
    call c, $d6d5                                 ; $5207: $dc $d5 $d6
    db $dd                                        ; $520a: $dd
    sbc $d7                                       ; $520b: $de $d7
    ret c                                         ; $520d: $d8

    rst $18                                       ; $520e: $df
    ldh [$e1], a                                  ; $520f: $e0 $e1
    jp c, $0707                                   ; $5211: $da $07 $07

    rlca                                          ; $5214: $07
    rlca                                          ; $5215: $07
    inc b                                         ; $5216: $04
    inc b                                         ; $5217: $04
    inc b                                         ; $5218: $04
    inc b                                         ; $5219: $04
    inc b                                         ; $521a: $04
    inc b                                         ; $521b: $04
    inc b                                         ; $521c: $04
    inc b                                         ; $521d: $04
    inc b                                         ; $521e: $04
    inc b                                         ; $521f: $04
    inc b                                         ; $5220: $04
    inc b                                         ; $5221: $04
    db $d3                                        ; $5222: $d3
    db $d3                                        ; $5223: $d3
    db $d3                                        ; $5224: $d3
    db $d3                                        ; $5225: $d3
    ld [c], a                                     ; $5226: $e2
    db $e3                                        ; $5227: $e3
    db $e4                                        ; $5228: $e4
    push hl                                       ; $5229: $e5
    and $e7                                       ; $522a: $e6 $e7
    add sp, -$17                                  ; $522c: $e8 $e9
    rst $18                                       ; $522e: $df
    ld [$daeb], a                                 ; $522f: $ea $eb $da
    rlca                                          ; $5232: $07
    rlca                                          ; $5233: $07
    rlca                                          ; $5234: $07
    rlca                                          ; $5235: $07
    inc b                                         ; $5236: $04
    inc b                                         ; $5237: $04
    inc b                                         ; $5238: $04
    inc b                                         ; $5239: $04
    inc b                                         ; $523a: $04
    inc b                                         ; $523b: $04
    inc b                                         ; $523c: $04
    inc b                                         ; $523d: $04
    inc b                                         ; $523e: $04
    inc b                                         ; $523f: $04
    inc b                                         ; $5240: $04
    inc b                                         ; $5241: $04
    db $d3                                        ; $5242: $d3
    db $d3                                        ; $5243: $d3
    db $d3                                        ; $5244: $d3
    db $d3                                        ; $5245: $d3
    db $ec                                        ; $5246: $ec
    db $ed                                        ; $5247: $ed
    pop de                                        ; $5248: $d1
    pop de                                        ; $5249: $d1
    xor $ed                                       ; $524a: $ee $ed
    pop de                                        ; $524c: $d1
    pop de                                        ; $524d: $d1
    rst $28                                       ; $524e: $ef
    db $ed                                        ; $524f: $ed
    pop de                                        ; $5250: $d1
    pop de                                        ; $5251: $d1
    rlca                                          ; $5252: $07
    rlca                                          ; $5253: $07
    rlca                                          ; $5254: $07
    rlca                                          ; $5255: $07
    inc b                                         ; $5256: $04
    dec b                                         ; $5257: $05
    rlca                                          ; $5258: $07
    rlca                                          ; $5259: $07
    inc b                                         ; $525a: $04
    dec b                                         ; $525b: $05
    rlca                                          ; $525c: $07
    rlca                                          ; $525d: $07
    inc b                                         ; $525e: $04
    dec b                                         ; $525f: $05
    rlca                                          ; $5260: $07
    rlca                                          ; $5261: $07
    pop de                                        ; $5262: $d1
    call nc, $f1f0                                ; $5263: $d4 $f0 $f1
    pop de                                        ; $5266: $d1
    call nc, $f3f2                                ; $5267: $d4 $f2 $f3
    pop de                                        ; $526a: $d1
    call nc, $f5f4                                ; $526b: $d4 $f4 $f5
    pop de                                        ; $526e: $d1
    call nc, $f7f6                                ; $526f: $d4 $f6 $f7
    rlca                                          ; $5272: $07
    rlca                                          ; $5273: $07
    inc b                                         ; $5274: $04
    inc b                                         ; $5275: $04
    rlca                                          ; $5276: $07
    rlca                                          ; $5277: $07
    inc b                                         ; $5278: $04
    inc b                                         ; $5279: $04
    rlca                                          ; $527a: $07
    rlca                                          ; $527b: $07
    inc b                                         ; $527c: $04
    inc b                                         ; $527d: $04
    rlca                                          ; $527e: $07
    rlca                                          ; $527f: $07
    inc bc                                        ; $5280: $03
    inc bc                                        ; $5281: $03
    ld hl, sp-$07                                 ; $5282: $f8 $f9
    ld a, [$fcfb]                                 ; $5284: $fa $fb $fc
    db $fd                                        ; $5287: $fd
    cp $ff                                        ; $5288: $fe $ff
    nop                                           ; $528a: $00
    ld bc, $0302                                  ; $528b: $01 $02 $03
    inc b                                         ; $528e: $04
    dec b                                         ; $528f: $05
    ld b, $07                                     ; $5290: $06 $07
    inc b                                         ; $5292: $04
    inc b                                         ; $5293: $04
    inc b                                         ; $5294: $04
    inc b                                         ; $5295: $04
    inc b                                         ; $5296: $04
    inc b                                         ; $5297: $04
    inc b                                         ; $5298: $04
    inc b                                         ; $5299: $04
    inc b                                         ; $529a: $04
    inc b                                         ; $529b: $04
    inc b                                         ; $529c: $04
    inc b                                         ; $529d: $04
    inc bc                                        ; $529e: $03
    inc bc                                        ; $529f: $03
    inc bc                                        ; $52a0: $03
    inc bc                                        ; $52a1: $03
    ld [$0908], sp                                ; $52a2: $08 $08 $09
    ld [$0b0a], sp                                ; $52a5: $08 $0a $0b
    ld [$0c08], sp                                ; $52a8: $08 $08 $0c
    dec c                                         ; $52ab: $0d
    ld c, $0f                                     ; $52ac: $0e $0f
    db $10                                        ; $52ae: $10
    ld de, $1312                                  ; $52af: $11 $12 $13
    inc b                                         ; $52b2: $04
    inc b                                         ; $52b3: $04
    inc b                                         ; $52b4: $04
    inc b                                         ; $52b5: $04
    ld b, $06                                     ; $52b6: $06 $06
    inc b                                         ; $52b8: $04
    inc b                                         ; $52b9: $04
    ld b, $06                                     ; $52ba: $06 $06
    ld b, $06                                     ; $52bc: $06 $06
    ld bc, $0101                                  ; $52be: $01 $01 $01
    ld bc, $ed14                                  ; $52c1: $01 $14 $ed
    pop de                                        ; $52c4: $d1
    pop de                                        ; $52c5: $d1
    inc d                                         ; $52c6: $14
    db $ed                                        ; $52c7: $ed
    dec d                                         ; $52c8: $15
    ld d, $14                                     ; $52c9: $16 $14
    db $ed                                        ; $52cb: $ed
    pop de                                        ; $52cc: $d1
    rla                                           ; $52cd: $17
    jr @+$1b                                      ; $52ce: $18 $19

    pop de                                        ; $52d0: $d1
    ld a, [de]                                    ; $52d1: $1a
    inc b                                         ; $52d2: $04
    dec b                                         ; $52d3: $05
    rlca                                          ; $52d4: $07
    rlca                                          ; $52d5: $07
    inc b                                         ; $52d6: $04
    dec b                                         ; $52d7: $05
    rlca                                          ; $52d8: $07
    rlca                                          ; $52d9: $07
    inc b                                         ; $52da: $04
    dec b                                         ; $52db: $05
    rlca                                          ; $52dc: $07
    rlca                                          ; $52dd: $07
    inc bc                                        ; $52de: $03
    dec b                                         ; $52df: $05
    rlca                                          ; $52e0: $07
    rlca                                          ; $52e1: $07
    pop de                                        ; $52e2: $d1
    call nc, $1c1b                                ; $52e3: $d4 $1b $1c
    pop de                                        ; $52e6: $d1
    call nc, $1e1d                                ; $52e7: $d4 $1d $1e
    pop de                                        ; $52ea: $d1
    call nc, Call_000_1f1f                        ; $52eb: $d4 $1f $1f
    pop de                                        ; $52ee: $d1
    call nc, $2120                                ; $52ef: $d4 $20 $21
    add a                                         ; $52f2: $87
    add a                                         ; $52f3: $87
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    add a                                         ; $52f6: $87
    add a                                         ; $52f7: $87
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    add a                                         ; $52fa: $87
    add a                                         ; $52fb: $87
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    add a                                         ; $52fe: $87
    add a                                         ; $52ff: $87
    inc bc                                        ; $5300: $03
    inc bc                                        ; $5301: $03
    ld [hl+], a                                   ; $5302: $22
    inc hl                                        ; $5303: $23
    inc h                                         ; $5304: $24
    dec h                                         ; $5305: $25
    ld h, $27                                     ; $5306: $26 $27
    jr z, @+$2b                                   ; $5308: $28 $29

    rra                                           ; $530a: $1f
    ld a, [hl+]                                   ; $530b: $2a
    dec hl                                        ; $530c: $2b
    ld c, $2c                                     ; $530d: $0e $2c
    dec l                                         ; $530f: $2d
    dec hl                                        ; $5310: $2b
    ld l, $00                                     ; $5311: $2e $00
    nop                                           ; $5313: $00
    inc bc                                        ; $5314: $03
    inc bc                                        ; $5315: $03
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    inc bc                                        ; $5318: $03
    inc bc                                        ; $5319: $03
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    inc bc                                        ; $531c: $03
    ld [bc], a                                    ; $531d: $02
    inc bc                                        ; $531e: $03
    inc bc                                        ; $531f: $03
    inc bc                                        ; $5320: $03
    ld [bc], a                                    ; $5321: $02
    cpl                                           ; $5322: $2f
    jr nc, jr_077_5356                            ; $5323: $30 $31

    ld [hl-], a                                   ; $5325: $32
    inc sp                                        ; $5326: $33
    inc [hl]                                      ; $5327: $34
    cpl                                           ; $5328: $2f
    jr nc, @+$11                                  ; $5329: $30 $0f

    dec [hl]                                      ; $532b: $35
    ld [hl], $37                                  ; $532c: $36 $37
    jr c, @+$3b                                   ; $532e: $38 $39

    ld a, [hl-]                                   ; $5330: $3a
    dec sp                                        ; $5331: $3b
    ld bc, $0101                                  ; $5332: $01 $01 $01
    ld bc, $0303                                  ; $5335: $01 $03 $03
    ld bc, $0201                                  ; $5338: $01 $01 $02
    inc bc                                        ; $533b: $03
    inc bc                                        ; $533c: $03
    inc bc                                        ; $533d: $03
    ld [bc], a                                    ; $533e: $02
    inc bc                                        ; $533f: $03
    ld [bc], a                                    ; $5340: $02
    ld [bc], a                                    ; $5341: $02
    inc a                                         ; $5342: $3c
    add hl, de                                    ; $5343: $19
    dec a                                         ; $5344: $3d
    pop de                                        ; $5345: $d1
    inc a                                         ; $5346: $3c
    add hl, de                                    ; $5347: $19
    ld a, $d1                                     ; $5348: $3e $d1
    inc a                                         ; $534a: $3c
    add hl, de                                    ; $534b: $19
    pop de                                        ; $534c: $d1
    pop de                                        ; $534d: $d1
    inc a                                         ; $534e: $3c
    add hl, de                                    ; $534f: $19
    pop de                                        ; $5350: $d1
    pop de                                        ; $5351: $d1
    inc bc                                        ; $5352: $03
    dec b                                         ; $5353: $05
    rlca                                          ; $5354: $07
    rlca                                          ; $5355: $07

jr_077_5356:
    inc bc                                        ; $5356: $03
    dec b                                         ; $5357: $05
    rlca                                          ; $5358: $07
    rlca                                          ; $5359: $07
    inc bc                                        ; $535a: $03
    dec b                                         ; $535b: $05
    rlca                                          ; $535c: $07
    rlca                                          ; $535d: $07
    inc bc                                        ; $535e: $03
    dec b                                         ; $535f: $05
    rlca                                          ; $5360: $07
    rlca                                          ; $5361: $07
    pop de                                        ; $5362: $d1
    call nc, $403f                                ; $5363: $d4 $3f $40
    pop de                                        ; $5366: $d1
    call nc, Call_077_4241                        ; $5367: $d4 $41 $42
    pop de                                        ; $536a: $d1
    call nc, Call_077_4443                        ; $536b: $d4 $43 $44
    pop de                                        ; $536e: $d1
    ld b, l                                       ; $536f: $45
    db $d3                                        ; $5370: $d3
    ld b, [hl]                                    ; $5371: $46
    add a                                         ; $5372: $87
    add a                                         ; $5373: $87
    inc bc                                        ; $5374: $03
    inc bc                                        ; $5375: $03
    add a                                         ; $5376: $87
    add a                                         ; $5377: $87
    inc bc                                        ; $5378: $03
    inc bc                                        ; $5379: $03
    add a                                         ; $537a: $87
    add a                                         ; $537b: $87
    inc bc                                        ; $537c: $03
    inc bc                                        ; $537d: $03
    add a                                         ; $537e: $87
    add a                                         ; $537f: $87
    add a                                         ; $5380: $87
    add a                                         ; $5381: $87

jr_077_5382:
    ld b, a                                       ; $5382: $47
    ld c, b                                       ; $5383: $48
    ld c, c                                       ; $5384: $49
    ld sp, $4b4a                                  ; $5385: $31 $4a $4b
    ld c, h                                       ; $5388: $4c
    cpl                                           ; $5389: $2f
    ld c, l                                       ; $538a: $4d
    ld c, [hl]                                    ; $538b: $4e
    ld c, a                                       ; $538c: $4f
    ld d, b                                       ; $538d: $50
    ld d, c                                       ; $538e: $51
    ld d, d                                       ; $538f: $52
    ld d, e                                       ; $5390: $53
    jp nc, Jump_000_0303                          ; $5391: $d2 $03 $03

    inc bc                                        ; $5394: $03
    ld [bc], a                                    ; $5395: $02
    inc bc                                        ; $5396: $03
    inc bc                                        ; $5397: $03
    inc bc                                        ; $5398: $03
    ld bc, $0303                                  ; $5399: $01 $03 $03
    inc bc                                        ; $539c: $03
    inc bc                                        ; $539d: $03
    inc bc                                        ; $539e: $03
    inc bc                                        ; $539f: $03
    inc bc                                        ; $53a0: $03
    add a                                         ; $53a1: $87
    ld [hl-], a                                   ; $53a2: $32
    dec hl                                        ; $53a3: $2b
    ld d, h                                       ; $53a4: $54
    ld d, l                                       ; $53a5: $55
    jr nc, jr_077_53fe                            ; $53a6: $30 $56

    ld d, a                                       ; $53a8: $57
    ld e, b                                       ; $53a9: $58
    ld e, c                                       ; $53aa: $59
    ld e, d                                       ; $53ab: $5a
    cpl                                           ; $53ac: $2f
    jr nc, jr_077_5382                            ; $53ad: $30 $d3

    db $d3                                        ; $53af: $d3
    db $d3                                        ; $53b0: $d3
    db $d3                                        ; $53b1: $d3
    ld [bc], a                                    ; $53b2: $02
    inc bc                                        ; $53b3: $03
    ld [bc], a                                    ; $53b4: $02
    ld [bc], a                                    ; $53b5: $02
    ld bc, $0103                                  ; $53b6: $01 $03 $01
    ld [bc], a                                    ; $53b9: $02
    inc bc                                        ; $53ba: $03
    inc bc                                        ; $53bb: $03
    ld bc, $8701                                  ; $53bc: $01 $01 $87
    add a                                         ; $53bf: $87
    add a                                         ; $53c0: $87
    add a                                         ; $53c1: $87
    inc a                                         ; $53c2: $3c
    add hl, de                                    ; $53c3: $19
    ld e, e                                       ; $53c4: $5b
    ld e, h                                       ; $53c5: $5c
    inc a                                         ; $53c6: $3c
    add hl, de                                    ; $53c7: $19
    pop de                                        ; $53c8: $d1
    ld e, l                                       ; $53c9: $5d
    inc a                                         ; $53ca: $3c
    add hl, de                                    ; $53cb: $19
    pop de                                        ; $53cc: $d1
    pop de                                        ; $53cd: $d1
    db $d3                                        ; $53ce: $d3
    db $d3                                        ; $53cf: $d3
    db $d3                                        ; $53d0: $d3
    db $d3                                        ; $53d1: $d3
    inc bc                                        ; $53d2: $03
    dec b                                         ; $53d3: $05
    rlca                                          ; $53d4: $07
    rlca                                          ; $53d5: $07
    inc bc                                        ; $53d6: $03
    dec b                                         ; $53d7: $05
    rlca                                          ; $53d8: $07
    rlca                                          ; $53d9: $07
    inc bc                                        ; $53da: $03
    dec b                                         ; $53db: $05
    rlca                                          ; $53dc: $07
    rlca                                          ; $53dd: $07
    rlca                                          ; $53de: $07
    rlca                                          ; $53df: $07
    rlca                                          ; $53e0: $07
    rlca                                          ; $53e1: $07
    db $d3                                        ; $53e2: $d3
    db $d3                                        ; $53e3: $d3
    ld b, [hl]                                    ; $53e4: $46
    pop de                                        ; $53e5: $d1
    pop de                                        ; $53e6: $d1
    pop de                                        ; $53e7: $d1
    call nc, $d1d1                                ; $53e8: $d4 $d1 $d1
    pop de                                        ; $53eb: $d1
    call nc, $d1d1                                ; $53ec: $d4 $d1 $d1
    pop de                                        ; $53ef: $d1
    call nc, Call_000_07d1                        ; $53f0: $d4 $d1 $07
    rlca                                          ; $53f3: $07
    rlca                                          ; $53f4: $07
    rlca                                          ; $53f5: $07
    rlca                                          ; $53f6: $07
    rlca                                          ; $53f7: $07
    rlca                                          ; $53f8: $07
    rlca                                          ; $53f9: $07
    rlca                                          ; $53fa: $07
    rlca                                          ; $53fb: $07
    rlca                                          ; $53fc: $07
    rlca                                          ; $53fd: $07

jr_077_53fe:
    rlca                                          ; $53fe: $07
    rlca                                          ; $53ff: $07
    rlca                                          ; $5400: $07
    rlca                                          ; $5401: $07
    ld e, [hl]                                    ; $5402: $5e
    pop de                                        ; $5403: $d1
    call nc, $d1d1                                ; $5404: $d4 $d1 $d1
    pop de                                        ; $5407: $d1
    call nc, $d1d1                                ; $5408: $d4 $d1 $d1
    pop de                                        ; $540b: $d1
    call nc, Call_077_5fd1                        ; $540c: $d4 $d1 $5f
    pop de                                        ; $540f: $d1
    call nc, Call_000_07d1                        ; $5410: $d4 $d1 $07
    rlca                                          ; $5413: $07
    rlca                                          ; $5414: $07
    rlca                                          ; $5415: $07
    rlca                                          ; $5416: $07
    rlca                                          ; $5417: $07
    rlca                                          ; $5418: $07
    rlca                                          ; $5419: $07
    rlca                                          ; $541a: $07
    rlca                                          ; $541b: $07
    rlca                                          ; $541c: $07
    rlca                                          ; $541d: $07
    rlca                                          ; $541e: $07
    rlca                                          ; $541f: $07
    rlca                                          ; $5420: $07
    rlca                                          ; $5421: $07
    pop de                                        ; $5422: $d1
    pop de                                        ; $5423: $d1
    call nc, $d1d1                                ; $5424: $d4 $d1 $d1
    pop de                                        ; $5427: $d1
    call nc, $60d1                                ; $5428: $d4 $d1 $60
    pop de                                        ; $542b: $d1
    call nc, $d1d1                                ; $542c: $d4 $d1 $d1
    pop de                                        ; $542f: $d1
    call nc, Call_000_07d1                        ; $5430: $d4 $d1 $07
    rlca                                          ; $5433: $07
    rlca                                          ; $5434: $07
    rlca                                          ; $5435: $07
    rlca                                          ; $5436: $07
    rlca                                          ; $5437: $07
    rlca                                          ; $5438: $07
    rlca                                          ; $5439: $07
    rlca                                          ; $543a: $07
    rlca                                          ; $543b: $07
    rlca                                          ; $543c: $07
    rlca                                          ; $543d: $07
    rlca                                          ; $543e: $07
    rlca                                          ; $543f: $07
    rlca                                          ; $5440: $07
    rlca                                          ; $5441: $07
    ld h, c                                       ; $5442: $61
    ld h, d                                       ; $5443: $62
    call nc, $63d1                                ; $5444: $d4 $d1 $63
    pop de                                        ; $5447: $d1
    call nc, $d1d1                                ; $5448: $d4 $d1 $d1
    pop de                                        ; $544b: $d1
    call nc, $d3d1                                ; $544c: $d4 $d1 $d3
    db $d3                                        ; $544f: $d3
    ld h, h                                       ; $5450: $64
    pop de                                        ; $5451: $d1
    rlca                                          ; $5452: $07
    rlca                                          ; $5453: $07
    rlca                                          ; $5454: $07
    rlca                                          ; $5455: $07
    rlca                                          ; $5456: $07
    rlca                                          ; $5457: $07
    rlca                                          ; $5458: $07
    rlca                                          ; $5459: $07
    rlca                                          ; $545a: $07
    rlca                                          ; $545b: $07
    rlca                                          ; $545c: $07
    rlca                                          ; $545d: $07
    rlca                                          ; $545e: $07
    rlca                                          ; $545f: $07
    rlca                                          ; $5460: $07
    rlca                                          ; $5461: $07
    pop de                                        ; $5462: $d1
    pop de                                        ; $5463: $d1
    pop de                                        ; $5464: $d1
    ld b, l                                       ; $5465: $45
    pop de                                        ; $5466: $d1
    pop de                                        ; $5467: $d1
    pop de                                        ; $5468: $d1
    pop de                                        ; $5469: $d1
    pop de                                        ; $546a: $d1
    pop de                                        ; $546b: $d1
    pop de                                        ; $546c: $d1
    pop de                                        ; $546d: $d1
    pop de                                        ; $546e: $d1
    pop de                                        ; $546f: $d1
    pop de                                        ; $5470: $d1
    pop de                                        ; $5471: $d1
    add a                                         ; $5472: $87
    add a                                         ; $5473: $87
    add a                                         ; $5474: $87
    add a                                         ; $5475: $87
    add a                                         ; $5476: $87
    add a                                         ; $5477: $87
    add a                                         ; $5478: $87
    add a                                         ; $5479: $87
    add a                                         ; $547a: $87
    add a                                         ; $547b: $87
    add a                                         ; $547c: $87
    add a                                         ; $547d: $87
    add a                                         ; $547e: $87
    add a                                         ; $547f: $87
    add a                                         ; $5480: $87
    add a                                         ; $5481: $87
    ld h, l                                       ; $5482: $65
    ld h, l                                       ; $5483: $65
    ld h, l                                       ; $5484: $65
    ld h, h                                       ; $5485: $64
    ld h, [hl]                                    ; $5486: $66
    ld h, [hl]                                    ; $5487: $66
    ld h, [hl]                                    ; $5488: $66
    pop de                                        ; $5489: $d1
    pop de                                        ; $548a: $d1
    pop de                                        ; $548b: $d1
    pop de                                        ; $548c: $d1
    pop de                                        ; $548d: $d1
    pop de                                        ; $548e: $d1
    pop de                                        ; $548f: $d1
    pop de                                        ; $5490: $d1
    pop de                                        ; $5491: $d1
    add a                                         ; $5492: $87
    add a                                         ; $5493: $87
    add a                                         ; $5494: $87
    add a                                         ; $5495: $87
    add a                                         ; $5496: $87
    add a                                         ; $5497: $87
    add a                                         ; $5498: $87
    add a                                         ; $5499: $87
    add a                                         ; $549a: $87
    add a                                         ; $549b: $87
    add a                                         ; $549c: $87
    add a                                         ; $549d: $87
    add a                                         ; $549e: $87
    add a                                         ; $549f: $87
    add a                                         ; $54a0: $87
    add a                                         ; $54a1: $87
    pop de                                        ; $54a2: $d1
    pop de                                        ; $54a3: $d1
    pop de                                        ; $54a4: $d1
    pop de                                        ; $54a5: $d1
    pop de                                        ; $54a6: $d1
    pop de                                        ; $54a7: $d1
    pop de                                        ; $54a8: $d1
    pop de                                        ; $54a9: $d1
    pop de                                        ; $54aa: $d1
    pop de                                        ; $54ab: $d1
    pop de                                        ; $54ac: $d1
    pop de                                        ; $54ad: $d1
    pop de                                        ; $54ae: $d1
    pop de                                        ; $54af: $d1
    pop de                                        ; $54b0: $d1
    pop de                                        ; $54b1: $d1
    add a                                         ; $54b2: $87
    add a                                         ; $54b3: $87
    add a                                         ; $54b4: $87
    add a                                         ; $54b5: $87
    add a                                         ; $54b6: $87
    add a                                         ; $54b7: $87
    add a                                         ; $54b8: $87
    add a                                         ; $54b9: $87
    add a                                         ; $54ba: $87
    add a                                         ; $54bb: $87
    add a                                         ; $54bc: $87
    add a                                         ; $54bd: $87
    add a                                         ; $54be: $87
    add a                                         ; $54bf: $87
    add a                                         ; $54c0: $87
    add a                                         ; $54c1: $87
    ld [$0908], sp                                ; $54c2: $08 $08 $09
    ld [$0b0a], sp                                ; $54c5: $08 $0a $0b
    ld [$0c08], sp                                ; $54c8: $08 $08 $0c
    dec c                                         ; $54cb: $0d
    ld h, a                                       ; $54cc: $67
    ld l, b                                       ; $54cd: $68
    db $10                                        ; $54ce: $10
    ld de, $1312                                  ; $54cf: $11 $12 $13
    inc b                                         ; $54d2: $04
    inc b                                         ; $54d3: $04
    inc b                                         ; $54d4: $04
    inc b                                         ; $54d5: $04
    ld b, $06                                     ; $54d6: $06 $06
    inc b                                         ; $54d8: $04
    inc b                                         ; $54d9: $04
    ld b, $06                                     ; $54da: $06 $06
    ld b, $06                                     ; $54dc: $06 $06
    ld bc, $0101                                  ; $54de: $01 $01 $01
    ld bc, $0808                                  ; $54e1: $01 $08 $08
    add hl, bc                                    ; $54e4: $09
    ld [$0b0a], sp                                ; $54e5: $08 $0a $0b
    ld [$0c08], sp                                ; $54e8: $08 $08 $0c
    dec c                                         ; $54eb: $0d
    ld l, c                                       ; $54ec: $69
    ld l, d                                       ; $54ed: $6a
    db $10                                        ; $54ee: $10
    ld de, $1312                                  ; $54ef: $11 $12 $13
    inc b                                         ; $54f2: $04
    inc b                                         ; $54f3: $04
    inc b                                         ; $54f4: $04
    inc b                                         ; $54f5: $04
    ld b, $06                                     ; $54f6: $06 $06
    ld b, $06                                     ; $54f8: $06 $06
    ld b, $06                                     ; $54fa: $06 $06
    ld b, $06                                     ; $54fc: $06 $06
    ld bc, $0101                                  ; $54fe: $01 $01 $01
    ld bc, $0832                                  ; $5501: $01 $32 $08
    ld d, h                                       ; $5504: $54
    ld d, l                                       ; $5505: $55
    jr nc, jr_077_555e                            ; $5506: $30 $56

    ld d, a                                       ; $5508: $57
    ld e, b                                       ; $5509: $58
    ld e, c                                       ; $550a: $59
    ld e, d                                       ; $550b: $5a
    cpl                                           ; $550c: $2f
    jr nc, @-$2b                                  ; $550d: $30 $d3

    db $d3                                        ; $550f: $d3
    db $d3                                        ; $5510: $d3
    db $d3                                        ; $5511: $d3
    ld bc, $0201                                  ; $5512: $01 $01 $02
    ld [bc], a                                    ; $5515: $02
    ld bc, $0103                                  ; $5516: $01 $03 $01
    ld bc, $0303                                  ; $5519: $01 $03 $03
    ld bc, $0701                                  ; $551c: $01 $01 $07
    rlca                                          ; $551f: $07
    rlca                                          ; $5520: $07
    rlca                                          ; $5521: $07
    ld [hl+], a                                   ; $5522: $22
    inc hl                                        ; $5523: $23
    inc h                                         ; $5524: $24
    dec h                                         ; $5525: $25
    ld h, $27                                     ; $5526: $26 $27
    jr z, @+$2b                                   ; $5528: $28 $29

    rra                                           ; $552a: $1f
    ld a, [hl+]                                   ; $552b: $2a
    dec hl                                        ; $552c: $2b
    ld l, e                                       ; $552d: $6b
    inc l                                         ; $552e: $2c
    dec l                                         ; $552f: $2d
    dec hl                                        ; $5530: $2b
    ld l, h                                       ; $5531: $6c
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    inc bc                                        ; $5534: $03
    inc bc                                        ; $5535: $03
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    inc bc                                        ; $5538: $03
    inc bc                                        ; $5539: $03
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    inc bc                                        ; $553c: $03
    ld [bc], a                                    ; $553d: $02
    inc bc                                        ; $553e: $03
    inc bc                                        ; $553f: $03
    inc bc                                        ; $5540: $03
    ld [bc], a                                    ; $5541: $02

jr_077_5542:
    cpl                                           ; $5542: $2f
    jr nc, jr_077_5576                            ; $5543: $30 $31

    ld [hl-], a                                   ; $5545: $32
    inc sp                                        ; $5546: $33
    inc [hl]                                      ; $5547: $34
    cpl                                           ; $5548: $2f
    jr nc, @+$6f                                  ; $5549: $30 $6d

    dec [hl]                                      ; $554b: $35
    ld [hl], $37                                  ; $554c: $36 $37
    ld l, [hl]                                    ; $554e: $6e
    add hl, sp                                    ; $554f: $39
    ld l, a                                       ; $5550: $6f
    ld [hl], b                                    ; $5551: $70
    ld bc, $0101                                  ; $5552: $01 $01 $01
    ld bc, $0303                                  ; $5555: $01 $03 $03
    ld bc, $0201                                  ; $5558: $01 $01 $02
    inc bc                                        ; $555b: $03
    inc bc                                        ; $555c: $03
    inc bc                                        ; $555d: $03

jr_077_555e:
    ld [bc], a                                    ; $555e: $02
    inc bc                                        ; $555f: $03
    ld [bc], a                                    ; $5560: $02
    ld [bc], a                                    ; $5561: $02
    ld [hl-], a                                   ; $5562: $32
    ld [$7271], sp                                ; $5563: $08 $71 $72
    jr nc, @+$58                                  ; $5566: $30 $56

    ld d, a                                       ; $5568: $57
    ld e, b                                       ; $5569: $58
    ld e, c                                       ; $556a: $59
    ld e, d                                       ; $556b: $5a
    cpl                                           ; $556c: $2f
    jr nc, jr_077_5542                            ; $556d: $30 $d3

    db $d3                                        ; $556f: $d3
    db $d3                                        ; $5570: $d3
    db $d3                                        ; $5571: $d3
    ld bc, $0201                                  ; $5572: $01 $01 $02
    ld [bc], a                                    ; $5575: $02

jr_077_5576:
    ld bc, $0103                                  ; $5576: $01 $03 $01
    ld bc, $0303                                  ; $5579: $01 $03 $03
    ld bc, $0701                                  ; $557c: $01 $01 $07
    rlca                                          ; $557f: $07
    rlca                                          ; $5580: $07
    rlca                                          ; $5581: $07

jr_077_5582:
    cpl                                           ; $5582: $2f
    jr nc, jr_077_55b6                            ; $5583: $30 $31

    ld [hl-], a                                   ; $5585: $32
    inc sp                                        ; $5586: $33
    inc [hl]                                      ; $5587: $34
    cpl                                           ; $5588: $2f
    jr nc, @+$11                                  ; $5589: $30 $0f

    dec [hl]                                      ; $558b: $35
    ld [hl], $37                                  ; $558c: $36 $37
    jr c, jr_077_55c9                             ; $558e: $38 $39

    ld l, a                                       ; $5590: $6f
    ld [hl], e                                    ; $5591: $73
    ld bc, $0101                                  ; $5592: $01 $01 $01
    ld bc, $0303                                  ; $5595: $01 $03 $03
    ld bc, $0201                                  ; $5598: $01 $01 $02
    inc bc                                        ; $559b: $03
    inc bc                                        ; $559c: $03
    inc bc                                        ; $559d: $03
    ld [bc], a                                    ; $559e: $02
    inc bc                                        ; $559f: $03
    ld [bc], a                                    ; $55a0: $02
    ld [bc], a                                    ; $55a1: $02
    ld [hl-], a                                   ; $55a2: $32
    ld [$7574], sp                                ; $55a3: $08 $74 $75
    jr nc, jr_077_55fe                            ; $55a6: $30 $56

    ld d, a                                       ; $55a8: $57
    ld e, b                                       ; $55a9: $58
    ld e, c                                       ; $55aa: $59
    ld e, d                                       ; $55ab: $5a
    cpl                                           ; $55ac: $2f
    jr nc, jr_077_5582                            ; $55ad: $30 $d3

    db $d3                                        ; $55af: $d3
    db $d3                                        ; $55b0: $d3
    db $d3                                        ; $55b1: $d3
    ld bc, $0201                                  ; $55b2: $01 $01 $02
    ld [bc], a                                    ; $55b5: $02

jr_077_55b6:
    ld bc, $0103                                  ; $55b6: $01 $03 $01
    ld bc, $0303                                  ; $55b9: $01 $03 $03
    ld bc, $0701                                  ; $55bc: $01 $01 $07
    rlca                                          ; $55bf: $07
    rlca                                          ; $55c0: $07
    rlca                                          ; $55c1: $07
    cpl                                           ; $55c2: $2f
    jr nc, jr_077_55f6                            ; $55c3: $30 $31

    ld [hl-], a                                   ; $55c5: $32
    inc sp                                        ; $55c6: $33
    inc [hl]                                      ; $55c7: $34
    cpl                                           ; $55c8: $2f

jr_077_55c9:
    jr nc, @+$11                                  ; $55c9: $30 $0f

    dec [hl]                                      ; $55cb: $35
    ld [hl], $37                                  ; $55cc: $36 $37
    jr c, jr_077_5609                             ; $55ce: $38 $39

    ld l, a                                       ; $55d0: $6f
    ld [hl], b                                    ; $55d1: $70
    ld bc, $0101                                  ; $55d2: $01 $01 $01
    ld bc, $0303                                  ; $55d5: $01 $03 $03
    ld bc, $0201                                  ; $55d8: $01 $01 $02
    inc bc                                        ; $55db: $03
    inc bc                                        ; $55dc: $03
    inc bc                                        ; $55dd: $03
    ld [bc], a                                    ; $55de: $02
    inc bc                                        ; $55df: $03
    ld [bc], a                                    ; $55e0: $02
    ld [bc], a                                    ; $55e1: $02
    inc a                                         ; $55e2: $3c
    add hl, de                                    ; $55e3: $19
    halt                                          ; $55e4: $76
    ld [hl], a                                    ; $55e5: $77
    inc a                                         ; $55e6: $3c
    add hl, de                                    ; $55e7: $19
    pop de                                        ; $55e8: $d1
    ld e, l                                       ; $55e9: $5d
    inc a                                         ; $55ea: $3c
    add hl, de                                    ; $55eb: $19
    pop de                                        ; $55ec: $d1
    pop de                                        ; $55ed: $d1
    db $d3                                        ; $55ee: $d3
    db $d3                                        ; $55ef: $d3
    db $d3                                        ; $55f0: $d3
    db $d3                                        ; $55f1: $d3
    inc bc                                        ; $55f2: $03
    dec b                                         ; $55f3: $05
    rlca                                          ; $55f4: $07
    rlca                                          ; $55f5: $07

jr_077_55f6:
    inc bc                                        ; $55f6: $03
    dec b                                         ; $55f7: $05
    rlca                                          ; $55f8: $07
    rlca                                          ; $55f9: $07
    inc bc                                        ; $55fa: $03
    dec b                                         ; $55fb: $05
    rlca                                          ; $55fc: $07
    rlca                                          ; $55fd: $07

jr_077_55fe:
    rlca                                          ; $55fe: $07
    rlca                                          ; $55ff: $07
    rlca                                          ; $5600: $07
    rlca                                          ; $5601: $07
    inc a                                         ; $5602: $3c
    add hl, de                                    ; $5603: $19
    pop de                                        ; $5604: $d1
    pop de                                        ; $5605: $d1
    inc a                                         ; $5606: $3c
    add hl, de                                    ; $5607: $19
    pop de                                        ; $5608: $d1

jr_077_5609:
    ld e, l                                       ; $5609: $5d
    inc a                                         ; $560a: $3c
    add hl, de                                    ; $560b: $19
    pop de                                        ; $560c: $d1
    pop de                                        ; $560d: $d1
    db $d3                                        ; $560e: $d3
    db $d3                                        ; $560f: $d3
    db $d3                                        ; $5610: $d3
    db $d3                                        ; $5611: $d3
    inc bc                                        ; $5612: $03
    dec b                                         ; $5613: $05
    rlca                                          ; $5614: $07
    rlca                                          ; $5615: $07
    inc bc                                        ; $5616: $03
    dec b                                         ; $5617: $05
    rlca                                          ; $5618: $07
    rlca                                          ; $5619: $07
    inc bc                                        ; $561a: $03
    dec b                                         ; $561b: $05
    rlca                                          ; $561c: $07
    rlca                                          ; $561d: $07
    rlca                                          ; $561e: $07
    rlca                                          ; $561f: $07
    rlca                                          ; $5620: $07
    rlca                                          ; $5621: $07
    inc d                                         ; $5622: $14
    db $ed                                        ; $5623: $ed
    pop de                                        ; $5624: $d1
    pop de                                        ; $5625: $d1
    inc d                                         ; $5626: $14
    db $ed                                        ; $5627: $ed
    pop de                                        ; $5628: $d1
    pop de                                        ; $5629: $d1
    inc d                                         ; $562a: $14
    db $ed                                        ; $562b: $ed
    pop de                                        ; $562c: $d1
    pop de                                        ; $562d: $d1
    jr @+$1b                                      ; $562e: $18 $19

    pop de                                        ; $5630: $d1
    ld a, [de]                                    ; $5631: $1a
    inc b                                         ; $5632: $04
    dec b                                         ; $5633: $05
    rlca                                          ; $5634: $07
    rlca                                          ; $5635: $07
    inc b                                         ; $5636: $04
    dec b                                         ; $5637: $05
    rlca                                          ; $5638: $07
    rlca                                          ; $5639: $07
    inc b                                         ; $563a: $04
    dec b                                         ; $563b: $05
    rlca                                          ; $563c: $07
    rlca                                          ; $563d: $07
    inc bc                                        ; $563e: $03
    dec b                                         ; $563f: $05
    rlca                                          ; $5640: $07
    rlca                                          ; $5641: $07

    db $05, $00, $05, $00

    ldh [rSC], a                                  ; $5646: $e0 $02

    db $d1, $d2, $d3, $d3, $d1, $d4, $d5, $d6, $d1, $d4, $d7, $d8, $d1, $d4, $d9, $da
    db $87, $87, $07, $07, $87, $87, $05, $05, $87, $87, $05, $05, $87, $87, $05, $05
    db $d3, $d3, $d3, $d3, $db, $dc, $d5, $d6, $dd, $de, $d7, $d8, $df, $e0, $e1, $e2
    db $07, $07, $07, $07, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05
    db $d3, $d3, $d3, $d3, $db, $dc, $e3, $e4, $e5, $e6, $e7, $e8, $d8, $e9, $ea, $eb
    db $07, $07, $07, $07, $05, $05, $05, $05, $05, $05, $02, $02, $45, $05, $02, $02
    db $d3, $d3, $d3, $d3, $ec, $ed, $d5, $d6, $ee, $ef, $d7, $f0, $d8, $f1, $e7, $e8
    db $07, $07, $07, $07, $05, $05, $05, $05, $05, $05, $05, $05, $45, $05, $03, $03
    db $d1, $d4, $f2, $f3, $d1, $d4, $f4, $f5, $d1, $d4, $f6, $f7, $d1, $d4, $f8, $f9
    db $87, $87, $05, $05, $87, $87, $05, $05, $87, $87, $05, $05, $87, $87, $01, $01
    db $fa, $fb, $fc, $f3, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $f8, $f9, $06
    db $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $06, $01, $01, $01, $06
    db $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $f8, $13, $14, $15
    db $05, $05, $03, $03, $05, $05, $04, $03, $05, $05, $02, $03, $01, $01, $03, $03
    db $e7, $e8, $ea, $eb, $0e, $16, $e7, $e8, $12, $17, $ea, $eb, $0e, $e7, $e8, $0a
    db $04, $04, $03, $03, $02, $04, $02, $02, $02, $04, $02, $02, $02, $04, $04, $02
    db $d1, $d4, $18, $19, $d1, $d4, $1a, $1b, $d1, $d4, $1c, $1d, $d1, $d4, $1e, $1f
    db $87, $87, $06, $06, $87, $87, $06, $06, $87, $87, $06, $06, $87, $87, $01, $01
    db $20, $20, $20, $21, $22, $23, $22, $24, $25, $26, $27, $28, $29, $1e, $1f, $29
    db $06, $06, $06, $06, $00, $00, $20, $06, $00, $00, $00, $06, $01, $01, $01, $01
    db $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $f8, $2a, $2b, $35, $36
    db $01, $01, $01, $03, $01, $01, $01, $03, $01, $01, $01, $01, $01, $01, $01, $01
    db $12, $ea, $eb, $37, $15, $09, $0a, $38, $39, $3a, $37, $33, $3b, $29, $3c, $2b
    db $02, $04, $04, $02, $02, $04, $04, $01, $03, $04, $04, $01, $04, $01, $01, $01
    db $d1, $d4, $3d, $3e, $d1, $d4, $3f, $32, $d1, $d4, $35, $2a, $d1, $40, $d3, $d3
    db $87, $87, $01, $01, $87, $87, $01, $01, $87, $87, $01, $01, $87, $87, $87, $87
    db $41, $3d, $3e, $41, $33, $3f, $32, $33, $2b, $35, $2a, $2b, $d3, $42, $3d, $3e
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $87, $87, $01, $01
    db $3d, $3e, $41, $3d, $3f, $32, $33, $3f, $35, $2a, $2b, $35, $41, $d2, $d3, $d3
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $87, $87, $87
    db $43, $41, $3d, $3e, $32, $33, $3f, $32, $2a, $2b, $35, $2a, $d3, $d3, $d3, $d3
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $87, $87, $87, $87
    db $d3, $d3, $42, $d1, $db, $dc, $d4, $d1, $e7, $e8, $d4, $d1, $ea, $eb, $d4, $d1
    db $07, $07, $87, $87, $05, $05, $87, $87, $04, $04, $87, $87, $04, $04, $87, $87
    db $09, $0e, $d4, $d1, $3a, $12, $d4, $d1, $09, $0e, $d4, $d1, $0e, $12, $d4, $d1
    db $04, $03, $87, $87, $04, $03, $87, $87, $04, $04, $87, $87, $03, $04, $87, $87
    db $12, $15, $d4, $d1, $15, $39, $d4, $d1, $44, $0e, $d4, $d1, $45, $12, $d4, $d1
    db $03, $04, $87, $87, $03, $04, $87, $87, $01, $02, $87, $87, $01, $02, $87, $87
    db $46, $15, $d4, $d1, $33, $05, $d4, $d1, $2b, $35, $d4, $d1, $d3, $d3, $47, $d1
    db $01, $02, $87, $87, $01, $01, $87, $87, $01, $01, $87, $87, $87, $87, $87, $87
    db $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87
    db $d1, $40, $48, $48, $d1, $d1, $49, $49, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87
    db $48, $47, $d1, $d1, $49, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87, $87

    dec b                                         ; $5928: $05
    nop                                           ; $5929: $00
    dec b                                         ; $592a: $05
    nop                                           ; $592b: $00
    ldh [rSC], a                                  ; $592c: $e0 $02
    pop de                                        ; $592e: $d1
    jp nc, $d2d2                                  ; $592f: $d2 $d2 $d2

    db $d3                                        ; $5932: $d3
    call nc, $d6d5                                ; $5933: $d4 $d5 $d6
    db $d3                                        ; $5936: $d3
    rst $10                                       ; $5937: $d7
    ret c                                         ; $5938: $d8

    reti                                          ; $5939: $d9


    db $d3                                        ; $593a: $d3
    rst $10                                       ; $593b: $d7
    jp c, $07db                                   ; $593c: $da $db $07

    rlca                                          ; $593f: $07
    rlca                                          ; $5940: $07
    rlca                                          ; $5941: $07
    add a                                         ; $5942: $87
    dec b                                         ; $5943: $05
    dec b                                         ; $5944: $05
    dec b                                         ; $5945: $05
    add a                                         ; $5946: $87
    dec b                                         ; $5947: $05
    dec b                                         ; $5948: $05
    dec b                                         ; $5949: $05
    add a                                         ; $594a: $87
    dec b                                         ; $594b: $05
    dec b                                         ; $594c: $05
    dec b                                         ; $594d: $05
    jp nc, $d2d2                                  ; $594e: $d2 $d2 $d2

    jp nc, $dddc                                  ; $5951: $d2 $dc $dd

    sbc $df                                       ; $5954: $de $df
    ldh [$e1], a                                  ; $5956: $e0 $e1
    ld [c], a                                     ; $5958: $e2
    db $e3                                        ; $5959: $e3
    db $e4                                        ; $595a: $e4
    push hl                                       ; $595b: $e5
    and $e7                                       ; $595c: $e6 $e7
    rlca                                          ; $595e: $07
    rlca                                          ; $595f: $07
    rlca                                          ; $5960: $07
    rlca                                          ; $5961: $07
    dec b                                         ; $5962: $05
    dec b                                         ; $5963: $05
    dec b                                         ; $5964: $05
    dec b                                         ; $5965: $05
    dec b                                         ; $5966: $05
    dec b                                         ; $5967: $05
    dec b                                         ; $5968: $05
    ld bc, $0505                                  ; $5969: $01 $05 $05
    dec b                                         ; $596c: $05
    ld [bc], a                                    ; $596d: $02
    jp nc, $d2d2                                  ; $596e: $d2 $d2 $d2

    jp nc, $e9e8                                  ; $5971: $d2 $e8 $e9

    ld [$eceb], a                                 ; $5974: $ea $eb $ec
    db $e3                                        ; $5977: $e3
    db $ed                                        ; $5978: $ed
    db $e3                                        ; $5979: $e3
    xor $ef                                       ; $597a: $ee $ef
    ldh a, [$ef]                                  ; $597c: $f0 $ef
    rlca                                          ; $597e: $07
    rlca                                          ; $597f: $07
    rlca                                          ; $5980: $07
    rlca                                          ; $5981: $07
    dec b                                         ; $5982: $05
    dec b                                         ; $5983: $05
    dec b                                         ; $5984: $05
    dec b                                         ; $5985: $05
    ld bc, $0521                                  ; $5986: $01 $21 $05
    ld bc, $0403                                  ; $5989: $01 $03 $04
    dec b                                         ; $598c: $05
    inc h                                         ; $598d: $24
    jp nc, $d2d2                                  ; $598e: $d2 $d2 $d2

    jp nc, $f2f1                                  ; $5991: $d2 $f1 $f2

    di                                            ; $5994: $f3
    db $f4                                        ; $5995: $f4
    db $ec                                        ; $5996: $ec
    db $e3                                        ; $5997: $e3
    db $ed                                        ; $5998: $ed
    db $e3                                        ; $5999: $e3
    xor $e7                                       ; $599a: $ee $e7
    ldh a, [$e7]                                  ; $599c: $f0 $e7
    rlca                                          ; $599e: $07
    rlca                                          ; $599f: $07
    rlca                                          ; $59a0: $07
    rlca                                          ; $59a1: $07
    dec b                                         ; $59a2: $05
    dec b                                         ; $59a3: $05
    dec b                                         ; $59a4: $05
    dec b                                         ; $59a5: $05
    ld bc, $0521                                  ; $59a6: $01 $21 $05
    ld bc, $2223                                  ; $59a9: $01 $23 $22
    dec b                                         ; $59ac: $05
    ld [bc], a                                    ; $59ad: $02
    db $d3                                        ; $59ae: $d3
    push af                                       ; $59af: $f5
    or $f7                                        ; $59b0: $f6 $f7
    db $d3                                        ; $59b2: $d3
    ld hl, sp-$07                                 ; $59b3: $f8 $f9
    ld a, [$fbd3]                                 ; $59b5: $fa $d3 $fb
    db $fc                                        ; $59b8: $fc
    db $fd                                        ; $59b9: $fd
    db $d3                                        ; $59ba: $d3
    cp $ff                                        ; $59bb: $fe $ff
    nop                                           ; $59bd: $00
    add a                                         ; $59be: $87
    dec b                                         ; $59bf: $05
    dec b                                         ; $59c0: $05
    dec b                                         ; $59c1: $05
    add a                                         ; $59c2: $87
    dec b                                         ; $59c3: $05
    dec b                                         ; $59c4: $05
    dec b                                         ; $59c5: $05
    add a                                         ; $59c6: $87
    dec b                                         ; $59c7: $05
    dec b                                         ; $59c8: $05
    dec b                                         ; $59c9: $05
    add a                                         ; $59ca: $87
    ld bc, $0101                                  ; $59cb: $01 $01 $01
    ld bc, $0302                                  ; $59ce: $01 $02 $03
    inc b                                         ; $59d1: $04
    dec b                                         ; $59d2: $05
    ld b, $07                                     ; $59d3: $06 $07
    ld [$0a09], sp                                ; $59d5: $08 $09 $0a
    dec bc                                        ; $59d8: $0b
    rst $28                                       ; $59d9: $ef
    inc c                                         ; $59da: $0c
    dec c                                         ; $59db: $0d
    ld c, $0f                                     ; $59dc: $0e $0f
    dec b                                         ; $59de: $05
    dec b                                         ; $59df: $05
    dec b                                         ; $59e0: $05
    ld [bc], a                                    ; $59e1: $02
    dec b                                         ; $59e2: $05
    dec b                                         ; $59e3: $05
    dec b                                         ; $59e4: $05
    ld bc, $0005                                  ; $59e5: $01 $05 $00
    dec b                                         ; $59e8: $05
    inc h                                         ; $59e9: $24
    ld bc, $0100                                  ; $59ea: $01 $00 $01
    inc h                                         ; $59ed: $24
    db $10                                        ; $59ee: $10
    rrca                                          ; $59ef: $0f
    ldh a, [rIF]                                  ; $59f0: $f0 $0f
    ld de, $1208                                  ; $59f2: $11 $08 $12
    ld [$e7ee], sp                                ; $59f5: $08 $ee $e7
    inc de                                        ; $59f8: $13
    rst $20                                       ; $59f9: $e7
    db $10                                        ; $59fa: $10
    inc b                                         ; $59fb: $04
    inc d                                         ; $59fc: $14
    inc b                                         ; $59fd: $04
    inc bc                                        ; $59fe: $03
    inc b                                         ; $59ff: $04
    dec b                                         ; $5a00: $05
    inc h                                         ; $5a01: $24
    ld bc, $0521                                  ; $5a02: $01 $21 $05
    ld bc, $2223                                  ; $5a05: $01 $23 $22
    dec b                                         ; $5a08: $05
    ld [bc], a                                    ; $5a09: $02
    inc hl                                        ; $5a0a: $23
    ld [hl+], a                                   ; $5a0b: $22
    ld bc, $1002                                  ; $5a0c: $01 $02 $10
    inc b                                         ; $5a0f: $04
    ldh a, [rDIV]                                 ; $5a10: $f0 $04
    ld de, $1208                                  ; $5a12: $11 $08 $12
    ld [$efee], sp                                ; $5a15: $08 $ee $ef
    inc de                                        ; $5a18: $13
    rst $28                                       ; $5a19: $ef
    db $10                                        ; $5a1a: $10
    rrca                                          ; $5a1b: $0f
    inc d                                         ; $5a1c: $14
    rrca                                          ; $5a1d: $0f
    inc hl                                        ; $5a1e: $23
    ld [hl+], a                                   ; $5a1f: $22
    dec b                                         ; $5a20: $05
    ld [bc], a                                    ; $5a21: $02
    ld bc, $0521                                  ; $5a22: $01 $21 $05
    ld bc, $0403                                  ; $5a25: $01 $03 $04
    dec b                                         ; $5a28: $05
    inc h                                         ; $5a29: $24
    inc bc                                        ; $5a2a: $03
    inc b                                         ; $5a2b: $04
    ld bc, $d324                                  ; $5a2c: $01 $24 $d3
    dec d                                         ; $5a2f: $15
    ld d, $17                                     ; $5a30: $16 $17
    db $d3                                        ; $5a32: $d3
    jr jr_077_5a4e                                ; $5a33: $18 $19

    ld a, [de]                                    ; $5a35: $1a
    db $d3                                        ; $5a36: $d3
    dec de                                        ; $5a37: $1b
    dec de                                        ; $5a38: $1b
    dec de                                        ; $5a39: $1b
    db $d3                                        ; $5a3a: $d3
    inc e                                         ; $5a3b: $1c
    dec e                                         ; $5a3c: $1d
    ld e, $87                                     ; $5a3d: $1e $87
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    add a                                         ; $5a42: $87
    nop                                           ; $5a43: $00
    nop                                           ; $5a44: $00
    nop                                           ; $5a45: $00
    add a                                         ; $5a46: $87
    nop                                           ; $5a47: $00
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    add a                                         ; $5a4a: $87
    ld bc, $0101                                  ; $5a4b: $01 $01 $01

jr_077_5a4e:
    rra                                           ; $5a4e: $1f
    jr nz, jr_077_5a72                            ; $5a4f: $20 $21

    ld [hl+], a                                   ; $5a51: $22
    inc hl                                        ; $5a52: $23
    inc h                                         ; $5a53: $24
    dec h                                         ; $5a54: $25
    ld h, $1b                                     ; $5a55: $26 $1b
    daa                                           ; $5a57: $27
    jr z, @+$2b                                   ; $5a58: $28 $29

    ld a, [hl+]                                   ; $5a5a: $2a
    inc e                                         ; $5a5b: $1c
    dec hl                                        ; $5a5c: $2b
    inc l                                         ; $5a5d: $2c
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    ld bc, $0001                                  ; $5a60: $01 $01 $00
    nop                                           ; $5a63: $00
    ld bc, $0001                                  ; $5a64: $01 $01 $00
    nop                                           ; $5a67: $00
    ld bc, $0101                                  ; $5a68: $01 $01 $01
    ld bc, $0101                                  ; $5a6b: $01 $01 $01
    dec l                                         ; $5a6e: $2d
    ld l, $2f                                     ; $5a6f: $2e $2f
    ld [hl+], a                                   ; $5a71: $22

jr_077_5a72:
    jr nc, @+$33                                  ; $5a72: $30 $31

    dec h                                         ; $5a74: $25
    ld h, $32                                     ; $5a75: $26 $32
    inc sp                                        ; $5a77: $33
    jr z, @+$2b                                   ; $5a78: $28 $29

    inc [hl]                                      ; $5a7a: $34
    dec [hl]                                      ; $5a7b: $35
    dec hl                                        ; $5a7c: $2b
    inc l                                         ; $5a7d: $2c
    ld bc, $0101                                  ; $5a7e: $01 $01 $01
    ld bc, $0101                                  ; $5a81: $01 $01 $01
    ld bc, $0101                                  ; $5a84: $01 $01 $01
    ld bc, $0101                                  ; $5a87: $01 $01 $01
    ld bc, $0101                                  ; $5a8a: $01 $01 $01
    ld bc, $2e2d                                  ; $5a8d: $01 $2d $2e
    cpl                                           ; $5a90: $2f
    ld [hl+], a                                   ; $5a91: $22
    jr nc, jr_077_5ac5                            ; $5a92: $30 $31

    dec h                                         ; $5a94: $25
    ld h, $32                                     ; $5a95: $26 $32
    inc sp                                        ; $5a97: $33
    ld [hl], $29                                  ; $5a98: $36 $29
    inc [hl]                                      ; $5a9a: $34
    scf                                           ; $5a9b: $37
    jr c, jr_077_5ad7                             ; $5a9c: $38 $39

    ld bc, $0101                                  ; $5a9e: $01 $01 $01
    ld bc, $0101                                  ; $5aa1: $01 $01 $01
    ld bc, $0101                                  ; $5aa4: $01 $01 $01
    ld bc, $0101                                  ; $5aa7: $01 $01 $01
    ld bc, $0601                                  ; $5aaa: $01 $01 $06
    ld [bc], a                                    ; $5aad: $02
    db $d3                                        ; $5aae: $d3
    add hl, hl                                    ; $5aaf: $29
    ld a, [hl-]                                   ; $5ab0: $3a
    inc sp                                        ; $5ab1: $33
    db $d3                                        ; $5ab2: $d3
    add hl, sp                                    ; $5ab3: $39
    dec sp                                        ; $5ab4: $3b
    inc a                                         ; $5ab5: $3c
    db $d3                                        ; $5ab6: $d3
    dec a                                         ; $5ab7: $3d
    ld a, $3f                                     ; $5ab8: $3e $3f
    ld b, b                                       ; $5aba: $40
    jp nc, $d2d2                                  ; $5abb: $d2 $d2 $d2

    add a                                         ; $5abe: $87
    ld bc, $0101                                  ; $5abf: $01 $01 $01
    add a                                         ; $5ac2: $87
    ld [bc], a                                    ; $5ac3: $02
    ld [bc], a                                    ; $5ac4: $02

jr_077_5ac5:
    ld b, $87                                     ; $5ac5: $06 $87
    ld [bc], a                                    ; $5ac7: $02
    ld [bc], a                                    ; $5ac8: $02
    inc b                                         ; $5ac9: $04
    add a                                         ; $5aca: $87
    add a                                         ; $5acb: $87
    add a                                         ; $5acc: $87
    add a                                         ; $5acd: $87
    jr z, jr_077_5b11                             ; $5ace: $28 $41

    ld b, d                                       ; $5ad0: $42
    ld b, e                                       ; $5ad1: $43
    dec hl                                        ; $5ad2: $2b
    ld sp, $2625                                  ; $5ad3: $31 $25 $26
    ld b, d                                       ; $5ad6: $42

jr_077_5ad7:
    inc sp                                        ; $5ad7: $33
    jr z, @+$2b                                   ; $5ad8: $28 $29

    jp nc, $d2d2                                  ; $5ada: $d2 $d2 $d2

    jp nc, $0101                                  ; $5add: $d2 $01 $01

    ld bc, $0101                                  ; $5ae0: $01 $01 $01
    ld bc, $0101                                  ; $5ae3: $01 $01 $01
    ld bc, $0101                                  ; $5ae6: $01 $01 $01
    ld bc, $8787                                  ; $5ae9: $01 $87 $87
    add a                                         ; $5aec: $87
    add a                                         ; $5aed: $87
    ld b, h                                       ; $5aee: $44
    ld b, c                                       ; $5aef: $41
    ld b, d                                       ; $5af0: $42
    ld b, e                                       ; $5af1: $43
    jr nc, jr_077_5b25                            ; $5af2: $30 $31

    dec h                                         ; $5af4: $25
    ld h, $32                                     ; $5af5: $26 $32
    inc sp                                        ; $5af7: $33
    jr z, @+$2b                                   ; $5af8: $28 $29

    ld b, l                                       ; $5afa: $45
    dec [hl]                                      ; $5afb: $35
    dec hl                                        ; $5afc: $2b
    inc l                                         ; $5afd: $2c
    ld bc, $0101                                  ; $5afe: $01 $01 $01
    ld bc, $0101                                  ; $5b01: $01 $01 $01
    ld bc, $0101                                  ; $5b04: $01 $01 $01
    ld bc, $0101                                  ; $5b07: $01 $01 $01
    add a                                         ; $5b0a: $87
    ld bc, $0101                                  ; $5b0b: $01 $01 $01
    ld b, h                                       ; $5b0e: $44
    ld b, [hl]                                    ; $5b0f: $46
    ld b, a                                       ; $5b10: $47

jr_077_5b11:
    dec a                                         ; $5b11: $3d
    jr nc, jr_077_5b45                            ; $5b12: $30 $31

    ld c, b                                       ; $5b14: $48
    ld c, c                                       ; $5b15: $49
    ld [hl-], a                                   ; $5b16: $32
    inc sp                                        ; $5b17: $33
    ld c, d                                       ; $5b18: $4a
    ld c, e                                       ; $5b19: $4b
    pop de                                        ; $5b1a: $d1
    jp nc, $d2d2                                  ; $5b1b: $d2 $d2 $d2

    ld bc, $0601                                  ; $5b1e: $01 $01 $06
    ld [bc], a                                    ; $5b21: $02
    ld bc, $0601                                  ; $5b22: $01 $01 $06

jr_077_5b25:
    inc b                                         ; $5b25: $04
    ld bc, $0601                                  ; $5b26: $01 $01 $06
    ld b, $87                                     ; $5b29: $06 $87
    add a                                         ; $5b2b: $87
    add a                                         ; $5b2c: $87
    add a                                         ; $5b2d: $87
    jp nc, $d2d2                                  ; $5b2e: $d2 $d2 $d2

    ld b, l                                       ; $5b31: $45
    ld c, h                                       ; $5b32: $4c
    ld c, l                                       ; $5b33: $4d
    ld c, [hl]                                    ; $5b34: $4e
    db $d3                                        ; $5b35: $d3
    db $ec                                        ; $5b36: $ec
    db $e3                                        ; $5b37: $e3
    ld c, a                                       ; $5b38: $4f
    db $d3                                        ; $5b39: $d3
    xor $ef                                       ; $5b3a: $ee $ef
    ld d, b                                       ; $5b3c: $50
    db $d3                                        ; $5b3d: $d3
    rlca                                          ; $5b3e: $07
    rlca                                          ; $5b3f: $07
    rlca                                          ; $5b40: $07
    rlca                                          ; $5b41: $07
    dec b                                         ; $5b42: $05
    dec b                                         ; $5b43: $05
    dec b                                         ; $5b44: $05

jr_077_5b45:
    add a                                         ; $5b45: $87
    ld bc, $0521                                  ; $5b46: $01 $21 $05
    add a                                         ; $5b49: $87
    inc bc                                        ; $5b4a: $03
    inc b                                         ; $5b4b: $04
    dec b                                         ; $5b4c: $05

jr_077_5b4d:
    add a                                         ; $5b4d: $87
    db $10                                        ; $5b4e: $10
    rrca                                          ; $5b4f: $0f
    ld d, c                                       ; $5b50: $51
    db $d3                                        ; $5b51: $d3
    ld de, $5208                                  ; $5b52: $11 $08 $52
    db $d3                                        ; $5b55: $d3
    xor $e7                                       ; $5b56: $ee $e7
    ld d, e                                       ; $5b58: $53
    db $d3                                        ; $5b59: $d3
    db $10                                        ; $5b5a: $10
    inc b                                         ; $5b5b: $04
    ld d, h                                       ; $5b5c: $54
    db $d3                                        ; $5b5d: $d3
    inc bc                                        ; $5b5e: $03
    inc b                                         ; $5b5f: $04
    dec b                                         ; $5b60: $05
    add a                                         ; $5b61: $87
    ld bc, $0521                                  ; $5b62: $01 $21 $05
    add a                                         ; $5b65: $87
    inc hl                                        ; $5b66: $23
    ld [hl+], a                                   ; $5b67: $22
    dec b                                         ; $5b68: $05
    add a                                         ; $5b69: $87
    inc hl                                        ; $5b6a: $23
    ld [hl+], a                                   ; $5b6b: $22
    ld bc, $2d87                                  ; $5b6c: $01 $87 $2d
    ld l, $55                                     ; $5b6f: $2e $55
    db $d3                                        ; $5b71: $d3
    jr nc, @+$33                                  ; $5b72: $30 $31

    dec h                                         ; $5b74: $25
    db $d3                                        ; $5b75: $d3
    ld a, [hl-]                                   ; $5b76: $3a
    inc sp                                        ; $5b77: $33
    jr z, jr_077_5b4d                             ; $5b78: $28 $d3

    dec sp                                        ; $5b7a: $3b
    inc a                                         ; $5b7b: $3c
    dec hl                                        ; $5b7c: $2b
    db $d3                                        ; $5b7d: $d3
    ld bc, $0101                                  ; $5b7e: $01 $01 $01
    add a                                         ; $5b81: $87
    ld bc, $0101                                  ; $5b82: $01 $01 $01
    add a                                         ; $5b85: $87
    ld bc, $0101                                  ; $5b86: $01 $01 $01
    add a                                         ; $5b89: $87
    ld [bc], a                                    ; $5b8a: $02
    ld b, $01                                     ; $5b8b: $06 $01
    add a                                         ; $5b8d: $87
    ld a, $3f                                     ; $5b8e: $3e $3f
    ld b, d                                       ; $5b90: $42
    db $d3                                        ; $5b91: $d3
    ld d, [hl]                                    ; $5b92: $56
    ld d, a                                       ; $5b93: $57
    ld e, b                                       ; $5b94: $58
    db $d3                                        ; $5b95: $d3
    ld e, c                                       ; $5b96: $59
    ld e, d                                       ; $5b97: $5a
    ld e, e                                       ; $5b98: $5b
    db $d3                                        ; $5b99: $d3
    jp nc, $d2d2                                  ; $5b9a: $d2 $d2 $d2

    ld e, h                                       ; $5b9d: $5c
    ld [bc], a                                    ; $5b9e: $02
    inc b                                         ; $5b9f: $04
    ld bc, $0487                                  ; $5ba0: $01 $87 $04
    inc b                                         ; $5ba3: $04
    ld b, $87                                     ; $5ba4: $06 $87
    ld b, $06                                     ; $5ba6: $06 $06
    ld b, $87                                     ; $5ba8: $06 $87
    add a                                         ; $5baa: $87
    add a                                         ; $5bab: $87
    add a                                         ; $5bac: $87
    add a                                         ; $5bad: $87
    rst $10                                       ; $5bae: $d7
    rst $10                                       ; $5baf: $d7
    rst $10                                       ; $5bb0: $d7
    rst $10                                       ; $5bb1: $d7
    rst $10                                       ; $5bb2: $d7
    rst $10                                       ; $5bb3: $d7
    rst $10                                       ; $5bb4: $d7
    rst $10                                       ; $5bb5: $d7
    rst $10                                       ; $5bb6: $d7
    rst $10                                       ; $5bb7: $d7
    rst $10                                       ; $5bb8: $d7
    rst $10                                       ; $5bb9: $d7
    rst $10                                       ; $5bba: $d7
    rst $10                                       ; $5bbb: $d7
    rst $10                                       ; $5bbc: $d7
    rst $10                                       ; $5bbd: $d7
    add a                                         ; $5bbe: $87
    add a                                         ; $5bbf: $87
    add a                                         ; $5bc0: $87
    add a                                         ; $5bc1: $87
    rlca                                          ; $5bc2: $07
    rlca                                          ; $5bc3: $07
    rlca                                          ; $5bc4: $07
    rlca                                          ; $5bc5: $07
    rlca                                          ; $5bc6: $07
    rlca                                          ; $5bc7: $07
    rlca                                          ; $5bc8: $07
    rlca                                          ; $5bc9: $07
    rlca                                          ; $5bca: $07
    rlca                                          ; $5bcb: $07
    rlca                                          ; $5bcc: $07
    rlca                                          ; $5bcd: $07
    ld b, b                                       ; $5bce: $40
    ld e, l                                       ; $5bcf: $5d
    ld e, l                                       ; $5bd0: $5d
    ld e, l                                       ; $5bd1: $5d
    rst $10                                       ; $5bd2: $d7
    ld e, [hl]                                    ; $5bd3: $5e
    ld e, [hl]                                    ; $5bd4: $5e
    ld e, [hl]                                    ; $5bd5: $5e
    rst $10                                       ; $5bd6: $d7
    rst $10                                       ; $5bd7: $d7
    rst $10                                       ; $5bd8: $d7
    rst $10                                       ; $5bd9: $d7
    rst $10                                       ; $5bda: $d7
    rst $10                                       ; $5bdb: $d7
    rst $10                                       ; $5bdc: $d7
    rst $10                                       ; $5bdd: $d7
    add a                                         ; $5bde: $87
    add a                                         ; $5bdf: $87
    add a                                         ; $5be0: $87
    add a                                         ; $5be1: $87
    add a                                         ; $5be2: $87
    add a                                         ; $5be3: $87
    add a                                         ; $5be4: $87
    add a                                         ; $5be5: $87
    rlca                                          ; $5be6: $07
    rlca                                          ; $5be7: $07
    rlca                                          ; $5be8: $07
    rlca                                          ; $5be9: $07
    rlca                                          ; $5bea: $07
    rlca                                          ; $5beb: $07
    rlca                                          ; $5bec: $07
    rlca                                          ; $5bed: $07
    ld e, h                                       ; $5bee: $5c
    rst $10                                       ; $5bef: $d7
    rst $10                                       ; $5bf0: $d7
    rst $10                                       ; $5bf1: $d7
    rst $10                                       ; $5bf2: $d7
    rst $10                                       ; $5bf3: $d7
    rst $10                                       ; $5bf4: $d7
    rst $10                                       ; $5bf5: $d7
    rst $10                                       ; $5bf6: $d7
    rst $10                                       ; $5bf7: $d7
    rst $10                                       ; $5bf8: $d7
    rst $10                                       ; $5bf9: $d7
    rst $10                                       ; $5bfa: $d7
    rst $10                                       ; $5bfb: $d7
    rst $10                                       ; $5bfc: $d7
    rst $10                                       ; $5bfd: $d7
    add a                                         ; $5bfe: $87
    add a                                         ; $5bff: $87
    add a                                         ; $5c00: $87
    add a                                         ; $5c01: $87
    add a                                         ; $5c02: $87
    rlca                                          ; $5c03: $07
    rlca                                          ; $5c04: $07
    rlca                                          ; $5c05: $07
    rlca                                          ; $5c06: $07
    rlca                                          ; $5c07: $07
    rlca                                          ; $5c08: $07
    rlca                                          ; $5c09: $07
    rlca                                          ; $5c0a: $07
    rlca                                          ; $5c0b: $07
    rlca                                          ; $5c0c: $07
    rlca                                          ; $5c0d: $07
    dec b                                         ; $5c0e: $05
    nop                                           ; $5c0f: $00
    dec b                                         ; $5c10: $05
    nop                                           ; $5c11: $00
    ldh [rSC], a                                  ; $5c12: $e0 $02
    pop de                                        ; $5c14: $d1
    jp nc, $d3d3                                  ; $5c15: $d2 $d3 $d3

    pop de                                        ; $5c18: $d1
    call nc, $d6d5                                ; $5c19: $d4 $d5 $d6
    pop de                                        ; $5c1c: $d1
    call nc, $d8d7                                ; $5c1d: $d4 $d7 $d8
    pop de                                        ; $5c20: $d1
    call nc, $dad9                                ; $5c21: $d4 $d9 $da
    rlca                                          ; $5c24: $07
    rlca                                          ; $5c25: $07
    rlca                                          ; $5c26: $07
    rlca                                          ; $5c27: $07
    add a                                         ; $5c28: $87
    add a                                         ; $5c29: $87
    inc bc                                        ; $5c2a: $03
    inc bc                                        ; $5c2b: $03
    add a                                         ; $5c2c: $87
    add a                                         ; $5c2d: $87
    inc bc                                        ; $5c2e: $03
    inc bc                                        ; $5c2f: $03
    add a                                         ; $5c30: $87
    add a                                         ; $5c31: $87
    inc bc                                        ; $5c32: $03
    inc bc                                        ; $5c33: $03
    db $d3                                        ; $5c34: $d3
    db $d3                                        ; $5c35: $d3
    db $d3                                        ; $5c36: $d3
    db $d3                                        ; $5c37: $d3
    db $db                                        ; $5c38: $db
    call c, $dedd                                 ; $5c39: $dc $dd $de
    rst $18                                       ; $5c3c: $df
    ldh [$e1], a                                  ; $5c3d: $e0 $e1
    ld [c], a                                     ; $5c3f: $e2
    db $e3                                        ; $5c40: $e3
    db $e4                                        ; $5c41: $e4
    push hl                                       ; $5c42: $e5
    and $07                                       ; $5c43: $e6 $07
    rlca                                          ; $5c45: $07
    rlca                                          ; $5c46: $07
    rlca                                          ; $5c47: $07
    inc bc                                        ; $5c48: $03
    inc bc                                        ; $5c49: $03
    inc bc                                        ; $5c4a: $03
    inc bc                                        ; $5c4b: $03
    inc bc                                        ; $5c4c: $03
    inc bc                                        ; $5c4d: $03
    inc bc                                        ; $5c4e: $03
    inc bc                                        ; $5c4f: $03
    inc bc                                        ; $5c50: $03
    inc bc                                        ; $5c51: $03
    inc bc                                        ; $5c52: $03
    inc bc                                        ; $5c53: $03
    db $d3                                        ; $5c54: $d3
    db $d3                                        ; $5c55: $d3
    db $d3                                        ; $5c56: $d3
    db $d3                                        ; $5c57: $d3
    rst $20                                       ; $5c58: $e7
    add sp, -$2b                                  ; $5c59: $e8 $d5
    sub $e9                                       ; $5c5b: $d6 $e9
    ld [$d8d7], a                                 ; $5c5d: $ea $d7 $d8
    db $eb                                        ; $5c60: $eb
    db $ec                                        ; $5c61: $ec
    reti                                          ; $5c62: $d9


    jp c, $0707                                   ; $5c63: $da $07 $07

    rlca                                          ; $5c66: $07
    rlca                                          ; $5c67: $07
    inc bc                                        ; $5c68: $03
    inc bc                                        ; $5c69: $03
    inc bc                                        ; $5c6a: $03
    inc bc                                        ; $5c6b: $03
    inc bc                                        ; $5c6c: $03
    inc bc                                        ; $5c6d: $03
    inc bc                                        ; $5c6e: $03
    inc bc                                        ; $5c6f: $03
    inc bc                                        ; $5c70: $03
    inc bc                                        ; $5c71: $03
    inc bc                                        ; $5c72: $03
    inc bc                                        ; $5c73: $03
    db $d3                                        ; $5c74: $d3
    db $d3                                        ; $5c75: $d3
    db $d3                                        ; $5c76: $d3
    db $d3                                        ; $5c77: $d3
    db $db                                        ; $5c78: $db
    db $ed                                        ; $5c79: $ed
    push de                                       ; $5c7a: $d5
    sub $df                                       ; $5c7b: $d6 $df
    xor $ef                                       ; $5c7d: $ee $ef
    ldh a, [$f1]                                  ; $5c7f: $f0 $f1
    ld a, [c]                                     ; $5c81: $f2
    di                                            ; $5c82: $f3
    db $f4                                        ; $5c83: $f4
    rlca                                          ; $5c84: $07
    rlca                                          ; $5c85: $07
    rlca                                          ; $5c86: $07
    rlca                                          ; $5c87: $07
    inc bc                                        ; $5c88: $03
    inc bc                                        ; $5c89: $03
    inc bc                                        ; $5c8a: $03
    inc bc                                        ; $5c8b: $03
    inc bc                                        ; $5c8c: $03
    inc bc                                        ; $5c8d: $03
    inc bc                                        ; $5c8e: $03
    inc bc                                        ; $5c8f: $03
    inc bc                                        ; $5c90: $03
    inc bc                                        ; $5c91: $03
    inc bc                                        ; $5c92: $03
    inc bc                                        ; $5c93: $03
    pop de                                        ; $5c94: $d1
    call nc, $f6f5                                ; $5c95: $d4 $f5 $f6
    pop de                                        ; $5c98: $d1
    call nc, $f8f7                                ; $5c99: $d4 $f7 $f8
    pop de                                        ; $5c9c: $d1
    call nc, $faf9                                ; $5c9d: $d4 $f9 $fa
    pop de                                        ; $5ca0: $d1
    call nc, $fcfb                                ; $5ca1: $d4 $fb $fc
    add a                                         ; $5ca4: $87
    add a                                         ; $5ca5: $87
    inc bc                                        ; $5ca6: $03
    inc bc                                        ; $5ca7: $03
    add a                                         ; $5ca8: $87
    add a                                         ; $5ca9: $87
    inc b                                         ; $5caa: $04
    inc b                                         ; $5cab: $04
    add a                                         ; $5cac: $87
    add a                                         ; $5cad: $87
    inc b                                         ; $5cae: $04
    inc b                                         ; $5caf: $04
    add a                                         ; $5cb0: $87
    add a                                         ; $5cb1: $87
    ld bc, $fd01                                  ; $5cb2: $01 $01 $fd
    cp $ff                                        ; $5cb5: $fe $ff
    nop                                           ; $5cb7: $00
    ld bc, $0302                                  ; $5cb8: $01 $02 $03
    ld bc, $0504                                  ; $5cbb: $01 $04 $05
    ld b, $07                                     ; $5cbe: $06 $07
    ld [$0a09], sp                                ; $5cc0: $08 $09 $0a
    dec bc                                        ; $5cc3: $0b
    inc bc                                        ; $5cc4: $03
    inc bc                                        ; $5cc5: $03
    inc bc                                        ; $5cc6: $03
    inc bc                                        ; $5cc7: $03
    inc bc                                        ; $5cc8: $03
    inc b                                         ; $5cc9: $04
    inc b                                         ; $5cca: $04
    inc bc                                        ; $5ccb: $03
    inc bc                                        ; $5ccc: $03
    inc b                                         ; $5ccd: $04
    inc b                                         ; $5cce: $04
    inc bc                                        ; $5ccf: $03
    ld [bc], a                                    ; $5cd0: $02
    ld bc, $0201                                  ; $5cd1: $01 $01 $02
    inc c                                         ; $5cd4: $0c
    cp $f5                                        ; $5cd5: $fe $f5
    or $f7                                        ; $5cd7: $f6 $f7
    ld hl, sp-$03                                 ; $5cd9: $f8 $fd
    ld [bc], a                                    ; $5cdb: $02
    ld sp, hl                                     ; $5cdc: $f9
    ld a, [$050d]                                 ; $5cdd: $fa $0d $05
    ld c, $fc                                     ; $5ce0: $0e $fc
    rrca                                          ; $5ce2: $0f
    add hl, bc                                    ; $5ce3: $09
    inc bc                                        ; $5ce4: $03
    inc bc                                        ; $5ce5: $03
    inc bc                                        ; $5ce6: $03
    inc bc                                        ; $5ce7: $03
    inc b                                         ; $5ce8: $04
    inc b                                         ; $5ce9: $04
    ld b, e                                       ; $5cea: $43
    inc b                                         ; $5ceb: $04
    inc b                                         ; $5cec: $04
    inc b                                         ; $5ced: $04
    inc bc                                        ; $5cee: $03
    inc b                                         ; $5cef: $04
    ld bc, $0201                                  ; $5cf0: $01 $01 $02
    ld bc, $10fd                                  ; $5cf3: $01 $fd $10
    ld de, $0312                                  ; $5cf6: $11 $12 $03
    ld bc, $1413                                  ; $5cf9: $01 $13 $14
    ld b, $15                                     ; $5cfc: $06 $15
    dec c                                         ; $5cfe: $0d
    ld d, $0a                                     ; $5cff: $16 $0a
    rla                                           ; $5d01: $17
    rrca                                          ; $5d02: $0f
    dec bc                                        ; $5d03: $0b
    inc bc                                        ; $5d04: $03
    inc bc                                        ; $5d05: $03
    inc bc                                        ; $5d06: $03
    inc bc                                        ; $5d07: $03
    inc b                                         ; $5d08: $04
    inc bc                                        ; $5d09: $03
    inc bc                                        ; $5d0a: $03
    inc bc                                        ; $5d0b: $03
    inc b                                         ; $5d0c: $04
    inc bc                                        ; $5d0d: $03
    inc bc                                        ; $5d0e: $03
    inc bc                                        ; $5d0f: $03
    ld bc, $0202                                  ; $5d10: $01 $02 $02
    ld [bc], a                                    ; $5d13: $02
    pop de                                        ; $5d14: $d1
    call nc, $1918                                ; $5d15: $d4 $18 $19
    pop de                                        ; $5d18: $d1
    call nc, Call_000_1b1a                        ; $5d19: $d4 $1a $1b
    pop de                                        ; $5d1c: $d1
    call nc, Call_000_1d1c                        ; $5d1d: $d4 $1c $1d
    pop de                                        ; $5d20: $d1
    call nc, $1f1e                                ; $5d21: $d4 $1e $1f
    add a                                         ; $5d24: $87
    add a                                         ; $5d25: $87
    ld bc, $8701                                  ; $5d26: $01 $01 $87
    add a                                         ; $5d29: $87
    ld bc, $8701                                  ; $5d2a: $01 $01 $87
    add a                                         ; $5d2d: $87
    ld bc, $8701                                  ; $5d2e: $01 $01 $87
    add a                                         ; $5d31: $87
    ld [bc], a                                    ; $5d32: $02
    ld [bc], a                                    ; $5d33: $02
    jr nz, @+$23                                  ; $5d34: $20 $21

    ld [hl+], a                                   ; $5d36: $22
    inc hl                                        ; $5d37: $23
    inc h                                         ; $5d38: $24
    dec h                                         ; $5d39: $25
    ld h, $27                                     ; $5d3a: $26 $27
    jr z, @+$2b                                   ; $5d3c: $28 $29

    ld a, [hl+]                                   ; $5d3e: $2a
    dec hl                                        ; $5d3f: $2b
    inc l                                         ; $5d40: $2c
    dec l                                         ; $5d41: $2d
    ld l, $2f                                     ; $5d42: $2e $2f
    ld [bc], a                                    ; $5d44: $02
    ld bc, $0201                                  ; $5d45: $01 $01 $02
    ld [bc], a                                    ; $5d48: $02
    ld bc, $0201                                  ; $5d49: $01 $01 $02
    ld [bc], a                                    ; $5d4c: $02
    ld bc, $0201                                  ; $5d4d: $01 $01 $02
    ld [bc], a                                    ; $5d50: $02
    ld [bc], a                                    ; $5d51: $02
    ld [bc], a                                    ; $5d52: $02
    ld [bc], a                                    ; $5d53: $02
    jr jr_077_5d6f                                ; $5d54: $18 $19

    jr nc, @+$33                                  ; $5d56: $30 $31

    ld a, [de]                                    ; $5d58: $1a
    dec de                                        ; $5d59: $1b
    ld [hl-], a                                   ; $5d5a: $32
    dec h                                         ; $5d5b: $25
    inc sp                                        ; $5d5c: $33
    dec e                                         ; $5d5d: $1d
    inc [hl]                                      ; $5d5e: $34
    add hl, hl                                    ; $5d5f: $29
    dec [hl]                                      ; $5d60: $35
    ld [hl], $37                                  ; $5d61: $36 $37
    jr c, @+$03                                   ; $5d63: $38 $01

    ld bc, $0102                                  ; $5d65: $01 $02 $01
    ld bc, $0201                                  ; $5d68: $01 $01 $02
    ld bc, $0101                                  ; $5d6b: $01 $01 $01
    ld [bc], a                                    ; $5d6e: $02

jr_077_5d6f:
    ld bc, $0202                                  ; $5d6f: $01 $02 $02
    ld [bc], a                                    ; $5d72: $02
    ld [bc], a                                    ; $5d73: $02
    ld [hl+], a                                   ; $5d74: $22
    add hl, sp                                    ; $5d75: $39
    ld a, [hl-]                                   ; $5d76: $3a
    dec sp                                        ; $5d77: $3b
    ld h, $3c                                     ; $5d78: $26 $3c
    dec a                                         ; $5d7a: $3d
    ld a, $2a                                     ; $5d7b: $3e $2a
    ccf                                           ; $5d7d: $3f
    ld b, b                                       ; $5d7e: $40
    ld b, c                                       ; $5d7f: $41
    ld b, d                                       ; $5d80: $42
    ld b, e                                       ; $5d81: $43
    ld b, h                                       ; $5d82: $44
    ld b, l                                       ; $5d83: $45
    ld bc, $0502                                  ; $5d84: $01 $02 $05
    dec b                                         ; $5d87: $05
    ld bc, $0502                                  ; $5d88: $01 $02 $05
    dec b                                         ; $5d8b: $05
    ld bc, $0502                                  ; $5d8c: $01 $02 $05
    dec b                                         ; $5d8f: $05
    ld [bc], a                                    ; $5d90: $02
    ld [bc], a                                    ; $5d91: $02
    ld [bc], a                                    ; $5d92: $02
    ld [bc], a                                    ; $5d93: $02
    pop de                                        ; $5d94: $d1
    call nc, Call_000_0302                        ; $5d95: $d4 $02 $03
    pop de                                        ; $5d98: $d1
    call nc, $0605                                ; $5d99: $d4 $05 $06
    pop de                                        ; $5d9c: $d1
    call nc, $0a09                                ; $5d9d: $d4 $09 $0a
    pop de                                        ; $5da0: $d1
    ld b, [hl]                                    ; $5da1: $46
    db $d3                                        ; $5da2: $d3
    db $d3                                        ; $5da3: $d3
    add a                                         ; $5da4: $87
    add a                                         ; $5da5: $87
    ld bc, $8701                                  ; $5da6: $01 $01 $87
    add a                                         ; $5da9: $87
    ld bc, $8701                                  ; $5daa: $01 $01 $87

jr_077_5dad:
    add a                                         ; $5dad: $87
    ld bc, $8701                                  ; $5dae: $01 $01 $87
    add a                                         ; $5db1: $87
    add a                                         ; $5db2: $87
    add a                                         ; $5db3: $87
    jr nz, jr_077_5dad                            ; $5db4: $20 $f7

    ld hl, sp+$23                                 ; $5db6: $f8 $23
    inc h                                         ; $5db8: $24
    ld sp, hl                                     ; $5db9: $f9
    ld a, [$2827]                                 ; $5dba: $fa $27 $28
    ei                                            ; $5dbd: $fb
    db $fc                                        ; $5dbe: $fc
    dec hl                                        ; $5dbf: $2b
    db $d3                                        ; $5dc0: $d3
    db $d3                                        ; $5dc1: $d3
    db $d3                                        ; $5dc2: $d3
    db $d3                                        ; $5dc3: $d3
    ld [bc], a                                    ; $5dc4: $02
    ld bc, $0201                                  ; $5dc5: $01 $01 $02
    ld [bc], a                                    ; $5dc8: $02
    ld bc, $0201                                  ; $5dc9: $01 $01 $02
    ld [bc], a                                    ; $5dcc: $02
    ld bc, $0201                                  ; $5dcd: $01 $01 $02
    add a                                         ; $5dd0: $87
    add a                                         ; $5dd1: $87
    add a                                         ; $5dd2: $87
    add a                                         ; $5dd3: $87
    jr nz, jr_077_5e0f                            ; $5dd4: $20 $39

    jr nc, jr_077_5dfb                            ; $5dd6: $30 $23

    inc h                                         ; $5dd8: $24
    inc a                                         ; $5dd9: $3c
    ld [hl-], a                                   ; $5dda: $32
    daa                                           ; $5ddb: $27
    jr z, jr_077_5e1d                             ; $5ddc: $28 $3f

    inc [hl]                                      ; $5dde: $34
    dec hl                                        ; $5ddf: $2b
    db $d3                                        ; $5de0: $d3
    db $d3                                        ; $5de1: $d3
    db $d3                                        ; $5de2: $d3
    db $d3                                        ; $5de3: $d3
    ld [bc], a                                    ; $5de4: $02
    ld [bc], a                                    ; $5de5: $02
    ld [bc], a                                    ; $5de6: $02
    ld [bc], a                                    ; $5de7: $02
    ld [bc], a                                    ; $5de8: $02
    ld [bc], a                                    ; $5de9: $02
    ld [bc], a                                    ; $5dea: $02
    ld [bc], a                                    ; $5deb: $02
    ld [bc], a                                    ; $5dec: $02
    ld [bc], a                                    ; $5ded: $02
    ld [bc], a                                    ; $5dee: $02
    ld [bc], a                                    ; $5def: $02
    add a                                         ; $5df0: $87
    add a                                         ; $5df1: $87
    add a                                         ; $5df2: $87
    add a                                         ; $5df3: $87
    jr nz, jr_077_5e2f                            ; $5df4: $20 $39

    jr nc, @+$25                                  ; $5df6: $30 $23

    inc h                                         ; $5df8: $24
    inc a                                         ; $5df9: $3c
    ld [hl-], a                                   ; $5dfa: $32

jr_077_5dfb:
    daa                                           ; $5dfb: $27
    jr z, jr_077_5e3d                             ; $5dfc: $28 $3f

    inc [hl]                                      ; $5dfe: $34
    dec hl                                        ; $5dff: $2b
    ld b, a                                       ; $5e00: $47
    ld b, e                                       ; $5e01: $43
    scf                                           ; $5e02: $37
    cpl                                           ; $5e03: $2f
    ld [bc], a                                    ; $5e04: $02
    ld [bc], a                                    ; $5e05: $02
    ld [bc], a                                    ; $5e06: $02
    ld [bc], a                                    ; $5e07: $02
    ld [bc], a                                    ; $5e08: $02
    ld [bc], a                                    ; $5e09: $02
    ld [bc], a                                    ; $5e0a: $02
    ld [bc], a                                    ; $5e0b: $02
    ld [bc], a                                    ; $5e0c: $02
    ld [bc], a                                    ; $5e0d: $02
    ld [bc], a                                    ; $5e0e: $02

jr_077_5e0f:
    ld [bc], a                                    ; $5e0f: $02
    add a                                         ; $5e10: $87
    ld [bc], a                                    ; $5e11: $02
    ld [bc], a                                    ; $5e12: $02
    ld [bc], a                                    ; $5e13: $02
    db $d3                                        ; $5e14: $d3
    db $d3                                        ; $5e15: $d3
    ld b, a                                       ; $5e16: $47
    pop de                                        ; $5e17: $d1
    db $db                                        ; $5e18: $db
    db $ed                                        ; $5e19: $ed
    call nc, $48d1                                ; $5e1a: $d4 $d1 $48

jr_077_5e1d:
    ld [$d1d4], a                                 ; $5e1d: $ea $d4 $d1
    ld c, c                                       ; $5e20: $49
    db $ec                                        ; $5e21: $ec
    call nc, Call_000_07d1                        ; $5e22: $d4 $d1 $07
    rlca                                          ; $5e25: $07
    rlca                                          ; $5e26: $07
    rlca                                          ; $5e27: $07
    inc bc                                        ; $5e28: $03
    inc bc                                        ; $5e29: $03
    add a                                         ; $5e2a: $87
    add a                                         ; $5e2b: $87
    inc bc                                        ; $5e2c: $03
    inc bc                                        ; $5e2d: $03
    add a                                         ; $5e2e: $87

jr_077_5e2f:
    add a                                         ; $5e2f: $87
    inc bc                                        ; $5e30: $03
    inc bc                                        ; $5e31: $03
    add a                                         ; $5e32: $87
    add a                                         ; $5e33: $87
    ld c, d                                       ; $5e34: $4a
    cp $d4                                        ; $5e35: $fe $d4
    pop de                                        ; $5e37: $d1
    ld c, e                                       ; $5e38: $4b
    ld c, h                                       ; $5e39: $4c
    call nc, $4dd1                                ; $5e3a: $d4 $d1 $4d

jr_077_5e3d:
    ld c, [hl]                                    ; $5e3d: $4e
    call nc, $08d1                                ; $5e3e: $d4 $d1 $08
    rla                                           ; $5e41: $17
    call nc, Call_000_03d1                        ; $5e42: $d4 $d1 $03
    inc bc                                        ; $5e45: $03
    add a                                         ; $5e46: $87
    add a                                         ; $5e47: $87
    inc bc                                        ; $5e48: $03
    inc bc                                        ; $5e49: $03
    add a                                         ; $5e4a: $87
    add a                                         ; $5e4b: $87
    inc bc                                        ; $5e4c: $03
    inc bc                                        ; $5e4d: $03
    add a                                         ; $5e4e: $87
    add a                                         ; $5e4f: $87
    ld [bc], a                                    ; $5e50: $02
    ld [bc], a                                    ; $5e51: $02
    add a                                         ; $5e52: $87
    add a                                         ; $5e53: $87
    ld c, a                                       ; $5e54: $4f
    ld d, b                                       ; $5e55: $50
    call nc, Call_077_51d1                        ; $5e56: $d4 $d1 $51
    ld d, d                                       ; $5e59: $52
    call nc, Call_077_41d1                        ; $5e5a: $d4 $d1 $41
    ld b, c                                       ; $5e5d: $41
    call nc, $08d1                                ; $5e5e: $d4 $d1 $08
    ld d, e                                       ; $5e61: $53
    call nc, Call_000_05d1                        ; $5e62: $d4 $d1 $05
    dec b                                         ; $5e65: $05
    add a                                         ; $5e66: $87
    add a                                         ; $5e67: $87
    dec b                                         ; $5e68: $05
    dec b                                         ; $5e69: $05
    add a                                         ; $5e6a: $87
    add a                                         ; $5e6b: $87
    dec b                                         ; $5e6c: $05
    dec b                                         ; $5e6d: $05
    add a                                         ; $5e6e: $87
    add a                                         ; $5e6f: $87
    ld [bc], a                                    ; $5e70: $02
    ld [bc], a                                    ; $5e71: $02
    add a                                         ; $5e72: $87
    add a                                         ; $5e73: $87
    jr nz, jr_077_5eaf                            ; $5e74: $20 $39

    call nc, $24d1                                ; $5e76: $d4 $d1 $24
    inc a                                         ; $5e79: $3c
    call nc, $28d1                                ; $5e7a: $d4 $d1 $28
    ccf                                           ; $5e7d: $3f
    call nc, $d2d1                                ; $5e7e: $d4 $d1 $d2
    db $d3                                        ; $5e81: $d3
    ld d, h                                       ; $5e82: $54
    pop de                                        ; $5e83: $d1
    ld [bc], a                                    ; $5e84: $02
    ld [bc], a                                    ; $5e85: $02
    add a                                         ; $5e86: $87
    add a                                         ; $5e87: $87
    ld [bc], a                                    ; $5e88: $02
    ld [bc], a                                    ; $5e89: $02
    add a                                         ; $5e8a: $87
    add a                                         ; $5e8b: $87
    ld [bc], a                                    ; $5e8c: $02
    ld [bc], a                                    ; $5e8d: $02
    add a                                         ; $5e8e: $87
    add a                                         ; $5e8f: $87
    add a                                         ; $5e90: $87
    add a                                         ; $5e91: $87
    add a                                         ; $5e92: $87
    add a                                         ; $5e93: $87
    pop de                                        ; $5e94: $d1
    pop de                                        ; $5e95: $d1
    pop de                                        ; $5e96: $d1
    pop de                                        ; $5e97: $d1
    pop de                                        ; $5e98: $d1
    pop de                                        ; $5e99: $d1
    pop de                                        ; $5e9a: $d1
    pop de                                        ; $5e9b: $d1
    pop de                                        ; $5e9c: $d1
    pop de                                        ; $5e9d: $d1
    pop de                                        ; $5e9e: $d1
    pop de                                        ; $5e9f: $d1
    pop de                                        ; $5ea0: $d1
    pop de                                        ; $5ea1: $d1
    pop de                                        ; $5ea2: $d1
    pop de                                        ; $5ea3: $d1
    add a                                         ; $5ea4: $87
    add a                                         ; $5ea5: $87
    add a                                         ; $5ea6: $87
    add a                                         ; $5ea7: $87
    add a                                         ; $5ea8: $87
    add a                                         ; $5ea9: $87
    add a                                         ; $5eaa: $87
    add a                                         ; $5eab: $87
    add a                                         ; $5eac: $87
    add a                                         ; $5ead: $87
    add a                                         ; $5eae: $87

jr_077_5eaf:
    add a                                         ; $5eaf: $87
    add a                                         ; $5eb0: $87
    add a                                         ; $5eb1: $87
    add a                                         ; $5eb2: $87
    add a                                         ; $5eb3: $87
    ld b, [hl]                                    ; $5eb4: $46
    ld d, l                                       ; $5eb5: $55
    ld d, l                                       ; $5eb6: $55
    ld d, l                                       ; $5eb7: $55
    pop de                                        ; $5eb8: $d1
    ld d, [hl]                                    ; $5eb9: $56
    ld d, [hl]                                    ; $5eba: $56
    ld d, [hl]                                    ; $5ebb: $56
    pop de                                        ; $5ebc: $d1
    pop de                                        ; $5ebd: $d1
    pop de                                        ; $5ebe: $d1
    pop de                                        ; $5ebf: $d1
    pop de                                        ; $5ec0: $d1
    pop de                                        ; $5ec1: $d1
    pop de                                        ; $5ec2: $d1
    pop de                                        ; $5ec3: $d1
    add a                                         ; $5ec4: $87
    add a                                         ; $5ec5: $87
    add a                                         ; $5ec6: $87
    add a                                         ; $5ec7: $87
    add a                                         ; $5ec8: $87
    add a                                         ; $5ec9: $87
    add a                                         ; $5eca: $87
    add a                                         ; $5ecb: $87
    add a                                         ; $5ecc: $87
    add a                                         ; $5ecd: $87
    add a                                         ; $5ece: $87
    add a                                         ; $5ecf: $87
    add a                                         ; $5ed0: $87
    add a                                         ; $5ed1: $87
    add a                                         ; $5ed2: $87
    add a                                         ; $5ed3: $87
    ld d, h                                       ; $5ed4: $54
    pop de                                        ; $5ed5: $d1
    pop de                                        ; $5ed6: $d1
    pop de                                        ; $5ed7: $d1
    pop de                                        ; $5ed8: $d1
    pop de                                        ; $5ed9: $d1
    pop de                                        ; $5eda: $d1
    pop de                                        ; $5edb: $d1
    pop de                                        ; $5edc: $d1
    pop de                                        ; $5edd: $d1
    pop de                                        ; $5ede: $d1
    pop de                                        ; $5edf: $d1
    pop de                                        ; $5ee0: $d1
    pop de                                        ; $5ee1: $d1
    pop de                                        ; $5ee2: $d1
    pop de                                        ; $5ee3: $d1
    add a                                         ; $5ee4: $87
    add a                                         ; $5ee5: $87
    add a                                         ; $5ee6: $87
    add a                                         ; $5ee7: $87
    add a                                         ; $5ee8: $87
    add a                                         ; $5ee9: $87
    add a                                         ; $5eea: $87
    add a                                         ; $5eeb: $87
    add a                                         ; $5eec: $87
    add a                                         ; $5eed: $87
    add a                                         ; $5eee: $87
    add a                                         ; $5eef: $87
    add a                                         ; $5ef0: $87
    add a                                         ; $5ef1: $87
    add a                                         ; $5ef2: $87
    add a                                         ; $5ef3: $87
    dec b                                         ; $5ef4: $05
    nop                                           ; $5ef5: $00
    dec b                                         ; $5ef6: $05
    nop                                           ; $5ef7: $00
    ret nz                                        ; $5ef8: $c0

    ld [bc], a                                    ; $5ef9: $02
    pop de                                        ; $5efa: $d1
    jp nc, $d3d3                                  ; $5efb: $d2 $d3 $d3

    pop de                                        ; $5efe: $d1
    call nc, $d6d5                                ; $5eff: $d4 $d5 $d6
    pop de                                        ; $5f02: $d1
    call nc, $d8d7                                ; $5f03: $d4 $d7 $d8
    pop de                                        ; $5f06: $d1
    call nc, $d8d7                                ; $5f07: $d4 $d7 $d8
    rlca                                          ; $5f0a: $07
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    nop                                           ; $5f0d: $00
    add a                                         ; $5f0e: $87
    add b                                         ; $5f0f: $80
    inc bc                                        ; $5f10: $03
    inc bc                                        ; $5f11: $03
    add a                                         ; $5f12: $87
    add b                                         ; $5f13: $80
    inc bc                                        ; $5f14: $03
    inc bc                                        ; $5f15: $03
    add a                                         ; $5f16: $87
    add b                                         ; $5f17: $80
    inc bc                                        ; $5f18: $03
    inc bc                                        ; $5f19: $03
    db $d3                                        ; $5f1a: $d3
    db $d3                                        ; $5f1b: $d3
    db $d3                                        ; $5f1c: $d3
    db $d3                                        ; $5f1d: $d3
    push de                                       ; $5f1e: $d5
    sub $d5                                       ; $5f1f: $d6 $d5
    sub $d9                                       ; $5f21: $d6 $d9
    jp c, $dcdb                                   ; $5f23: $da $db $dc

    db $dd                                        ; $5f26: $dd
    sbc $df                                       ; $5f27: $de $df
    ldh [rP1], a                                  ; $5f29: $e0 $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    inc bc                                        ; $5f2e: $03
    inc bc                                        ; $5f2f: $03
    inc bc                                        ; $5f30: $03
    inc bc                                        ; $5f31: $03
    inc b                                         ; $5f32: $04
    inc b                                         ; $5f33: $04
    inc b                                         ; $5f34: $04
    inc bc                                        ; $5f35: $03
    inc b                                         ; $5f36: $04
    inc b                                         ; $5f37: $04
    inc b                                         ; $5f38: $04
    inc bc                                        ; $5f39: $03
    db $d3                                        ; $5f3a: $d3
    db $d3                                        ; $5f3b: $d3
    db $d3                                        ; $5f3c: $d3
    db $d3                                        ; $5f3d: $d3
    push de                                       ; $5f3e: $d5
    sub $d5                                       ; $5f3f: $d6 $d5
    sub $d7                                       ; $5f41: $d6 $d7
    ret c                                         ; $5f43: $d8

    rst $10                                       ; $5f44: $d7
    ret c                                         ; $5f45: $d8

    rst $10                                       ; $5f46: $d7
    ret c                                         ; $5f47: $d8

    rst $10                                       ; $5f48: $d7
    ret c                                         ; $5f49: $d8

    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    inc bc                                        ; $5f4e: $03
    inc bc                                        ; $5f4f: $03
    inc bc                                        ; $5f50: $03
    inc bc                                        ; $5f51: $03
    inc bc                                        ; $5f52: $03
    inc bc                                        ; $5f53: $03
    inc bc                                        ; $5f54: $03
    inc bc                                        ; $5f55: $03
    inc bc                                        ; $5f56: $03
    inc bc                                        ; $5f57: $03
    inc bc                                        ; $5f58: $03
    inc bc                                        ; $5f59: $03
    db $d3                                        ; $5f5a: $d3
    db $d3                                        ; $5f5b: $d3
    db $d3                                        ; $5f5c: $d3
    db $d3                                        ; $5f5d: $d3
    push de                                       ; $5f5e: $d5
    sub $d5                                       ; $5f5f: $d6 $d5
    sub $d7                                       ; $5f61: $d6 $d7
    pop hl                                        ; $5f63: $e1
    ld [c], a                                     ; $5f64: $e2
    db $e3                                        ; $5f65: $e3
    rst $10                                       ; $5f66: $d7
    db $e4                                        ; $5f67: $e4
    push hl                                       ; $5f68: $e5
    and $00                                       ; $5f69: $e6 $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    inc bc                                        ; $5f6e: $03
    inc bc                                        ; $5f6f: $03
    inc bc                                        ; $5f70: $03
    inc bc                                        ; $5f71: $03
    inc bc                                        ; $5f72: $03
    dec b                                         ; $5f73: $05
    dec b                                         ; $5f74: $05
    dec b                                         ; $5f75: $05
    inc bc                                        ; $5f76: $03
    dec b                                         ; $5f77: $05
    dec b                                         ; $5f78: $05
    dec b                                         ; $5f79: $05
    pop de                                        ; $5f7a: $d1
    call nc, $d8d7                                ; $5f7b: $d4 $d7 $d8
    pop de                                        ; $5f7e: $d1
    call nc, $d8d7                                ; $5f7f: $d4 $d7 $d8
    pop de                                        ; $5f82: $d1
    call nc, $e7e7                                ; $5f83: $d4 $e7 $e7
    pop de                                        ; $5f86: $d1
    call nc, $e9e8                                ; $5f87: $d4 $e8 $e9
    add a                                         ; $5f8a: $87
    add b                                         ; $5f8b: $80
    inc bc                                        ; $5f8c: $03
    inc bc                                        ; $5f8d: $03
    add a                                         ; $5f8e: $87
    add b                                         ; $5f8f: $80
    inc bc                                        ; $5f90: $03
    inc bc                                        ; $5f91: $03
    add a                                         ; $5f92: $87
    add b                                         ; $5f93: $80
    ld [bc], a                                    ; $5f94: $02
    ld [bc], a                                    ; $5f95: $02
    add a                                         ; $5f96: $87
    add b                                         ; $5f97: $80
    ld [hl+], a                                   ; $5f98: $22
    ld [hl+], a                                   ; $5f99: $22
    ld [$eceb], a                                 ; $5f9a: $ea $eb $ec
    ldh [$ed], a                                  ; $5f9d: $e0 $ed
    xor $ed                                       ; $5f9f: $ee $ed
    rst $28                                       ; $5fa1: $ef
    rst $20                                       ; $5fa2: $e7
    ldh a, [$f1]                                  ; $5fa3: $f0 $f1
    ld a, [c]                                     ; $5fa5: $f2
    jp hl                                         ; $5fa6: $e9


    di                                            ; $5fa7: $f3
    db $f4                                        ; $5fa8: $f4
    push af                                       ; $5fa9: $f5
    inc b                                         ; $5faa: $04
    inc b                                         ; $5fab: $04
    inc b                                         ; $5fac: $04
    inc bc                                        ; $5fad: $03
    inc bc                                        ; $5fae: $03
    inc bc                                        ; $5faf: $03
    inc bc                                        ; $5fb0: $03
    inc bc                                        ; $5fb1: $03
    ld [bc], a                                    ; $5fb2: $02
    ld [bc], a                                    ; $5fb3: $02
    inc bc                                        ; $5fb4: $03
    inc bc                                        ; $5fb5: $03
    ld [hl+], a                                   ; $5fb6: $22
    ld [bc], a                                    ; $5fb7: $02
    ld bc, $d701                                  ; $5fb8: $01 $01 $d7
    ret c                                         ; $5fbb: $d8

    rst $10                                       ; $5fbc: $d7
    ret c                                         ; $5fbd: $d8

    rst $10                                       ; $5fbe: $d7
    ret c                                         ; $5fbf: $d8

    rst $10                                       ; $5fc0: $d7
    ret c                                         ; $5fc1: $d8

    pop af                                        ; $5fc2: $f1
    ld a, [c]                                     ; $5fc3: $f2
    pop af                                        ; $5fc4: $f1
    ld a, [c]                                     ; $5fc5: $f2
    or $f7                                        ; $5fc6: $f6 $f7
    db $f4                                        ; $5fc8: $f4
    push af                                       ; $5fc9: $f5
    inc bc                                        ; $5fca: $03
    inc bc                                        ; $5fcb: $03
    inc bc                                        ; $5fcc: $03
    inc bc                                        ; $5fcd: $03
    inc bc                                        ; $5fce: $03
    inc bc                                        ; $5fcf: $03
    inc bc                                        ; $5fd0: $03

Call_077_5fd1:
    inc bc                                        ; $5fd1: $03
    inc bc                                        ; $5fd2: $03
    inc bc                                        ; $5fd3: $03
    inc bc                                        ; $5fd4: $03
    inc bc                                        ; $5fd5: $03
    ld bc, $0101                                  ; $5fd6: $01 $01 $01
    ld bc, $f8d7                                  ; $5fd9: $01 $d7 $f8
    ld sp, hl                                     ; $5fdc: $f9
    ld a, [$eed7]                                 ; $5fdd: $fa $d7 $ee
    db $ed                                        ; $5fe0: $ed
    xor $f1                                       ; $5fe1: $ee $f1
    ld a, [c]                                     ; $5fe3: $f2
    ldh a, [$e7]                                  ; $5fe4: $f0 $e7
    or $f7                                        ; $5fe6: $f6 $f7
    di                                            ; $5fe8: $f3
    jp hl                                         ; $5fe9: $e9


    inc bc                                        ; $5fea: $03
    dec b                                         ; $5feb: $05
    dec b                                         ; $5fec: $05
    dec b                                         ; $5fed: $05
    inc bc                                        ; $5fee: $03
    inc bc                                        ; $5fef: $03
    inc bc                                        ; $5ff0: $03
    inc bc                                        ; $5ff1: $03
    inc bc                                        ; $5ff2: $03
    inc bc                                        ; $5ff3: $03
    ld [hl+], a                                   ; $5ff4: $22
    ld [hl+], a                                   ; $5ff5: $22
    ld bc, $2201                                  ; $5ff6: $01 $01 $22
    ld [bc], a                                    ; $5ff9: $02
    pop de                                        ; $5ffa: $d1
    call nc, $fcfb                                ; $5ffb: $d4 $fb $fc
    pop de                                        ; $5ffe: $d1
    call nc, $fefd                                ; $5fff: $d4 $fd $fe
    pop de                                        ; $6002: $d1
    call nc, $ffff                                ; $6003: $d4 $ff $ff
    pop de                                        ; $6006: $d1
    call nc, $f5f4                                ; $6007: $d4 $f4 $f5
    add a                                         ; $600a: $87
    add b                                         ; $600b: $80
    ld [hl+], a                                   ; $600c: $22
    ld [hl+], a                                   ; $600d: $22
    add a                                         ; $600e: $87
    add b                                         ; $600f: $80
    ld [hl+], a                                   ; $6010: $22
    ld [hl+], a                                   ; $6011: $22
    add a                                         ; $6012: $87
    add b                                         ; $6013: $80
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    add a                                         ; $6016: $87
    add b                                         ; $6017: $80
    ld bc, $0001                                  ; $6018: $01 $01 $00
    ld bc, $0302                                  ; $601b: $01 $02 $03
    inc b                                         ; $601e: $04
    dec b                                         ; $601f: $05
    ld b, $07                                     ; $6020: $06 $07
    rst $38                                       ; $6022: $ff
    rst $38                                       ; $6023: $ff
    rst $38                                       ; $6024: $ff
    rst $38                                       ; $6025: $ff
    or $f7                                        ; $6026: $f6 $f7
    db $f4                                        ; $6028: $f4
    push af                                       ; $6029: $f5
    ld [bc], a                                    ; $602a: $02
    ld [bc], a                                    ; $602b: $02
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    ld [bc], a                                    ; $602e: $02
    ld [bc], a                                    ; $602f: $02
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    ld bc, $0101                                  ; $6036: $01 $01 $01
    ld bc, $0808                                  ; $6039: $01 $08 $08
    ld [$0908], sp                                ; $603c: $08 $08 $09
    add hl, bc                                    ; $603f: $09
    add hl, bc                                    ; $6040: $09
    add hl, bc                                    ; $6041: $09
    rst $38                                       ; $6042: $ff
    rst $38                                       ; $6043: $ff
    rst $38                                       ; $6044: $ff
    rst $38                                       ; $6045: $ff
    or $f7                                        ; $6046: $f6 $f7
    db $f4                                        ; $6048: $f4
    push af                                       ; $6049: $f5
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    nop                                           ; $604c: $00
    nop                                           ; $604d: $00
    nop                                           ; $604e: $00
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    ld bc, $0101                                  ; $6056: $01 $01 $01
    ld bc, $080a                                  ; $6059: $01 $0a $08
    dec bc                                        ; $605c: $0b
    inc c                                         ; $605d: $0c
    dec c                                         ; $605e: $0d
    add hl, bc                                    ; $605f: $09
    ld c, $0f                                     ; $6060: $0e $0f
    rst $38                                       ; $6062: $ff
    rst $38                                       ; $6063: $ff
    rst $38                                       ; $6064: $ff
    rst $38                                       ; $6065: $ff
    or $f7                                        ; $6066: $f6 $f7
    db $f4                                        ; $6068: $f4
    push af                                       ; $6069: $f5
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    ld [bc], a                                    ; $606c: $02
    ld [bc], a                                    ; $606d: $02
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    ld [bc], a                                    ; $6070: $02
    ld [bc], a                                    ; $6071: $02
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    ld bc, $0101                                  ; $6076: $01 $01 $01
    ld bc, $d4d1                                  ; $6079: $01 $d1 $d4
    db $10                                        ; $607c: $10
    ld de, $d4d1                                  ; $607d: $11 $d1 $d4
    ld [de], a                                    ; $6080: $12
    inc de                                        ; $6081: $13
    pop de                                        ; $6082: $d1
    call nc, Call_000_1110                        ; $6083: $d4 $10 $11
    pop de                                        ; $6086: $d1
    inc d                                         ; $6087: $14
    db $d3                                        ; $6088: $d3
    dec d                                         ; $6089: $15
    add a                                         ; $608a: $87
    add b                                         ; $608b: $80
    ld bc, $8701                                  ; $608c: $01 $01 $87
    add b                                         ; $608f: $80
    ld bc, $8701                                  ; $6090: $01 $01 $87
    add b                                         ; $6093: $80
    ld bc, $8701                                  ; $6094: $01 $01 $87
    add b                                         ; $6097: $80
    add b                                         ; $6098: $80
    add b                                         ; $6099: $80
    ld [de], a                                    ; $609a: $12
    inc de                                        ; $609b: $13
    db $10                                        ; $609c: $10
    ld de, $1110                                  ; $609d: $11 $10 $11
    ld [de], a                                    ; $60a0: $12
    inc de                                        ; $60a1: $13
    ld [de], a                                    ; $60a2: $12
    inc de                                        ; $60a3: $13
    db $10                                        ; $60a4: $10
    ld de, $1110                                  ; $60a5: $11 $10 $11
    ld [de], a                                    ; $60a8: $12
    jp nc, $0101                                  ; $60a9: $d2 $01 $01

    ld bc, $0101                                  ; $60ac: $01 $01 $01
    ld bc, $0101                                  ; $60af: $01 $01 $01
    ld bc, $0101                                  ; $60b2: $01 $01 $01
    ld bc, $0101                                  ; $60b5: $01 $01 $01
    ld bc, $1280                                  ; $60b8: $01 $80 $12
    inc de                                        ; $60bb: $13
    db $10                                        ; $60bc: $10
    ld de, $1110                                  ; $60bd: $11 $10 $11
    ld [de], a                                    ; $60c0: $12
    inc de                                        ; $60c1: $13
    ld [de], a                                    ; $60c2: $12
    inc de                                        ; $60c3: $13
    db $10                                        ; $60c4: $10
    ld de, $d3d3                                  ; $60c5: $11 $d3 $d3
    db $d3                                        ; $60c8: $d3
    db $d3                                        ; $60c9: $d3
    ld bc, $0101                                  ; $60ca: $01 $01 $01
    ld bc, $0101                                  ; $60cd: $01 $01 $01
    ld bc, $0101                                  ; $60d0: $01 $01 $01
    ld bc, $0101                                  ; $60d3: $01 $01 $01
    add b                                         ; $60d6: $80
    add b                                         ; $60d7: $80
    add b                                         ; $60d8: $80
    add b                                         ; $60d9: $80
    db $d3                                        ; $60da: $d3
    db $d3                                        ; $60db: $d3
    dec d                                         ; $60dc: $15
    pop de                                        ; $60dd: $d1
    push de                                       ; $60de: $d5
    sub $d4                                       ; $60df: $d6 $d4
    pop de                                        ; $60e1: $d1
    ld d, $d8                                     ; $60e2: $16 $d8
    call nc, Call_000_17d1                        ; $60e4: $d4 $d1 $17
    ret c                                         ; $60e7: $d8

    call nc, $00d1                                ; $60e8: $d4 $d1 $00
    nop                                           ; $60eb: $00
    nop                                           ; $60ec: $00
    rlca                                          ; $60ed: $07
    inc bc                                        ; $60ee: $03
    inc bc                                        ; $60ef: $03
    add b                                         ; $60f0: $80
    add a                                         ; $60f1: $87
    inc bc                                        ; $60f2: $03
    inc bc                                        ; $60f3: $03
    add b                                         ; $60f4: $80
    add a                                         ; $60f5: $87
    inc bc                                        ; $60f6: $03
    inc bc                                        ; $60f7: $03
    add b                                         ; $60f8: $80
    add a                                         ; $60f9: $87
    rla                                           ; $60fa: $17
    ret c                                         ; $60fb: $d8

    call nc, $18d1                                ; $60fc: $d4 $d1 $18
    ret c                                         ; $60ff: $d8

    call nc, $e7d1                                ; $6100: $d4 $d1 $e7
    rst $20                                       ; $6103: $e7
    call nc, $e9d1                                ; $6104: $d4 $d1 $e9
    add sp, -$2c                                  ; $6107: $e8 $d4
    pop de                                        ; $6109: $d1
    inc bc                                        ; $610a: $03
    inc bc                                        ; $610b: $03
    add b                                         ; $610c: $80
    add a                                         ; $610d: $87
    inc bc                                        ; $610e: $03
    inc bc                                        ; $610f: $03
    add b                                         ; $6110: $80
    add a                                         ; $6111: $87
    ld [hl+], a                                   ; $6112: $22
    ld [hl+], a                                   ; $6113: $22
    add b                                         ; $6114: $80
    add a                                         ; $6115: $87
    ld [bc], a                                    ; $6116: $02
    ld [bc], a                                    ; $6117: $02
    add b                                         ; $6118: $80
    add a                                         ; $6119: $87
    db $fc                                        ; $611a: $fc
    ei                                            ; $611b: $fb
    call nc, $fed1                                ; $611c: $d4 $d1 $fe
    db $fd                                        ; $611f: $fd
    call nc, $ffd1                                ; $6120: $d4 $d1 $ff
    rst $38                                       ; $6123: $ff
    call nc, $f6d1                                ; $6124: $d4 $d1 $f6
    rst $30                                       ; $6127: $f7
    call nc, Call_000_02d1                        ; $6128: $d4 $d1 $02
    ld [bc], a                                    ; $612b: $02
    add b                                         ; $612c: $80
    add a                                         ; $612d: $87
    ld [bc], a                                    ; $612e: $02
    ld [bc], a                                    ; $612f: $02
    add b                                         ; $6130: $80
    add a                                         ; $6131: $87
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    add b                                         ; $6134: $80
    add a                                         ; $6135: $87
    ld bc, $8001                                  ; $6136: $01 $01 $80
    add a                                         ; $6139: $87
    ld [de], a                                    ; $613a: $12
    inc de                                        ; $613b: $13
    call nc, $10d1                                ; $613c: $d4 $d1 $10
    ld de, $d1d4                                  ; $613f: $11 $d4 $d1
    ld [de], a                                    ; $6142: $12
    inc de                                        ; $6143: $13
    call nc, $d3d1                                ; $6144: $d4 $d1 $d3
    db $d3                                        ; $6147: $d3
    add hl, de                                    ; $6148: $19
    pop de                                        ; $6149: $d1
    ld bc, $8001                                  ; $614a: $01 $01 $80
    add a                                         ; $614d: $87
    ld bc, $8001                                  ; $614e: $01 $01 $80
    add a                                         ; $6151: $87
    ld bc, $8001                                  ; $6152: $01 $01 $80
    add a                                         ; $6155: $87
    add b                                         ; $6156: $80
    add b                                         ; $6157: $80
    add b                                         ; $6158: $80
    add a                                         ; $6159: $87
    pop de                                        ; $615a: $d1
    pop de                                        ; $615b: $d1
    pop de                                        ; $615c: $d1
    inc d                                         ; $615d: $14
    pop de                                        ; $615e: $d1
    pop de                                        ; $615f: $d1
    pop de                                        ; $6160: $d1
    pop de                                        ; $6161: $d1
    pop de                                        ; $6162: $d1
    pop de                                        ; $6163: $d1
    pop de                                        ; $6164: $d1
    pop de                                        ; $6165: $d1
    pop de                                        ; $6166: $d1
    pop de                                        ; $6167: $d1
    pop de                                        ; $6168: $d1
    pop de                                        ; $6169: $d1
    add a                                         ; $616a: $87
    add a                                         ; $616b: $87
    add a                                         ; $616c: $87
    add b                                         ; $616d: $80
    rlca                                          ; $616e: $07
    rlca                                          ; $616f: $07
    rlca                                          ; $6170: $07
    add a                                         ; $6171: $87
    rlca                                          ; $6172: $07
    rlca                                          ; $6173: $07
    rlca                                          ; $6174: $07
    rlca                                          ; $6175: $07
    rlca                                          ; $6176: $07
    rlca                                          ; $6177: $07
    rlca                                          ; $6178: $07
    rlca                                          ; $6179: $07
    ld a, [de]                                    ; $617a: $1a
    ld a, [de]                                    ; $617b: $1a
    ld a, [de]                                    ; $617c: $1a
    add hl, de                                    ; $617d: $19
    dec de                                        ; $617e: $1b
    dec de                                        ; $617f: $1b
    dec de                                        ; $6180: $1b
    pop de                                        ; $6181: $d1
    pop de                                        ; $6182: $d1
    pop de                                        ; $6183: $d1
    pop de                                        ; $6184: $d1
    pop de                                        ; $6185: $d1
    pop de                                        ; $6186: $d1
    pop de                                        ; $6187: $d1
    pop de                                        ; $6188: $d1
    pop de                                        ; $6189: $d1
    add b                                         ; $618a: $80
    add b                                         ; $618b: $80
    add b                                         ; $618c: $80
    add b                                         ; $618d: $80
    add a                                         ; $618e: $87
    add a                                         ; $618f: $87
    add a                                         ; $6190: $87
    add a                                         ; $6191: $87
    rlca                                          ; $6192: $07
    rlca                                          ; $6193: $07
    rlca                                          ; $6194: $07
    rlca                                          ; $6195: $07
    rlca                                          ; $6196: $07
    rlca                                          ; $6197: $07
    rlca                                          ; $6198: $07
    rlca                                          ; $6199: $07
    pop de                                        ; $619a: $d1
    pop de                                        ; $619b: $d1
    pop de                                        ; $619c: $d1
    pop de                                        ; $619d: $d1
    pop de                                        ; $619e: $d1
    pop de                                        ; $619f: $d1
    pop de                                        ; $61a0: $d1
    pop de                                        ; $61a1: $d1
    pop de                                        ; $61a2: $d1
    pop de                                        ; $61a3: $d1
    pop de                                        ; $61a4: $d1
    pop de                                        ; $61a5: $d1
    pop de                                        ; $61a6: $d1
    pop de                                        ; $61a7: $d1
    pop de                                        ; $61a8: $d1
    pop de                                        ; $61a9: $d1
    add a                                         ; $61aa: $87
    add a                                         ; $61ab: $87
    add a                                         ; $61ac: $87
    add a                                         ; $61ad: $87
    rlca                                          ; $61ae: $07
    rlca                                          ; $61af: $07
    rlca                                          ; $61b0: $07
    rlca                                          ; $61b1: $07
    rlca                                          ; $61b2: $07
    rlca                                          ; $61b3: $07
    rlca                                          ; $61b4: $07
    rlca                                          ; $61b5: $07
    rlca                                          ; $61b6: $07
    rlca                                          ; $61b7: $07
    rlca                                          ; $61b8: $07
    rlca                                          ; $61b9: $07

    db $09, $00, $13, $00

    ld b, b                                       ; $61be: $40
    inc de                                        ; $61bf: $13
    pop de                                        ; $61c0: $d1
    pop de                                        ; $61c1: $d1
    jp nc, $d1d1                                  ; $61c2: $d2 $d1 $d1

    pop de                                        ; $61c5: $d1
    jp nc, $d1d3                                  ; $61c6: $d2 $d3 $d1

    pop de                                        ; $61c9: $d1
    jp nc, $d1d4                                  ; $61ca: $d2 $d4 $d1

    pop de                                        ; $61cd: $d1
    jp nc, $00d5                                  ; $61ce: $d2 $d5 $00

    add b                                         ; $61d1: $80
    add b                                         ; $61d2: $80
    inc bc                                        ; $61d3: $03
    nop                                           ; $61d4: $00
    add b                                         ; $61d5: $80
    add b                                         ; $61d6: $80
    inc bc                                        ; $61d7: $03
    nop                                           ; $61d8: $00
    add b                                         ; $61d9: $80
    add b                                         ; $61da: $80
    inc bc                                        ; $61db: $03
    nop                                           ; $61dc: $00
    add b                                         ; $61dd: $80
    add b                                         ; $61de: $80
    inc bc                                        ; $61df: $03

    db $d1, $d6, $d7, $d8, $d3, $d9, $da, $db, $d4, $dc, $dd, $de, $d5, $df, $e0, $e1
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $e2, $d6, $d6, $e3, $e4, $e5, $d9, $d7, $e4, $e6, $dc, $da, $e7, $e8, $df, $dd
    db $03, $23, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $e9, $ea, $d6, $d6, $d8, $e2, $e5, $d9, $db, $e4, $e6, $dc, $de, $e4, $e8, $df
    db $03, $03, $23, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03

    pop de                                        ; $6240: $d1
    pop de                                        ; $6241: $d1
    jp nc, $d1eb                                  ; $6242: $d2 $eb $d1

    pop de                                        ; $6245: $d1
    jp nc, $d1ec                                  ; $6246: $d2 $ec $d1

    pop de                                        ; $6249: $d1
    jp nc, $d1ed                                  ; $624a: $d2 $ed $d1

    pop de                                        ; $624d: $d1
    jp nc, $00ee                                  ; $624e: $d2 $ee $00

    add b                                         ; $6251: $80
    add b                                         ; $6252: $80
    inc bc                                        ; $6253: $03
    nop                                           ; $6254: $00
    add b                                         ; $6255: $80
    add b                                         ; $6256: $80
    inc bc                                        ; $6257: $03
    nop                                           ; $6258: $00
    add b                                         ; $6259: $80
    add b                                         ; $625a: $80
    inc bc                                        ; $625b: $03
    nop                                           ; $625c: $00
    add b                                         ; $625d: $80
    add b                                         ; $625e: $80
    inc bc                                        ; $625f: $03

    db $eb, $ef, $f0, $f1, $ec, $f2, $f3, $f4, $ed, $f5, $f6, $f7, $ee, $f8, $f9, $fa
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $05, $05, $03, $03, $05, $05
    db $fb, $ef, $ef, $e0, $fc, $f2, $f2, $f0, $fd, $fe, $f5, $f3, $ff, $00, $f8, $01
    db $03, $23, $03, $03, $03, $23, $03, $03, $05, $03, $03, $03, $05, $03, $03, $05
    db $e1, $e7, $ef, $ef, $f1, $fb, $f2, $f2, $f4, $fc, $fe, $f5, $02, $03, $00, $f8
    db $03, $03, $23, $03, $03, $03, $23, $03, $03, $03, $03, $03, $05, $05, $03, $03

    pop de                                        ; $62c0: $d1
    pop de                                        ; $62c1: $d1
    jp nc, $d104                                  ; $62c2: $d2 $04 $d1

    pop de                                        ; $62c5: $d1
    jp nc, $d105                                  ; $62c6: $d2 $05 $d1

    pop de                                        ; $62c9: $d1
    jp nc, $d106                                  ; $62ca: $d2 $06 $d1

    pop de                                        ; $62cd: $d1
    jp nc, $00fa                                  ; $62ce: $d2 $fa $00

    add b                                         ; $62d1: $80
    add b                                         ; $62d2: $80
    dec b                                         ; $62d3: $05
    nop                                           ; $62d4: $00
    add b                                         ; $62d5: $80
    add b                                         ; $62d6: $80
    dec b                                         ; $62d7: $05
    nop                                           ; $62d8: $00
    add b                                         ; $62d9: $80
    add b                                         ; $62da: $80
    dec b                                         ; $62db: $05
    nop                                           ; $62dc: $00
    add b                                         ; $62dd: $80
    add b                                         ; $62de: $80
    dec b                                         ; $62df: $05

    db $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $f7, $ff, $12, $13, $fa
    db $05, $05, $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $06, $06, $01, $01
    db $14, $15, $01, $16, $01, $17, $18, $19, $fd, $1a, $1b, $1c, $ff, $12, $1d, $1e
    db $01, $05, $05, $01, $06, $01, $01, $01, $01, $01, $06, $01, $06, $01, $01, $01
    db $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e
    db $01, $01, $05, $05, $01, $01, $01, $06, $01, $06, $01, $01, $01, $06, $06, $01

    pop de                                        ; $6340: $d1
    pop de                                        ; $6341: $d1
    jp nc, $d10a                                  ; $6342: $d2 $0a $d1

    pop de                                        ; $6345: $d1
    jp nc, $d10e                                  ; $6346: $d2 $0e $d1

    pop de                                        ; $6349: $d1
    jp nc, $d12f                                  ; $634a: $d2 $2f $d1

    pop de                                        ; $634d: $d1
    jp nc, RST_30                                 ; $634e: $d2 $30 $00

    add b                                         ; $6351: $80
    add b                                         ; $6352: $80
    dec b                                         ; $6353: $05
    nop                                           ; $6354: $00
    add b                                         ; $6355: $80
    add b                                         ; $6356: $80
    dec b                                         ; $6357: $05
    nop                                           ; $6358: $00
    add b                                         ; $6359: $80
    add b                                         ; $635a: $80
    dec b                                         ; $635b: $05
    nop                                           ; $635c: $00
    add b                                         ; $635d: $80
    add b                                         ; $635e: $80
    dec b                                         ; $635f: $05

    db $14, $15, $09, $0a, $01, $17, $31, $0e, $32, $33, $f6, $f7, $34, $35, $f9, $fa
    db $01, $01, $06, $01, $06, $06, $01, $06, $01, $06, $06, $01, $01, $01, $06, $01
    db $14, $15, $36, $37, $01, $17, $38, $39, $fd, $1a, $3a, $3b, $ff, $12, $3c, $3d
    db $01, $06, $04, $04, $06, $01, $02, $02, $06, $01, $02, $02, $06, $01, $02, $02
    db $3e, $3f, $12, $40, $41, $42, $15, $43, $44, $45, $17, $46, $47, $48, $fd, $49
    db $06, $01, $01, $06, $01, $01, $01, $01, $05, $06, $01, $06, $05, $06, $21, $01
    db $d1, $d1, $d1, $d1, $4a, $4a, $4a, $4a, $4b, $4c, $4c, $4d, $4e, $4f, $4f, $50
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $07, $07, $07, $07
    db $d6, $d6, $e3, $e9, $e5, $d9, $d7, $d8, $e6, $dc, $da, $db, $e8, $df, $dd, $de
    db $23, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $ea, $d6, $d6, $d7, $e2, $e5, $d9, $da, $e4, $e6, $dc, $dd, $e4, $e8, $df, $e0
    db $03, $23, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $d8, $e2, $d6, $d1, $db, $e4, $d9, $d3, $de, $e4, $dc, $d4, $e1, $e7, $df, $d5
    db $03, $03, $23, $03, $03, $03, $23, $23, $03, $03, $23, $23, $03, $03, $23, $23
    db $51, $52, $52, $53, $52, $54, $55, $56, $52, $52, $52, $56, $57, $57, $57, $58
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $ef, $ef, $e0, $e1, $f2, $f2, $f0, $f1, $fe, $f5, $f3, $f4, $00, $f8, $03, $02
    db $23, $03, $03, $03, $23, $03, $03, $03, $03, $03, $03, $03, $03, $03, $25, $25
    db $e7, $ef, $ef, $f0, $fb, $f2, $f2, $f3, $fc, $fe, $f5, $fd, $01, $00, $f8, $ff
    db $03, $23, $03, $03, $03, $23, $03, $03, $03, $03, $03, $25, $25, $03, $03, $25
    db $f1, $fb, $ef, $eb, $f4, $fc, $f2, $ec, $f7, $f6, $f5, $ed, $fa, $f9, $f8, $ee
    db $03, $03, $23, $03, $03, $03, $23, $03, $25, $25, $23, $23, $25, $25, $23, $23
    db $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $fa, $ff, $12, $61, $62, $63, $64, $65
    db $05, $05, $05, $05, $06, $01, $01, $01, $06, $01, $06, $01, $01, $06, $01, $06
    db $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $05, $05, $01, $01, $01, $01, $01, $01, $01, $01, $06, $06, $01, $06, $06, $06
    db $76, $01, $14, $15, $77, $fd, $01, $17, $78, $79, $fd, $1a, $7a, $7b, $ff, $12
    db $01, $05, $05, $01, $06, $06, $01, $06, $01, $01, $01, $01, $01, $06, $01, $01
    db $7c, $09, $08, $07, $7d, $0d, $0c, $0b, $7e, $11, $10, $0f, $61, $13, $12, $ff
    db $01, $21, $25, $25, $01, $21, $21, $21, $06, $21, $21, $26, $01, $21, $21, $26
    db $7f, $80, $81, $82, $83, $fd, $1a, $84, $85, $ff, $12, $86, $87, $88, $89, $8a
    db $06, $0e, $0e, $09, $09, $06, $06, $09, $09, $01, $01, $0e, $0e, $0e, $0e, $09
    db $8b, $ff, $8c, $8d, $8e, $14, $8f, $90, $91, $01, $92, $93, $94, $1a, $95, $96
    db $09, $06, $09, $09, $09, $01, $09, $09, $09, $01, $09, $0d, $09, $21, $09, $0d
    db $37, $36, $14, $15, $97, $98, $01, $17, $3b, $99, $9a, $9b, $3b, $99, $9c, $9d
    db $24, $24, $06, $06, $0a, $0a, $06, $01, $22, $0a, $0a, $0a, $22, $0a, $0a, $0a
    db $7c, $09, $15, $14, $7d, $31, $17, $01, $7e, $f6, $33, $32, $61, $f9, $35, $34
    db $06, $26, $26, $21, $01, $26, $21, $26, $01, $21, $26, $26, $06, $21, $26, $21
    db $d1, $d2, $d1, $d1, $d3, $d2, $d1, $d1, $d4, $d2, $d1, $d1, $d5, $d2, $d1, $d1
    db $03, $e0, $80, $00, $23, $e0, $80, $00, $23, $e0, $80, $00, $23, $e0, $80, $00
    db $eb, $d2, $d1, $d1, $ec, $d2, $d1, $d1, $ed, $d2, $d1, $d1, $ee, $d2, $d1, $d1
    db $03, $e0, $80, $00, $03, $e0, $80, $00, $23, $e0, $80, $00, $23, $e0, $80, $00
    db $04, $d2, $d1, $d1, $05, $d2, $d1, $d1, $06, $d2, $d1, $d1, $fa, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $0a, $d2, $d1, $d1, $0e, $d2, $d1, $d1, $2f, $d2, $d1, $d1, $30, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $f7, $ff, $12, $13, $fa
    db $06, $01, $06, $01, $01, $01, $01, $01, $01, $06, $01, $06, $01, $01, $01, $01
    db $14, $15, $9e, $9f, $01, $17, $99, $3b, $9b, $9a, $99, $3b, $9d, $9c, $99, $3b
    db $01, $01, $0a, $0a, $06, $01, $2a, $02, $2a, $2a, $2a, $02, $2a, $2a, $2a, $02
    db $a0, $a1, $a2, $a3, $71, $70, $6f, $6e, $6d, $6c, $6b, $6a, $69, $68, $67, $66
    db $0d, $09, $09, $0e, $65, $61, $61, $61, $65, $61, $66, $66, $65, $66, $61, $66

    pop de                                        ; $66a0: $d1
    pop de                                        ; $66a1: $d1
    jp nc, $d1a4                                  ; $66a2: $d2 $a4 $d1

    pop de                                        ; $66a5: $d1
    jp nc, $d1ff                                  ; $66a6: $d2 $ff $d1

    pop de                                        ; $66a9: $d1
    jp nc, $d10e                                  ; $66aa: $d2 $0e $d1

    pop de                                        ; $66ad: $d1
    jp nc, $002f                                  ; $66ae: $d2 $2f $00

    add b                                         ; $66b1: $80
    add b                                         ; $66b2: $80
    dec c                                         ; $66b3: $0d
    nop                                           ; $66b4: $00
    add b                                         ; $66b5: $80
    add b                                         ; $66b6: $80
    ld b, l                                       ; $66b7: $45
    nop                                           ; $66b8: $00
    add b                                         ; $66b9: $80
    add b                                         ; $66ba: $80
    dec b                                         ; $66bb: $05
    nop                                           ; $66bc: $00
    add b                                         ; $66bd: $80
    add b                                         ; $66be: $80
    dec b                                         ; $66bf: $05

    db $a5, $a6, $a7, $0a, $12, $fa, $a8, $0e, $01, $17, $31, $f7, $32, $33, $f6, $fa
    db $0e, $09, $09, $06, $41, $61, $0e, $01, $01, $01, $06, $01, $06, $01, $01, $01
    db $14, $15, $a9, $aa, $01, $17, $ab, $ac, $fd, $1a, $ad, $ae, $ff, $12, $3c, $3d
    db $01, $01, $2a, $2a, $01, $06, $2a, $2a, $06, $01, $2a, $2a, $06, $01, $02, $02
    db $02, $03, $af, $b0, $b1, $b2, $b3, $b4, $a6, $a4, $a5, $b5, $fa, $ff, $12, $61
    db $45, $46, $09, $09, $0d, $0e, $0e, $0e, $2d, $09, $09, $09, $45, $46, $46, $41

    pop de                                        ; $6720: $d1
    pop de                                        ; $6721: $d1
    jp nc, $d130                                  ; $6722: $d2 $30 $d1

    pop de                                        ; $6725: $d1
    jp nc, $d104                                  ; $6726: $d2 $04 $d1

    pop de                                        ; $6729: $d1
    jp nc, $d105                                  ; $672a: $d2 $05 $d1

    pop de                                        ; $672d: $d1
    jp nc, Jump_000_0006                          ; $672e: $d2 $06 $00

    add b                                         ; $6731: $80
    add b                                         ; $6732: $80
    dec b                                         ; $6733: $05
    nop                                           ; $6734: $00
    add b                                         ; $6735: $80
    add b                                         ; $6736: $80
    dec b                                         ; $6737: $05
    nop                                           ; $6738: $00
    add b                                         ; $6739: $80
    add b                                         ; $673a: $80
    dec b                                         ; $673b: $05
    nop                                           ; $673c: $00
    add b                                         ; $673d: $80
    add b                                         ; $673e: $80
    dec b                                         ; $673f: $05

    db $34, $35, $f9, $0a, $07, $08, $09, $0e, $0b, $0c, $0d, $f7, $0f, $10, $11, $fa
    db $01, $01, $06, $01, $06, $01, $01, $06, $01, $01, $01, $01, $01, $01, $06, $01
    db $14, $15, $b6, $b7, $01, $17, $b8, $b9, $9b, $9a, $99, $3b, $9d, $9c, $99, $3b
    db $01, $06, $2a, $2a, $01, $01, $2a, $2a, $2a, $2a, $2a, $02, $2a, $2a, $2a, $02
    db $ba, $bb, $bc, $bd, $0e, $01, $17, $82, $ba, $bb, $bc, $bd, $fa, $ff, $12, $61
    db $0d, $09, $09, $0e, $45, $41, $41, $4e, $4d, $49, $4e, $49, $05, $06, $01, $01

    pop de                                        ; $67a0: $d1
    pop de                                        ; $67a1: $d1
    jp nc, $d1fa                                  ; $67a2: $d2 $fa $d1

    pop de                                        ; $67a5: $d1
    jp nc, $d10a                                  ; $67a6: $d2 $0a $d1

    pop de                                        ; $67a9: $d1
    jp nc, $d10e                                  ; $67aa: $d2 $0e $d1

    pop de                                        ; $67ad: $d1
    jp nc, $002f                                  ; $67ae: $d2 $2f $00

    add b                                         ; $67b1: $80
    add b                                         ; $67b2: $80
    dec b                                         ; $67b3: $05
    nop                                           ; $67b4: $00
    add b                                         ; $67b5: $80
    add b                                         ; $67b6: $80
    dec b                                         ; $67b7: $05
    nop                                           ; $67b8: $00
    add b                                         ; $67b9: $80
    add b                                         ; $67ba: $80
    dec b                                         ; $67bb: $05
    nop                                           ; $67bc: $00
    add b                                         ; $67bd: $80
    add b                                         ; $67be: $80
    dec b                                         ; $67bf: $05

    db $ff, $12, $13, $0a, $14, $15, $09, $0e, $01, $17, $31, $f7, $32, $33, $f6, $fa
    db $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $06, $01, $01, $01, $01, $01
    db $14, $15, $be, $bf, $01, $17, $c0, $c1, $fd, $1a, $3a, $3b, $ff, $12, $3c, $3d
    db $01, $01, $2a, $2a, $06, $01, $2a, $2a, $01, $01, $02, $02, $01, $06, $02, $02
    db $b5, $a5, $a4, $a6, $c2, $b3, $c3, $c4, $c5, $c6, $c7, $c8, $1f, $20, $21, $22
    db $6d, $69, $6e, $49, $6d, $69, $6e, $6e, $6d, $69, $69, $6e, $05, $01, $06, $06
    db $c9, $ca, $cb, $cc, $61, $12, $ff, $fa, $60, $5f, $5e, $5d, $5c, $5b, $5a, $59
    db $0e, $0e, $0e, $09, $66, $61, $66, $61, $61, $66, $61, $61, $61, $61, $61, $66
    db $cd, $ce, $cf, $d0, $2a, $29, $28, $27, $26, $25, $24, $23, $22, $21, $20, $1f
    db $09, $0e, $09, $0d, $61, $66, $61, $65, $66, $61, $61, $65, $66, $61, $61, $65
    db $aa, $a9, $14, $15, $ac, $ab, $01, $17, $ae, $ad, $fd, $1a, $3d, $3c, $ff, $12
    db $0a, $0a, $01, $01, $0a, $0a, $06, $06, $0a, $0a, $01, $01, $22, $22, $01, $01
    db $7c, $09, $08, $07, $7d, $0d, $0c, $0b, $7e, $11, $10, $0f, $61, $13, $12, $ff
    db $01, $26, $26, $21, $01, $21, $21, $21, $01, $21, $26, $21, $06, $26, $21, $21
    db $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $0e, $01, $17, $7d
    db $09, $09, $0e, $0e, $09, $0e, $09, $09, $09, $09, $0e, $0e, $46, $41, $41, $46
    db $c8, $c7, $c6, $c5, $c4, $c3, $b3, $c2, $a6, $a4, $a5, $b5, $fa, $ff, $12, $61
    db $09, $09, $09, $0d, $09, $0e, $0e, $0d, $29, $0e, $0e, $0d, $46, $41, $41, $45
    db $b7, $b6, $14, $15, $b9, $b8, $01, $17, $3b, $99, $9a, $9b, $3b, $99, $9c, $9d
    db $0a, $0a, $06, $06, $0a, $0a, $01, $01, $22, $0a, $0a, $0a, $22, $0a, $0a, $0a
    db $7c, $a7, $a6, $a5, $7d, $a8, $fa, $12, $7e, $31, $17, $01, $61, $f6, $33, $32
    db $01, $29, $29, $29, $01, $29, $41, $61, $01, $21, $26, $26, $01, $26, $21, $21
    db $dd, $de, $df, $e0, $fa, $ff, $12, $61, $dd, $de, $df, $e0, $0e, $01, $17, $7d
    db $0e, $0e, $09, $0e, $41, $46, $41, $41, $49, $49, $49, $49, $06, $06, $06, $06
    db $e1, $bb, $bc, $e2, $7f, $01, $17, $7d, $e1, $bb, $bc, $e2, $fa, $ff, $12, $61
    db $09, $09, $09, $0d, $41, $46, $41, $45, $4e, $49, $49, $4d, $01, $06, $06, $05
    db $bf, $be, $14, $15, $c1, $c0, $01, $17, $3b, $3a, $fd, $1a, $3d, $3c, $ff, $12
    db $0a, $0a, $01, $01, $0a, $0a, $01, $01, $22, $22, $01, $01, $22, $22, $06, $06
    db $7c, $f9, $35, $34, $7d, $09, $08, $07, $7e, $0d, $0c, $0b, $61, $11, $10, $0f
    db $06, $21, $21, $21, $01, $26, $21, $21, $06, $26, $21, $21, $01, $21, $26, $26
    db $dc, $db, $da, $d9, $d8, $d7, $d6, $d5, $d4, $d3, $d2, $d1, $59, $5a, $5b, $5c
    db $6e, $6e, $69, $69, $69, $69, $69, $6e, $69, $69, $6e, $6e, $01, $06, $01, $06
    db $b5, $a5, $a4, $a6, $b4, $b3, $b2, $b1, $b0, $af, $03, $02, $66, $67, $68, $69
    db $6e, $69, $69, $4d, $69, $69, $6e, $6d, $69, $6e, $21, $25, $01, $06, $01, $05
    db $e3, $e4, $14, $15, $e5, $e6, $01, $17, $3b, $99, $9a, $9b, $3b, $99, $9c, $9d
    db $0a, $0a, $01, $01, $0a, $0a, $01, $01, $22, $0a, $0a, $0a, $22, $0a, $0a, $0a
    db $7c, $13, $12, $ff, $7d, $09, $15, $14, $7e, $31, $17, $01, $61, $f6, $33, $32
    db $01, $26, $21, $21, $06, $21, $26, $26, $01, $26, $26, $21, $01, $21, $21, $26
    db $a4, $d2, $d1, $d1, $ff, $d2, $d1, $d1, $0e, $d2, $d1, $d1, $2f, $d2, $d1, $d1
    db $2d, $e0, $80, $00, $65, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $30, $d2, $d1, $d1, $04, $d2, $d1, $d1, $05, $d2, $d1, $d1, $06, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $fa, $d2, $d1, $d1, $0a, $d2, $d1, $d1, $0e, $d2, $d1, $d1, $2f, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $34, $35, $f9, $0a, $07, $08, $09, $0e, $0b, $0c, $0d, $f7, $0f, $10, $11, $fa
    db $01, $01, $01, $06, $06, $01, $01, $01, $01, $06, $01, $01, $01, $01, $01, $01
    db $14, $15, $e4, $e3, $01, $17, $e6, $e5, $9b, $9a, $99, $3b, $9d, $9c, $99, $3b
    db $01, $01, $2a, $2a, $01, $01, $2a, $2a, $2a, $2a, $2a, $02, $2a, $2a, $2a, $02
    db $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $3e, $3f, $12, $40
    db $05, $01, $01, $01, $05, $01, $01, $06, $05, $01, $06, $06, $05, $06, $06, $01
    db $ff, $12, $13, $0a, $14, $15, $09, $0e, $01, $17, $31, $f7, $32, $33, $f6, $fa
    db $01, $01, $06, $01, $01, $01, $01, $01, $06, $01, $01, $01, $01, $01, $01, $06
    db $14, $15, $a9, $aa, $01, $17, $ab, $ac, $fd, $1a, $ad, $ae, $ff, $12, $3c, $3d
    db $01, $01, $2a, $2a, $01, $01, $2a, $2a, $01, $06, $2a, $2a, $01, $01, $02, $02
    db $41, $42, $15, $43, $44, $45, $17, $46, $47, $48, $fd, $49, $a0, $a1, $a2, $a3
    db $05, $06, $01, $06, $05, $01, $06, $06, $05, $01, $26, $01, $0d, $0e, $09, $09
    db $34, $35, $f9, $0a, $07, $08, $09, $0e, $0b, $0c, $0d, $f7, $0f, $10, $11, $fa
    db $01, $06, $01, $01, $06, $01, $01, $06, $01, $06, $01, $01, $01, $01, $01, $01
    db $14, $15, $e7, $9f, $01, $17, $e8, $3b, $fd, $1a, $e9, $3b, $ff, $12, $ea, $eb
    db $01, $06, $0a, $0a, $06, $01, $0a, $02, $01, $01, $0a, $02, $06, $01, $0a, $0a
    db $71, $70, $6f, $6e, $6d, $6c, $6b, $6a, $69, $68, $67, $66, $02, $03, $af, $b0
    db $65, $66, $66, $66, $65, $61, $61, $61, $65, $61, $61, $66, $45, $46, $0e, $09

    pop de                                        ; $6ba0: $d1
    pop de                                        ; $6ba1: $d1
    jp nc, $d1fa                                  ; $6ba2: $d2 $fa $d1

    pop de                                        ; $6ba5: $d1
    jp nc, $d1a4                                  ; $6ba6: $d2 $a4 $d1

    pop de                                        ; $6ba9: $d1
    jp nc, $d1ff                                  ; $6baa: $d2 $ff $d1

    pop de                                        ; $6bad: $d1
    jp nc, Jump_000_000e                          ; $6bae: $d2 $0e $00

    add b                                         ; $6bb1: $80
    add b                                         ; $6bb2: $80
    dec b                                         ; $6bb3: $05
    nop                                           ; $6bb4: $00
    add b                                         ; $6bb5: $80
    add b                                         ; $6bb6: $80
    dec c                                         ; $6bb7: $0d
    nop                                           ; $6bb8: $00
    add b                                         ; $6bb9: $80
    add b                                         ; $6bba: $80
    ld b, l                                       ; $6bbb: $45
    nop                                           ; $6bbc: $00
    add b                                         ; $6bbd: $80
    add b                                         ; $6bbe: $80
    dec b                                         ; $6bbf: $05

    db $ff, $12, $13, $0a, $a5, $a6, $a7, $a5, $12, $fa, $a8, $12, $01, $17, $31, $0e
    db $06, $01, $06, $01, $09, $0e, $09, $09, $46, $61, $0e, $41, $01, $01, $01, $06
    db $14, $15, $ec, $ed, $a6, $a4, $a5, $a4, $fa, $ff, $12, $ff, $01, $17, $36, $37
    db $01, $01, $0a, $0a, $0e, $09, $0d, $2d, $61, $46, $46, $61, $01, $01, $04, $04
    db $b1, $b2, $b3, $b4, $a6, $a4, $a5, $b5, $fa, $ff, $12, $61, $ee, $bb, $bc, $bd
    db $0d, $0e, $09, $09, $2d, $09, $09, $09, $41, $46, $41, $41, $09, $09, $0e, $0e
    db $5d, $5e, $5f, $60, $fa, $ff, $12, $61, $62, $63, $64, $65, $7f, $80, $81, $82
    db $06, $06, $01, $06, $06, $06, $01, $01, $01, $01, $01, $06, $06, $0e, $09, $09
    db $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $8b, $ff, $8c, $8d
    db $06, $01, $01, $05, $06, $01, $06, $05, $06, $06, $06, $05, $0e, $06, $09, $0d
    db $aa, $a9, $14, $15, $ac, $ab, $01, $17, $ae, $ad, $fd, $1a, $3d, $3c, $ff, $12
    db $0a, $0a, $01, $01, $0a, $0a, $01, $06, $0a, $0a, $01, $01, $22, $22, $01, $06
    db $7c, $f9, $35, $34, $7d, $09, $08, $07, $7e, $0d, $0c, $0b, $61, $11, $10, $0f
    db $01, $26, $26, $21, $06, $21, $21, $21, $06, $26, $21, $21, $01, $21, $21, $26
    db $83, $fd, $1a, $84, $85, $ff, $12, $86, $87, $88, $89, $8a, $c9, $ca, $cb, $cc
    db $09, $06, $01, $0e, $09, $01, $06, $09, $0e, $0e, $0e, $0e, $0e, $09, $09, $0e
    db $8e, $14, $8f, $90, $91, $01, $92, $93, $94, $1a, $95, $96, $cd, $ce, $cf, $d0
    db $0e, $06, $09, $0d, $0e, $06, $09, $0d, $0e, $21, $09, $0d, $09, $0e, $09, $0d
    db $b7, $b6, $14, $15, $b9, $b8, $01, $17, $3b, $99, $9a, $9b, $3b, $99, $9c, $9d
    db $0a, $0a, $06, $01, $0a, $0a, $01, $01, $22, $0a, $0a, $0a, $22, $0a, $0a, $0a
    db $7c, $13, $12, $ff, $7d, $09, $15, $14, $7e, $31, $17, $01, $61, $f6, $33, $32
    db $01, $21, $26, $21, $01, $26, $21, $21, $06, $26, $21, $26, $01, $26, $26, $26
    db $61, $12, $ff, $fa, $60, $5f, $5e, $5d, $5c, $5b, $5a, $59, $d1, $d2, $d3, $d4
    db $61, $61, $66, $61, $61, $61, $66, $66, $61, $66, $66, $61, $09, $0e, $09, $09
    db $2a, $29, $28, $27, $26, $25, $24, $23, $22, $21, $20, $1f, $c8, $c7, $c6, $c5
    db $66, $61, $61, $65, $61, $61, $61, $65, $61, $61, $61, $65, $09, $09, $09, $0d
    db $bf, $ef, $14, $15, $c1, $e8, $01, $17, $3b, $e9, $fd, $1a, $eb, $ea, $ff, $12
    db $0a, $0a, $01, $01, $0a, $2a, $01, $06, $22, $2a, $06, $01, $2a, $2a, $01, $01
    db $7c, $f9, $35, $34, $7d, $09, $08, $07, $7e, $0d, $0c, $0b, $61, $11, $10, $0f
    db $01, $26, $21, $21, $06, $21, $21, $26, $01, $21, $26, $21, $06, $21, $21, $21
    db $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $0e, $01, $17, $7d, $dd, $de, $df, $e0
    db $09, $09, $09, $09, $09, $0e, $09, $09, $41, $41, $46, $41, $09, $0e, $09, $09
    db $c4, $c3, $b3, $c2, $a6, $a4, $a5, $b5, $fa, $ff, $12, $61, $e1, $bb, $bc, $f0
    db $09, $09, $09, $0d, $29, $09, $09, $0d, $46, $41, $41, $46, $0e, $09, $0e, $09
    db $ed, $ec, $14, $15, $a4, $a5, $a4, $a6, $ff, $12, $ff, $fa, $37, $36, $01, $17
    db $2a, $2a, $01, $06, $0d, $2d, $29, $09, $41, $61, $66, $61, $24, $24, $01, $06
    db $7c, $13, $12, $ff, $a5, $a7, $a6, $a5, $12, $a8, $fa, $12, $7d, $31, $17, $01
    db $06, $21, $21, $26, $29, $2e, $29, $29, $66, $29, $41, $61, $01, $21, $26, $26
    db $fa, $d2, $d1, $d1, $a4, $d2, $d1, $d1, $ff, $d2, $d1, $d1, $0e, $d2, $d1, $d1
    db $25, $e0, $80, $00, $2d, $e0, $80, $00, $65, $e0, $80, $00, $25, $e0, $80, $00

    pop de                                        ; $6e40: $d1
    pop de                                        ; $6e41: $d1
    jp nc, $d12f                                  ; $6e42: $d2 $2f $d1

    pop de                                        ; $6e45: $d1
    jp nc, $d130                                  ; $6e46: $d2 $30 $d1

    pop de                                        ; $6e49: $d1
    jp nc, $d104                                  ; $6e4a: $d2 $04 $d1

    pop de                                        ; $6e4d: $d1
    jp nc, Jump_000_0005                          ; $6e4e: $d2 $05 $00

    add b                                         ; $6e51: $80
    add b                                         ; $6e52: $80
    dec b                                         ; $6e53: $05
    nop                                           ; $6e54: $00
    add b                                         ; $6e55: $80
    add b                                         ; $6e56: $80
    dec b                                         ; $6e57: $05
    nop                                           ; $6e58: $00
    add b                                         ; $6e59: $80
    add b                                         ; $6e5a: $80
    dec b                                         ; $6e5b: $05
    nop                                           ; $6e5c: $00
    add b                                         ; $6e5d: $80
    add b                                         ; $6e5e: $80
    dec b                                         ; $6e5f: $05

    db $32, $33, $f6, $f7, $34, $35, $f9, $fa, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $06, $01, $01, $01, $01, $06, $01, $06, $06, $01, $06, $01, $06, $06, $01, $01
    db $fd, $1a, $f1, $f2, $ff, $12, $e6, $f3, $14, $15, $99, $3b, $9b, $9a, $99, $3b
    db $06, $01, $0a, $0a, $01, $01, $2a, $0a, $01, $06, $2a, $02, $2a, $2a, $2a, $02
    db $0e, $01, $17, $82, $ba, $bb, $bc, $bd, $fa, $ff, $12, $61, $b5, $a5, $a4, $a6
    db $41, $41, $41, $4e, $4d, $49, $49, $49, $05, $01, $01, $06, $6d, $69, $6e, $49

    pop de                                        ; $6ec0: $d1
    pop de                                        ; $6ec1: $d1
    jp nc, $d106                                  ; $6ec2: $d2 $06 $d1

    pop de                                        ; $6ec5: $d1
    jp nc, $d1fa                                  ; $6ec6: $d2 $fa $d1

    pop de                                        ; $6ec9: $d1
    jp nc, $d10a                                  ; $6eca: $d2 $0a $d1

    pop de                                        ; $6ecd: $d1
    jp nc, Jump_000_000e                          ; $6ece: $d2 $0e $00

Jump_077_6ed1:
    add b                                         ; $6ed1: $80
    add b                                         ; $6ed2: $80
    dec b                                         ; $6ed3: $05
    nop                                           ; $6ed4: $00
    add b                                         ; $6ed5: $80
    add b                                         ; $6ed6: $80
    dec b                                         ; $6ed7: $05
    nop                                           ; $6ed8: $00
    add b                                         ; $6ed9: $80
    add b                                         ; $6eda: $80
    dec b                                         ; $6edb: $05
    nop                                           ; $6edc: $00
    add b                                         ; $6edd: $80
    add b                                         ; $6ede: $80
    dec b                                         ; $6edf: $05

    db $0f, $10, $11, $f7, $ff, $12, $13, $fa, $14, $15, $09, $0a, $01, $17, $31, $0e
    db $01, $01, $06, $01, $06, $01, $01, $01, $06, $01, $01, $01, $01, $06, $01, $06
    db $9d, $9c, $a9, $aa, $ff, $12, $ab, $ac, $14, $15, $ad, $ae, $01, $17, $3c, $3d
    db $2a, $2a, $2a, $2a, $01, $01, $2a, $2a, $06, $01, $2a, $2a, $01, $06, $02, $02
    db $c2, $b3, $c3, $c4, $c5, $c6, $c7, $c8, $1f, $20, $21, $22, $23, $24, $25, $26
    db $6d, $6e, $69, $69, $6d, $69, $69, $6e, $05, $01, $06, $01, $05, $06, $06, $06
    db $32, $33, $f6, $f7, $34, $35, $f9, $fa, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $01, $01, $01, $01, $06, $01, $01, $01, $06, $06, $06, $01, $01, $06, $01, $01
    db $fd, $1a, $b6, $b7, $ff, $12, $b8, $b9, $9b, $9a, $99, $3b, $9d, $9c, $99, $3b
    db $06, $01, $2a, $2a, $01, $01, $2a, $2a, $2a, $2a, $2a, $02, $2a, $2a, $2a, $02
    db $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $3e, $3f, $12, $40, $41, $42, $15, $43
    db $05, $01, $06, $01, $05, $06, $06, $01, $05, $01, $06, $06, $05, $06, $06, $06
    db $0f, $10, $11, $f7, $ff, $12, $13, $fa, $14, $15, $09, $0a, $01, $17, $31, $0e
    db $01, $06, $06, $01, $06, $06, $01, $06, $06, $01, $06, $01, $01, $01, $01, $01
    db $fd, $1a, $be, $bf, $ff, $12, $c0, $c1, $14, $15, $3a, $3b, $01, $17, $3c, $3d
    db $06, $06, $2a, $2a, $01, $01, $2a, $2a, $06, $01, $02, $02, $06, $06, $02, $02
    db $44, $45, $17, $46, $47, $48, $fd, $49, $a0, $a1, $a2, $a3, $71, $70, $6f, $6e
    db $05, $01, $01, $06, $05, $01, $26, $01, $0d, $09, $09, $09, $65, $66, $66, $66
    db $fa, $ff, $12, $61, $dd, $de, $df, $e0, $0e, $01, $17, $7d, $dc, $db, $da, $d9
    db $41, $41, $46, $41, $4e, $4e, $4e, $4e, $06, $01, $01, $06, $69, $69, $6e, $69
    db $7f, $01, $17, $7d, $e1, $bb, $bc, $e2, $fa, $ff, $12, $61, $b5, $a5, $a4, $a6
    db $41, $46, $41, $41, $49, $49, $49, $4d, $06, $01, $01, $05, $69, $69, $6e, $4d
    db $97, $98, $9a, $9b, $3b, $99, $9c, $9d, $f4, $f5, $14, $15, $ae, $ad, $01, $17
    db $0a, $0a, $0a, $0a, $22, $0a, $0a, $0a, $0a, $0a, $01, $01, $0a, $0a, $06, $06
    db $7e, $f6, $33, $32, $61, $f9, $35, $34, $7c, $09, $08, $07, $7d, $0d, $0c, $0b
    db $01, $26, $21, $21, $01, $21, $21, $21, $06, $26, $21, $21, $01, $21, $26, $21
    db $d8, $d7, $d6, $d5, $d4, $d3, $d2, $d1, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $6e, $69, $69, $69, $6e, $69, $6e, $69, $01, $06, $01, $01, $06, $01, $01, $06
    db $b4, $b3, $b2, $b1, $b0, $af, $03, $02, $66, $67, $68, $69, $6a, $6b, $6c, $6d
    db $6e, $6e, $69, $6d, $69, $69, $21, $25, $06, $01, $01, $05, $06, $01, $06, $05
    db $3d, $3c, $fd, $1a, $b7, $b6, $ff, $12, $b9, $b8, $9a, $9b, $3b, $99, $9c, $9d
    db $22, $22, $06, $01, $0a, $0a, $01, $01, $0a, $0a, $0a, $0a, $22, $0a, $0a, $0a
    db $7e, $11, $10, $0f, $61, $13, $12, $ff, $7c, $09, $15, $14, $7d, $31, $17, $01
    db $01, $26, $21, $21, $06, $21, $21, $21, $01, $21, $21, $26, $01, $21, $26, $21
    db $fa, $ff, $12, $61, $62, $63, $64, $65, $7f, $80, $81, $82, $83, $fd, $1a, $84
    db $01, $01, $01, $01, $06, $06, $06, $01, $01, $09, $0e, $09, $0e, $01, $06, $09
    db $6e, $6f, $70, $71, $72, $73, $74, $75, $8b, $ff, $8c, $8d, $8e, $14, $8f, $90
    db $01, $06, $06, $05, $06, $01, $01, $05, $09, $06, $0e, $0d, $0e, $01, $0e, $0d
    db $bf, $be, $fd, $1a, $c1, $c0, $ff, $12, $3b, $3a, $14, $15, $3d, $3c, $01, $17
    db $0a, $0a, $01, $01, $0a, $0a, $01, $01, $22, $22, $06, $06, $22, $22, $01, $01
    db $7e, $f6, $33, $32, $61, $f9, $35, $34, $7c, $09, $08, $07, $7d, $0d, $0c, $0b
    db $01, $26, $26, $21, $06, $21, $21, $21, $01, $21, $26, $26, $06, $21, $21, $21
    db $85, $ff, $12, $86, $87, $88, $89, $8a, $c9, $ca, $cb, $cc, $61, $12, $ff, $fa
    db $09, $01, $01, $0e, $09, $0e, $0e, $09, $0e, $09, $09, $0e, $61, $61, $66, $61
    db $91, $01, $92, $93, $94, $1a, $95, $96, $cd, $ce, $cf, $d0, $2a, $29, $28, $27
    db $09, $01, $0e, $0d, $0e, $26, $09, $0d, $0e, $09, $09, $0d, $61, $61, $61, $65
    db $e3, $e4, $fd, $1a, $e5, $e6, $ff, $12, $3b, $99, $9a, $9b, $3b, $99, $9c, $9d
    db $0a, $0a, $01, $06, $0a, $0a, $01, $01, $22, $0a, $0a, $0a, $22, $0a, $0a, $0a
    db $7e, $11, $10, $0f, $61, $13, $12, $ff, $7c, $09, $15, $14, $7d, $31, $17, $01
    db $01, $21, $21, $21, $01, $26, $26, $21, $01, $21, $26, $21, $01, $21, $21, $26
    db $2f, $d2, $d1, $d1, $30, $d2, $d1, $d1, $04, $d2, $d1, $d1, $05, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $06, $d2, $d1, $d1, $fa, $d2, $d1, $d1, $0a, $d2, $d1, $d1, $0e, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00, $25, $e0, $80, $00
    db $32, $33, $f6, $f7, $34, $35, $f9, $fa, $07, $08, $09, $0a, $0b, $0c, $0d, $0e
    db $06, $01, $06, $06, $06, $06, $01, $01, $01, $06, $06, $01, $01, $06, $01, $01
    db $fd, $1a, $e4, $e3, $ff, $12, $e6, $e5, $9b, $9a, $99, $f6, $9d, $9c, $99, $f6
    db $06, $01, $2a, $2a, $01, $01, $2a, $2a, $2a, $2a, $2a, $0a, $2a, $2a, $2a, $0a
    db $6d, $6c, $6b, $6a, $69, $68, $67, $66, $02, $03, $af, $b0, $b1, $b2, $b3, $b4
    db $65, $61, $61, $66, $65, $66, $61, $61, $45, $46, $09, $0e, $0d, $09, $0e, $09

    pop de                                        ; $72a0: $d1
    pop de                                        ; $72a1: $d1
    jp nc, $d106                                  ; $72a2: $d2 $06 $d1

    pop de                                        ; $72a5: $d1
    jp nc, $d1fa                                  ; $72a6: $d2 $fa $d1

    pop de                                        ; $72a9: $d1
    jp nc, $d1df                                  ; $72aa: $d2 $df $d1

    pop de                                        ; $72ad: $d1
    jp nc, Jump_000_0012                          ; $72ae: $d2 $12 $00

    add b                                         ; $72b1: $80
    add b                                         ; $72b2: $80
    dec b                                         ; $72b3: $05
    nop                                           ; $72b4: $00
    add b                                         ; $72b5: $80
    add b                                         ; $72b6: $80
    dec b                                         ; $72b7: $05
    nop                                           ; $72b8: $00
    add b                                         ; $72b9: $80
    add b                                         ; $72ba: $80
    dec l                                         ; $72bb: $2d
    nop                                           ; $72bc: $00
    add b                                         ; $72bd: $80
    add b                                         ; $72be: $80
    ld h, l                                       ; $72bf: $65

    db $0f, $10, $11, $f7, $ff, $12, $13, $fa, $de, $dd, $bd, $dd, $ff, $fa, $82, $fa
    db $01, $01, $01, $06, $06, $01, $06, $01, $29, $2e, $09, $0e, $61, $66, $4e, $41
    db $fd, $1a, $f7, $f8, $ff, $12, $ec, $ed, $de, $df, $e0, $e1, $ff, $12, $61, $7f
    db $01, $01, $0a, $0a, $06, $01, $0a, $0a, $09, $0e, $0d, $0d, $46, $41, $41, $41
    db $a6, $a4, $a5, $b5, $fa, $ff, $12, $61, $ba, $bb, $bc, $bd, $0e, $01, $17, $82
    db $2d, $0e, $09, $0e, $45, $41, $46, $41, $0d, $09, $0e, $09, $46, $46, $41, $49

    pop de                                        ; $7320: $d1
    pop de                                        ; $7321: $d1
    ld sp, hl                                     ; $7322: $f9
    ld a, [$d1d1]                                 ; $7323: $fa $d1 $d1
    pop de                                        ; $7326: $d1
    pop de                                        ; $7327: $d1
    pop de                                        ; $7328: $d1
    pop de                                        ; $7329: $d1
    pop de                                        ; $732a: $d1
    pop de                                        ; $732b: $d1
    pop de                                        ; $732c: $d1
    pop de                                        ; $732d: $d1
    pop de                                        ; $732e: $d1
    pop de                                        ; $732f: $d1
    nop                                           ; $7330: $00
    add b                                         ; $7331: $80
    adc b                                         ; $7332: $88
    adc b                                         ; $7333: $88
    nop                                           ; $7334: $00
    add b                                         ; $7335: $80
    add b                                         ; $7336: $80
    add b                                         ; $7337: $80
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00

    db $fa, $fa, $fa, $fa, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $88, $88, $88, $88, $80, $80, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00
    db $fa, $fa, $fa, $fb, $d1, $d1, $d1, $d2, $d1, $d1, $d1, $f9, $d1, $d1, $d1, $d1
    db $88, $88, $88, $88, $80, $80, $80, $80, $00, $00, $80, $88, $00, $00, $80, $80
    db $60, $5f, $5e, $5d, $5c, $5b, $5a, $59, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $61, $61, $61, $61, $66, $61, $61, $66, $09, $09, $0e, $09, $09, $0e, $09, $09
    db $26, $25, $24, $23, $22, $21, $20, $1f, $c8, $c7, $c6, $c5, $c4, $c3, $b3, $c2
    db $66, $61, $61, $65, $61, $66, $66, $65, $0e, $09, $09, $0d, $0e, $09, $09, $0d
    db $3d, $fc, $fd, $1a, $b7, $b6, $ff, $12, $b9, $b8, $14, $15, $3b, $99, $01, $17
    db $22, $0a, $01, $06, $0a, $0a, $06, $01, $0a, $0a, $01, $01, $22, $0a, $06, $06
    db $7e, $f6, $33, $32, $61, $f9, $35, $34, $7c, $09, $08, $07, $7d, $0d, $0c, $0b
    db $06, $21, $21, $26, $01, $21, $26, $26, $06, $21, $21, $26, $01, $21, $26, $21
    db $d9, $da, $db, $dc, $0e, $01, $17, $7d, $dd, $de, $df, $e0, $fa, $17, $12, $61
    db $09, $09, $09, $09, $41, $46, $41, $46, $0e, $09, $0e, $0e, $41, $46, $46, $41
    db $a6, $a4, $a5, $b5, $fa, $ff, $12, $61, $e1, $bb, $bc, $e2, $7f, $01, $17, $7d
    db $2e, $09, $09, $0d, $41, $41, $41, $46, $0e, $0e, $0e, $0d, $46, $41, $41, $46
    db $eb, $f7, $fd, $1a, $ed, $ec, $ff, $12, $bd, $dd, $de, $df, $82, $fa, $ff, $12
    db $2a, $2a, $06, $01, $2a, $2a, $01, $01, $0d, $0d, $09, $09, $49, $46, $41, $46
    db $7e, $11, $10, $0f, $61, $13, $12, $ff, $e0, $bd, $dd, $de, $61, $82, $fa, $ff
    db $06, $26, $21, $21, $01, $26, $21, $26, $0e, $29, $0e, $09, $41, $69, $46, $41
    db $61, $12, $ff, $17, $dd, $de, $df, $e0, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $fe
    db $26, $26, $26, $46, $09, $0e, $09, $09, $88, $88, $88, $88, $88, $88, $88, $88
    db $ff, $fa, $fa, $fa, $d2, $d1, $d1, $d1, $00, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $88, $88, $88, $88, $e0, $80, $80, $80, $88, $80, $00, $00, $80, $80, $00, $00
    db $06, $d2, $d1, $d1, $fa, $d2, $d1, $d1, $df, $d2, $d1, $d1, $12, $d2, $d1, $d1
    db $25, $e0, $80, $00, $25, $e0, $80, $00, $0d, $e0, $80, $00, $45, $e0, $80, $00
    db $fa, $00, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1, $d1
    db $88, $88, $80, $00, $80, $80, $80, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld [$0700], sp                                ; $7500: $08 $00 $07
    nop                                           ; $7503: $00
    ret nz                                        ; $7504: $c0

    ld b, $d1                                     ; $7505: $06 $d1
    jp nc, $d4d3                                  ; $7507: $d2 $d3 $d4

    pop de                                        ; $750a: $d1
    jp nc, $d6d5                                  ; $750b: $d2 $d5 $d6

    pop de                                        ; $750e: $d1
    jp nc, $d8d7                                  ; $750f: $d2 $d7 $d8

    pop de                                        ; $7512: $d1
    jp nc, $dad9                                  ; $7513: $d2 $d9 $da

    add b                                         ; $7516: $80
    add b                                         ; $7517: $80
    inc b                                         ; $7518: $04
    inc b                                         ; $7519: $04
    add b                                         ; $751a: $80
    add b                                         ; $751b: $80
    inc b                                         ; $751c: $04
    inc b                                         ; $751d: $04
    add b                                         ; $751e: $80
    add b                                         ; $751f: $80
    ld [bc], a                                    ; $7520: $02
    ld [bc], a                                    ; $7521: $02
    add b                                         ; $7522: $80
    add b                                         ; $7523: $80
    ld [bc], a                                    ; $7524: $02
    ld [bc], a                                    ; $7525: $02
    db $db                                        ; $7526: $db
    call c, $dedd                                 ; $7527: $dc $dd $de
    rst $18                                       ; $752a: $df
    ldh [$e1], a                                  ; $752b: $e0 $e1
    ld [c], a                                     ; $752d: $e2
    db $e3                                        ; $752e: $e3
    db $e4                                        ; $752f: $e4
    push hl                                       ; $7530: $e5
    and $e7                                       ; $7531: $e6 $e7
    add sp, -$17                                  ; $7533: $e8 $e9
    ld [$0404], a                                 ; $7535: $ea $04 $04
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    inc b                                         ; $753a: $04
    inc b                                         ; $753b: $04
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    ld [bc], a                                    ; $753e: $02
    inc b                                         ; $753f: $04
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    ld [bc], a                                    ; $7542: $02
    inc b                                         ; $7543: $04
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    db $eb                                        ; $7546: $eb
    db $ec                                        ; $7547: $ec
    pop de                                        ; $7548: $d1
    pop de                                        ; $7549: $d1
    db $ed                                        ; $754a: $ed
    xor $d1                                       ; $754b: $ee $d1
    rst $28                                       ; $754d: $ef
    ldh a, [$f1]                                  ; $754e: $f0 $f1
    ld a, [c]                                     ; $7550: $f2
    di                                            ; $7551: $f3
    db $f4                                        ; $7552: $f4
    push af                                       ; $7553: $f5
    or $f7                                        ; $7554: $f6 $f7
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    ld hl, sp-$07                                 ; $7566: $f8 $f9
    ld a, [$fcfb]                                 ; $7568: $fa $fb $fc
    db $fd                                        ; $756b: $fd
    cp $ff                                        ; $756c: $fe $ff
    nop                                           ; $756e: $00
    ld bc, $0302                                  ; $756f: $01 $02 $03
    inc b                                         ; $7572: $04
    dec b                                         ; $7573: $05
    ld b, $07                                     ; $7574: $06 $07
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    inc b                                         ; $7579: $04
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    inc b                                         ; $757d: $04
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    inc b                                         ; $7581: $04
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    inc b                                         ; $7585: $04
    pop de                                        ; $7586: $d1
    jp nc, Jump_000_0908                          ; $7587: $d2 $08 $09

    pop de                                        ; $758a: $d1
    jp nc, Jump_000_0b0a                          ; $758b: $d2 $0a $0b

    pop de                                        ; $758e: $d1
    jp nc, Jump_000_0d0c                          ; $758f: $d2 $0c $0d

    pop de                                        ; $7592: $d1
    jp nc, Jump_000_0f0e                          ; $7593: $d2 $0e $0f

    add b                                         ; $7596: $80
    add b                                         ; $7597: $80
    ld [bc], a                                    ; $7598: $02
    ld [bc], a                                    ; $7599: $02
    add b                                         ; $759a: $80
    add b                                         ; $759b: $80
    ld [bc], a                                    ; $759c: $02
    ld [bc], a                                    ; $759d: $02
    add b                                         ; $759e: $80
    add b                                         ; $759f: $80
    ld [bc], a                                    ; $75a0: $02
    ld [bc], a                                    ; $75a1: $02
    add b                                         ; $75a2: $80
    add b                                         ; $75a3: $80
    rlca                                          ; $75a4: $07
    rlca                                          ; $75a5: $07
    ld [$1110], sp                                ; $75a6: $08 $10 $11
    ld [de], a                                    ; $75a9: $12
    ld a, [bc]                                    ; $75aa: $0a
    inc de                                        ; $75ab: $13
    inc d                                         ; $75ac: $14
    dec d                                         ; $75ad: $15
    ld d, $17                                     ; $75ae: $16 $17
    jr @+$1b                                      ; $75b0: $18 $19

    ld a, [de]                                    ; $75b2: $1a
    dec de                                        ; $75b3: $1b
    inc e                                         ; $75b4: $1c
    dec e                                         ; $75b5: $1d
    ld [hl+], a                                   ; $75b6: $22
    inc b                                         ; $75b7: $04
    inc b                                         ; $75b8: $04
    inc b                                         ; $75b9: $04
    ld [hl+], a                                   ; $75ba: $22
    rlca                                          ; $75bb: $07
    rlca                                          ; $75bc: $07
    rlca                                          ; $75bd: $07
    ld [bc], a                                    ; $75be: $02
    rlca                                          ; $75bf: $07
    ld b, $06                                     ; $75c0: $06 $06
    rlca                                          ; $75c2: $07
    rlca                                          ; $75c3: $07
    ld b, $05                                     ; $75c4: $06 $05
    ld e, $1f                                     ; $75c6: $1e $1f
    jr nz, jr_077_75dc                            ; $75c8: $20 $12

    ld hl, $2322                                  ; $75ca: $21 $22 $23
    inc h                                         ; $75cd: $24
    dec h                                         ; $75ce: $25
    ld h, $27                                     ; $75cf: $26 $27
    jr z, jr_077_75fc                             ; $75d1: $28 $29

    ld a, [hl+]                                   ; $75d3: $2a
    ld c, $2b                                     ; $75d4: $0e $2b
    inc b                                         ; $75d6: $04
    inc b                                         ; $75d7: $04
    inc b                                         ; $75d8: $04
    inc b                                         ; $75d9: $04
    rlca                                          ; $75da: $07
    rlca                                          ; $75db: $07

jr_077_75dc:
    rlca                                          ; $75dc: $07
    rlca                                          ; $75dd: $07
    dec b                                         ; $75de: $05
    ld b, $05                                     ; $75df: $06 $05
    ld bc, $0506                                  ; $75e1: $01 $06 $05
    ld b, $01                                     ; $75e4: $06 $01
    ld e, $1f                                     ; $75e6: $1e $1f
    jr nz, jr_077_7616                            ; $75e8: $20 $2c

    dec l                                         ; $75ea: $2d
    inc de                                        ; $75eb: $13
    inc d                                         ; $75ec: $14
    dec d                                         ; $75ed: $15
    ld l, $17                                     ; $75ee: $2e $17
    jr jr_077_760b                                ; $75f0: $18 $19

    dec hl                                        ; $75f2: $2b
    dec de                                        ; $75f3: $1b
    inc e                                         ; $75f4: $1c
    dec e                                         ; $75f5: $1d
    inc b                                         ; $75f6: $04
    inc b                                         ; $75f7: $04
    inc b                                         ; $75f8: $04
    inc b                                         ; $75f9: $04
    rlca                                          ; $75fa: $07
    rlca                                          ; $75fb: $07

jr_077_75fc:
    rlca                                          ; $75fc: $07
    rlca                                          ; $75fd: $07
    ld bc, $0506                                  ; $75fe: $01 $06 $05
    ld b, $21                                     ; $7601: $06 $21
    ld b, $05                                     ; $7603: $06 $05
    ld b, $d1                                     ; $7605: $06 $d1
    jp nc, Jump_000_302f                          ; $7607: $d2 $2f $30

    pop de                                        ; $760a: $d1

jr_077_760b:
    jp nc, Jump_000_2423                          ; $760b: $d2 $23 $24

    pop de                                        ; $760e: $d1
    jp nc, Jump_000_3127                          ; $760f: $d2 $27 $31

    pop de                                        ; $7612: $d1
    jp nc, Jump_000_0f0e                          ; $7613: $d2 $0e $0f

jr_077_7616:
    add b                                         ; $7616: $80
    add b                                         ; $7617: $80
    rlca                                          ; $7618: $07
    ld b, $80                                     ; $7619: $06 $80
    add b                                         ; $761b: $80
    rlca                                          ; $761c: $07
    ld b, $80                                     ; $761d: $06 $80
    add b                                         ; $761f: $80
    rlca                                          ; $7620: $07
    ld b, $80                                     ; $7621: $06 $80
    add b                                         ; $7623: $80
    rlca                                          ; $7624: $07
    ld b, $32                                     ; $7625: $06 $32
    inc sp                                        ; $7627: $33
    inc [hl]                                      ; $7628: $34
    dec [hl]                                      ; $7629: $35
    dec l                                         ; $762a: $2d
    inc de                                        ; $762b: $13
    inc d                                         ; $762c: $14
    dec d                                         ; $762d: $15
    ld [hl], $17                                  ; $762e: $36 $17
    jr @+$1b                                      ; $7630: $18 $19

    ld a, [de]                                    ; $7632: $1a
    dec de                                        ; $7633: $1b
    inc e                                         ; $7634: $1c
    dec e                                         ; $7635: $1d
    ld b, $05                                     ; $7636: $06 $05
    ld b, $05                                     ; $7638: $06 $05
    ld b, $05                                     ; $763a: $06 $05
    dec b                                         ; $763c: $05
    dec b                                         ; $763d: $05
    ld b, $06                                     ; $763e: $06 $06
    dec b                                         ; $7640: $05
    dec b                                         ; $7641: $05
    dec b                                         ; $7642: $05
    ld b, $06                                     ; $7643: $06 $06
    ld b, $37                                     ; $7645: $06 $37
    jr c, @+$31                                   ; $7647: $38 $2f

    add hl, sp                                    ; $7649: $39
    ld hl, $2322                                  ; $764a: $21 $22 $23
    ld a, [hl-]                                   ; $764d: $3a
    dec h                                         ; $764e: $25
    ld h, $27                                     ; $764f: $26 $27
    ld sp, $3c3b                                  ; $7651: $31 $3b $3c
    dec a                                         ; $7654: $3d
    rrca                                          ; $7655: $0f
    dec b                                         ; $7656: $05
    ld b, $06                                     ; $7657: $06 $06
    ld bc, $0606                                  ; $7659: $01 $06 $06
    ld b, $01                                     ; $765c: $06 $01
    ld b, $06                                     ; $765e: $06 $06
    ld b, $07                                     ; $7660: $06 $07
    ld bc, $0101                                  ; $7662: $01 $01 $01
    dec b                                         ; $7665: $05
    ld a, $33                                     ; $7666: $3e $33
    inc [hl]                                      ; $7668: $34
    dec [hl]                                      ; $7669: $35
    ccf                                           ; $766a: $3f
    inc de                                        ; $766b: $13
    inc d                                         ; $766c: $14
    dec d                                         ; $766d: $15
    ld [hl], $17                                  ; $766e: $36 $17
    jr jr_077_768b                                ; $7670: $18 $19

    ld a, [de]                                    ; $7672: $1a
    dec de                                        ; $7673: $1b
    ld b, b                                       ; $7674: $40
    ld b, c                                       ; $7675: $41
    ld bc, $0606                                  ; $7676: $01 $06 $06
    dec b                                         ; $7679: $05
    ld bc, $0607                                  ; $767a: $01 $07 $06
    dec b                                         ; $767d: $05
    rlca                                          ; $767e: $07
    rlca                                          ; $767f: $07
    ld b, $06                                     ; $7680: $06 $06
    ld b, $06                                     ; $7682: $06 $06
    ld bc, $d101                                  ; $7684: $01 $01 $d1
    jp nc, Jump_000_302f                          ; $7687: $d2 $2f $30

    pop de                                        ; $768a: $d1

jr_077_768b:
    jp nc, Jump_000_2423                          ; $768b: $d2 $23 $24

    pop de                                        ; $768e: $d1
    jp nc, Jump_000_3127                          ; $768f: $d2 $27 $31

    pop de                                        ; $7692: $d1
    jp nc, Jump_000_0f0e                          ; $7693: $d2 $0e $0f

    add b                                         ; $7696: $80
    add b                                         ; $7697: $80
    rlca                                          ; $7698: $07
    dec b                                         ; $7699: $05
    add b                                         ; $769a: $80
    add b                                         ; $769b: $80
    rlca                                          ; $769c: $07
    ld b, $80                                     ; $769d: $06 $80
    add b                                         ; $769f: $80
    rlca                                          ; $76a0: $07
    dec b                                         ; $76a1: $05
    add b                                         ; $76a2: $80
    add b                                         ; $76a3: $80
    rlca                                          ; $76a4: $07
    dec b                                         ; $76a5: $05
    ld [hl-], a                                   ; $76a6: $32
    inc sp                                        ; $76a7: $33
    inc [hl]                                      ; $76a8: $34
    dec [hl]                                      ; $76a9: $35
    dec l                                         ; $76aa: $2d
    inc de                                        ; $76ab: $13
    inc d                                         ; $76ac: $14
    dec d                                         ; $76ad: $15
    ld [hl], $17                                  ; $76ae: $36 $17
    jr jr_077_76cb                                ; $76b0: $18 $19

    ld a, [de]                                    ; $76b2: $1a
    dec de                                        ; $76b3: $1b
    inc e                                         ; $76b4: $1c
    dec e                                         ; $76b5: $1d
    ld b, $05                                     ; $76b6: $06 $05
    ld b, $06                                     ; $76b8: $06 $06
    dec b                                         ; $76ba: $05
    ld b, $05                                     ; $76bb: $06 $05
    ld b, $06                                     ; $76bd: $06 $06
    dec b                                         ; $76bf: $05
    ld b, $05                                     ; $76c0: $06 $05
    ld b, $06                                     ; $76c2: $06 $06
    ld b, $05                                     ; $76c4: $06 $05
    ld b, d                                       ; $76c6: $42
    ld b, e                                       ; $76c7: $43
    ld b, h                                       ; $76c8: $44
    jr nc, jr_077_7710                            ; $76c9: $30 $45

jr_077_76cb:
    ld b, [hl]                                    ; $76cb: $46
    ld b, a                                       ; $76cc: $47
    inc h                                         ; $76cd: $24
    ld c, b                                       ; $76ce: $48
    ld c, c                                       ; $76cf: $49
    ld c, d                                       ; $76d0: $4a

Jump_077_76d1:
    ld sp, $4c4b                                  ; $76d1: $31 $4b $4c
    ld c, l                                       ; $76d4: $4d
    rrca                                          ; $76d5: $0f
    ld bc, $0101                                  ; $76d6: $01 $01 $01
    ld b, $01                                     ; $76d9: $06 $01
    ld bc, $0701                                  ; $76db: $01 $01 $07
    ld bc, $0101                                  ; $76de: $01 $01 $01
    rlca                                          ; $76e1: $07
    ld bc, $0101                                  ; $76e2: $01 $01 $01
    rlca                                          ; $76e5: $07
    ld [hl-], a                                   ; $76e6: $32
    inc sp                                        ; $76e7: $33
    ld c, [hl]                                    ; $76e8: $4e
    ld c, a                                       ; $76e9: $4f
    dec l                                         ; $76ea: $2d
    inc de                                        ; $76eb: $13
    ld d, b                                       ; $76ec: $50
    ld d, c                                       ; $76ed: $51
    ld [hl], $17                                  ; $76ee: $36 $17
    ld c, b                                       ; $76f0: $48
    ld c, c                                       ; $76f1: $49
    ld a, [de]                                    ; $76f2: $1a
    dec de                                        ; $76f3: $1b
    ld c, e                                       ; $76f4: $4b
    ld c, h                                       ; $76f5: $4c
    ld b, $05                                     ; $76f6: $06 $05
    ld bc, $0601                                  ; $76f8: $01 $01 $06
    ld b, $01                                     ; $76fb: $06 $01
    ld bc, $0605                                  ; $76fd: $01 $05 $06
    ld bc, $0601                                  ; $7700: $01 $01 $06
    dec b                                         ; $7703: $05
    ld bc, $5201                                  ; $7704: $01 $01 $52
    ld d, e                                       ; $7707: $53
    ld d, h                                       ; $7708: $54
    ld d, l                                       ; $7709: $55
    ld d, [hl]                                    ; $770a: $56
    ld d, a                                       ; $770b: $57
    ld e, b                                       ; $770c: $58
    ld e, c                                       ; $770d: $59
    ld e, d                                       ; $770e: $5a
    ld e, e                                       ; $770f: $5b

jr_077_7710:
    ld e, h                                       ; $7710: $5c
    ld e, l                                       ; $7711: $5d
    ld e, [hl]                                    ; $7712: $5e
    ld e, a                                       ; $7713: $5f
    ld h, b                                       ; $7714: $60
    ld h, c                                       ; $7715: $61
    ld bc, $0101                                  ; $7716: $01 $01 $01
    ld bc, $0101                                  ; $7719: $01 $01 $01
    ld bc, $0301                                  ; $771c: $01 $01 $03
    inc bc                                        ; $771f: $03
    inc bc                                        ; $7720: $03
    inc bc                                        ; $7721: $03
    inc bc                                        ; $7722: $03
    inc bc                                        ; $7723: $03
    inc bc                                        ; $7724: $03
    inc bc                                        ; $7725: $03
    ld h, d                                       ; $7726: $62
    ld h, e                                       ; $7727: $63
    ld h, h                                       ; $7728: $64
    ld h, l                                       ; $7729: $65
    ld h, [hl]                                    ; $772a: $66
    ld h, a                                       ; $772b: $67
    ld l, b                                       ; $772c: $68
    ld l, c                                       ; $772d: $69
    ld l, d                                       ; $772e: $6a
    ld l, e                                       ; $772f: $6b
    ld l, h                                       ; $7730: $6c
    ld l, l                                       ; $7731: $6d
    ld l, [hl]                                    ; $7732: $6e
    ld l, a                                       ; $7733: $6f
    ld [hl], b                                    ; $7734: $70
    ld [hl], c                                    ; $7735: $71
    ld bc, $0101                                  ; $7736: $01 $01 $01
    inc b                                         ; $7739: $04
    ld bc, $0101                                  ; $773a: $01 $01 $01
    inc b                                         ; $773d: $04
    inc bc                                        ; $773e: $03
    inc bc                                        ; $773f: $03
    inc bc                                        ; $7740: $03
    inc b                                         ; $7741: $04
    inc bc                                        ; $7742: $03
    inc bc                                        ; $7743: $03
    inc bc                                        ; $7744: $03
    inc b                                         ; $7745: $04
    call nc, $dcdb                                ; $7746: $d4 $db $dc
    db $d3                                        ; $7749: $d3
    sub $df                                       ; $774a: $d6 $df
    ldh [$d5], a                                  ; $774c: $e0 $d5
    ld [hl], d                                    ; $774e: $72
    ld [hl], e                                    ; $774f: $73
    ld [hl], h                                    ; $7750: $74
    ld [hl], l                                    ; $7751: $75
    halt                                          ; $7752: $76
    ld [hl], a                                    ; $7753: $77
    ld a, b                                       ; $7754: $78
    ld a, c                                       ; $7755: $79
    inc b                                         ; $7756: $04
    inc b                                         ; $7757: $04
    inc b                                         ; $7758: $04
    inc b                                         ; $7759: $04
    inc b                                         ; $775a: $04
    inc b                                         ; $775b: $04
    inc b                                         ; $775c: $04
    inc b                                         ; $775d: $04
    inc b                                         ; $775e: $04
    inc b                                         ; $775f: $04
    inc b                                         ; $7760: $04
    inc b                                         ; $7761: $04
    inc b                                         ; $7762: $04
    inc b                                         ; $7763: $04
    inc b                                         ; $7764: $04
    inc b                                         ; $7765: $04
    jp nc, $d1d1                                  ; $7766: $d2 $d1 $d1

    pop de                                        ; $7769: $d1
    jp nc, $d1d1                                  ; $776a: $d2 $d1 $d1

    pop de                                        ; $776d: $d1
    jp nc, $d1d1                                  ; $776e: $d2 $d1 $d1

    pop de                                        ; $7771: $d1
    jp nc, $d1d1                                  ; $7772: $d2 $d1 $d1

    pop de                                        ; $7775: $d1
    add b                                         ; $7776: $80
    add b                                         ; $7777: $80
    add b                                         ; $7778: $80
    add b                                         ; $7779: $80
    add b                                         ; $777a: $80
    add b                                         ; $777b: $80
    add b                                         ; $777c: $80
    add b                                         ; $777d: $80
    add b                                         ; $777e: $80
    add b                                         ; $777f: $80
    add b                                         ; $7780: $80
    add b                                         ; $7781: $80
    add b                                         ; $7782: $80
    add b                                         ; $7783: $80
    add b                                         ; $7784: $80
    add b                                         ; $7785: $80
    ld a, d                                       ; $7786: $7a
    ld a, e                                       ; $7787: $7b
    ld a, h                                       ; $7788: $7c
    ld a, l                                       ; $7789: $7d
    ld a, [hl]                                    ; $778a: $7e
    ld a, a                                       ; $778b: $7f
    add b                                         ; $778c: $80
    add c                                         ; $778d: $81
    add d                                         ; $778e: $82
    add e                                         ; $778f: $83
    add h                                         ; $7790: $84
    add l                                         ; $7791: $85
    add hl, hl                                    ; $7792: $29
    ld a, [hl+]                                   ; $7793: $2a
    ld c, $0f                                     ; $7794: $0e $0f
    inc bc                                        ; $7796: $03
    inc bc                                        ; $7797: $03
    inc bc                                        ; $7798: $03
    inc bc                                        ; $7799: $03
    inc bc                                        ; $779a: $03
    inc bc                                        ; $779b: $03
    dec bc                                        ; $779c: $0b
    dec bc                                        ; $779d: $0b
    dec bc                                        ; $779e: $0b
    dec bc                                        ; $779f: $0b
    dec bc                                        ; $77a0: $0b
    dec bc                                        ; $77a1: $0b
    rlca                                          ; $77a2: $07
    rlca                                          ; $77a3: $07
    rlca                                          ; $77a4: $07
    rlca                                          ; $77a5: $07
    add [hl]                                      ; $77a6: $86
    add a                                         ; $77a7: $87
    adc b                                         ; $77a8: $88
    adc c                                         ; $77a9: $89
    adc d                                         ; $77aa: $8a
    adc e                                         ; $77ab: $8b
    adc h                                         ; $77ac: $8c
    dec d                                         ; $77ad: $15
    adc l                                         ; $77ae: $8d
    adc [hl]                                      ; $77af: $8e
    adc a                                         ; $77b0: $8f
    add hl, de                                    ; $77b1: $19
    ld a, [de]                                    ; $77b2: $1a
    dec de                                        ; $77b3: $1b
    inc e                                         ; $77b4: $1c
    dec e                                         ; $77b5: $1d
    dec bc                                        ; $77b6: $0b
    dec bc                                        ; $77b7: $0b
    dec bc                                        ; $77b8: $0b
    inc c                                         ; $77b9: $0c
    dec bc                                        ; $77ba: $0b
    dec bc                                        ; $77bb: $0b
    dec bc                                        ; $77bc: $0b
    rlca                                          ; $77bd: $07
    dec bc                                        ; $77be: $0b
    dec bc                                        ; $77bf: $0b
    dec bc                                        ; $77c0: $0b
    rlca                                          ; $77c1: $07
    rlca                                          ; $77c2: $07
    rlca                                          ; $77c3: $07
    rlca                                          ; $77c4: $07
    rlca                                          ; $77c5: $07
    sub b                                         ; $77c6: $90
    sub c                                         ; $77c7: $91
    sub d                                         ; $77c8: $92
    sub e                                         ; $77c9: $93
    ld hl, $2322                                  ; $77ca: $21 $22 $23
    inc h                                         ; $77cd: $24
    dec h                                         ; $77ce: $25
    ld h, $27                                     ; $77cf: $26 $27
    ld sp, $2a29                                  ; $77d1: $31 $29 $2a
    ld c, $0f                                     ; $77d4: $0e $0f
    inc c                                         ; $77d6: $0c
    inc c                                         ; $77d7: $0c
    inc c                                         ; $77d8: $0c
    inc c                                         ; $77d9: $0c
    rlca                                          ; $77da: $07
    rlca                                          ; $77db: $07
    rlca                                          ; $77dc: $07
    rlca                                          ; $77dd: $07
    ld b, $06                                     ; $77de: $06 $06
    ld b, $07                                     ; $77e0: $06 $07
    ld b, $06                                     ; $77e2: $06 $06
    ld b, $07                                     ; $77e4: $06 $07
    jp nc, $d1d1                                  ; $77e6: $d2 $d1 $d1

    pop de                                        ; $77e9: $d1
    jp nc, $d1d1                                  ; $77ea: $d2 $d1 $d1

    pop de                                        ; $77ed: $d1
    jp nc, $d1d1                                  ; $77ee: $d2 $d1 $d1

    pop de                                        ; $77f1: $d1
    sub h                                         ; $77f2: $94
    sub l                                         ; $77f3: $95
    sub [hl]                                      ; $77f4: $96
    pop de                                        ; $77f5: $d1
    add b                                         ; $77f6: $80
    add b                                         ; $77f7: $80
    add b                                         ; $77f8: $80
    add b                                         ; $77f9: $80
    add b                                         ; $77fa: $80
    add b                                         ; $77fb: $80
    add b                                         ; $77fc: $80
    add b                                         ; $77fd: $80
    add b                                         ; $77fe: $80
    add b                                         ; $77ff: $80
    add b                                         ; $7800: $80
    add b                                         ; $7801: $80
    adc b                                         ; $7802: $88
    adc b                                         ; $7803: $88
    adc b                                         ; $7804: $88
    add b                                         ; $7805: $80
    scf                                           ; $7806: $37
    jr c, jr_077_7838                             ; $7807: $38 $2f

    jr nc, jr_077_782c                            ; $7809: $30 $21

    ld [hl+], a                                   ; $780b: $22
    inc hl                                        ; $780c: $23
    inc h                                         ; $780d: $24
    dec h                                         ; $780e: $25
    ld h, $27                                     ; $780f: $26 $27
    ld sp, $2a3d                                  ; $7811: $31 $3d $2a
    ld c, $0f                                     ; $7814: $0e $0f
    ld b, $06                                     ; $7816: $06 $06
    dec b                                         ; $7818: $05
    dec b                                         ; $7819: $05
    dec b                                         ; $781a: $05
    dec b                                         ; $781b: $05
    ld b, $06                                     ; $781c: $06 $06
    ld b, $05                                     ; $781e: $06 $05
    dec b                                         ; $7820: $05
    ld b, $01                                     ; $7821: $06 $01
    dec b                                         ; $7823: $05
    dec b                                         ; $7824: $05
    ld b, $32                                     ; $7825: $06 $32
    inc sp                                        ; $7827: $33
    inc [hl]                                      ; $7828: $34
    dec [hl]                                      ; $7829: $35

jr_077_782a:
    dec l                                         ; $782a: $2d
    inc de                                        ; $782b: $13

jr_077_782c:
    inc d                                         ; $782c: $14
    dec d                                         ; $782d: $15
    ld [hl], $17                                  ; $782e: $36 $17
    jr jr_077_784b                                ; $7830: $18 $19

    ld b, b                                       ; $7832: $40
    sub a                                         ; $7833: $97
    sbc b                                         ; $7834: $98
    dec e                                         ; $7835: $1d
    dec b                                         ; $7836: $05
    dec b                                         ; $7837: $05

jr_077_7838:
    ld b, $05                                     ; $7838: $06 $05
    ld b, $05                                     ; $783a: $06 $05
    ld b, $06                                     ; $783c: $06 $06
    ld b, $06                                     ; $783e: $06 $06
    ld b, $05                                     ; $7840: $06 $05
    ld bc, $0909                                  ; $7842: $01 $09 $09
    dec b                                         ; $7845: $05
    scf                                           ; $7846: $37
    jr c, jr_077_7878                             ; $7847: $38 $2f

    jr nc, jr_077_786c                            ; $7849: $30 $21

jr_077_784b:
    ld [hl+], a                                   ; $784b: $22
    inc hl                                        ; $784c: $23
    inc h                                         ; $784d: $24
    dec h                                         ; $784e: $25
    ld h, $27                                     ; $784f: $26 $27
    ld sp, $2a29                                  ; $7851: $31 $29 $2a
    ld c, $0f                                     ; $7854: $0e $0f
    dec b                                         ; $7856: $05
    ld b, $06                                     ; $7857: $06 $06
    rlca                                          ; $7859: $07
    dec b                                         ; $785a: $05
    dec b                                         ; $785b: $05
    ld b, $07                                     ; $785c: $06 $07
    dec b                                         ; $785e: $05
    dec b                                         ; $785f: $05
    ld b, $07                                     ; $7860: $06 $07
    ld b, $06                                     ; $7862: $06 $06
    ld b, $07                                     ; $7864: $06 $07
    sbc c                                         ; $7866: $99
    db $d3                                        ; $7867: $d3
    sbc d                                         ; $7868: $9a
    pop de                                        ; $7869: $d1
    sbc e                                         ; $786a: $9b
    push de                                       ; $786b: $d5

jr_077_786c:
    sbc d                                         ; $786c: $9a
    pop de                                        ; $786d: $d1
    sbc h                                         ; $786e: $9c
    ld [hl], l                                    ; $786f: $75
    sbc d                                         ; $7870: $9a
    pop de                                        ; $7871: $d1
    sbc l                                         ; $7872: $9d
    ld a, c                                       ; $7873: $79
    sbc d                                         ; $7874: $9a
    pop de                                        ; $7875: $d1
    inc c                                         ; $7876: $0c
    inc b                                         ; $7877: $04

jr_077_7878:
    adc b                                         ; $7878: $88
    add b                                         ; $7879: $80
    inc c                                         ; $787a: $0c
    inc b                                         ; $787b: $04
    adc b                                         ; $787c: $88
    add b                                         ; $787d: $80
    inc c                                         ; $787e: $0c
    inc b                                         ; $787f: $04
    adc b                                         ; $7880: $88
    add b                                         ; $7881: $80
    inc c                                         ; $7882: $0c
    inc b                                         ; $7883: $04
    adc b                                         ; $7884: $88
    add b                                         ; $7885: $80
    sbc [hl]                                      ; $7886: $9e
    jr c, jr_077_78b8                             ; $7887: $38 $2f

    jr nc, jr_077_782a                            ; $7889: $30 $9f

    ld [hl+], a                                   ; $788b: $22
    inc hl                                        ; $788c: $23
    inc h                                         ; $788d: $24
    ld c, d                                       ; $788e: $4a
    ld h, $27                                     ; $788f: $26 $27
    ld sp, $2a4d                                  ; $7891: $31 $4d $2a
    ld c, $0f                                     ; $7894: $0e $0f
    add hl, bc                                    ; $7896: $09
    ld b, $05                                     ; $7897: $06 $05
    ld b, $09                                     ; $7899: $06 $09
    rlca                                          ; $789b: $07
    dec b                                         ; $789c: $05
    ld b, $01                                     ; $789d: $06 $01
    rlca                                          ; $789f: $07
    ld b, $05                                     ; $78a0: $06 $05
    ld bc, $0507                                  ; $78a2: $01 $07 $05
    ld b, $a0                                     ; $78a5: $06 $a0
    and c                                         ; $78a7: $a1
    and d                                         ; $78a8: $a2
    dec [hl]                                      ; $78a9: $35
    and e                                         ; $78aa: $a3
    and h                                         ; $78ab: $a4
    and l                                         ; $78ac: $a5
    dec d                                         ; $78ad: $15
    ld c, b                                       ; $78ae: $48
    ld c, c                                       ; $78af: $49
    ld c, d                                       ; $78b0: $4a
    add hl, de                                    ; $78b1: $19
    ld c, e                                       ; $78b2: $4b
    ld c, h                                       ; $78b3: $4c
    ld c, l                                       ; $78b4: $4d
    dec e                                         ; $78b5: $1d
    add hl, bc                                    ; $78b6: $09
    add hl, bc                                    ; $78b7: $09

jr_077_78b8:
    add hl, bc                                    ; $78b8: $09
    ld b, $09                                     ; $78b9: $06 $09
    add hl, bc                                    ; $78bb: $09
    add hl, bc                                    ; $78bc: $09
    rlca                                          ; $78bd: $07
    ld bc, $0101                                  ; $78be: $01 $01 $01
    rlca                                          ; $78c1: $07
    ld bc, $0101                                  ; $78c2: $01 $01 $01
    rlca                                          ; $78c5: $07
    scf                                           ; $78c6: $37
    jr c, jr_077_78f8                             ; $78c7: $38 $2f

    jr nc, jr_077_78ec                            ; $78c9: $30 $21

    ld [hl+], a                                   ; $78cb: $22
    inc hl                                        ; $78cc: $23
    inc h                                         ; $78cd: $24
    dec h                                         ; $78ce: $25
    ld h, $27                                     ; $78cf: $26 $27
    ld sp, $2a29                                  ; $78d1: $31 $29 $2a
    ld c, $0f                                     ; $78d4: $0e $0f
    ld b, $06                                     ; $78d6: $06 $06
    ld b, $07                                     ; $78d8: $06 $07
    ld b, $05                                     ; $78da: $06 $05
    dec b                                         ; $78dc: $05
    rlca                                          ; $78dd: $07
    ld b, $06                                     ; $78de: $06 $06
    dec b                                         ; $78e0: $05
    dec b                                         ; $78e1: $05
    ld b, $05                                     ; $78e2: $06 $05
    dec b                                         ; $78e4: $05
    dec b                                         ; $78e5: $05
    and [hl]                                      ; $78e6: $a6
    sub e                                         ; $78e7: $93
    sbc d                                         ; $78e8: $9a
    pop de                                        ; $78e9: $d1
    dec l                                         ; $78ea: $2d
    inc de                                        ; $78eb: $13

jr_077_78ec:
    sbc d                                         ; $78ec: $9a
    and a                                         ; $78ed: $a7
    ld [hl], $17                                  ; $78ee: $36 $17
    sbc d                                         ; $78f0: $9a
    and a                                         ; $78f1: $a7
    xor b                                         ; $78f2: $a8
    sub l                                         ; $78f3: $95
    xor c                                         ; $78f4: $a9
    and a                                         ; $78f5: $a7
    inc c                                         ; $78f6: $0c
    inc c                                         ; $78f7: $0c

jr_077_78f8:
    adc b                                         ; $78f8: $88
    add b                                         ; $78f9: $80
    rlca                                          ; $78fa: $07
    rlca                                          ; $78fb: $07
    adc b                                         ; $78fc: $88
    adc b                                         ; $78fd: $88
    ld b, $07                                     ; $78fe: $06 $07
    adc b                                         ; $7900: $88
    adc b                                         ; $7901: $88
    adc b                                         ; $7902: $88
    adc b                                         ; $7903: $88
    adc b                                         ; $7904: $88
    adc b                                         ; $7905: $88
    pop de                                        ; $7906: $d1
    jp nc, Jump_000_302f                          ; $7907: $d2 $2f $30

    pop de                                        ; $790a: $d1
    jp nc, Jump_000_2423                          ; $790b: $d2 $23 $24

    pop de                                        ; $790e: $d1
    jp nc, Jump_000_3127                          ; $790f: $d2 $27 $31

    pop de                                        ; $7912: $d1
    jp nc, Jump_000_0f0e                          ; $7913: $d2 $0e $0f

    add b                                         ; $7916: $80
    add b                                         ; $7917: $80
    rlca                                          ; $7918: $07
    ld b, $80                                     ; $7919: $06 $80
    add b                                         ; $791b: $80
    rlca                                          ; $791c: $07
    dec b                                         ; $791d: $05
    add b                                         ; $791e: $80
    add b                                         ; $791f: $80
    rlca                                          ; $7920: $07
    dec b                                         ; $7921: $05
    add b                                         ; $7922: $80
    add b                                         ; $7923: $80
    rlca                                          ; $7924: $07
    dec b                                         ; $7925: $05
    ld [hl-], a                                   ; $7926: $32
    inc sp                                        ; $7927: $33
    inc [hl]                                      ; $7928: $34
    dec [hl]                                      ; $7929: $35
    dec l                                         ; $792a: $2d
    inc de                                        ; $792b: $13
    inc d                                         ; $792c: $14
    dec d                                         ; $792d: $15
    ld [hl], $17                                  ; $792e: $36 $17
    jr jr_077_794b                                ; $7930: $18 $19

    ld a, [de]                                    ; $7932: $1a
    dec de                                        ; $7933: $1b
    inc e                                         ; $7934: $1c
    dec e                                         ; $7935: $1d
    dec b                                         ; $7936: $05
    dec b                                         ; $7937: $05
    dec b                                         ; $7938: $05
    ld b, $05                                     ; $7939: $06 $05
    dec b                                         ; $793b: $05
    ld b, $06                                     ; $793c: $06 $06
    dec b                                         ; $793e: $05
    dec b                                         ; $793f: $05
    ld b, $06                                     ; $7940: $06 $06
    dec b                                         ; $7942: $05
    ld b, $05                                     ; $7943: $06 $05
    dec b                                         ; $7945: $05
    scf                                           ; $7946: $37
    jr c, jr_077_7978                             ; $7947: $38 $2f

    jr nc, jr_077_796c                            ; $7949: $30 $21

jr_077_794b:
    ld [hl+], a                                   ; $794b: $22
    inc hl                                        ; $794c: $23
    inc h                                         ; $794d: $24
    dec h                                         ; $794e: $25
    ld h, $27                                     ; $794f: $26 $27
    ld sp, $9740                                  ; $7951: $31 $40 $97
    sbc b                                         ; $7954: $98
    rrca                                          ; $7955: $0f
    rlca                                          ; $7956: $07
    rlca                                          ; $7957: $07
    rlca                                          ; $7958: $07
    rlca                                          ; $7959: $07
    ld b, $05                                     ; $795a: $06 $05

jr_077_795c:
    dec b                                         ; $795c: $05
    dec b                                         ; $795d: $05
    dec b                                         ; $795e: $05
    ld b, $06                                     ; $795f: $06 $06
    dec b                                         ; $7961: $05
    ld bc, $0909                                  ; $7962: $01 $09 $09
    ld b, $32                                     ; $7965: $06 $32
    inc sp                                        ; $7967: $33
    inc [hl]                                      ; $7968: $34
    dec [hl]                                      ; $7969: $35
    dec l                                         ; $796a: $2d
    inc de                                        ; $796b: $13

jr_077_796c:
    inc d                                         ; $796c: $14
    dec d                                         ; $796d: $15

jr_077_796e:
    ld [hl], $17                                  ; $796e: $36 $17
    jr jr_077_798b                                ; $7970: $18 $19

    ld a, [de]                                    ; $7972: $1a
    dec de                                        ; $7973: $1b
    dec sp                                        ; $7974: $3b
    inc a                                         ; $7975: $3c
    ld b, $06                                     ; $7976: $06 $06

jr_077_7978:
    rlca                                          ; $7978: $07
    rlca                                          ; $7979: $07
    ld b, $05                                     ; $797a: $06 $05
    dec b                                         ; $797c: $05
    dec b                                         ; $797d: $05
    dec b                                         ; $797e: $05
    ld b, $06                                     ; $797f: $06 $06
    dec b                                         ; $7981: $05
    dec b                                         ; $7982: $05
    ld b, $01                                     ; $7983: $06 $01
    ld bc, $d2d1                                  ; $7985: $01 $d1 $d2
    cpl                                           ; $7988: $2f
    jr nc, jr_077_795c                            ; $7989: $30 $d1

jr_077_798b:
    jp nc, Jump_000_2423                          ; $798b: $d2 $23 $24

    pop de                                        ; $798e: $d1
    jp nc, Jump_000_3127                          ; $798f: $d2 $27 $31

    pop de                                        ; $7992: $d1
    jp nc, Jump_000_0f0e                          ; $7993: $d2 $0e $0f

    add b                                         ; $7996: $80
    add b                                         ; $7997: $80
    rlca                                          ; $7998: $07
    ld b, $80                                     ; $7999: $06 $80
    add b                                         ; $799b: $80
    rlca                                          ; $799c: $07
    ld b, $80                                     ; $799d: $06 $80
    add b                                         ; $799f: $80
    rlca                                          ; $79a0: $07
    dec b                                         ; $79a1: $05
    add b                                         ; $79a2: $80
    add b                                         ; $79a3: $80
    rlca                                          ; $79a4: $07
    dec b                                         ; $79a5: $05
    ld [hl-], a                                   ; $79a6: $32
    inc sp                                        ; $79a7: $33
    inc [hl]                                      ; $79a8: $34
    dec [hl]                                      ; $79a9: $35
    dec l                                         ; $79aa: $2d
    inc de                                        ; $79ab: $13
    inc d                                         ; $79ac: $14
    dec d                                         ; $79ad: $15
    ld [hl], $17                                  ; $79ae: $36 $17
    jr jr_077_79cb                                ; $79b0: $18 $19

    ld a, [de]                                    ; $79b2: $1a
    dec de                                        ; $79b3: $1b
    inc e                                         ; $79b4: $1c
    dec e                                         ; $79b5: $1d
    ld b, $06                                     ; $79b6: $06 $06
    dec b                                         ; $79b8: $05
    ld b, $06                                     ; $79b9: $06 $06
    ld b, $06                                     ; $79bb: $06 $06
    ld b, $05                                     ; $79bd: $06 $05
    dec b                                         ; $79bf: $05
    dec b                                         ; $79c0: $05
    ld b, $05                                     ; $79c1: $06 $05
    ld b, $05                                     ; $79c3: $06 $05
    dec b                                         ; $79c5: $05
    and b                                         ; $79c6: $a0
    and c                                         ; $79c7: $a1
    and d                                         ; $79c8: $a2
    jr nc, jr_077_796e                            ; $79c9: $30 $a3

jr_077_79cb:
    and h                                         ; $79cb: $a4
    and l                                         ; $79cc: $a5
    inc h                                         ; $79cd: $24
    ld c, b                                       ; $79ce: $48
    ld c, c                                       ; $79cf: $49
    ld c, d                                       ; $79d0: $4a
    ld sp, $4c4b                                  ; $79d1: $31 $4b $4c
    ld c, l                                       ; $79d4: $4d
    rrca                                          ; $79d5: $0f
    add hl, bc                                    ; $79d6: $09
    add hl, bc                                    ; $79d7: $09
    add hl, bc                                    ; $79d8: $09
    ld b, $09                                     ; $79d9: $06 $09
    add hl, bc                                    ; $79db: $09
    add hl, bc                                    ; $79dc: $09
    rlca                                          ; $79dd: $07
    ld bc, $0101                                  ; $79de: $01 $01 $01
    rlca                                          ; $79e1: $07
    ld bc, $0101                                  ; $79e2: $01 $01 $01
    rlca                                          ; $79e5: $07
    ld [hl-], a                                   ; $79e6: $32
    inc sp                                        ; $79e7: $33
    ld b, d                                       ; $79e8: $42
    ld b, e                                       ; $79e9: $43
    dec l                                         ; $79ea: $2d
    inc de                                        ; $79eb: $13
    ld b, l                                       ; $79ec: $45
    ld b, [hl]                                    ; $79ed: $46
    ld [hl], $17                                  ; $79ee: $36 $17
    ld c, b                                       ; $79f0: $48
    ld c, c                                       ; $79f1: $49
    ld a, [de]                                    ; $79f2: $1a
    dec de                                        ; $79f3: $1b
    ld c, e                                       ; $79f4: $4b
    ld c, h                                       ; $79f5: $4c
    dec b                                         ; $79f6: $05
    dec b                                         ; $79f7: $05
    ld bc, $0601                                  ; $79f8: $01 $01 $06
    dec b                                         ; $79fb: $05
    ld bc, $0601                                  ; $79fc: $01 $01 $06
    ld b, $01                                     ; $79ff: $06 $01
    ld bc, $0605                                  ; $7a01: $01 $05 $06
    ld bc, $d101                                  ; $7a04: $01 $01 $d1
    jp nc, Jump_000_302f                          ; $7a07: $d2 $2f $30

    pop de                                        ; $7a0a: $d1
    sub h                                         ; $7a0b: $94
    sub l                                         ; $7a0c: $95
    sub l                                         ; $7a0d: $95
    pop de                                        ; $7a0e: $d1
    pop de                                        ; $7a0f: $d1
    pop de                                        ; $7a10: $d1
    pop de                                        ; $7a11: $d1
    pop de                                        ; $7a12: $d1
    pop de                                        ; $7a13: $d1
    pop de                                        ; $7a14: $d1
    pop de                                        ; $7a15: $d1
    add b                                         ; $7a16: $80
    add b                                         ; $7a17: $80
    rlca                                          ; $7a18: $07
    ld b, $80                                     ; $7a19: $06 $80
    adc b                                         ; $7a1b: $88
    adc b                                         ; $7a1c: $88
    adc b                                         ; $7a1d: $88
    add b                                         ; $7a1e: $80
    add b                                         ; $7a1f: $80
    add b                                         ; $7a20: $80
    add b                                         ; $7a21: $80
    add b                                         ; $7a22: $80
    add b                                         ; $7a23: $80
    add b                                         ; $7a24: $80
    add b                                         ; $7a25: $80
    ld [hl-], a                                   ; $7a26: $32
    inc sp                                        ; $7a27: $33
    inc [hl]                                      ; $7a28: $34
    dec [hl]                                      ; $7a29: $35
    sub l                                         ; $7a2a: $95
    sub l                                         ; $7a2b: $95
    sub l                                         ; $7a2c: $95
    sub l                                         ; $7a2d: $95
    pop de                                        ; $7a2e: $d1
    pop de                                        ; $7a2f: $d1
    pop de                                        ; $7a30: $d1
    pop de                                        ; $7a31: $d1
    pop de                                        ; $7a32: $d1
    pop de                                        ; $7a33: $d1
    pop de                                        ; $7a34: $d1
    pop de                                        ; $7a35: $d1
    ld b, $05                                     ; $7a36: $06 $05
    ld b, $06                                     ; $7a38: $06 $06
    adc b                                         ; $7a3a: $88
    adc b                                         ; $7a3b: $88
    adc b                                         ; $7a3c: $88
    adc b                                         ; $7a3d: $88
    add b                                         ; $7a3e: $80
    add b                                         ; $7a3f: $80
    add b                                         ; $7a40: $80
    add b                                         ; $7a41: $80
    add b                                         ; $7a42: $80
    add b                                         ; $7a43: $80
    add b                                         ; $7a44: $80
    add b                                         ; $7a45: $80
    scf                                           ; $7a46: $37
    jr c, @+$31                                   ; $7a47: $38 $2f

    jr nc, @-$69                                  ; $7a49: $30 $95

    sub l                                         ; $7a4b: $95
    sub l                                         ; $7a4c: $95
    sub l                                         ; $7a4d: $95
    pop de                                        ; $7a4e: $d1
    pop de                                        ; $7a4f: $d1
    pop de                                        ; $7a50: $d1
    pop de                                        ; $7a51: $d1
    pop de                                        ; $7a52: $d1
    pop de                                        ; $7a53: $d1
    pop de                                        ; $7a54: $d1
    pop de                                        ; $7a55: $d1
    rlca                                          ; $7a56: $07
    rlca                                          ; $7a57: $07
    rlca                                          ; $7a58: $07
    rlca                                          ; $7a59: $07
    adc b                                         ; $7a5a: $88
    adc b                                         ; $7a5b: $88
    adc b                                         ; $7a5c: $88
    adc b                                         ; $7a5d: $88
    add b                                         ; $7a5e: $80
    add b                                         ; $7a5f: $80
    add b                                         ; $7a60: $80
    add b                                         ; $7a61: $80
    add b                                         ; $7a62: $80
    add b                                         ; $7a63: $80
    add b                                         ; $7a64: $80
    add b                                         ; $7a65: $80
    ld [hl-], a                                   ; $7a66: $32
    inc sp                                        ; $7a67: $33
    inc [hl]                                      ; $7a68: $34
    dec [hl]                                      ; $7a69: $35
    sub l                                         ; $7a6a: $95
    sub l                                         ; $7a6b: $95
    sub l                                         ; $7a6c: $95
    sub l                                         ; $7a6d: $95
    pop de                                        ; $7a6e: $d1
    pop de                                        ; $7a6f: $d1
    pop de                                        ; $7a70: $d1
    pop de                                        ; $7a71: $d1
    pop de                                        ; $7a72: $d1
    pop de                                        ; $7a73: $d1
    pop de                                        ; $7a74: $d1
    pop de                                        ; $7a75: $d1
    dec b                                         ; $7a76: $05
    ld b, $07                                     ; $7a77: $06 $07
    rlca                                          ; $7a79: $07
    adc b                                         ; $7a7a: $88
    adc b                                         ; $7a7b: $88
    adc b                                         ; $7a7c: $88
    adc b                                         ; $7a7d: $88
    add b                                         ; $7a7e: $80
    add b                                         ; $7a7f: $80
    add b                                         ; $7a80: $80
    add b                                         ; $7a81: $80
    add b                                         ; $7a82: $80
    add b                                         ; $7a83: $80
    add b                                         ; $7a84: $80
    add b                                         ; $7a85: $80
    scf                                           ; $7a86: $37
    jr c, jr_077_7ab8                             ; $7a87: $38 $2f

    jr nc, jr_077_7aac                            ; $7a89: $30 $21

    ld [hl+], a                                   ; $7a8b: $22
    inc hl                                        ; $7a8c: $23
    inc h                                         ; $7a8d: $24
    dec h                                         ; $7a8e: $25
    ld h, $27                                     ; $7a8f: $26 $27
    ld sp, $2a3d                                  ; $7a91: $31 $3d $2a
    ld c, $0f                                     ; $7a94: $0e $0f
    rlca                                          ; $7a96: $07
    rlca                                          ; $7a97: $07
    ld b, $06                                     ; $7a98: $06 $06
    dec b                                         ; $7a9a: $05
    ld b, $06                                     ; $7a9b: $06 $06
    ld b, $06                                     ; $7a9d: $06 $06
    dec b                                         ; $7a9f: $05
    ld b, $06                                     ; $7aa0: $06 $06
    ld bc, $0506                                  ; $7aa2: $01 $06 $05
    ld b, $32                                     ; $7aa5: $06 $32
    inc sp                                        ; $7aa7: $33
    inc [hl]                                      ; $7aa8: $34
    dec [hl]                                      ; $7aa9: $35
    dec l                                         ; $7aaa: $2d
    inc de                                        ; $7aab: $13

jr_077_7aac:
    inc d                                         ; $7aac: $14
    dec d                                         ; $7aad: $15
    ld [hl], $17                                  ; $7aae: $36 $17
    jr jr_077_7acb                                ; $7ab0: $18 $19

    ld b, b                                       ; $7ab2: $40
    ld b, c                                       ; $7ab3: $41
    dec a                                         ; $7ab4: $3d
    dec e                                         ; $7ab5: $1d
    rlca                                          ; $7ab6: $07
    rlca                                          ; $7ab7: $07

jr_077_7ab8:
    rlca                                          ; $7ab8: $07
    rlca                                          ; $7ab9: $07
    dec b                                         ; $7aba: $05
    dec b                                         ; $7abb: $05
    dec b                                         ; $7abc: $05
    ld b, $06                                     ; $7abd: $06 $06
    ld b, $05                                     ; $7abf: $06 $05
    dec b                                         ; $7ac1: $05
    ld bc, $0101                                  ; $7ac2: $01 $01 $01
    ld b, $37                                     ; $7ac5: $06 $37
    jr c, @+$31                                   ; $7ac7: $38 $2f

    jr nc, jr_077_7aec                            ; $7ac9: $30 $21

jr_077_7acb:
    ld [hl+], a                                   ; $7acb: $22
    inc hl                                        ; $7acc: $23
    inc h                                         ; $7acd: $24
    dec h                                         ; $7ace: $25
    ld h, $27                                     ; $7acf: $26 $27
    ld sp, $2a29                                  ; $7ad1: $31 $29 $2a
    ld c, $0f                                     ; $7ad4: $0e $0f
    dec b                                         ; $7ad6: $05
    dec b                                         ; $7ad7: $05
    ld b, $06                                     ; $7ad8: $06 $06
    ld b, $05                                     ; $7ada: $06 $05
    ld b, $07                                     ; $7adc: $06 $07
    ld b, $06                                     ; $7ade: $06 $06

jr_077_7ae0:
    dec b                                         ; $7ae0: $05
    rlca                                          ; $7ae1: $07
    ld b, $06                                     ; $7ae2: $06 $06
    dec b                                         ; $7ae4: $05
    rlca                                          ; $7ae5: $07
    ld b, h                                       ; $7ae6: $44
    jr c, @+$31                                   ; $7ae7: $38 $2f

    jr nc, @+$49                                  ; $7ae9: $30 $47

    ld [hl+], a                                   ; $7aeb: $22

jr_077_7aec:
    inc hl                                        ; $7aec: $23
    inc h                                         ; $7aed: $24
    ld c, d                                       ; $7aee: $4a
    ld h, $27                                     ; $7aef: $26 $27
    ld sp, $2a4d                                  ; $7af1: $31 $4d $2a
    ld c, $0f                                     ; $7af4: $0e $0f
    ld bc, $0506                                  ; $7af6: $01 $06 $05
    dec b                                         ; $7af9: $05
    ld bc, $0607                                  ; $7afa: $01 $07 $06
    dec b                                         ; $7afd: $05
    ld bc, $0607                                  ; $7afe: $01 $07 $06
    dec b                                         ; $7b01: $05
    ld bc, $0507                                  ; $7b02: $01 $07 $05
    ld b, $4e                                     ; $7b05: $06 $4e
    ld c, a                                       ; $7b07: $4f
    sbc [hl]                                      ; $7b08: $9e
    dec [hl]                                      ; $7b09: $35
    ld d, b                                       ; $7b0a: $50
    ld d, c                                       ; $7b0b: $51
    sbc a                                         ; $7b0c: $9f
    dec d                                         ; $7b0d: $15
    ld c, b                                       ; $7b0e: $48
    ld c, c                                       ; $7b0f: $49
    ld c, d                                       ; $7b10: $4a
    add hl, de                                    ; $7b11: $19
    ld c, e                                       ; $7b12: $4b
    ld c, h                                       ; $7b13: $4c
    ld c, l                                       ; $7b14: $4d
    dec e                                         ; $7b15: $1d
    ld bc, $0901                                  ; $7b16: $01 $01 $09
    ld b, $01                                     ; $7b19: $06 $01
    ld bc, $0709                                  ; $7b1b: $01 $09 $07
    ld bc, $0101                                  ; $7b1e: $01 $01 $01
    rlca                                          ; $7b21: $07
    ld bc, $0101                                  ; $7b22: $01 $01 $01
    rlca                                          ; $7b25: $07
    scf                                           ; $7b26: $37
    jr c, jr_077_7b58                             ; $7b27: $38 $2f

    jr nc, jr_077_7b4c                            ; $7b29: $30 $21

    ld [hl+], a                                   ; $7b2b: $22
    inc hl                                        ; $7b2c: $23
    inc h                                         ; $7b2d: $24
    dec h                                         ; $7b2e: $25
    ld h, $27                                     ; $7b2f: $26 $27
    ld sp, $2a29                                  ; $7b31: $31 $29 $2a
    ld c, $0f                                     ; $7b34: $0e $0f
    ld b, $05                                     ; $7b36: $06 $05
    ld b, $07                                     ; $7b38: $06 $07
    ld b, $05                                     ; $7b3a: $06 $05
    dec b                                         ; $7b3c: $05
    rlca                                          ; $7b3d: $07
    ld b, $06                                     ; $7b3e: $06 $06
    dec b                                         ; $7b40: $05
    rlca                                          ; $7b41: $07
    dec b                                         ; $7b42: $05
    dec b                                         ; $7b43: $05
    ld b, $07                                     ; $7b44: $06 $07
    scf                                           ; $7b46: $37
    jr c, jr_077_7b78                             ; $7b47: $38 $2f

    jr nc, jr_077_7ae0                            ; $7b49: $30 $95

    sub l                                         ; $7b4b: $95

jr_077_7b4c:
    sub l                                         ; $7b4c: $95
    sub l                                         ; $7b4d: $95
    pop de                                        ; $7b4e: $d1
    pop de                                        ; $7b4f: $d1
    pop de                                        ; $7b50: $d1
    pop de                                        ; $7b51: $d1
    pop de                                        ; $7b52: $d1
    pop de                                        ; $7b53: $d1
    pop de                                        ; $7b54: $d1
    pop de                                        ; $7b55: $d1
    rlca                                          ; $7b56: $07
    rlca                                          ; $7b57: $07

jr_077_7b58:
    dec b                                         ; $7b58: $05
    ld b, $88                                     ; $7b59: $06 $88
    adc b                                         ; $7b5b: $88
    adc b                                         ; $7b5c: $88
    adc b                                         ; $7b5d: $88
    add b                                         ; $7b5e: $80
    add b                                         ; $7b5f: $80
    add b                                         ; $7b60: $80
    add b                                         ; $7b61: $80
    add b                                         ; $7b62: $80
    add b                                         ; $7b63: $80
    add b                                         ; $7b64: $80
    add b                                         ; $7b65: $80
    ld [hl-], a                                   ; $7b66: $32
    inc sp                                        ; $7b67: $33
    inc [hl]                                      ; $7b68: $34
    dec [hl]                                      ; $7b69: $35
    sub l                                         ; $7b6a: $95
    sub l                                         ; $7b6b: $95
    sub l                                         ; $7b6c: $95
    sub l                                         ; $7b6d: $95
    pop de                                        ; $7b6e: $d1
    pop de                                        ; $7b6f: $d1
    pop de                                        ; $7b70: $d1
    pop de                                        ; $7b71: $d1
    pop de                                        ; $7b72: $d1
    pop de                                        ; $7b73: $d1
    pop de                                        ; $7b74: $d1
    pop de                                        ; $7b75: $d1
    rlca                                          ; $7b76: $07
    rlca                                          ; $7b77: $07

jr_077_7b78:
    rlca                                          ; $7b78: $07
    rlca                                          ; $7b79: $07
    adc b                                         ; $7b7a: $88
    adc b                                         ; $7b7b: $88
    adc b                                         ; $7b7c: $88
    adc b                                         ; $7b7d: $88
    add b                                         ; $7b7e: $80
    add b                                         ; $7b7f: $80
    add b                                         ; $7b80: $80
    add b                                         ; $7b81: $80
    add b                                         ; $7b82: $80
    add b                                         ; $7b83: $80
    add b                                         ; $7b84: $80
    add b                                         ; $7b85: $80
    scf                                           ; $7b86: $37
    jr c, jr_077_7bb8                             ; $7b87: $38 $2f

    jr nc, @-$69                                  ; $7b89: $30 $95

    sub l                                         ; $7b8b: $95
    sub l                                         ; $7b8c: $95
    sub l                                         ; $7b8d: $95
    pop de                                        ; $7b8e: $d1
    pop de                                        ; $7b8f: $d1
    pop de                                        ; $7b90: $d1
    pop de                                        ; $7b91: $d1
    pop de                                        ; $7b92: $d1
    pop de                                        ; $7b93: $d1
    pop de                                        ; $7b94: $d1
    pop de                                        ; $7b95: $d1
    ld b, $06                                     ; $7b96: $06 $06
    ld b, $07                                     ; $7b98: $06 $07
    adc b                                         ; $7b9a: $88
    adc b                                         ; $7b9b: $88
    adc b                                         ; $7b9c: $88
    adc b                                         ; $7b9d: $88
    add b                                         ; $7b9e: $80
    add b                                         ; $7b9f: $80
    add b                                         ; $7ba0: $80
    add b                                         ; $7ba1: $80
    add b                                         ; $7ba2: $80
    add b                                         ; $7ba3: $80
    add b                                         ; $7ba4: $80
    add b                                         ; $7ba5: $80
    jp nc, $d1d1                                  ; $7ba6: $d2 $d1 $d1

    pop de                                        ; $7ba9: $d1
    xor c                                         ; $7baa: $a9
    pop de                                        ; $7bab: $d1
    pop de                                        ; $7bac: $d1
    pop de                                        ; $7bad: $d1
    pop de                                        ; $7bae: $d1
    pop de                                        ; $7baf: $d1
    pop de                                        ; $7bb0: $d1
    pop de                                        ; $7bb1: $d1
    pop de                                        ; $7bb2: $d1
    pop de                                        ; $7bb3: $d1
    pop de                                        ; $7bb4: $d1
    pop de                                        ; $7bb5: $d1
    add b                                         ; $7bb6: $80
    add b                                         ; $7bb7: $80

jr_077_7bb8:
    add b                                         ; $7bb8: $80
    add b                                         ; $7bb9: $80
    adc b                                         ; $7bba: $88
    add b                                         ; $7bbb: $80
    add b                                         ; $7bbc: $80
    add b                                         ; $7bbd: $80
    add b                                         ; $7bbe: $80
    add b                                         ; $7bbf: $80
    add b                                         ; $7bc0: $80
    add b                                         ; $7bc1: $80
    add b                                         ; $7bc2: $80
    add b                                         ; $7bc3: $80
    add b                                         ; $7bc4: $80
    add b                                         ; $7bc5: $80
    dec b                                         ; $7bc6: $05
    nop                                           ; $7bc7: $00
    dec b                                         ; $7bc8: $05
    nop                                           ; $7bc9: $00
    jr nz, jr_077_7bcf                            ; $7bca: $20 $03

    pop de                                        ; $7bcc: $d1
    pop de                                        ; $7bcd: $d1
    pop de                                        ; $7bce: $d1

jr_077_7bcf:
    jp nc, $d1d1                                  ; $7bcf: $d2 $d1 $d1

    pop de                                        ; $7bd2: $d1
    jp nc, $d1d1                                  ; $7bd3: $d2 $d1 $d1

    pop de                                        ; $7bd6: $d1
    jp nc, $d1d1                                  ; $7bd7: $d2 $d1 $d1

    pop de                                        ; $7bda: $d1
    jp nc, $8080                                  ; $7bdb: $d2 $80 $80

    add b                                         ; $7bde: $80
    add b                                         ; $7bdf: $80
    add b                                         ; $7be0: $80
    add b                                         ; $7be1: $80
    add b                                         ; $7be2: $80
    add b                                         ; $7be3: $80
    add b                                         ; $7be4: $80
    add b                                         ; $7be5: $80
    add b                                         ; $7be6: $80
    add b                                         ; $7be7: $80
    add b                                         ; $7be8: $80
    add b                                         ; $7be9: $80
    add b                                         ; $7bea: $80
    add b                                         ; $7beb: $80
    db $d3                                        ; $7bec: $d3
    call nc, $d6d5                                ; $7bed: $d4 $d5 $d6
    rst $10                                       ; $7bf0: $d7
    ret c                                         ; $7bf1: $d8

    reti                                          ; $7bf2: $d9


    jp c, $dcdb                                   ; $7bf3: $da $db $dc

    db $dd                                        ; $7bf6: $dd
    sbc $df                                       ; $7bf7: $de $df
    ldh [$e1], a                                  ; $7bf9: $e0 $e1
    rst $18                                       ; $7bfb: $df
    inc bc                                        ; $7bfc: $03
    inc bc                                        ; $7bfd: $03
    inc bc                                        ; $7bfe: $03
    inc bc                                        ; $7bff: $03
    ld bc, $0101                                  ; $7c00: $01 $01 $01
    ld bc, $0101                                  ; $7c03: $01 $01 $01
    ld bc, $0101                                  ; $7c06: $01 $01 $01
    ld bc, $2101                                  ; $7c09: $01 $01 $21
    db $d3                                        ; $7c0c: $d3
    call nc, $d6d5                                ; $7c0d: $d4 $d5 $d6
    ld [c], a                                     ; $7c10: $e2
    db $e3                                        ; $7c11: $e3
    db $e4                                        ; $7c12: $e4
    push hl                                       ; $7c13: $e5
    and $e7                                       ; $7c14: $e6 $e7
    add sp, -$17                                  ; $7c16: $e8 $e9
    ld [$eceb], a                                 ; $7c18: $ea $eb $ec
    db $ed                                        ; $7c1b: $ed
    inc bc                                        ; $7c1c: $03
    inc bc                                        ; $7c1d: $03
    inc bc                                        ; $7c1e: $03
    inc bc                                        ; $7c1f: $03
    inc bc                                        ; $7c20: $03
    inc bc                                        ; $7c21: $03
    ld [bc], a                                    ; $7c22: $02
    ld [bc], a                                    ; $7c23: $02
    inc bc                                        ; $7c24: $03
    inc bc                                        ; $7c25: $03
    ld [bc], a                                    ; $7c26: $02
    ld [bc], a                                    ; $7c27: $02
    inc bc                                        ; $7c28: $03
    inc bc                                        ; $7c29: $03
    inc bc                                        ; $7c2a: $03
    inc bc                                        ; $7c2b: $03
    db $d3                                        ; $7c2c: $d3
    call nc, $d6d5                                ; $7c2d: $d4 $d5 $d6
    xor $ef                                       ; $7c30: $ee $ef
    ldh a, [$f1]                                  ; $7c32: $f0 $f1
    ld a, [c]                                     ; $7c34: $f2
    di                                            ; $7c35: $f3
    db $f4                                        ; $7c36: $f4
    push af                                       ; $7c37: $f5
    or $f7                                        ; $7c38: $f6 $f7
    ld hl, sp-$13                                 ; $7c3a: $f8 $ed
    inc bc                                        ; $7c3c: $03
    inc bc                                        ; $7c3d: $03
    inc bc                                        ; $7c3e: $03
    inc bc                                        ; $7c3f: $03
    ld [bc], a                                    ; $7c40: $02
    ld [bc], a                                    ; $7c41: $02
    ld [bc], a                                    ; $7c42: $02
    inc b                                         ; $7c43: $04
    ld [bc], a                                    ; $7c44: $02
    ld [bc], a                                    ; $7c45: $02
    ld [bc], a                                    ; $7c46: $02
    inc b                                         ; $7c47: $04
    inc bc                                        ; $7c48: $03
    inc bc                                        ; $7c49: $03
    inc bc                                        ; $7c4a: $03
    inc bc                                        ; $7c4b: $03
    pop de                                        ; $7c4c: $d1
    pop de                                        ; $7c4d: $d1
    pop de                                        ; $7c4e: $d1
    jp nc, $d1d1                                  ; $7c4f: $d2 $d1 $d1

    pop de                                        ; $7c52: $d1
    jp nc, $d1d1                                  ; $7c53: $d2 $d1 $d1

    pop de                                        ; $7c56: $d1
    jp nc, $f9d1                                  ; $7c57: $d2 $d1 $f9

    ld a, [$80fb]                                 ; $7c5a: $fa $fb $80
    add b                                         ; $7c5d: $80
    add b                                         ; $7c5e: $80
    add b                                         ; $7c5f: $80
    add b                                         ; $7c60: $80
    add b                                         ; $7c61: $80
    add b                                         ; $7c62: $80
    add b                                         ; $7c63: $80
    add b                                         ; $7c64: $80
    add b                                         ; $7c65: $80
    add b                                         ; $7c66: $80
    add b                                         ; $7c67: $80
    add b                                         ; $7c68: $80
    add b                                         ; $7c69: $80
    add b                                         ; $7c6a: $80
    add b                                         ; $7c6b: $80
    db $fc                                        ; $7c6c: $fc
    db $fd                                        ; $7c6d: $fd
    db $fd                                        ; $7c6e: $fd
    db $fc                                        ; $7c6f: $fc
    cp $ff                                        ; $7c70: $fe $ff
    rst $38                                       ; $7c72: $ff
    nop                                           ; $7c73: $00
    ld bc, $0302                                  ; $7c74: $01 $02 $03
    inc b                                         ; $7c77: $04
    dec b                                         ; $7c78: $05
    ld b, $07                                     ; $7c79: $06 $07
    ld [$0101], sp                                ; $7c7b: $08 $01 $01
    ld hl, $0121                                  ; $7c7e: $21 $21 $01
    ld bc, $0101                                  ; $7c81: $01 $01 $01
    rlca                                          ; $7c84: $07
    rlca                                          ; $7c85: $07
    rlca                                          ; $7c86: $07
    rlca                                          ; $7c87: $07
    rlca                                          ; $7c88: $07
    ld b, $05                                     ; $7c89: $06 $05
    ld b, $09                                     ; $7c8b: $06 $09
    ld a, [bc]                                    ; $7c8d: $0a
    dec bc                                        ; $7c8e: $0b
    inc c                                         ; $7c8f: $0c
    dec c                                         ; $7c90: $0d
    ld c, $0f                                     ; $7c91: $0e $0f
    db $10                                        ; $7c93: $10
    ld de, $1312                                  ; $7c94: $11 $12 $13
    inc d                                         ; $7c97: $14
    dec d                                         ; $7c98: $15
    ld d, $17                                     ; $7c99: $16 $17
    ld de, $0303                                  ; $7c9b: $11 $03 $03
    inc b                                         ; $7c9e: $04
    inc b                                         ; $7c9f: $04
    rlca                                          ; $7ca0: $07
    rlca                                          ; $7ca1: $07
    inc b                                         ; $7ca2: $04
    inc b                                         ; $7ca3: $04
    dec b                                         ; $7ca4: $05
    ld b, $07                                     ; $7ca5: $06 $07
    rlca                                          ; $7ca7: $07
    ld b, $05                                     ; $7ca8: $06 $05
    dec b                                         ; $7caa: $05
    ld b, $18                                     ; $7cab: $06 $18
    add hl, de                                    ; $7cad: $19
    ldh a, [rNR30]                                ; $7cae: $f0 $1a
    dec de                                        ; $7cb0: $1b
    inc e                                         ; $7cb1: $1c
    db $f4                                        ; $7cb2: $f4
    dec e                                         ; $7cb3: $1d
    ld e, $1f                                     ; $7cb4: $1e $1f
    jr nz, jr_077_7cd9                            ; $7cb6: $20 $21

    dec b                                         ; $7cb8: $05
    ld b, $07                                     ; $7cb9: $06 $07
    ld [$0202], sp                                ; $7cbb: $08 $02 $02
    inc h                                         ; $7cbe: $24
    inc b                                         ; $7cbf: $04
    ld [bc], a                                    ; $7cc0: $02
    ld [bc], a                                    ; $7cc1: $02
    inc h                                         ; $7cc2: $24
    inc b                                         ; $7cc3: $04
    rlca                                          ; $7cc4: $07
    rlca                                          ; $7cc5: $07
    rlca                                          ; $7cc6: $07
    rlca                                          ; $7cc7: $07
    ld b, $06                                     ; $7cc8: $06 $06
    ld b, $06                                     ; $7cca: $06 $06
    pop de                                        ; $7ccc: $d1
    jp nc, $22d5                                  ; $7ccd: $d2 $d5 $22

    pop de                                        ; $7cd0: $d1
    inc hl                                        ; $7cd1: $23
    inc h                                         ; $7cd2: $24
    dec h                                         ; $7cd3: $25
    pop de                                        ; $7cd4: $d1
    inc hl                                        ; $7cd5: $23
    ld h, $27                                     ; $7cd6: $26 $27
    pop de                                        ; $7cd8: $d1

jr_077_7cd9:
    inc hl                                        ; $7cd9: $23
    jr z, jr_077_7d05                             ; $7cda: $28 $29

    add b                                         ; $7cdc: $80
    add b                                         ; $7cdd: $80
    inc bc                                        ; $7cde: $03
    inc bc                                        ; $7cdf: $03
    add b                                         ; $7ce0: $80
    add b                                         ; $7ce1: $80
    inc bc                                        ; $7ce2: $03
    inc bc                                        ; $7ce3: $03
    add b                                         ; $7ce4: $80
    add b                                         ; $7ce5: $80
    inc bc                                        ; $7ce6: $03
    inc bc                                        ; $7ce7: $03
    add b                                         ; $7ce8: $80
    add b                                         ; $7ce9: $80
    inc bc                                        ; $7cea: $03
    inc bc                                        ; $7ceb: $03
    ld a, [hl+]                                   ; $7cec: $2a
    dec hl                                        ; $7ced: $2b
    inc l                                         ; $7cee: $2c
    dec l                                         ; $7cef: $2d
    ld l, $2f                                     ; $7cf0: $2e $2f
    jr nc, @+$33                                  ; $7cf2: $30 $31

    ld [hl-], a                                   ; $7cf4: $32
    inc sp                                        ; $7cf5: $33
    inc [hl]                                      ; $7cf6: $34
    dec [hl]                                      ; $7cf7: $35
    ld [hl], $37                                  ; $7cf8: $36 $37
    dec l                                         ; $7cfa: $2d
    jr c, jr_077_7d04                             ; $7cfb: $38 $07

    dec b                                         ; $7cfd: $05
    dec b                                         ; $7cfe: $05
    ld b, $07                                     ; $7cff: $06 $07
    dec b                                         ; $7d01: $05
    ld b, $06                                     ; $7d02: $06 $06

jr_077_7d04:
    rlca                                          ; $7d04: $07

jr_077_7d05:
    ld b, $05                                     ; $7d05: $06 $05
    ld b, $07                                     ; $7d07: $06 $07
    ld b, $06                                     ; $7d09: $06 $06
    ld b, $39                                     ; $7d0b: $06 $39
    ld a, [hl-]                                   ; $7d0d: $3a
    dec sp                                        ; $7d0e: $3b
    inc a                                         ; $7d0f: $3c
    dec a                                         ; $7d10: $3d
    ld a, $3f                                     ; $7d11: $3e $3f
    ld b, b                                       ; $7d13: $40
    ld b, c                                       ; $7d14: $41
    ld b, d                                       ; $7d15: $42
    dec l                                         ; $7d16: $2d
    ld b, e                                       ; $7d17: $43
    ld b, h                                       ; $7d18: $44
    ld b, l                                       ; $7d19: $45
    ld b, [hl]                                    ; $7d1a: $46
    ld b, a                                       ; $7d1b: $47
    dec b                                         ; $7d1c: $05
    ld b, $06                                     ; $7d1d: $06 $06
    ld b, $06                                     ; $7d1f: $06 $06
    ld b, $06                                     ; $7d21: $06 $06
    dec b                                         ; $7d23: $05
    ld b, $05                                     ; $7d24: $06 $05
    dec h                                         ; $7d26: $25
    ld b, $06                                     ; $7d27: $06 $06
    ld b, $06                                     ; $7d29: $06 $06
    ld b, $2a                                     ; $7d2b: $06 $2a
    dec hl                                        ; $7d2d: $2b
    inc l                                         ; $7d2e: $2c
    dec l                                         ; $7d2f: $2d
    ld l, $2f                                     ; $7d30: $2e $2f
    jr nc, jr_077_7d65                            ; $7d32: $30 $31

    ld [hl-], a                                   ; $7d34: $32
    inc sp                                        ; $7d35: $33
    inc [hl]                                      ; $7d36: $34
    dec [hl]                                      ; $7d37: $35
    ld [hl], $37                                  ; $7d38: $36 $37
    dec l                                         ; $7d3a: $2d
    jr c, jr_077_7d43                             ; $7d3b: $38 $06

    ld b, $05                                     ; $7d3d: $06 $05
    ld b, $05                                     ; $7d3f: $06 $05
    ld b, $06                                     ; $7d41: $06 $06

jr_077_7d43:
    rlca                                          ; $7d43: $07
    ld b, $05                                     ; $7d44: $06 $05
    dec b                                         ; $7d46: $05
    rlca                                          ; $7d47: $07
    dec b                                         ; $7d48: $05
    dec b                                         ; $7d49: $05
    ld b, $07                                     ; $7d4a: $06 $07
    pop de                                        ; $7d4c: $d1
    inc hl                                        ; $7d4d: $23
    ld c, b                                       ; $7d4e: $48
    ld c, c                                       ; $7d4f: $49
    ld c, d                                       ; $7d50: $4a
    inc hl                                        ; $7d51: $23
    ld c, e                                       ; $7d52: $4b
    ld c, h                                       ; $7d53: $4c
    ld c, d                                       ; $7d54: $4a
    jp nc, Jump_077_4e4d                          ; $7d55: $d2 $4d $4e

    ld c, d                                       ; $7d58: $4a
    ld c, a                                       ; $7d59: $4f
    ld a, [$8050]                                 ; $7d5a: $fa $50 $80
    add b                                         ; $7d5d: $80
    inc bc                                        ; $7d5e: $03
    inc bc                                        ; $7d5f: $03
    add b                                         ; $7d60: $80
    add b                                         ; $7d61: $80
    rlca                                          ; $7d62: $07
    rlca                                          ; $7d63: $07
    add b                                         ; $7d64: $80

jr_077_7d65:
    add b                                         ; $7d65: $80
    rlca                                          ; $7d66: $07
    ld b, $80                                     ; $7d67: $06 $80
    add b                                         ; $7d69: $80
    add b                                         ; $7d6a: $80
    add b                                         ; $7d6b: $80
    ld d, c                                       ; $7d6c: $51
    ld d, d                                       ; $7d6d: $52
    ld d, e                                       ; $7d6e: $53
    ld d, h                                       ; $7d6f: $54
    ld d, l                                       ; $7d70: $55
    ld d, [hl]                                    ; $7d71: $56
    ld de, $0157                                  ; $7d72: $11 $57 $01
    ld e, b                                       ; $7d75: $58
    ld e, c                                       ; $7d76: $59
    inc b                                         ; $7d77: $04
    dec b                                         ; $7d78: $05
    ld b, $07                                     ; $7d79: $06 $07
    ld [$0507], sp                                ; $7d7b: $08 $07 $05
    ld b, $05                                     ; $7d7e: $06 $05
    rlca                                          ; $7d80: $07
    ld b, $26                                     ; $7d81: $06 $26
    dec b                                         ; $7d83: $05
    ld b, $06                                     ; $7d84: $06 $06
    ld b, $06                                     ; $7d86: $06 $06
    ld b, $05                                     ; $7d88: $06 $05
    ld b, $06                                     ; $7d8a: $06 $06
    ld e, d                                       ; $7d8c: $5a
    ld e, e                                       ; $7d8d: $5b
    ld e, h                                       ; $7d8e: $5c
    ld e, l                                       ; $7d8f: $5d
    dec c                                         ; $7d90: $0d
    ld c, $4b                                     ; $7d91: $0e $4b
    ld c, h                                       ; $7d93: $4c
    ld de, $4d12                                  ; $7d94: $11 $12 $4d
    ld c, [hl]                                    ; $7d97: $4e
    dec d                                         ; $7d98: $15
    ld d, $17                                     ; $7d99: $16 $17
    ld de, $0605                                  ; $7d9b: $11 $05 $06
    dec b                                         ; $7d9e: $05
    ld b, $05                                     ; $7d9f: $06 $05
    ld b, $05                                     ; $7da1: $06 $05
    ld b, $06                                     ; $7da3: $06 $06
    dec b                                         ; $7da5: $05
    ld b, $06                                     ; $7da6: $06 $06
    ld b, $05                                     ; $7da8: $06 $05
    ld b, $06                                     ; $7daa: $06 $06
    ld d, c                                       ; $7dac: $51
    ld d, d                                       ; $7dad: $52
    ld d, e                                       ; $7dae: $53
    ld d, h                                       ; $7daf: $54
    ld d, l                                       ; $7db0: $55
    ld d, [hl]                                    ; $7db1: $56
    ld de, $0157                                  ; $7db2: $11 $57 $01
    ld e, b                                       ; $7db5: $58
    ld e, c                                       ; $7db6: $59
    inc b                                         ; $7db7: $04
    dec b                                         ; $7db8: $05
    ld b, $07                                     ; $7db9: $06 $07
    ld [$0606], sp                                ; $7dbb: $08 $06 $06
    ld b, $07                                     ; $7dbe: $06 $07
    dec b                                         ; $7dc0: $05
    ld b, $25                                     ; $7dc1: $06 $25
    rlca                                          ; $7dc3: $07
    dec b                                         ; $7dc4: $05
    ld b, $05                                     ; $7dc5: $06 $05
    rlca                                          ; $7dc7: $07
    ld b, $06                                     ; $7dc8: $06 $06
    ld b, $07                                     ; $7dca: $06 $07
    db $d3                                        ; $7dcc: $d3
    call nc, $d1d2                                ; $7dcd: $d4 $d2 $d1
    ld e, [hl]                                    ; $7dd0: $5e
    ld e, a                                       ; $7dd1: $5f
    jp nc, $60d1                                  ; $7dd2: $d2 $d1 $60

    ld h, c                                       ; $7dd5: $61
    jp nc, $f6d1                                  ; $7dd6: $d2 $d1 $f6

    rst $30                                       ; $7dd9: $f7
    jp nc, Jump_000_03d1                          ; $7dda: $d2 $d1 $03

    inc bc                                        ; $7ddd: $03
    add b                                         ; $7dde: $80
    add b                                         ; $7ddf: $80
    inc b                                         ; $7de0: $04
    inc b                                         ; $7de1: $04
    add b                                         ; $7de2: $80
    add b                                         ; $7de3: $80
    inc b                                         ; $7de4: $04
    inc b                                         ; $7de5: $04
    add b                                         ; $7de6: $80
    add b                                         ; $7de7: $80
    inc bc                                        ; $7de8: $03
    inc bc                                        ; $7de9: $03
    add b                                         ; $7dea: $80
    add b                                         ; $7deb: $80
    ld h, d                                       ; $7dec: $62
    ld h, e                                       ; $7ded: $63
    jp nc, $64d1                                  ; $7dee: $d2 $d1 $64

    ld h, l                                       ; $7df1: $65
    jp nc, $66d1                                  ; $7df2: $d2 $d1 $66

    ld h, a                                       ; $7df5: $67
    jp nc, $15d1                                  ; $7df6: $d2 $d1 $15

    ld d, $d2                                     ; $7df9: $16 $d2
    pop de                                        ; $7dfb: $d1
    ld [bc], a                                    ; $7dfc: $02
    ld [bc], a                                    ; $7dfd: $02
    add b                                         ; $7dfe: $80
    add b                                         ; $7dff: $80
    ld [bc], a                                    ; $7e00: $02
    ld [bc], a                                    ; $7e01: $02
    add b                                         ; $7e02: $80
    add b                                         ; $7e03: $80
    rlca                                          ; $7e04: $07
    rlca                                          ; $7e05: $07
    add b                                         ; $7e06: $80
    add b                                         ; $7e07: $80
    dec b                                         ; $7e08: $05
    rlca                                          ; $7e09: $07
    add b                                         ; $7e0a: $80
    add b                                         ; $7e0b: $80
    ld l, b                                       ; $7e0c: $68
    ld l, c                                       ; $7e0d: $69
    jp nc, $6ad1                                  ; $7e0e: $d2 $d1 $6a

    ld l, e                                       ; $7e11: $6b
    jp nc, $6cd1                                  ; $7e12: $d2 $d1 $6c

    ld l, l                                       ; $7e15: $6d
    jp nc, Jump_077_6ed1                          ; $7e16: $d2 $d1 $6e

    ld l, a                                       ; $7e19: $6f
    jp nc, Jump_000_02d1                          ; $7e1a: $d2 $d1 $02

    ld [bc], a                                    ; $7e1d: $02
    add b                                         ; $7e1e: $80
    add b                                         ; $7e1f: $80
    ld [bc], a                                    ; $7e20: $02
    ld [bc], a                                    ; $7e21: $02
    add b                                         ; $7e22: $80
    add b                                         ; $7e23: $80
    ld [bc], a                                    ; $7e24: $02
    ld [bc], a                                    ; $7e25: $02
    add b                                         ; $7e26: $80
    add b                                         ; $7e27: $80
    ld [bc], a                                    ; $7e28: $02
    ld [bc], a                                    ; $7e29: $02
    add b                                         ; $7e2a: $80
    add b                                         ; $7e2b: $80
    ld [hl], b                                    ; $7e2c: $70
    ld [hl], c                                    ; $7e2d: $71
    jp nc, $72d1                                  ; $7e2e: $d2 $d1 $72

    ld [hl], e                                    ; $7e31: $73
    jp nc, $74d1                                  ; $7e32: $d2 $d1 $74

    ld [hl], l                                    ; $7e35: $75
    jp nc, Jump_077_76d1                          ; $7e36: $d2 $d1 $76

    ld [hl], a                                    ; $7e39: $77
    jp nc, Jump_000_04d1                          ; $7e3a: $d2 $d1 $04

    inc b                                         ; $7e3d: $04
    add b                                         ; $7e3e: $80
    add b                                         ; $7e3f: $80
    inc b                                         ; $7e40: $04
    inc b                                         ; $7e41: $04
    add b                                         ; $7e42: $80
    add b                                         ; $7e43: $80
    ld [bc], a                                    ; $7e44: $02
    ld [bc], a                                    ; $7e45: $02
    add b                                         ; $7e46: $80
    add b                                         ; $7e47: $80
    inc b                                         ; $7e48: $04
    inc b                                         ; $7e49: $04
    add b                                         ; $7e4a: $80
    add b                                         ; $7e4b: $80
    pop de                                        ; $7e4c: $d1
    pop de                                        ; $7e4d: $d1
    pop de                                        ; $7e4e: $d1
    jp nc, $d1d1                                  ; $7e4f: $d2 $d1 $d1

    pop de                                        ; $7e52: $d1
    ld c, a                                       ; $7e53: $4f
    pop de                                        ; $7e54: $d1
    pop de                                        ; $7e55: $d1
    pop de                                        ; $7e56: $d1
    pop de                                        ; $7e57: $d1
    pop de                                        ; $7e58: $d1
    pop de                                        ; $7e59: $d1
    pop de                                        ; $7e5a: $d1
    pop de                                        ; $7e5b: $d1
    add b                                         ; $7e5c: $80
    add b                                         ; $7e5d: $80
    add b                                         ; $7e5e: $80
    add b                                         ; $7e5f: $80
    add b                                         ; $7e60: $80
    add b                                         ; $7e61: $80
    add b                                         ; $7e62: $80
    add b                                         ; $7e63: $80
    add b                                         ; $7e64: $80
    add b                                         ; $7e65: $80
    add b                                         ; $7e66: $80
    add b                                         ; $7e67: $80
    add b                                         ; $7e68: $80
    add b                                         ; $7e69: $80
    add b                                         ; $7e6a: $80
    add b                                         ; $7e6b: $80
    ld a, [hl+]                                   ; $7e6c: $2a
    dec hl                                        ; $7e6d: $2b
    inc l                                         ; $7e6e: $2c
    dec l                                         ; $7e6f: $2d
    ld a, [$fafa]                                 ; $7e70: $fa $fa $fa
    ld a, [$d1d1]                                 ; $7e73: $fa $d1 $d1
    pop de                                        ; $7e76: $d1
    pop de                                        ; $7e77: $d1
    pop de                                        ; $7e78: $d1
    pop de                                        ; $7e79: $d1
    pop de                                        ; $7e7a: $d1
    pop de                                        ; $7e7b: $d1
    ld b, $06                                     ; $7e7c: $06 $06
    ld b, $05                                     ; $7e7e: $06 $05
    add b                                         ; $7e80: $80
    add b                                         ; $7e81: $80
    add b                                         ; $7e82: $80
    add b                                         ; $7e83: $80
    add b                                         ; $7e84: $80
    add b                                         ; $7e85: $80
    add b                                         ; $7e86: $80
    add b                                         ; $7e87: $80
    add b                                         ; $7e88: $80
    add b                                         ; $7e89: $80
    add b                                         ; $7e8a: $80
    add b                                         ; $7e8b: $80
    add hl, sp                                    ; $7e8c: $39
    ld a, [hl-]                                   ; $7e8d: $3a
    dec sp                                        ; $7e8e: $3b
    inc a                                         ; $7e8f: $3c
    ld a, [$fafa]                                 ; $7e90: $fa $fa $fa
    ld a, [$d1d1]                                 ; $7e93: $fa $d1 $d1
    pop de                                        ; $7e96: $d1
    pop de                                        ; $7e97: $d1
    pop de                                        ; $7e98: $d1
    pop de                                        ; $7e99: $d1
    pop de                                        ; $7e9a: $d1
    pop de                                        ; $7e9b: $d1
    ld b, $06                                     ; $7e9c: $06 $06
    dec b                                         ; $7e9e: $05
    ld b, $80                                     ; $7e9f: $06 $80
    add b                                         ; $7ea1: $80
    add b                                         ; $7ea2: $80
    add b                                         ; $7ea3: $80
    add b                                         ; $7ea4: $80
    add b                                         ; $7ea5: $80
    add b                                         ; $7ea6: $80
    add b                                         ; $7ea7: $80
    add b                                         ; $7ea8: $80
    add b                                         ; $7ea9: $80
    add b                                         ; $7eaa: $80
    add b                                         ; $7eab: $80
    ld a, [hl+]                                   ; $7eac: $2a
    dec hl                                        ; $7ead: $2b
    inc l                                         ; $7eae: $2c
    dec l                                         ; $7eaf: $2d
    ld a, [$fafa]                                 ; $7eb0: $fa $fa $fa
    ld a, [$d1d1]                                 ; $7eb3: $fa $d1 $d1
    pop de                                        ; $7eb6: $d1
    pop de                                        ; $7eb7: $d1
    pop de                                        ; $7eb8: $d1
    pop de                                        ; $7eb9: $d1
    pop de                                        ; $7eba: $d1
    pop de                                        ; $7ebb: $d1
    dec b                                         ; $7ebc: $05
    ld b, $06                                     ; $7ebd: $06 $06
    rlca                                          ; $7ebf: $07
    add b                                         ; $7ec0: $80
    add b                                         ; $7ec1: $80
    add b                                         ; $7ec2: $80
    add b                                         ; $7ec3: $80
    add b                                         ; $7ec4: $80
    add b                                         ; $7ec5: $80
    add b                                         ; $7ec6: $80
    add b                                         ; $7ec7: $80
    add b                                         ; $7ec8: $80
    add b                                         ; $7ec9: $80
    add b                                         ; $7eca: $80
    add b                                         ; $7ecb: $80
    ld a, b                                       ; $7ecc: $78
    ld a, c                                       ; $7ecd: $79
    jp nc, $fad1                                  ; $7ece: $d2 $d1 $fa

    ld a, [$d1fb]                                 ; $7ed1: $fa $fb $d1
    pop de                                        ; $7ed4: $d1
    pop de                                        ; $7ed5: $d1
    pop de                                        ; $7ed6: $d1
    pop de                                        ; $7ed7: $d1
    pop de                                        ; $7ed8: $d1
    pop de                                        ; $7ed9: $d1
    pop de                                        ; $7eda: $d1
    pop de                                        ; $7edb: $d1
    inc b                                         ; $7edc: $04
    inc b                                         ; $7edd: $04
    add b                                         ; $7ede: $80
    add b                                         ; $7edf: $80
    add b                                         ; $7ee0: $80
    add b                                         ; $7ee1: $80
    add b                                         ; $7ee2: $80
    add b                                         ; $7ee3: $80
    add b                                         ; $7ee4: $80
    add b                                         ; $7ee5: $80
    add b                                         ; $7ee6: $80
    add b                                         ; $7ee7: $80
    add b                                         ; $7ee8: $80
    add b                                         ; $7ee9: $80
    add b                                         ; $7eea: $80
    add b                                         ; $7eeb: $80
    ld l, $00                                     ; $7eec: $2e $00
    nop                                           ; $7eee: $00
    nop                                           ; $7eef: $00
    nop                                           ; $7ef0: $00
    ld bc, $0200                                  ; $7ef1: $01 $00 $02
    nop                                           ; $7ef4: $00
    inc bc                                        ; $7ef5: $03
    nop                                           ; $7ef6: $00
    nop                                           ; $7ef7: $00
    stop                                          ; $7ef8: $10 $00
    inc b                                         ; $7efa: $04
    nop                                           ; $7efb: $00
    dec b                                         ; $7efc: $05
    nop                                           ; $7efd: $00
    ld b, $00                                     ; $7efe: $06 $00
    nop                                           ; $7f00: $00
    rlca                                          ; $7f01: $07
    nop                                           ; $7f02: $00
    ld de, $0800                                  ; $7f03: $11 $00 $08
    nop                                           ; $7f06: $00
    add hl, bc                                    ; $7f07: $09
    nop                                           ; $7f08: $00
    nop                                           ; $7f09: $00
    ld a, [bc]                                    ; $7f0a: $0a
    nop                                           ; $7f0b: $00
    dec bc                                        ; $7f0c: $0b
    nop                                           ; $7f0d: $00
    ld [de], a                                    ; $7f0e: $12
    nop                                           ; $7f0f: $00
    inc c                                         ; $7f10: $0c
    nop                                           ; $7f11: $00
    nop                                           ; $7f12: $00
    dec c                                         ; $7f13: $0d
    nop                                           ; $7f14: $00
    ld c, $00                                     ; $7f15: $0e $00
    rrca                                          ; $7f17: $0f
    nop                                           ; $7f18: $00
    inc de                                        ; $7f19: $13
    nop                                           ; $7f1a: $00
    ld b, h                                       ; $7f1b: $44
    inc d                                         ; $7f1c: $14
    ld [bc], a                                    ; $7f1d: $02
    nop                                           ; $7f1e: $00
    dec d                                         ; $7f1f: $15
    nop                                           ; $7f20: $00
    ld d, $08                                     ; $7f21: $16 $08
    nop                                           ; $7f23: $00
    ld l, $00                                     ; $7f24: $2e $00
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    nop                                           ; $7f28: $00
    ld bc, $0200                                  ; $7f29: $01 $00 $02
    nop                                           ; $7f2c: $00
    inc bc                                        ; $7f2d: $03
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
    stop                                          ; $7f30: $10 $00
    inc b                                         ; $7f32: $04
    nop                                           ; $7f33: $00
    dec b                                         ; $7f34: $05
    nop                                           ; $7f35: $00
    ld b, $00                                     ; $7f36: $06 $00
    nop                                           ; $7f38: $00
    rlca                                          ; $7f39: $07
    nop                                           ; $7f3a: $00
    ld de, $0800                                  ; $7f3b: $11 $00 $08
    nop                                           ; $7f3e: $00
    add hl, bc                                    ; $7f3f: $09
    nop                                           ; $7f40: $00
    nop                                           ; $7f41: $00
    ld a, [bc]                                    ; $7f42: $0a
    nop                                           ; $7f43: $00
    dec bc                                        ; $7f44: $0b
    nop                                           ; $7f45: $00
    ld [de], a                                    ; $7f46: $12
    nop                                           ; $7f47: $00
    inc c                                         ; $7f48: $0c
    nop                                           ; $7f49: $00
    nop                                           ; $7f4a: $00
    dec c                                         ; $7f4b: $0d
    nop                                           ; $7f4c: $00
    ld c, $00                                     ; $7f4d: $0e $00
    rrca                                          ; $7f4f: $0f
    nop                                           ; $7f50: $00
    inc de                                        ; $7f51: $13
    nop                                           ; $7f52: $00
    ld b, b                                       ; $7f53: $40
    inc d                                         ; $7f54: $14
    ld [bc], a                                    ; $7f55: $02
    db $10                                        ; $7f56: $10
    dec d                                         ; $7f57: $15
    nop                                           ; $7f58: $00
    ld d, $00                                     ; $7f59: $16 $00
    inc l                                         ; $7f5b: $2c
    nop                                           ; $7f5c: $00
    nop                                           ; $7f5d: $00
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    ld bc, $0200                                  ; $7f60: $01 $00 $02
    nop                                           ; $7f63: $00
    inc bc                                        ; $7f64: $03
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    rrca                                          ; $7f67: $0f
    nop                                           ; $7f68: $00
    inc b                                         ; $7f69: $04
    nop                                           ; $7f6a: $00
    dec b                                         ; $7f6b: $05
    nop                                           ; $7f6c: $00
    ld b, $00                                     ; $7f6d: $06 $00
    nop                                           ; $7f6f: $00
    rlca                                          ; $7f70: $07
    nop                                           ; $7f71: $00
    stop                                          ; $7f72: $10 $00
    ld [$0900], sp                                ; $7f74: $08 $00 $09
    nop                                           ; $7f77: $00
    nop                                           ; $7f78: $00
    ld a, [bc]                                    ; $7f79: $0a
    nop                                           ; $7f7a: $00
    dec bc                                        ; $7f7b: $0b
    nop                                           ; $7f7c: $00
    ld de, $0c00                                  ; $7f7d: $11 $00 $0c
    nop                                           ; $7f80: $00
    db $10                                        ; $7f81: $10
    dec c                                         ; $7f82: $0d
    nop                                           ; $7f83: $00
    ld c, $02                                     ; $7f84: $0e $02
    nop                                           ; $7f86: $00
    ld [de], a                                    ; $7f87: $12
    nop                                           ; $7f88: $00
    inc de                                        ; $7f89: $13
    nop                                           ; $7f8a: $00
    db $10                                        ; $7f8b: $10
    inc d                                         ; $7f8c: $14
    nop                                           ; $7f8d: $00
    dec d                                         ; $7f8e: $15
    ld [bc], a                                    ; $7f8f: $02
    db $10                                        ; $7f90: $10
    ld [hl-], a                                   ; $7f91: $32
    nop                                           ; $7f92: $00
    nop                                           ; $7f93: $00
    nop                                           ; $7f94: $00
    nop                                           ; $7f95: $00
    ld bc, $0200                                  ; $7f96: $01 $00 $02
    nop                                           ; $7f99: $00
    inc bc                                        ; $7f9a: $03
    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    stop                                          ; $7f9d: $10 $00
    inc b                                         ; $7f9f: $04
    nop                                           ; $7fa0: $00
    dec b                                         ; $7fa1: $05
    nop                                           ; $7fa2: $00
    ld b, $00                                     ; $7fa3: $06 $00
    nop                                           ; $7fa5: $00
    rlca                                          ; $7fa6: $07
    nop                                           ; $7fa7: $00
    ld de, $0800                                  ; $7fa8: $11 $00 $08
    nop                                           ; $7fab: $00
    add hl, bc                                    ; $7fac: $09
    nop                                           ; $7fad: $00
    nop                                           ; $7fae: $00
    ld a, [bc]                                    ; $7faf: $0a
    nop                                           ; $7fb0: $00
    dec bc                                        ; $7fb1: $0b
    nop                                           ; $7fb2: $00
    ld [de], a                                    ; $7fb3: $12
    nop                                           ; $7fb4: $00
    inc c                                         ; $7fb5: $0c
    nop                                           ; $7fb6: $00
    nop                                           ; $7fb7: $00
    dec c                                         ; $7fb8: $0d
    nop                                           ; $7fb9: $00
    ld c, $00                                     ; $7fba: $0e $00
    rrca                                          ; $7fbc: $0f
    nop                                           ; $7fbd: $00
    inc de                                        ; $7fbe: $13
    nop                                           ; $7fbf: $00
    nop                                           ; $7fc0: $00
    inc d                                         ; $7fc1: $14
    nop                                           ; $7fc2: $00
    dec d                                         ; $7fc3: $15
    nop                                           ; $7fc4: $00
    ld d, $00                                     ; $7fc5: $16 $00
    rla                                           ; $7fc7: $17
    nop                                           ; $7fc8: $00
    nop                                           ; $7fc9: $00
    jr jr_077_7fcc                                ; $7fca: $18 $00

jr_077_7fcc:
    add hl, bc                                    ; $7fcc: $09
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    dec d                                         ; $7fcf: $15
    nop                                           ; $7fd0: $00
    ld [bc], a                                    ; $7fd1: $02
    dec de                                        ; $7fd2: $1b
    nop                                           ; $7fd3: $00
    inc bc                                        ; $7fd4: $03
    ld [$1b03], sp                                ; $7fd5: $08 $03 $1b
    nop                                           ; $7fd8: $00
    ccf                                           ; $7fd9: $3f
    nop                                           ; $7fda: $00
    inc c                                         ; $7fdb: $0c
    nop                                           ; $7fdc: $00
    dec de                                        ; $7fdd: $1b
    nop                                           ; $7fde: $00
    ld c, l                                       ; $7fdf: $4d
    nop                                           ; $7fe0: $00
    ld [bc], a                                    ; $7fe1: $02
    nop                                           ; $7fe2: $00
    ld c, b                                       ; $7fe3: $48
    nop                                           ; $7fe4: $00
    ld a, c                                       ; $7fe5: $79
    nop                                           ; $7fe6: $00
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    ld bc, $0003                                  ; $7fed: $01 $03 $00
    ld a, [bc]                                    ; $7ff0: $0a
    nop                                           ; $7ff1: $00
    ld [hl], a                                    ; $7ff2: $77
    inc c                                         ; $7ff3: $0c
    ld [hl], a                                    ; $7ff4: $77
    ld a, c                                       ; $7ff5: $79
    ld a, b                                       ; $7ff6: $78
    ld a, d                                       ; $7ff7: $7a
    ld a, e                                       ; $7ff8: $7b
    ld a, h                                       ; $7ff9: $7c
    ld a, b                                       ; $7ffa: $78
    ld a, d                                       ; $7ffb: $7a
    ld [hl], a                                    ; $7ffc: $77
    ld a, c                                       ; $7ffd: $79
    inc bc                                        ; $7ffe: $03
    db $06                                        ; $7fff: $06
