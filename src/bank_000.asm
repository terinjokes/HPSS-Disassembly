; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    pop hl                                        ; $0000: $e1

Call_000_0001:
Jump_000_0001:
    call Call_000_319d                            ; $0001: $cd $9d $31

Call_000_0004:
Jump_000_0004:
    jp hl                                         ; $0004: $e9


Call_000_0005:
Jump_000_0005:
    add a                                         ; $0005: $87

Call_000_0006:
Jump_000_0006:
    add a                                         ; $0006: $87

Call_000_0007:
Jump_000_0007:
    add a                                         ; $0007: $87

RST_08::
    add l                                         ; $0008: $85

Call_000_0009:
Jump_000_0009:
    ld l, a                                       ; $0009: $6f

Call_000_000a:
Jump_000_000a:
    ld a, $00                                     ; $000a: $3e $00

Call_000_000c:
Jump_000_000c:
    adc h                                         ; $000c: $8c

Call_000_000d:
Jump_000_000d:
    ld h, a                                       ; $000d: $67

Call_000_000e:
Jump_000_000e:
    ld a, [hl]                                    ; $000e: $7e

Call_000_000f:
Jump_000_000f:
    ret                                           ; $000f: $c9


RST_10::
    ld a, d                                       ; $0010: $7a

Call_000_0011:
    cp h                                          ; $0011: $bc

Call_000_0012:
Jump_000_0012:
    ret nz                                        ; $0012: $c0

Call_000_0013:
Jump_000_0013:
    ld a, e                                       ; $0013: $7b

Call_000_0014:
Jump_000_0014:
    cp l                                          ; $0014: $bd

Call_000_0015:
Jump_000_0015:
    ret                                           ; $0015: $c9


    db $ff, $ff

RST_18::
    ld a, $01                                     ; $0018: $3e $01

Call_000_001a:
Jump_000_001a:
    ldh [$a6], a                                  ; $001a: $e0 $a6

Call_000_001c:
Jump_000_001c:
    ret                                           ; $001c: $c9


    db $ff, $ff, $ff

RST_20::
    xor a                                         ; $0020: $af

Call_000_0021:
Jump_000_0021:
    ldh [$a6], a                                  ; $0021: $e0 $a6

Call_000_0023:
Jump_000_0023:
    ld a, $02                                     ; $0023: $3e $02

    db $e0, $a8

Call_000_0027:
Jump_000_0027:
    ret                                           ; $0027: $c9


RST_28::
    ld a, h                                       ; $0028: $7c

Call_000_0029:
Jump_000_0029:
    ldh [rHDMA1], a                               ; $0029: $e0 $51

    db $7d, $e0, $52

Call_000_002e:
Jump_000_002e:
    ld a, d                                       ; $002e: $7a

    db $e0

RST_30::
    ld d, e                                       ; $0030: $53

Call_000_0031:
Jump_000_0031:
    ld a, e                                       ; $0031: $7b

    db $e0, $54

Call_000_0034:
Jump_000_0034:
    ld a, c                                       ; $0034: $79

Call_000_0035:
Jump_000_0035:
    ldh [rHDMA5], a                               ; $0035: $e0 $55

Call_000_0037:
Jump_000_0037:
    ret                                           ; $0037: $c9


RST_38::
    db $40

Call_000_0039:
Jump_000_0039:
    push af                                       ; $0039: $f5

Call_000_003a:
Jump_000_003a:
    pop de                                        ; $003a: $d1

Call_000_003b:
Jump_000_003b:
    ld a, e                                       ; $003b: $7b

Call_000_003c:
Jump_000_003c:
    ld [$cdba], a                                 ; $003c: $ea $ba $cd

Call_000_003f:
Jump_000_003f:
    ret                                           ; $003f: $c9


VBlankInterrupt::
    jp Jump_000_3680                              ; $0040: $c3 $80 $36


    db $ff, $ff, $ff, $ff, $ff

LCDCInterrupt::
    jp $c0ce                                      ; $0048: $c3 $ce $c0


    db $c3, $ac, $23, $ff, $ff

TimerOverflowInterrupt::
    ei                                            ; $0050: $fb

Call_000_0051:
Jump_000_0051:
    jp Jump_000_39ac                              ; $0051: $c3 $ac $39


    db $ff, $ff, $ff, $ff

SerialTransferCompleteInterrupt::
    jp Jump_000_38a3                              ; $0058: $c3 $a3 $38


Jump_000_005b:
    rst $38                                       ; $005b: $ff

    db $ff, $ff, $ff, $ff

JoypadTransitionInterrupt::
    reti                                          ; $0060: $d9


Call_000_0061:
Jump_000_0061:
    rst $10                                       ; $0061: $d7

Call_000_0062:
Jump_000_0062:
    jr c, jr_000_0068                             ; $0062: $38 $04

Call_000_0064:
Jump_000_0064:
    push de                                       ; $0064: $d5

Jump_000_0065:
    ld d, h                                       ; $0065: $54

Call_000_0066:
    ld e, l                                       ; $0066: $5d
    pop hl                                        ; $0067: $e1

Call_000_0068:
Jump_000_0068:
jr_000_0068:
    sra d                                         ; $0068: $cb $2a

Call_000_006a:
Jump_000_006a:
    rr e                                          ; $006a: $cb $1b

Call_000_006c:
Jump_000_006c:
    sra d                                         ; $006c: $cb $2a

Call_000_006e:
Jump_000_006e:
    rr e                                          ; $006e: $cb $1b

Call_000_0070:
Jump_000_0070:
    sra d                                         ; $0070: $cb $2a

Call_000_0072:
Jump_000_0072:
    rr e                                          ; $0072: $cb $1b

Jump_000_0074:
    add hl, de                                    ; $0074: $19

Jump_000_0075:
    add hl, de                                    ; $0075: $19

Call_000_0076:
Jump_000_0076:
    add hl, de                                    ; $0076: $19

Call_000_0077:
Jump_000_0077:
    ret                                           ; $0077: $c9


Call_000_0078:
Jump_000_0078:
    bit 7, h                                      ; $0078: $cb $7c

Call_000_007a:
Jump_000_007a:
    ret z                                         ; $007a: $c8

Call_000_007b:
Jump_000_007b:
    push af                                       ; $007b: $f5

Call_000_007c:
    ld a, l                                       ; $007c: $7d

Call_000_007d:
Jump_000_007d:
    cpl                                           ; $007d: $2f

Jump_000_007e:
    add $01                                       ; $007e: $c6 $01

Call_000_0080:
Jump_000_0080:
    ld l, a                                       ; $0080: $6f

Call_000_0081:
Jump_000_0081:
    ld a, h                                       ; $0081: $7c

Call_000_0082:
Jump_000_0082:
    cpl                                           ; $0082: $2f

Call_000_0083:
Jump_000_0083:
    adc $00                                       ; $0083: $ce $00

Call_000_0085:
Jump_000_0085:
    ld h, a                                       ; $0085: $67
    pop af                                        ; $0086: $f1

Call_000_0087:
Jump_000_0087:
    ret                                           ; $0087: $c9


    db $f5, $79, $2f, $c6, $01, $4f, $78, $2f, $ce, $00, $47, $f1, $c9

Call_000_0095:
Jump_000_0095:
    bit 7, d                                      ; $0095: $cb $7a

Call_000_0097:
Jump_000_0097:
    ret z                                         ; $0097: $c8

Call_000_0098:
Jump_000_0098:
    push af                                       ; $0098: $f5

Call_000_0099:
    ld a, e                                       ; $0099: $7b

Call_000_009a:
Jump_000_009a:
    cpl                                           ; $009a: $2f

Call_000_009b:
Jump_000_009b:
    add $01                                       ; $009b: $c6 $01

Call_000_009d:
Jump_000_009d:
    ld e, a                                       ; $009d: $5f

Call_000_009e:
    ld a, d                                       ; $009e: $7a

Call_000_009f:
Jump_000_009f:
    cpl                                           ; $009f: $2f

Call_000_00a0:
Jump_000_00a0:
    adc $00                                       ; $00a0: $ce $00

Call_000_00a2:
    ld d, a                                       ; $00a2: $57

Call_000_00a3:
Jump_000_00a3:
    pop af                                        ; $00a3: $f1

Jump_000_00a4:
    ret                                           ; $00a4: $c9


Call_000_00a5:
Jump_000_00a5:
    push bc                                       ; $00a5: $c5

Call_000_00a6:
    ld b, $08                                     ; $00a6: $06 $08

Call_000_00a8:
Jump_000_00a8:
    xor a                                         ; $00a8: $af

Jump_000_00a9:
jr_000_00a9:
    add a                                         ; $00a9: $87

Call_000_00aa:
Jump_000_00aa:
    rl l                                          ; $00aa: $cb $15

Call_000_00ac:
Jump_000_00ac:
    jr nc, jr_000_00b2                            ; $00ac: $30 $04

Call_000_00ae:
Jump_000_00ae:
    add h                                         ; $00ae: $84

Call_000_00af:
    jr nc, jr_000_00b2                            ; $00af: $30 $01

    db $2c

Jump_000_00b2:
jr_000_00b2:
    dec b                                         ; $00b2: $05

Call_000_00b3:
Jump_000_00b3:
    jr nz, jr_000_00a9                            ; $00b3: $20 $f4

Call_000_00b5:
    ld h, l                                       ; $00b5: $65

Jump_000_00b6:
    ld l, a                                       ; $00b6: $6f

Jump_000_00b7:
    pop bc                                        ; $00b7: $c1

Call_000_00b8:
    ret                                           ; $00b8: $c9


Call_000_00b9:
    xor a                                         ; $00b9: $af

Call_000_00ba:
Jump_000_00ba:
    or l                                          ; $00ba: $b5

Call_000_00bb:
Jump_000_00bb:
    jr nz, jr_000_00c0                            ; $00bb: $20 $03

    db $65, $37, $c9

Call_000_00c0:
Jump_000_00c0:
jr_000_00c0:
    push bc                                       ; $00c0: $c5

Call_000_00c1:
Jump_000_00c1:
    push de                                       ; $00c1: $d5

    db $06, $08

Call_000_00c4:
Jump_000_00c4:
    ld c, l                                       ; $00c4: $4d

Call_000_00c5:
    ld l, $00                                     ; $00c5: $2e $00

Call_000_00c7:
Jump_000_00c7:
jr_000_00c7:
    rl h                                          ; $00c7: $cb $14

Call_000_00c9:
Jump_000_00c9:
    rl l                                          ; $00c9: $cb $15

Call_000_00cb:
Jump_000_00cb:
    ld e, l                                       ; $00cb: $5d

Call_000_00cc:
Jump_000_00cc:
    ld a, l                                       ; $00cc: $7d

Call_000_00cd:
Jump_000_00cd:
    sub c                                         ; $00cd: $91

Call_000_00ce:
Jump_000_00ce:
    ld l, a                                       ; $00ce: $6f

    db $3f

Call_000_00d0:
Jump_000_00d0:
    jr c, jr_000_00d3                             ; $00d0: $38 $01

Jump_000_00d2:
    ld l, e                                       ; $00d2: $6b

Call_000_00d3:
Jump_000_00d3:
jr_000_00d3:
    dec b                                         ; $00d3: $05

Call_000_00d4:
Jump_000_00d4:
    jr nz, jr_000_00c7                            ; $00d4: $20 $f1

Call_000_00d6:
Jump_000_00d6:
    rl h                                          ; $00d6: $cb $14

Jump_000_00d8:
    or a                                          ; $00d8: $b7

Call_000_00d9:
Jump_000_00d9:
    pop de                                        ; $00d9: $d1

Jump_000_00da:
    pop bc                                        ; $00da: $c1

Call_000_00db:
Jump_000_00db:
    ret                                           ; $00db: $c9


Call_000_00dc:
Jump_000_00dc:
    push bc                                       ; $00dc: $c5

Call_000_00dd:
Jump_000_00dd:
    ld c, l                                       ; $00dd: $4d

Jump_000_00de:
    ld b, h                                       ; $00de: $44

Call_000_00df:
Jump_000_00df:
    ld a, $0f                                     ; $00df: $3e $0f

Call_000_00e1:
Jump_000_00e1:
    ld hl, $0000                                  ; $00e1: $21 $00 $00

Jump_000_00e4:
jr_000_00e4:
    sla e                                         ; $00e4: $cb $23

Call_000_00e6:
Jump_000_00e6:
    rl d                                          ; $00e6: $cb $12

Call_000_00e8:
Jump_000_00e8:
    jr nc, jr_000_00eb                            ; $00e8: $30 $01

Call_000_00ea:
Jump_000_00ea:
    add hl, bc                                    ; $00ea: $09

Call_000_00eb:
jr_000_00eb:
    add hl, hl                                    ; $00eb: $29

Call_000_00ec:
Jump_000_00ec:
    dec a                                         ; $00ec: $3d

Call_000_00ed:
Jump_000_00ed:
    jr nz, jr_000_00e4                            ; $00ed: $20 $f5

Call_000_00ef:
Jump_000_00ef:
    bit 7, d                                      ; $00ef: $cb $7a

Call_000_00f1:
Jump_000_00f1:
    jr z, jr_000_00f4                             ; $00f1: $28 $01

Call_000_00f3:
    add hl, bc                                    ; $00f3: $09

Call_000_00f4:
Jump_000_00f4:
jr_000_00f4:
    pop bc                                        ; $00f4: $c1

Call_000_00f5:
Jump_000_00f5:
    ret                                           ; $00f5: $c9


Jump_000_00f6:
    add hl, de                                    ; $00f6: $19

Call_000_00f7:
Jump_000_00f7:
    ld a, $02                                     ; $00f7: $3e $02

Call_000_00f9:
Jump_000_00f9:
    ld [$2000], a                                 ; $00f9: $ea $00 $20

Call_000_00fc:
Jump_000_00fc:
    ld e, [hl]                                    ; $00fc: $5e

Call_000_00fd:
Jump_000_00fd:
    inc hl                                        ; $00fd: $23

Call_000_00fe:
Jump_000_00fe:
    ld d, [hl]                                    ; $00fe: $56

Call_000_00ff:
Jump_000_00ff:
    ret                                           ; $00ff: $c9


Boot::
    nop
    jp Start

    ;;  The header is created by rgbfix after linking.
    ;;  This reserves the space used by the header.
    ds $150 - $104

Start::
    and a                       ; clear flags
    cp BOOTUP_A_CGB             ; is Game Boy Color?

    ld a, $00                   ; set a to 0
    jr nz, .notGBC              ; if not GBC:
    inc a                       ;    increment a (a=1)

.notGBC
    ldh [$ef], a                ; save GBC value
    ld sp, $cfff                ; setup stack pointer
    ldh a, [$ef]
    or a
    call z, Unknown_Non_GBC     ; call if not GBC

    ld sp, $cfff                ; setup stack pointer (again?)
    di                          ; disable interrupts

    ldh a, [$ef]                                  ; $0167: $f0 $ef

    push af

    ld a, $03
    ld [rROMB0], a               ; load bank 3
    call Call_003_7d36

    pop af                                        ; $0172: $f1

    ldh [$ef], a                                  ; $0173: $e0 $ef
    ld a, $07                                     ; $0175: $3e $07
    ldh [rWX], a                                  ; $0177: $e0 $4b
    ld a, $91                                     ; $0179: $3e $91
    ldh [rWY], a                                  ; $017b: $e0 $4a

    call Call_000_38c3

    ld a, $01
    ld [rROMB0], a              ; load bank 1
    call Call_001_4647

    call Call_000_3a66                            ; $0188: $cd $66 $3a

    ld hl, rIE                                    ; $018b: $21 $ff $ff
    set 0, [hl]                 ; enable V-Blank interrupt

    ld a, $04
    ld [rROMB0], a              ; load bank 4

    call Call_004_55e7                            ; $0195: $cd $e7 $55

    ld a, $01
    ld [rROMB0], a              ; load bank 1

    call Call_001_644f
    call Call_000_23ad

    ei                          ; enable interrupts

Call_000_01a4:
jr_000_01a4:
    call Call_000_23c4                            ; $01a4: $cd $c4 $23
    jr jr_000_01a4                                ; $01a7: $18 $fb

    db $f0, $ff, $b0, $00, $90, $00, $b0, $00, $f0, $ff, $b0, $00, $f0, $ff, $00, $00
    db $f0, $ff, $00, $00, $f0, $ff, $b0, $00, $a0, $00, $b0, $00, $f0, $ff, $b0, $00
    db $f0, $ff, $b0, $00, $f0, $ff, $b0, $00

Call_000_01d1:
Jump_000_01d1:
    ld a, $18                                     ; $01d1: $3e $18

Jump_000_01d3:
    ld bc, $ca67                                  ; $01d3: $01 $67 $ca

Jump_000_01d6:
    ld [$cab8], a                                 ; $01d6: $ea $b8 $ca
    ld a, [bc]                                    ; $01d9: $0a

Jump_000_01da:
    or a                                          ; $01da: $b7

Call_000_01db:
Jump_000_01db:
    jr z, jr_000_0203                             ; $01db: $28 $26

Call_000_01dd:
Jump_000_01dd:
    ld [$cab9], a                                 ; $01dd: $ea $b9 $ca

Call_000_01e0:
Jump_000_01e0:
    ld hl, $caba                                  ; $01e0: $21 $ba $ca

Call_000_01e3:
    ld [hl], c                                    ; $01e3: $71

Jump_000_01e4:
    inc hl                                        ; $01e4: $23
    ld [hl], b                                    ; $01e5: $70

Call_000_01e6:
Jump_000_01e6:
    ld a, $01                                     ; $01e6: $3e $01

Call_000_01e8:
Jump_000_01e8:
    ld [$2000], a                                 ; $01e8: $ea $00 $20
    ld a, [$cab9]                                 ; $01eb: $fa $b9 $ca

Call_000_01ee:
Jump_000_01ee:
    cp $b9                                        ; $01ee: $fe $b9

Call_000_01f0:
Jump_000_01f0:
    jr nc, jr_000_0203                            ; $01f0: $30 $11

    push bc                                       ; $01f2: $c5

Call_000_01f3:
Jump_000_01f3:
    ld de, $01fa                                  ; $01f3: $11 $fa $01

Jump_000_01f6:
    push de                                       ; $01f6: $d5

Jump_000_01f7:
    jp $41b3                                      ; $01f7: $c3 $b3 $41


Jump_000_01fa:
    pop bc                                        ; $01fa: $c1

Call_000_01fb:
Jump_000_01fb:
    ld a, $01                                     ; $01fb: $3e $01

Call_000_01fd:
Jump_000_01fd:
    ld [$2000], a                                 ; $01fd: $ea $00 $20

Call_000_0200:
Jump_000_0200:
    call $5cdf                                    ; $0200: $cd $df $5c

Call_000_0203:
Jump_000_0203:
jr_000_0203:
    ld hl, $ffaf                                  ; $0203: $21 $af $ff

Call_000_0206:
Jump_000_0206:
    add hl, bc                                    ; $0206: $09

Call_000_0207:
Jump_000_0207:
    ld c, l                                       ; $0207: $4d

Call_000_0208:
Jump_000_0208:
    ld b, h                                       ; $0208: $44

Call_000_0209:
Jump_000_0209:
    ld a, [$cab8]                                 ; $0209: $fa $b8 $ca

Call_000_020c:
Jump_000_020c:
    dec a                                         ; $020c: $3d

Call_000_020d:
Jump_000_020d:
    jp nz, Jump_000_01d6                          ; $020d: $c2 $d6 $01

Call_000_0210:
Jump_000_0210:
    ret                                           ; $0210: $c9


Call_000_0211:
Jump_000_0211:
    call Call_000_093b                            ; $0211: $cd $3b $09

Call_000_0214:
Jump_000_0214:
    ld a, $01                                     ; $0214: $3e $01

Call_000_0216:
Jump_000_0216:
    ld [$2000], a                                 ; $0216: $ea $00 $20

Call_000_0219:
Jump_000_0219:
    call $5bd3                                    ; $0219: $cd $d3 $5b

Call_000_021c:
Jump_000_021c:
    ld hl, $c0c4                                  ; $021c: $21 $c4 $c0

Call_000_021f:
Jump_000_021f:
    res 0, [hl]                                   ; $021f: $cb $86

Call_000_0221:
Jump_000_0221:
    ld a, $28                                     ; $0221: $3e $28

Call_000_0223:
Jump_000_0223:
    ld [$c0b9], a                                 ; $0223: $ea $b9 $c0

Call_000_0226:
Jump_000_0226:
    ld a, [$cce2]                                 ; $0226: $fa $e2 $cc

Call_000_0229:
Jump_000_0229:
    ldh [$ba], a                                  ; $0229: $e0 $ba

Call_000_022b:
Jump_000_022b:
    ld hl, $c000                                  ; $022b: $21 $00 $c0

Call_000_022e:
    ld a, l                                       ; $022e: $7d

Call_000_022f:
Jump_000_022f:
    ld [$c0b7], a                                 ; $022f: $ea $b7 $c0

Call_000_0232:
Jump_000_0232:
    ld a, h                                       ; $0232: $7c

Call_000_0233:
Jump_000_0233:
    ld [$c0b8], a                                 ; $0233: $ea $b8 $c0

Call_000_0236:
Jump_000_0236:
    ld a, $01                                     ; $0236: $3e $01

Call_000_0238:
Jump_000_0238:
    call Call_000_0269                            ; $0238: $cd $69 $02

Call_000_023b:
    ld a, $02                                     ; $023b: $3e $02

Call_000_023d:
Jump_000_023d:
    call Call_000_0955                            ; $023d: $cd $55 $09

Call_000_0240:
Jump_000_0240:
    ld a, $03                                     ; $0240: $3e $03
    call Call_000_0269                            ; $0242: $cd $69 $02
    ld a, $01                                     ; $0245: $3e $01

Call_000_0247:
    ld [$2000], a                                 ; $0247: $ea $00 $20

Call_000_024a:
    call $4606                                    ; $024a: $cd $06 $46

Jump_000_024d:
    ldh a, [$cf]                                  ; $024d: $f0 $cf

Call_000_024f:
    cp $19                                        ; $024f: $fe $19

Call_000_0251:
Jump_000_0251:
    call nz, $461c                                ; $0251: $c4 $1c $46
    ld a, [$c0c4]                                 ; $0254: $fa $c4 $c0

Jump_000_0257:
    or $01                                        ; $0257: $f6 $01
    ld [$c0c4], a                                 ; $0259: $ea $c4 $c0

Call_000_025c:
Jump_000_025c:
    ldh a, [rLCDC]                                ; $025c: $f0 $40

Call_000_025e:
    bit 7, a                                      ; $025e: $cb $7f

Call_000_0260:
Jump_000_0260:
    ret z                                         ; $0260: $c8

Jump_000_0261:
    ld a, $01                                     ; $0261: $3e $01
    ld [$2000], a                                 ; $0263: $ea $00 $20
    jp $5be0                                      ; $0266: $c3 $e0 $5b


Call_000_0269:
    ld [$cce3], a                                 ; $0269: $ea $e3 $cc

Call_000_026c:
    ld bc, $c371                                  ; $026c: $01 $71 $c3
    ld a, $17                                     ; $026f: $3e $17

jr_000_0271:
    ld [$cab8], a                                 ; $0271: $ea $b8 $ca
    ld a, [bc]                                    ; $0274: $0a
    or a                                          ; $0275: $b7
    jp z, Jump_000_0282                           ; $0276: $ca $82 $02

Jump_000_0279:
    ld [$cab9], a                                 ; $0279: $ea $b9 $ca

Call_000_027c:
    call Call_000_028f                            ; $027c: $cd $8f $02
    call nz, Call_000_02ab                        ; $027f: $c4 $ab $02

Call_000_0282:
Jump_000_0282:
    ld hl, $0051                                  ; $0282: $21 $51 $00

Jump_000_0285:
    add hl, bc                                    ; $0285: $09

Jump_000_0286:
    ld c, l                                       ; $0286: $4d

Call_000_0287:
    ld b, h                                       ; $0287: $44

Call_000_0288:
Jump_000_0288:
    ld a, [$cab8]                                 ; $0288: $fa $b8 $ca
    dec a                                         ; $028b: $3d
    jr nz, jr_000_0271                            ; $028c: $20 $e3

    ret                                           ; $028e: $c9


Call_000_028f:
    ld hl, $002e                                  ; $028f: $21 $2e $00
    add hl, bc                                    ; $0292: $09

Call_000_0293:
    ld a, [$cce3]                                 ; $0293: $fa $e3 $cc

Jump_000_0296:
    dec a                                         ; $0296: $3d

Jump_000_0297:
    jr z, jr_000_02a5                             ; $0297: $28 $0c

    dec a                                         ; $0299: $3d
    jr nz, jr_000_02a8                            ; $029a: $20 $0c

    ld a, $18                                     ; $029c: $3e $18
    and [hl]                                      ; $029e: $a6
    jr nz, jr_000_02a3                            ; $029f: $20 $02

Jump_000_02a1:
    inc a                                         ; $02a1: $3c
    ret                                           ; $02a2: $c9


jr_000_02a3:
    xor a                                         ; $02a3: $af

    db $c9

Call_000_02a5:
jr_000_02a5:
    bit 4, [hl]                                   ; $02a5: $cb $66

Call_000_02a7:
    ret                                           ; $02a7: $c9


Call_000_02a8:
jr_000_02a8:
    bit 3, [hl]                                   ; $02a8: $cb $5e

Jump_000_02aa:
    ret                                           ; $02aa: $c9


Call_000_02ab:
    ld a, [bc]                                    ; $02ab: $0a
    or a                                          ; $02ac: $b7
    ret z                                         ; $02ad: $c8

    ld hl, $002e                                  ; $02ae: $21 $2e $00
    add hl, bc                                    ; $02b1: $09
    bit 2, [hl]                                   ; $02b2: $cb $56

Call_000_02b4:
Jump_000_02b4:
    ret z                                         ; $02b4: $c8

    bit 1, [hl]                                   ; $02b5: $cb $4e
    ret nz                                        ; $02b7: $c0

Jump_000_02b8:
    ld hl, $002d                                  ; $02b8: $21 $2d $00

Call_000_02bb:
    add hl, bc                                    ; $02bb: $09

Call_000_02bc:
Jump_000_02bc:
    bit 5, [hl]                                   ; $02bc: $cb $6e
    jr z, jr_000_02c5                             ; $02be: $28 $05

Call_000_02c0:
Jump_000_02c0:
    ldh a, [$c2]                                  ; $02c0: $f0 $c2

Jump_000_02c2:
    and $01                                       ; $02c2: $e6 $01
    ret z                                         ; $02c4: $c8

jr_000_02c5:
    ld hl, $002b                                  ; $02c5: $21 $2b $00

Jump_000_02c8:
    add hl, bc                                    ; $02c8: $09
    bit 0, [hl]                                   ; $02c9: $cb $46

Call_000_02cb:
Jump_000_02cb:
    ret nz                                        ; $02cb: $c0

Call_000_02cc:
Jump_000_02cc:
    ld hl, $002c                                  ; $02cc: $21 $2c $00

Call_000_02cf:
    add hl, bc                                    ; $02cf: $09

Jump_000_02d0:
    ld a, [hl]                                    ; $02d0: $7e

Call_000_02d1:
Jump_000_02d1:
    ldh [$af], a                                  ; $02d1: $e0 $af

Jump_000_02d3:
    ld a, $01                                     ; $02d3: $3e $01
    ld [$2000], a                                 ; $02d5: $ea $00 $20
    ld hl, $000b                                  ; $02d8: $21 $0b $00

Call_000_02db:
Jump_000_02db:
    add hl, bc                                    ; $02db: $09

Call_000_02dc:
Jump_000_02dc:
    ld de, $ffab                                  ; $02dc: $11 $ab $ff

Call_000_02df:
Jump_000_02df:
    call Call_000_124b                            ; $02df: $cd $4b $12
    ld hl, $002d                                  ; $02e2: $21 $2d $00
    add hl, bc                                    ; $02e5: $09

Jump_000_02e6:
    bit 2, [hl]                                   ; $02e6: $cb $56

Call_000_02e8:
Jump_000_02e8:
    call z, $45db                                 ; $02e8: $cc $db $45

Jump_000_02eb:
    ldh a, [$ad]                                  ; $02eb: $f0 $ad

Jump_000_02ed:
    cp $cc                                        ; $02ed: $fe $cc

Jump_000_02ef:
    ret nc                                        ; $02ef: $d0

    ld hl, $0027                                  ; $02f0: $21 $27 $00

Call_000_02f3:
Jump_000_02f3:
    add hl, bc                                    ; $02f3: $09

Call_000_02f4:
    bit 7, [hl]                                   ; $02f4: $cb $7e

Jump_000_02f6:
    jr z, jr_000_0331                             ; $02f6: $28 $39

Call_000_02f8:
Jump_000_02f8:
    ld hl, $002f                                  ; $02f8: $21 $2f $00

Call_000_02fb:
    add hl, bc                                    ; $02fb: $09

Call_000_02fc:
Jump_000_02fc:
    ld a, [hl]                                    ; $02fc: $7e

Call_000_02fd:
Jump_000_02fd:
    ldh [$b0], a                                  ; $02fd: $e0 $b0

Call_000_02ff:
Jump_000_02ff:
    ld hl, $0028                                  ; $02ff: $21 $28 $00

Call_000_0302:
Jump_000_0302:
    add hl, bc                                    ; $0302: $09

Call_000_0303:
Jump_000_0303:
    ld a, [hl]                                    ; $0303: $7e

Call_000_0304:
Jump_000_0304:
    ldh [$aa], a                                  ; $0304: $e0 $aa

Call_000_0306:
Jump_000_0306:
    ld a, $01                                     ; $0306: $3e $01

Call_000_0308:
Jump_000_0308:
    ld [$2000], a                                 ; $0308: $ea $00 $20

Call_000_030b:
Jump_000_030b:
    ld a, [bc]                                    ; $030b: $0a

Call_000_030c:
Jump_000_030c:
    ld hl, $44bd                                  ; $030c: $21 $bd $44

Call_000_030f:
Jump_000_030f:
    rst $08                                       ; $030f: $cf

Call_000_0310:
Jump_000_0310:
    ld hl, $63bc                                  ; $0310: $21 $bc $63

Call_000_0313:
Jump_000_0313:
    call Call_000_0888                            ; $0313: $cd $88 $08

Call_000_0316:
Jump_000_0316:
    call Call_000_0ebc                            ; $0316: $cd $bc $0e

Call_000_0319:
    ld a, [bc]                                    ; $0319: $0a

Call_000_031a:
Jump_000_031a:
    cp $7c                                        ; $031a: $fe $7c

Call_000_031c:
Jump_000_031c:
    jr z, jr_000_0321                             ; $031c: $28 $03

Call_000_031e:
Jump_000_031e:
    cp $b2                                        ; $031e: $fe $b2

Call_000_0320:
Jump_000_0320:
    ret nz                                        ; $0320: $c0

jr_000_0321:
    ld hl, $c0b7                                  ; $0321: $21 $b7 $c0

Jump_000_0324:
    ld a, [hl+]                                   ; $0324: $2a

Call_000_0325:
Jump_000_0325:
    ld h, [hl]                                    ; $0325: $66

Call_000_0326:
Jump_000_0326:
    ld l, a                                       ; $0326: $6f

Call_000_0327:
Jump_000_0327:
    ld de, $fffc                                  ; $0327: $11 $fc $ff

Call_000_032a:
Jump_000_032a:
    add hl, de                                    ; $032a: $19

Call_000_032b:
Jump_000_032b:
    ld de, $cd1a                                  ; $032b: $11 $1a $cd

Call_000_032e:
Jump_000_032e:
    jp Jump_000_124b                              ; $032e: $c3 $4b $12


Jump_000_0331:
jr_000_0331:
    ld hl, $002f                                  ; $0331: $21 $2f $00

Call_000_0334:
Jump_000_0334:
    add hl, bc                                    ; $0334: $09

Call_000_0335:
Jump_000_0335:
    ld a, [hl]                                    ; $0335: $7e

Call_000_0336:
Jump_000_0336:
    ldh [$b0], a                                  ; $0336: $e0 $b0

Call_000_0338:
Jump_000_0338:
    xor a                                         ; $0338: $af

Call_000_0339:
Jump_000_0339:
    ldh [$aa], a                                  ; $0339: $e0 $aa

Call_000_033b:
Jump_000_033b:
    ld hl, $002c                                  ; $033b: $21 $2c $00

Jump_000_033e:
    add hl, bc                                    ; $033e: $09

Call_000_033f:
Jump_000_033f:
    ld a, [hl]                                    ; $033f: $7e
    ldh [$af], a                                  ; $0340: $e0 $af

Jump_000_0342:
    call Call_000_086d                            ; $0342: $cd $6d $08
    ld hl, $002b                                  ; $0345: $21 $2b $00
    add hl, bc                                    ; $0348: $09
    ld a, [hl]                                    ; $0349: $7e
    bit 3, a                                      ; $034a: $cb $5f

Jump_000_034c:
    jr nz, jr_000_0376                            ; $034c: $20 $28

Jump_000_034e:
    ld hl, $4001                                  ; $034e: $21 $01 $40
    call Call_000_08ab                            ; $0351: $cd $ab $08

Jump_000_0354:
    push de                                       ; $0354: $d5
    ld d, h                                       ; $0355: $54

Jump_000_0356:
    ld e, l                                       ; $0356: $5d
    pop hl                                        ; $0357: $e1

Call_000_0358:
Jump_000_0358:
    call Call_000_0ed4                            ; $0358: $cd $d4 $0e
    ld a, [$cd19]                                 ; $035b: $fa $19 $cd
    or a                                          ; $035e: $b7

Call_000_035f:
    ret z                                         ; $035f: $c8

    inc a                                         ; $0360: $3c
    ret z                                         ; $0361: $c8

Call_000_0362:
Jump_000_0362:
    ld a, [bc]                                    ; $0362: $0a

Call_000_0363:
Jump_000_0363:
    cp $83                                        ; $0363: $fe $83

Call_000_0365:
    ret nz                                        ; $0365: $c0

    ld hl, $c0b7                                  ; $0366: $21 $b7 $c0
    ld a, [hl+]                                   ; $0369: $2a
    ld h, [hl]                                    ; $036a: $66

Call_000_036b:
    ld l, a                                       ; $036b: $6f

Call_000_036c:
    ld de, $fff8                                  ; $036c: $11 $f8 $ff
    add hl, de                                    ; $036f: $19

Call_000_0370:
    ld de, $cd1a                                  ; $0370: $11 $1a $cd
    jp Jump_000_123f                              ; $0373: $c3 $3f $12


jr_000_0376:
    push de                                       ; $0376: $d5

Jump_000_0377:
    ld hl, $4001                                  ; $0377: $21 $01 $40

Call_000_037a:
Jump_000_037a:
    call Call_000_08ab                            ; $037a: $cd $ab $08
    push de                                       ; $037d: $d5
    ld d, h                                       ; $037e: $54

Call_000_037f:
    ld e, l                                       ; $037f: $5d
    pop hl                                        ; $0380: $e1
    call Call_000_0ed4                            ; $0381: $cd $d4 $0e

Jump_000_0384:
    ld hl, $004d                                  ; $0384: $21 $4d $00
    add hl, bc                                    ; $0387: $09
    ld a, [hl]                                    ; $0388: $7e
    ld d, a                                       ; $0389: $57

Jump_000_038a:
    ldh a, [$af]                                  ; $038a: $f0 $af

Call_000_038c:
    and $f8                                       ; $038c: $e6 $f8

Call_000_038e:
    add d                                         ; $038e: $82
    ldh [$af], a                                  ; $038f: $e0 $af
    pop de                                        ; $0391: $d1

Call_000_0392:
Jump_000_0392:
    inc de                                        ; $0392: $13
    ld hl, $4001                                  ; $0393: $21 $01 $40
    call Call_000_08ab                            ; $0396: $cd $ab $08

Jump_000_0399:
    push de                                       ; $0399: $d5
    ld d, h                                       ; $039a: $54

Jump_000_039b:
    ld e, l                                       ; $039b: $5d
    pop hl                                        ; $039c: $e1
    jp Jump_000_0ed4                              ; $039d: $c3 $d4 $0e


Call_000_03a0:
Jump_000_03a0:
    ldh [$9a], a                                  ; $03a0: $e0 $9a

Call_000_03a2:
    push bc                                       ; $03a2: $c5
    ld a, [$4000]                                 ; $03a3: $fa $00 $40
    push af                                       ; $03a6: $f5
    ld hl, $ff98                                  ; $03a7: $21 $98 $ff
    ld a, [hl+]                                   ; $03aa: $2a
    ld h, [hl]                                    ; $03ab: $66
    ld l, a                                       ; $03ac: $6f
    push hl                                       ; $03ad: $e5
    ld bc, $c320                                  ; $03ae: $01 $20 $c3
    ldh a, [$9a]                                  ; $03b1: $f0 $9a
    cp $01                                        ; $03b3: $fe $01
    jr z, jr_000_03d7                             ; $03b5: $28 $20

Call_000_03b7:
Jump_000_03b7:
    ld e, $17                                     ; $03b7: $1e $17
    ld bc, $c371                                  ; $03b9: $01 $71 $c3

Call_000_03bc:
Jump_000_03bc:
jr_000_03bc:
    ld a, [bc]                                    ; $03bc: $0a

Jump_000_03bd:
    or a                                          ; $03bd: $b7
    jr z, jr_000_03d7                             ; $03be: $28 $17

    ld hl, $0051                                  ; $03c0: $21 $51 $00
    add hl, bc                                    ; $03c3: $09
    ld b, h                                       ; $03c4: $44

Call_000_03c5:
Jump_000_03c5:
    ld c, l                                       ; $03c5: $4d
    dec e                                         ; $03c6: $1d
    jr nz, jr_000_03bc                            ; $03c7: $20 $f3

    pop hl                                        ; $03c9: $e1

Call_000_03ca:
    ld a, l                                       ; $03ca: $7d

Call_000_03cb:
    ldh [$98], a                                  ; $03cb: $e0 $98

Jump_000_03cd:
    ld a, h                                       ; $03cd: $7c

Call_000_03ce:
    ldh [$99], a                                  ; $03ce: $e0 $99
    pop af                                        ; $03d0: $f1

Call_000_03d1:
Jump_000_03d1:
    ld [$2000], a                                 ; $03d1: $ea $00 $20
    pop bc                                        ; $03d4: $c1
    xor a                                         ; $03d5: $af
    ret                                           ; $03d6: $c9


jr_000_03d7:
    ld h, b                                       ; $03d7: $60
    ld l, c                                       ; $03d8: $69
    ld a, $51                                     ; $03d9: $3e $51

Jump_000_03db:
jr_000_03db:
    ld [hl], $00                                  ; $03db: $36 $00

Call_000_03dd:
    inc hl                                        ; $03dd: $23
    dec a                                         ; $03de: $3d
    jr nz, jr_000_03db                            ; $03df: $20 $fa

Jump_000_03e1:
    ld a, $01                                     ; $03e1: $3e $01
    ld [$2000], a                                 ; $03e3: $ea $00 $20
    ld a, $17                                     ; $03e6: $3e $17
    sub e                                         ; $03e8: $93
    inc a                                         ; $03e9: $3c

Jump_000_03ea:
    ld hl, $004c                                  ; $03ea: $21 $4c $00
    add hl, bc                                    ; $03ed: $09
    ld [hl], a                                    ; $03ee: $77
    ldh a, [$9a]                                  ; $03ef: $f0 $9a
    ld [bc], a                                    ; $03f1: $02
    call $459d                                    ; $03f2: $cd $9d $45
    ld hl, $0030                                  ; $03f5: $21 $30 $00

Call_000_03f8:
Jump_000_03f8:
    add hl, bc                                    ; $03f8: $09
    ld a, [$c271]                                 ; $03f9: $fa $71 $c2

Call_000_03fc:
Jump_000_03fc:
    ld [hl], a                                    ; $03fc: $77

Call_000_03fd:
Jump_000_03fd:
    ld hl, $0006                                  ; $03fd: $21 $06 $00

Call_000_0400:
Jump_000_0400:
    add hl, bc                                    ; $0400: $09

Call_000_0401:
Jump_000_0401:
    ld de, $ff9c                                  ; $0401: $11 $9c $ff

Call_000_0404:
Jump_000_0404:
    ld a, [de]                                    ; $0404: $1a

Call_000_0405:
Jump_000_0405:
    ld [hl+], a                                   ; $0405: $22

Call_000_0406:
Jump_000_0406:
    inc de                                        ; $0406: $13

Call_000_0407:
Jump_000_0407:
    ld a, [de]                                    ; $0407: $1a

Call_000_0408:
Jump_000_0408:
    ld [hl+], a                                   ; $0408: $22

Call_000_0409:
Jump_000_0409:
    inc de                                        ; $0409: $13

Jump_000_040a:
    inc hl                                        ; $040a: $23

Call_000_040b:
Jump_000_040b:
    ld a, [de]                                    ; $040b: $1a

Call_000_040c:
Jump_000_040c:
    ld [hl+], a                                   ; $040c: $22

Call_000_040d:
Jump_000_040d:
    inc de                                        ; $040d: $13

Call_000_040e:
Jump_000_040e:
    ld a, [de]                                    ; $040e: $1a

Call_000_040f:
Jump_000_040f:
    ld [hl], a                                    ; $040f: $77

Call_000_0410:
Jump_000_0410:
    inc de                                        ; $0410: $13

Call_000_0411:
Jump_000_0411:
    ld hl, $000f                                  ; $0411: $21 $0f $00

Call_000_0414:
Jump_000_0414:
    add hl, bc                                    ; $0414: $09

Call_000_0415:
Jump_000_0415:
    ld a, [de]                                    ; $0415: $1a

Call_000_0416:
Jump_000_0416:
    ld [hl+], a                                   ; $0416: $22

Call_000_0417:
Jump_000_0417:
    inc de                                        ; $0417: $13

Call_000_0418:
Jump_000_0418:
    ld a, [de]                                    ; $0418: $1a

Call_000_0419:
Jump_000_0419:
    ld [hl+], a                                   ; $0419: $22

Call_000_041a:
Jump_000_041a:
    inc de                                        ; $041a: $13

Call_000_041b:
Jump_000_041b:
    ld a, [de]                                    ; $041b: $1a

Call_000_041c:
Jump_000_041c:
    ld [hl+], a                                   ; $041c: $22

Call_000_041d:
Jump_000_041d:
    inc de                                        ; $041d: $13

Call_000_041e:
Jump_000_041e:
    ld a, [de]                                    ; $041e: $1a

Call_000_041f:
Jump_000_041f:
    ld hl, $000b                                  ; $041f: $21 $0b $00

Call_000_0422:
Jump_000_0422:
    add hl, bc                                    ; $0422: $09

Call_000_0423:
Jump_000_0423:
    ld de, $ff9c                                  ; $0423: $11 $9c $ff

Call_000_0426:
Jump_000_0426:
    push de                                       ; $0426: $d5

Call_000_0427:
Jump_000_0427:
    ld d, h                                       ; $0427: $54

Call_000_0428:
    ld e, l                                       ; $0428: $5d

Call_000_0429:
Jump_000_0429:
    pop hl                                        ; $0429: $e1

Call_000_042a:
Jump_000_042a:
    call Call_000_124b                            ; $042a: $cd $4b $12

Call_000_042d:
Jump_000_042d:
    ld hl, $001c                                  ; $042d: $21 $1c $00

Call_000_0430:
Jump_000_0430:
    add hl, bc                                    ; $0430: $09
    ld [hl], $01                                  ; $0431: $36 $01

Call_000_0433:
Jump_000_0433:
    ldh a, [$9a]                                  ; $0433: $f0 $9a

Call_000_0435:
Jump_000_0435:
    cp $7f                                        ; $0435: $fe $7f

Call_000_0437:
Jump_000_0437:
    jr nz, jr_000_0442                            ; $0437: $20 $09

Jump_000_0439:
    ld hl, $0050                                  ; $0439: $21 $50 $00

Call_000_043c:
Jump_000_043c:
    add hl, bc                                    ; $043c: $09

Call_000_043d:
Jump_000_043d:
    ld a, $07                                     ; $043d: $3e $07

Call_000_043f:
Jump_000_043f:
    ld [hl], a                                    ; $043f: $77

Jump_000_0440:
    jr jr_000_044d                                ; $0440: $18 $0b

Call_000_0442:
Jump_000_0442:
jr_000_0442:
    cp $7b                                        ; $0442: $fe $7b

Jump_000_0444:
    jr nz, jr_000_044d                            ; $0444: $20 $07

    ld hl, $0050                                  ; $0446: $21 $50 $00
    add hl, bc                                    ; $0449: $09

Call_000_044a:
    ld a, $06                                     ; $044a: $3e $06
    ld [hl], a                                    ; $044c: $77

jr_000_044d:
    ld a, [$c301]                                 ; $044d: $fa $01 $c3

Call_000_0450:
Jump_000_0450:
    call Call_000_2e9e                            ; $0450: $cd $9e $2e
    xor a                                         ; $0453: $af

Jump_000_0454:
    ld [$c301], a                                 ; $0454: $ea $01 $c3
    ldh a, [$9b]                                  ; $0457: $f0 $9b
    call Call_000_2e9a                            ; $0459: $cd $9a $2e
    call Call_000_29ad                            ; $045c: $cd $ad $29
    call Call_000_0475                            ; $045f: $cd $75 $04
    call Call_000_29b9                            ; $0462: $cd $b9 $29

Jump_000_0465:
    ld e, c                                       ; $0465: $59
    ld d, b                                       ; $0466: $50
    pop hl                                        ; $0467: $e1
    ld a, l                                       ; $0468: $7d

Call_000_0469:
Jump_000_0469:
    ldh [$98], a                                  ; $0469: $e0 $98

Jump_000_046b:
    ld a, h                                       ; $046b: $7c
    ldh [$99], a                                  ; $046c: $e0 $99

Call_000_046e:
    pop af                                        ; $046e: $f1
    ld [$2000], a                                 ; $046f: $ea $00 $20
    pop bc                                        ; $0472: $c1
    scf                                           ; $0473: $37
    ret                                           ; $0474: $c9


Call_000_0475:
    ld hl, $001a                                  ; $0475: $21 $1a $00
    add hl, bc                                    ; $0478: $09
    ld [hl], e                                    ; $0479: $73
    inc hl                                        ; $047a: $23
    ld [hl], d                                    ; $047b: $72

Call_000_047c:
    ret                                           ; $047c: $c9


Call_000_047d:
    call Call_000_0491                            ; $047d: $cd $91 $04

Call_000_0480:
Jump_000_0480:
    set 0, [hl]                                   ; $0480: $cb $c6
    ret                                           ; $0482: $c9


Jump_000_0483:
    call Call_000_0491                            ; $0483: $cd $91 $04

Jump_000_0486:
    ld a, [hl]                                    ; $0486: $7e
    and $c0                                       ; $0487: $e6 $c0
    ld [hl], a                                    ; $0489: $77

Jump_000_048a:
    ret                                           ; $048a: $c9


Jump_000_048b:
    call Call_000_0491                            ; $048b: $cd $91 $04
    ld [hl], $82                                  ; $048e: $36 $82

Call_000_0490:
    ret                                           ; $0490: $c9


Call_000_0491:
    ld hl, $c276                                  ; $0491: $21 $76 $c2

Call_000_0494:
    ld e, a                                       ; $0494: $5f
    ld d, $00                                     ; $0495: $16 $00

Call_000_0497:
Jump_000_0497:
    add hl, de                                    ; $0497: $19
    ret                                           ; $0498: $c9


Call_000_0499:
    ld a, $00                                     ; $0499: $3e $00

Jump_000_049b:
    ld hl, $c276                                  ; $049b: $21 $76 $c2

Call_000_049e:
    ld bc, $0088                                  ; $049e: $01 $88 $00

Jump_000_04a1:
    jp Jump_000_112f                              ; $04a1: $c3 $2f $11


    ld bc, $0088                                  ; $04a4: $01 $88 $00
    ld b, c                                       ; $04a7: $41
    ld hl, $c276                                  ; $04a8: $21 $76 $c2

jr_000_04ab:
    ld a, [hl]                                    ; $04ab: $7e

Jump_000_04ac:
    and $c0                                       ; $04ac: $e6 $c0
    ld [hl+], a                                   ; $04ae: $22
    dec b                                         ; $04af: $05
    jr nz, jr_000_04ab                            ; $04b0: $20 $f9

    ret                                           ; $04b2: $c9


Jump_000_04b3:
    ld hl, $c320                                  ; $04b3: $21 $20 $c3
    ld bc, $0798                                  ; $04b6: $01 $98 $07

Call_000_04b9:
    call Call_000_112e                            ; $04b9: $cd $2e $11
    ld hl, $c000                                  ; $04bc: $21 $00 $c0

Jump_000_04bf:
    ld bc, $00a0                                  ; $04bf: $01 $a0 $00

Jump_000_04c2:
    call Call_000_112e                            ; $04c2: $cd $2e $11

Call_000_04c5:
    ld hl, $c000                                  ; $04c5: $21 $00 $c0
    ld de, $fe00                                  ; $04c8: $11 $00 $fe

Jump_000_04cb:
    call Call_000_11ee                            ; $04cb: $cd $ee $11

Call_000_04ce:
    jp Jump_000_11f7                              ; $04ce: $c3 $f7 $11


Call_000_04d1:
Jump_000_04d1:
    ld hl, $c26c                                  ; $04d1: $21 $6c $c2

Call_000_04d4:
Jump_000_04d4:
    bit 3, [hl]                                   ; $04d4: $cb $5e
    jr nz, jr_000_04f6                            ; $04d6: $20 $1e

    bit 2, [hl]                                   ; $04d8: $cb $56
    jr nz, jr_000_0500                            ; $04da: $20 $24

Jump_000_04dc:
jr_000_04dc:
    ld hl, $c26c                                  ; $04dc: $21 $6c $c2

Jump_000_04df:
    bit 0, [hl]                                   ; $04df: $cb $46
    jr nz, jr_000_04ee                            ; $04e1: $20 $0b

    bit 1, [hl]                                   ; $04e3: $cb $4e
    ret z                                         ; $04e5: $c8

Jump_000_04e6:
    res 1, [hl]                                   ; $04e6: $cb $8e

Call_000_04e8:
    ld de, $01a9                                  ; $04e8: $11 $a9 $01
    jp Jump_000_0512                              ; $04eb: $c3 $12 $05


Jump_000_04ee:
jr_000_04ee:
    res 0, [hl]                                   ; $04ee: $cb $86

Jump_000_04f0:
    ld de, $01b1                                  ; $04f0: $11 $b1 $01

Call_000_04f3:
Jump_000_04f3:
    jp Jump_000_0512                              ; $04f3: $c3 $12 $05


jr_000_04f6:
    res 3, [hl]                                   ; $04f6: $cb $9e

Call_000_04f8:
Jump_000_04f8:
    ld de, $01c1                                  ; $04f8: $11 $c1 $01

Call_000_04fb:
Jump_000_04fb:
    call Call_000_0512                            ; $04fb: $cd $12 $05

Call_000_04fe:
Jump_000_04fe:
    jr jr_000_04dc                                ; $04fe: $18 $dc

Call_000_0500:
Jump_000_0500:
jr_000_0500:
    res 2, [hl]                                   ; $0500: $cb $96

Call_000_0502:
Jump_000_0502:
    ld de, $01b9                                  ; $0502: $11 $b9 $01

Call_000_0505:
Jump_000_0505:
    call Call_000_0512                            ; $0505: $cd $12 $05

Call_000_0508:
    jr jr_000_04dc                                ; $0508: $18 $d2

Call_000_050a:
Jump_000_050a:
    ld a, [de]                                    ; $050a: $1a

Call_000_050b:
Jump_000_050b:
    ld l, a                                       ; $050b: $6f

Call_000_050c:
Jump_000_050c:
    inc de                                        ; $050c: $13

Call_000_050d:
Jump_000_050d:
    ld a, [de]                                    ; $050d: $1a

Call_000_050e:
Jump_000_050e:
    ld h, a                                       ; $050e: $67

Call_000_050f:
Jump_000_050f:
    inc de                                        ; $050f: $13

Call_000_0510:
Jump_000_0510:
    add hl, bc                                    ; $0510: $09

Jump_000_0511:
    ret                                           ; $0511: $c9


Call_000_0512:
Jump_000_0512:
    ld hl, $ff90                                  ; $0512: $21 $90 $ff

Call_000_0515:
Jump_000_0515:
    ld c, [hl]                                    ; $0515: $4e

Call_000_0516:
Jump_000_0516:
    inc hl                                        ; $0516: $23

Call_000_0517:
Jump_000_0517:
    ld b, [hl]                                    ; $0517: $46

Call_000_0518:
Jump_000_0518:
    call Call_000_050a                            ; $0518: $cd $0a $05

Call_000_051b:
Jump_000_051b:
    bit 7, h                                      ; $051b: $cb $7c

Call_000_051d:
Jump_000_051d:
    jr z, jr_000_0522                             ; $051d: $28 $03

Jump_000_051f:
    ld hl, $0000                                  ; $051f: $21 $00 $00

Call_000_0522:
Jump_000_0522:
jr_000_0522:
    ld a, l                                       ; $0522: $7d

Call_000_0523:
Jump_000_0523:
    ld [$cad0], a                                 ; $0523: $ea $d0 $ca

Call_000_0526:
Jump_000_0526:
    ld a, h                                       ; $0526: $7c

Call_000_0527:
Jump_000_0527:
    ld [$cad1], a                                 ; $0527: $ea $d1 $ca

Call_000_052a:
Jump_000_052a:
    call Call_000_050a                            ; $052a: $cd $0a $05

Jump_000_052d:
    ld a, l                                       ; $052d: $7d

Call_000_052e:
Jump_000_052e:
    ld [$cad2], a                                 ; $052e: $ea $d2 $ca
    ld a, h                                       ; $0531: $7c

Call_000_0532:
Jump_000_0532:
    ld [$cad3], a                                 ; $0532: $ea $d3 $ca

Call_000_0535:
Jump_000_0535:
    ld hl, $ff92                                  ; $0535: $21 $92 $ff
    ld c, [hl]                                    ; $0538: $4e
    inc hl                                        ; $0539: $23

Jump_000_053a:
    ld b, [hl]                                    ; $053a: $46

Call_000_053b:
Jump_000_053b:
    call Call_000_050a                            ; $053b: $cd $0a $05
    bit 7, h                                      ; $053e: $cb $7c

Jump_000_0540:
    jr z, jr_000_0545                             ; $0540: $28 $03

Call_000_0542:
    ld hl, $0000                                  ; $0542: $21 $00 $00

jr_000_0545:
    ld a, l                                       ; $0545: $7d
    ld [$cad4], a                                 ; $0546: $ea $d4 $ca

Call_000_0549:
    ld a, h                                       ; $0549: $7c
    ld [$cad5], a                                 ; $054a: $ea $d5 $ca

Call_000_054d:
Jump_000_054d:
    call Call_000_050a                            ; $054d: $cd $0a $05

Jump_000_0550:
    ld a, l                                       ; $0550: $7d
    ld [$cad6], a                                 ; $0551: $ea $d6 $ca
    ld a, h                                       ; $0554: $7c
    ld [$cad7], a                                 ; $0555: $ea $d7 $ca
    ld hl, $cd49                                  ; $0558: $21 $49 $cd
    ld e, [hl]                                    ; $055b: $5e
    inc hl                                        ; $055c: $23
    ld d, [hl]                                    ; $055d: $56

Jump_000_055e:
    dec de                                        ; $055e: $1b
    ld hl, $cad0                                  ; $055f: $21 $d0 $ca
    ld a, [hl+]                                   ; $0562: $2a
    ld h, [hl]                                    ; $0563: $66
    ld l, a                                       ; $0564: $6f
    call Call_000_323b                            ; $0565: $cd $3b $32

Call_000_0568:
    ld a, l                                       ; $0568: $7d

Jump_000_0569:
    ld [$cad0], a                                 ; $0569: $ea $d0 $ca

Jump_000_056c:
    ld a, h                                       ; $056c: $7c

Jump_000_056d:
    ld [$cad1], a                                 ; $056d: $ea $d1 $ca
    ld hl, $cd49                                  ; $0570: $21 $49 $cd
    ld e, [hl]                                    ; $0573: $5e
    inc hl                                        ; $0574: $23
    ld d, [hl]                                    ; $0575: $56
    ld hl, $cad2                                  ; $0576: $21 $d2 $ca
    ld a, [hl+]                                   ; $0579: $2a
    ld h, [hl]                                    ; $057a: $66
    ld l, a                                       ; $057b: $6f
    call Call_000_323b                            ; $057c: $cd $3b $32
    ld a, l                                       ; $057f: $7d

Jump_000_0580:
    ld [$cad2], a                                 ; $0580: $ea $d2 $ca
    ld a, h                                       ; $0583: $7c
    ld [$cad3], a                                 ; $0584: $ea $d3 $ca

Call_000_0587:
    ld hl, $cad4                                  ; $0587: $21 $d4 $ca

Call_000_058a:
    ld a, [hl+]                                   ; $058a: $2a
    ld h, [hl]                                    ; $058b: $66

Call_000_058c:
    ld l, a                                       ; $058c: $6f
    ld a, [$cd4b]                                 ; $058d: $fa $4b $cd

Jump_000_0590:
    ld e, a                                       ; $0590: $5f
    ld a, [$cd4c]                                 ; $0591: $fa $4c $cd

Call_000_0594:
    ld d, a                                       ; $0594: $57
    dec de                                        ; $0595: $1b
    call Call_000_323b                            ; $0596: $cd $3b $32
    ld a, l                                       ; $0599: $7d
    ld [$cad4], a                                 ; $059a: $ea $d4 $ca
    ld a, h                                       ; $059d: $7c

Call_000_059e:
    ld [$cad5], a                                 ; $059e: $ea $d5 $ca
    ld hl, $cd4b                                  ; $05a1: $21 $4b $cd
    ld e, [hl]                                    ; $05a4: $5e

Call_000_05a5:
    inc hl                                        ; $05a5: $23
    ld d, [hl]                                    ; $05a6: $56

Jump_000_05a7:
    ld hl, $cad6                                  ; $05a7: $21 $d6 $ca

Jump_000_05aa:
    ld a, [hl+]                                   ; $05aa: $2a
    ld h, [hl]                                    ; $05ab: $66
    ld l, a                                       ; $05ac: $6f

Jump_000_05ad:
    call Call_000_323b                            ; $05ad: $cd $3b $32
    ld a, l                                       ; $05b0: $7d

Call_000_05b1:
    ld [$cad6], a                                 ; $05b1: $ea $d6 $ca
    ld a, h                                       ; $05b4: $7c
    ld [$cad7], a                                 ; $05b5: $ea $d7 $ca
    call Call_000_0684                            ; $05b8: $cd $84 $06

Jump_000_05bb:
    ld a, [$c26e]                                 ; $05bb: $fa $6e $c2

Call_000_05be:
    ld [$2000], a                                 ; $05be: $ea $00 $20
    push hl                                       ; $05c1: $e5

Jump_000_05c2:
    ld a, [$c271]                                 ; $05c2: $fa $71 $c2
    ld de, $c276                                  ; $05c5: $11 $76 $c2

Call_000_05c8:
    add e                                         ; $05c8: $83

Jump_000_05c9:
    ld e, a                                       ; $05c9: $5f

Jump_000_05ca:
    ld a, $00                                     ; $05ca: $3e $00

Call_000_05cc:
Jump_000_05cc:
    adc d                                         ; $05cc: $8a

Jump_000_05cd:
    ld d, a                                       ; $05cd: $57
    ld a, [de]                                    ; $05ce: $1a
    cp $00                                        ; $05cf: $fe $00

Call_000_05d1:
Jump_000_05d1:
    jp nz, Jump_000_0636                          ; $05d1: $c2 $36 $06

Jump_000_05d4:
    ld de, $ff9a                                  ; $05d4: $11 $9a $ff

Jump_000_05d7:
    call Call_000_1245                            ; $05d7: $cd $45 $12
    ldh a, [$9a]                                  ; $05da: $f0 $9a
    cp $87                                        ; $05dc: $fe $87
    jr z, jr_000_05f6                             ; $05de: $28 $16

Jump_000_05e0:
    inc a                                         ; $05e0: $3c
    jr z, jr_000_05f6                             ; $05e1: $28 $13

    ldh a, [$9c]                                  ; $05e3: $f0 $9c
    ld e, a                                       ; $05e5: $5f
    ldh a, [$9d]                                  ; $05e6: $f0 $9d

Call_000_05e8:
Jump_000_05e8:
    ld d, a                                       ; $05e8: $57
    ld hl, $cad2                                  ; $05e9: $21 $d2 $ca

Jump_000_05ec:
    ld a, [hl+]                                   ; $05ec: $2a
    ld h, [hl]                                    ; $05ed: $66

Jump_000_05ee:
    ld l, a                                       ; $05ee: $6f

Call_000_05ef:
    call Call_000_3139                            ; $05ef: $cd $39 $31

Jump_000_05f2:
    jr z, jr_000_05f8                             ; $05f2: $28 $04

    jr c, jr_000_05f8                             ; $05f4: $38 $02

jr_000_05f6:
    pop hl                                        ; $05f6: $e1
    ret                                           ; $05f7: $c9


jr_000_05f8:
    ld hl, $cad0                                  ; $05f8: $21 $d0 $ca

Call_000_05fb:
    ld a, [hl+]                                   ; $05fb: $2a
    ld h, [hl]                                    ; $05fc: $66
    ld l, a                                       ; $05fd: $6f

Call_000_05fe:
Jump_000_05fe:
    call Call_000_3139                            ; $05fe: $cd $39 $31

Call_000_0601:
Jump_000_0601:
    jr c, jr_000_0636                             ; $0601: $38 $33

Jump_000_0603:
    ld hl, $ff9e                                  ; $0603: $21 $9e $ff

Call_000_0606:
Jump_000_0606:
    ld e, [hl]                                    ; $0606: $5e

Call_000_0607:
Jump_000_0607:
    inc hl                                        ; $0607: $23

Call_000_0608:
Jump_000_0608:
    ld d, [hl]                                    ; $0608: $56

Jump_000_0609:
    ld hl, $cad4                                  ; $0609: $21 $d4 $ca
    ld a, [hl+]                                   ; $060c: $2a

Jump_000_060d:
    ld h, [hl]                                    ; $060d: $66

Call_000_060e:
    ld l, a                                       ; $060e: $6f
    call Call_000_3139                            ; $060f: $cd $39 $31
    jr c, jr_000_0636                             ; $0612: $38 $22

    ld hl, $cad6                                  ; $0614: $21 $d6 $ca
    ld a, [hl+]                                   ; $0617: $2a

Call_000_0618:
Jump_000_0618:
    ld h, [hl]                                    ; $0618: $66
    ld l, a                                       ; $0619: $6f
    call Call_000_3139                            ; $061a: $cd $39 $31
    jr z, jr_000_0621                             ; $061d: $28 $02

Call_000_061f:
    jr nc, jr_000_0636                            ; $061f: $30 $15

jr_000_0621:
    ldh a, [$9a]                                  ; $0621: $f0 $9a

Call_000_0623:
Jump_000_0623:
    cp $11                                        ; $0623: $fe $11
    jr z, jr_000_0642                             ; $0625: $28 $1b

    cp $12                                        ; $0627: $fe $12

Jump_000_0629:
    jr z, jr_000_0642                             ; $0629: $28 $17

jr_000_062b:
    call Call_000_03a2                            ; $062b: $cd $a2 $03

Jump_000_062e:
    jr nc, jr_000_0636                            ; $062e: $30 $06

    ld a, [$c271]                                 ; $0630: $fa $71 $c2

Call_000_0633:
    call Call_000_047d                            ; $0633: $cd $7d $04

Jump_000_0636:
jr_000_0636:
    ld hl, $c271                                  ; $0636: $21 $71 $c2
    inc [hl]                                      ; $0639: $34

Call_000_063a:
    pop hl                                        ; $063a: $e1

Call_000_063b:
Jump_000_063b:
    ld bc, $0006                                  ; $063b: $01 $06 $00
    add hl, bc                                    ; $063e: $09

Call_000_063f:
Jump_000_063f:
    jp Jump_000_05bb                              ; $063f: $c3 $bb $05


jr_000_0642:
    ld hl, $ff9c                                  ; $0642: $21 $9c $ff
    ld e, [hl]                                    ; $0645: $5e
    inc hl                                        ; $0646: $23
    ld d, [hl]                                    ; $0647: $56
    ld hl, $cada                                  ; $0648: $21 $da $ca
    ld a, [hl+]                                   ; $064b: $2a
    ld h, [hl]                                    ; $064c: $66
    ld l, a                                       ; $064d: $6f
    call Call_000_3139                            ; $064e: $cd $39 $31

Call_000_0651:
    jr z, jr_000_0657                             ; $0651: $28 $04

    jr c, jr_000_0657                             ; $0653: $38 $02

    jr jr_000_0682                                ; $0655: $18 $2b

jr_000_0657:
    ld hl, $cad8                                  ; $0657: $21 $d8 $ca

Call_000_065a:
    ld a, [hl+]                                   ; $065a: $2a
    ld h, [hl]                                    ; $065b: $66

Call_000_065c:
Jump_000_065c:
    ld l, a                                       ; $065c: $6f

Call_000_065d:
Jump_000_065d:
    call Call_000_3139                            ; $065d: $cd $39 $31

Call_000_0660:
    jr c, jr_000_0682                             ; $0660: $38 $20

Jump_000_0662:
    ld hl, $ff9e                                  ; $0662: $21 $9e $ff
    ld e, [hl]                                    ; $0665: $5e
    inc hl                                        ; $0666: $23
    ld d, [hl]                                    ; $0667: $56
    ld hl, $cadc                                  ; $0668: $21 $dc $ca
    ld a, [hl+]                                   ; $066b: $2a

Call_000_066c:
Jump_000_066c:
    ld h, [hl]                                    ; $066c: $66
    ld l, a                                       ; $066d: $6f
    call Call_000_3139                            ; $066e: $cd $39 $31
    jr c, jr_000_0682                             ; $0671: $38 $0f

    ld hl, $cade                                  ; $0673: $21 $de $ca
    ld a, [hl+]                                   ; $0676: $2a
    ld h, [hl]                                    ; $0677: $66
    ld l, a                                       ; $0678: $6f

Call_000_0679:
    call Call_000_3139                            ; $0679: $cd $39 $31
    jr z, jr_000_0680                             ; $067c: $28 $02

Jump_000_067e:
    jr nc, jr_000_0682                            ; $067e: $30 $02

Jump_000_0680:
jr_000_0680:
    jr jr_000_0636                                ; $0680: $18 $b4

jr_000_0682:
    jr jr_000_062b                                ; $0682: $18 $a7

Call_000_0684:
    ld a, [$c26e]                                 ; $0684: $fa $6e $c2
    ld [$2000], a                                 ; $0687: $ea $00 $20
    ld hl, $cad0                                  ; $068a: $21 $d0 $ca
    ld e, [hl]                                    ; $068d: $5e

Jump_000_068e:
    inc hl                                        ; $068e: $23
    ld d, [hl]                                    ; $068f: $56

Call_000_0690:
    ld hl, $0000                                  ; $0690: $21 $00 $00
    sla e                                         ; $0693: $cb $23
    rl d                                          ; $0695: $cb $12
    sla e                                         ; $0697: $cb $23
    rl d                                          ; $0699: $cb $12

Call_000_069b:
Jump_000_069b:
    ld e, d                                       ; $069b: $5a
    ld d, $00                                     ; $069c: $16 $00
    add hl, de                                    ; $069e: $19
    add hl, de                                    ; $069f: $19
    add hl, de                                    ; $06a0: $19

Jump_000_06a1:
    ld a, [$c26f]                                 ; $06a1: $fa $6f $c2
    ld e, a                                       ; $06a4: $5f
    ld a, [$c270]                                 ; $06a5: $fa $70 $c2
    ld d, a                                       ; $06a8: $57
    add hl, de                                    ; $06a9: $19
    ld a, e                                       ; $06aa: $7b
    add [hl]                                      ; $06ab: $86
    ld e, a                                       ; $06ac: $5f
    inc hl                                        ; $06ad: $23

Jump_000_06ae:
    ld a, d                                       ; $06ae: $7a

Call_000_06af:
Jump_000_06af:
    adc [hl]                                      ; $06af: $8e

Call_000_06b0:
    ld d, a                                       ; $06b0: $57
    inc hl                                        ; $06b1: $23

Call_000_06b2:
Jump_000_06b2:
    ld a, [hl]                                    ; $06b2: $7e
    ld [$c271], a                                 ; $06b3: $ea $71 $c2
    push de                                       ; $06b6: $d5

Call_000_06b7:
Jump_000_06b7:
    ld d, h                                       ; $06b7: $54
    ld e, l                                       ; $06b8: $5d
    pop hl                                        ; $06b9: $e1
    ret                                           ; $06ba: $c9


Call_000_06bb:
    ld hl, $ffb8                                  ; $06bb: $21 $b8 $ff
    ld [hl], $00                                  ; $06be: $36 $00
    inc hl                                        ; $06c0: $23

Call_000_06c1:
    ld [hl], $00                                  ; $06c1: $36 $00

Jump_000_06c3:
    call Call_000_06fd                            ; $06c3: $cd $fd $06
    ld a, [$c26e]                                 ; $06c6: $fa $6e $c2

Jump_000_06c9:
    ld [$2000], a                                 ; $06c9: $ea $00 $20
    ld hl, $c26f                                  ; $06cc: $21 $6f $c2

Call_000_06cf:
    ld a, [hl+]                                   ; $06cf: $2a

Call_000_06d0:
    ld h, [hl]                                    ; $06d0: $66

Jump_000_06d1:
    ld l, a                                       ; $06d1: $6f

Jump_000_06d2:
    ld e, l                                       ; $06d2: $5d

Jump_000_06d3:
    ld d, h                                       ; $06d3: $54

Call_000_06d4:
    ld a, [hl+]                                   ; $06d4: $2a

Call_000_06d5:
    ld h, [hl]                                    ; $06d5: $66
    ld l, a                                       ; $06d6: $6f
    add hl, de                                    ; $06d7: $19

jr_000_06d8:
    ld a, [$c26e]                                 ; $06d8: $fa $6e $c2
    ld [$2000], a                                 ; $06db: $ea $00 $20

Jump_000_06de:
    ld a, [hl]                                    ; $06de: $7e

Jump_000_06df:
    cp $ff                                        ; $06df: $fe $ff

Jump_000_06e1:
    ret z                                         ; $06e1: $c8

Call_000_06e2:
Jump_000_06e2:
    push hl                                       ; $06e2: $e5
    call Call_000_11d6                            ; $06e3: $cd $d6 $11

Call_000_06e6:
    pop hl                                        ; $06e6: $e1

Jump_000_06e7:
    ld bc, $0006                                  ; $06e7: $01 $06 $00

Jump_000_06ea:
    add hl, bc                                    ; $06ea: $09
    jr jr_000_06d8                                ; $06eb: $18 $eb

Call_000_06ed:
jr_000_06ed:
    ld a, [$cdb6]                                 ; $06ed: $fa $b6 $cd

Jump_000_06f0:
    ld [$2000], a                                 ; $06f0: $ea $00 $20

Jump_000_06f3:
    ld a, [hl+]                                   ; $06f3: $2a
    or a                                          ; $06f4: $b7
    ret z                                         ; $06f5: $c8

    push hl                                       ; $06f6: $e5
    call Call_000_11d6                            ; $06f7: $cd $d6 $11

Call_000_06fa:
Jump_000_06fa:
    pop hl                                        ; $06fa: $e1
    jr jr_000_06ed                                ; $06fb: $18 $f0

Call_000_06fd:
    ld a, $ff                                     ; $06fd: $3e $ff

Call_000_06ff:
Jump_000_06ff:
    ld hl, $cc1a                                  ; $06ff: $21 $1a $cc

Call_000_0702:
    ld bc, $00c8                                  ; $0702: $01 $c8 $00

Jump_000_0705:
    jp Jump_000_112f                              ; $0705: $c3 $2f $11


Call_000_0708:
Jump_000_0708:
    ld hl, $000b                                  ; $0708: $21 $0b $00

Call_000_070b:
Jump_000_070b:
    add hl, bc                                    ; $070b: $09

Jump_000_070c:
    ld de, $cabc                                  ; $070c: $11 $bc $ca

Call_000_070f:
Jump_000_070f:
    jp Jump_000_124b                              ; $070f: $c3 $4b $12


    ld hl, $cd61                                  ; $0712: $21 $61 $cd
    ld [hl], $c0                                  ; $0715: $36 $c0

Call_000_0717:
Jump_000_0717:
    inc hl                                        ; $0717: $23

Jump_000_0718:
    ld [hl], $ca                                  ; $0718: $36 $ca
    xor a                                         ; $071a: $af

Call_000_071b:
Jump_000_071b:
    ldh [$aa], a                                  ; $071b: $e0 $aa
    call Call_000_086d                            ; $071d: $cd $6d $08

Jump_000_0720:
    ld hl, $4001                                  ; $0720: $21 $01 $40

Jump_000_0723:
    call Call_000_08ab                            ; $0723: $cd $ab $08
    ld l, e                                       ; $0726: $6b
    ld h, d                                       ; $0727: $62

Jump_000_0728:
    jp Jump_000_077c                              ; $0728: $c3 $7c $07


Call_000_072b:
    ld hl, $002b                                  ; $072b: $21 $2b $00
    add hl, bc                                    ; $072e: $09

Call_000_072f:
Jump_000_072f:
    bit 6, [hl]                                   ; $072f: $cb $76
    jp nz, Jump_000_084d                          ; $0731: $c2 $4d $08

Call_000_0734:
Jump_000_0734:
    ld hl, $002d                                  ; $0734: $21 $2d $00
    add hl, bc                                    ; $0737: $09

Call_000_0738:
    bit 3, [hl]                                   ; $0738: $cb $5e
    ret z                                         ; $073a: $c8

Jump_000_073b:
    ld hl, $003b                                  ; $073b: $21 $3b $00

Jump_000_073e:
    add hl, bc                                    ; $073e: $09

Jump_000_073f:
    ld a, l                                       ; $073f: $7d

Jump_000_0740:
    ld [$cd61], a                                 ; $0740: $ea $61 $cd

Jump_000_0743:
    ld a, h                                       ; $0743: $7c
    ld [$cd62], a                                 ; $0744: $ea $62 $cd
    call Call_000_0708                            ; $0747: $cd $08 $07
    ld hl, $0027                                  ; $074a: $21 $27 $00
    add hl, bc                                    ; $074d: $09
    bit 7, [hl]                                   ; $074e: $cb $7e

Jump_000_0750:
    jr z, jr_000_076c                             ; $0750: $28 $1a

    ld hl, $0028                                  ; $0752: $21 $28 $00

Jump_000_0755:
    add hl, bc                                    ; $0755: $09
    ld a, [hl]                                    ; $0756: $7e

Call_000_0757:
Jump_000_0757:
    ldh [$aa], a                                  ; $0757: $e0 $aa
    ld a, $01                                     ; $0759: $3e $01
    ld [$2000], a                                 ; $075b: $ea $00 $20

Call_000_075e:
    ld a, [bc]                                    ; $075e: $0a

Jump_000_075f:
    ld hl, $44bd                                  ; $075f: $21 $bd $44
    rst $08                                       ; $0762: $cf

Call_000_0763:
Jump_000_0763:
    ld hl, $63bc                                  ; $0763: $21 $bc $63

Call_000_0766:
    call Call_000_0888                            ; $0766: $cd $88 $08
    inc hl                                        ; $0769: $23
    jr jr_000_077c                                ; $076a: $18 $10

jr_000_076c:
    xor a                                         ; $076c: $af
    ldh [$aa], a                                  ; $076d: $e0 $aa
    call Call_000_086d                            ; $076f: $cd $6d $08
    ld hl, $4001                                  ; $0772: $21 $01 $40
    call Call_000_08ab                            ; $0775: $cd $ab $08
    push de                                       ; $0778: $d5

Call_000_0779:
    ld d, h                                       ; $0779: $54
    ld e, l                                       ; $077a: $5d

Call_000_077b:
    pop hl                                        ; $077b: $e1

Jump_000_077c:
jr_000_077c:
    inc hl                                        ; $077c: $23

Call_000_077d:
Jump_000_077d:
    ld e, l                                       ; $077d: $5d
    ld d, h                                       ; $077e: $54

Call_000_077f:
    push bc                                       ; $077f: $c5

Call_000_0780:
    ld hl, $002c                                  ; $0780: $21 $2c $00
    add hl, bc                                    ; $0783: $09
    bit 5, [hl]                                   ; $0784: $cb $6e
    jr z, jr_000_07c1                             ; $0786: $28 $39

    ld hl, $cabc                                  ; $0788: $21 $bc $ca

Call_000_078b:
    ld c, [hl]                                    ; $078b: $4e
    inc hl                                        ; $078c: $23
    ld b, [hl]                                    ; $078d: $46

Call_000_078e:
    ld a, [de]                                    ; $078e: $1a
    cpl                                           ; $078f: $2f
    inc a                                         ; $0790: $3c
    ld l, a                                       ; $0791: $6f

Call_000_0792:
    rla                                           ; $0792: $17
    sbc a                                         ; $0793: $9f

Call_000_0794:
Jump_000_0794:
    ld h, a                                       ; $0794: $67
    add hl, bc                                    ; $0795: $09
    ld a, l                                       ; $0796: $7d
    ld [$caca], a                                 ; $0797: $ea $ca $ca

Call_000_079a:
Jump_000_079a:
    ld a, h                                       ; $079a: $7c
    ld [$cacb], a                                 ; $079b: $ea $cb $ca

Jump_000_079e:
    bit 7, a                                      ; $079e: $cb $7f

Jump_000_07a0:
    jp nz, Jump_000_0841                          ; $07a0: $c2 $41 $08

Jump_000_07a3:
    inc de                                        ; $07a3: $13
    ld a, [de]                                    ; $07a4: $1a
    cpl                                           ; $07a5: $2f
    inc a                                         ; $07a6: $3c
    ld h, $ff                                     ; $07a7: $26 $ff

Call_000_07a9:
Jump_000_07a9:
    bit 7, a                                      ; $07a9: $cb $7f
    jr nz, jr_000_07ae                            ; $07ab: $20 $01

    inc h                                         ; $07ad: $24

Jump_000_07ae:
jr_000_07ae:
    ld l, a                                       ; $07ae: $6f
    add hl, bc                                    ; $07af: $09
    bit 7, h                                      ; $07b0: $cb $7c

Jump_000_07b2:
    jr z, jr_000_07b7                             ; $07b2: $28 $03

    ld hl, $0000                                  ; $07b4: $21 $00 $00

jr_000_07b7:
    ld a, l                                       ; $07b7: $7d
    ld [$cac8], a                                 ; $07b8: $ea $c8 $ca

Jump_000_07bb:
    ld a, h                                       ; $07bb: $7c

Jump_000_07bc:
    ld [$cac9], a                                 ; $07bc: $ea $c9 $ca
    jr jr_000_07f7                                ; $07bf: $18 $36

jr_000_07c1:
    ld hl, $cabc                                  ; $07c1: $21 $bc $ca
    ld c, [hl]                                    ; $07c4: $4e
    inc hl                                        ; $07c5: $23

Jump_000_07c6:
    ld b, [hl]                                    ; $07c6: $46

Call_000_07c7:
    ld a, [de]                                    ; $07c7: $1a
    ld h, $ff                                     ; $07c8: $26 $ff

Jump_000_07ca:
    bit 7, a                                      ; $07ca: $cb $7f
    jr nz, jr_000_07cf                            ; $07cc: $20 $01

Call_000_07ce:
    inc h                                         ; $07ce: $24

jr_000_07cf:
    ld l, a                                       ; $07cf: $6f
    add hl, bc                                    ; $07d0: $09

Call_000_07d1:
Jump_000_07d1:
    bit 7, h                                      ; $07d1: $cb $7c

Call_000_07d3:
    jr z, jr_000_07d8                             ; $07d3: $28 $03

    ld hl, $0000                                  ; $07d5: $21 $00 $00

Call_000_07d8:
jr_000_07d8:
    ld a, l                                       ; $07d8: $7d
    ld [$cac8], a                                 ; $07d9: $ea $c8 $ca

Call_000_07dc:
    ld a, h                                       ; $07dc: $7c

Call_000_07dd:
    ld [$cac9], a                                 ; $07dd: $ea $c9 $ca

Call_000_07e0:
Jump_000_07e0:
    inc de                                        ; $07e0: $13
    ld a, [de]                                    ; $07e1: $1a

Call_000_07e2:
    ld h, $00                                     ; $07e2: $26 $00

Call_000_07e4:
    bit 7, a                                      ; $07e4: $cb $7f
    jr z, jr_000_07e9                             ; $07e6: $28 $01

Call_000_07e8:
    dec h                                         ; $07e8: $25

Call_000_07e9:
Jump_000_07e9:
jr_000_07e9:
    ld l, a                                       ; $07e9: $6f
    add hl, bc                                    ; $07ea: $09

Call_000_07eb:
Jump_000_07eb:
    ld a, l                                       ; $07eb: $7d
    ld [$caca], a                                 ; $07ec: $ea $ca $ca
    ld a, h                                       ; $07ef: $7c
    ld [$cacb], a                                 ; $07f0: $ea $cb $ca

Call_000_07f3:
Jump_000_07f3:
    bit 7, a                                      ; $07f3: $cb $7f

Call_000_07f5:
    jr nz, jr_000_0841                            ; $07f5: $20 $4a

jr_000_07f7:
    ld hl, $cabe                                  ; $07f7: $21 $be $ca

Jump_000_07fa:
    ld c, [hl]                                    ; $07fa: $4e
    inc hl                                        ; $07fb: $23

Call_000_07fc:
Jump_000_07fc:
    ld b, [hl]                                    ; $07fc: $46

Jump_000_07fd:
    inc de                                        ; $07fd: $13
    ld a, [de]                                    ; $07fe: $1a

Call_000_07ff:
    ld h, $ff                                     ; $07ff: $26 $ff

Call_000_0801:
Jump_000_0801:
    bit 7, a                                      ; $0801: $cb $7f

Call_000_0803:
    jr nz, jr_000_0806                            ; $0803: $20 $01

Call_000_0805:
Jump_000_0805:
    inc h                                         ; $0805: $24

Call_000_0806:
Jump_000_0806:
jr_000_0806:
    ld l, a                                       ; $0806: $6f

Call_000_0807:
Jump_000_0807:
    add hl, bc                                    ; $0807: $09

Call_000_0808:
Jump_000_0808:
    bit 7, h                                      ; $0808: $cb $7c

Call_000_080a:
    jr z, jr_000_080f                             ; $080a: $28 $03

    ld hl, $0000                                  ; $080c: $21 $00 $00

Call_000_080f:
Jump_000_080f:
jr_000_080f:
    ld a, l                                       ; $080f: $7d

Call_000_0810:
Jump_000_0810:
    ld [$cacc], a                                 ; $0810: $ea $cc $ca

Jump_000_0813:
    ld a, h                                       ; $0813: $7c

Jump_000_0814:
    ld [$cacd], a                                 ; $0814: $ea $cd $ca

Jump_000_0817:
    bit 7, a                                      ; $0817: $cb $7f
    jr nz, jr_000_0841                            ; $0819: $20 $26

    inc de                                        ; $081b: $13

Jump_000_081c:
    ld a, [de]                                    ; $081c: $1a
    ld h, $ff                                     ; $081d: $26 $ff

Jump_000_081f:
    bit 7, a                                      ; $081f: $cb $7f
    jr nz, jr_000_0824                            ; $0821: $20 $01

    inc h                                         ; $0823: $24

Call_000_0824:
jr_000_0824:
    ld l, a                                       ; $0824: $6f

Jump_000_0825:
    add hl, bc                                    ; $0825: $09
    ld a, l                                       ; $0826: $7d
    ld [$cace], a                                 ; $0827: $ea $ce $ca

Call_000_082a:
Jump_000_082a:
    ld a, h                                       ; $082a: $7c
    ld [$cacf], a                                 ; $082b: $ea $cf $ca

Call_000_082e:
    bit 7, a                                      ; $082e: $cb $7f

Call_000_0830:
    jr nz, jr_000_0841                            ; $0830: $20 $0f

    ld hl, $cd61                                  ; $0832: $21 $61 $cd
    ld e, [hl]                                    ; $0835: $5e
    inc hl                                        ; $0836: $23
    ld d, [hl]                                    ; $0837: $56

Call_000_0838:
    ld hl, $cac8                                  ; $0838: $21 $c8 $ca
    call Call_000_123f                            ; $083b: $cd $3f $12

Call_000_083e:
    pop bc                                        ; $083e: $c1
    xor a                                         ; $083f: $af

Call_000_0840:
    ret                                           ; $0840: $c9


Call_000_0841:
Jump_000_0841:
jr_000_0841:
    pop bc                                        ; $0841: $c1

Jump_000_0842:
    ret                                           ; $0842: $c9


Call_000_0843:
    ld d, h                                       ; $0843: $54

Jump_000_0844:
    ld e, l                                       ; $0844: $5d
    ld hl, $0043                                  ; $0845: $21 $43 $00
    add hl, bc                                    ; $0848: $09
    ld a, e                                       ; $0849: $7b
    ld [hl+], a                                   ; $084a: $22
    ld a, d                                       ; $084b: $7a
    ld [hl], a                                    ; $084c: $77

Call_000_084d:
Jump_000_084d:
    ld a, $02                                     ; $084d: $3e $02
    ld [$2000], a                                 ; $084f: $ea $00 $20
    ld hl, $0043                                  ; $0852: $21 $43 $00

Call_000_0855:
    add hl, bc                                    ; $0855: $09
    ld a, [hl+]                                   ; $0856: $2a
    ld h, [hl]                                    ; $0857: $66

Jump_000_0858:
    ld l, a                                       ; $0858: $6f

Call_000_0859:
Jump_000_0859:
    push hl                                       ; $0859: $e5
    ld hl, $003b                                  ; $085a: $21 $3b $00
    add hl, bc                                    ; $085d: $09

Call_000_085e:
    ld a, l                                       ; $085e: $7d

Jump_000_085f:
    ld [$cd61], a                                 ; $085f: $ea $61 $cd

Call_000_0862:
    ld a, h                                       ; $0862: $7c
    ld [$cd62], a                                 ; $0863: $ea $62 $cd

Jump_000_0866:
    call Call_000_0708                            ; $0866: $cd $08 $07

Jump_000_0869:
    pop hl                                        ; $0869: $e1
    jp Jump_000_077d                              ; $086a: $c3 $7d $07


Call_000_086d:
    ld a, $01                                     ; $086d: $3e $01

Jump_000_086f:
    jr jr_000_0873                                ; $086f: $18 $02

Call_000_0871:
Jump_000_0871:
    ld a, $02                                     ; $0871: $3e $02

jr_000_0873:
    ld hl, $0026                                  ; $0873: $21 $26 $00

Call_000_0876:
    add hl, bc                                    ; $0876: $09

Jump_000_0877:
    ld e, [hl]                                    ; $0877: $5e
    inc hl                                        ; $0878: $23
    ld d, [hl]                                    ; $0879: $56

Call_000_087a:
    bit 7, d                                      ; $087a: $cb $7a

Call_000_087c:
    jr z, jr_000_0880                             ; $087c: $28 $02

Call_000_087e:
    ld d, $00                                     ; $087e: $16 $00

Call_000_0880:
Jump_000_0880:
jr_000_0880:
    rst $08                                       ; $0880: $cf
    add e                                         ; $0881: $83

Call_000_0882:
Jump_000_0882:
    ld e, a                                       ; $0882: $5f

Call_000_0883:
    ld a, $00                                     ; $0883: $3e $00

Jump_000_0885:
    adc d                                         ; $0885: $8a

Jump_000_0886:
    ld d, a                                       ; $0886: $57

Jump_000_0887:
    ret                                           ; $0887: $c9


Call_000_0888:
Jump_000_0888:
    ld e, a                                       ; $0888: $5f
    ld d, $00                                     ; $0889: $16 $00
    add hl, de                                    ; $088b: $19

Call_000_088c:
    add hl, de                                    ; $088c: $19
    add hl, de                                    ; $088d: $19

Call_000_088e:
    ld a, $07                                     ; $088e: $3e $07

Call_000_0890:
    ld [$2000], a                                 ; $0890: $ea $00 $20
    ld a, [hl+]                                   ; $0893: $2a
    ld e, [hl]                                    ; $0894: $5e
    inc hl                                        ; $0895: $23
    ld d, [hl]                                    ; $0896: $56
    ld [$2000], a                                 ; $0897: $ea $00 $20
    inc de                                        ; $089a: $13
    inc de                                        ; $089b: $13
    ldh a, [$aa]                                  ; $089c: $f0 $aa

Call_000_089e:
    add a                                         ; $089e: $87
    ld l, a                                       ; $089f: $6f
    ld h, $00                                     ; $08a0: $26 $00

Call_000_08a2:
    add hl, de                                    ; $08a2: $19

Jump_000_08a3:
    ld a, [hl+]                                   ; $08a3: $2a

Jump_000_08a4:
    ld h, [hl]                                    ; $08a4: $66

Jump_000_08a5:
    ld l, a                                       ; $08a5: $6f

Call_000_08a6:
    add hl, de                                    ; $08a6: $19

Jump_000_08a7:
    ret                                           ; $08a7: $c9


    ld e, a                                       ; $08a8: $5f
    ld d, $00                                     ; $08a9: $16 $00

Call_000_08ab:
    add hl, de                                    ; $08ab: $19

Jump_000_08ac:
    add hl, de                                    ; $08ac: $19
    add hl, de                                    ; $08ad: $19
    ld a, $08                                     ; $08ae: $3e $08
    ld [$2000], a                                 ; $08b0: $ea $00 $20

Call_000_08b3:
    ld a, [hl+]                                   ; $08b3: $2a
    ld e, [hl]                                    ; $08b4: $5e

Call_000_08b5:
    inc hl                                        ; $08b5: $23
    ld d, [hl]                                    ; $08b6: $56
    ld [$2000], a                                 ; $08b7: $ea $00 $20

Jump_000_08ba:
    inc de                                        ; $08ba: $13
    ldh a, [$aa]                                  ; $08bb: $f0 $aa
    add a                                         ; $08bd: $87
    ld l, a                                       ; $08be: $6f

Jump_000_08bf:
    ld h, $00                                     ; $08bf: $26 $00

Call_000_08c1:
    add hl, de                                    ; $08c1: $19
    ld a, [hl+]                                   ; $08c2: $2a

Call_000_08c3:
Jump_000_08c3:
    ld h, [hl]                                    ; $08c3: $66
    ld l, a                                       ; $08c4: $6f
    add hl, de                                    ; $08c5: $19
    ret                                           ; $08c6: $c9


Call_000_08c7:
Jump_000_08c7:
    ld hl, $002b                                  ; $08c7: $21 $2b $00
    add hl, bc                                    ; $08ca: $09
    ld a, [hl]                                    ; $08cb: $7e
    xor $20                                       ; $08cc: $ee $20

Call_000_08ce:
Jump_000_08ce:
    bit 5, a                                      ; $08ce: $cb $6f

Call_000_08d0:
Jump_000_08d0:
    jr z, jr_000_08df                             ; $08d0: $28 $0d

    ld hl, $002b                                  ; $08d2: $21 $2b $00
    add hl, bc                                    ; $08d5: $09

Call_000_08d6:
Jump_000_08d6:
    set 5, [hl]                                   ; $08d6: $cb $ee
    ld hl, $002c                                  ; $08d8: $21 $2c $00

Jump_000_08db:
    add hl, bc                                    ; $08db: $09

Call_000_08dc:
    set 5, [hl]                                   ; $08dc: $cb $ee

Jump_000_08de:
    ret                                           ; $08de: $c9


jr_000_08df:
    ld hl, $002b                                  ; $08df: $21 $2b $00
    add hl, bc                                    ; $08e2: $09
    res 5, [hl]                                   ; $08e3: $cb $ae

Jump_000_08e5:
    ld hl, $002c                                  ; $08e5: $21 $2c $00
    add hl, bc                                    ; $08e8: $09
    res 5, [hl]                                   ; $08e9: $cb $ae
    ret                                           ; $08eb: $c9


Call_000_08ec:
Jump_000_08ec:
    ld hl, $0027                                  ; $08ec: $21 $27 $00
    add hl, bc                                    ; $08ef: $09
    bit 7, [hl]                                   ; $08f0: $cb $7e
    jr z, jr_000_08fa                             ; $08f2: $28 $06

Jump_000_08f4:
    ld hl, $0028                                  ; $08f4: $21 $28 $00

Call_000_08f7:
    add hl, bc                                    ; $08f7: $09

Call_000_08f8:
    ld [hl], a                                    ; $08f8: $77

Call_000_08f9:
Jump_000_08f9:
    ret                                           ; $08f9: $c9


Call_000_08fa:
jr_000_08fa:
    ld hl, $0029                                  ; $08fa: $21 $29 $00

Jump_000_08fd:
    add hl, bc                                    ; $08fd: $09

Call_000_08fe:
Jump_000_08fe:
    or $80                                        ; $08fe: $f6 $80
    ld [hl], a                                    ; $0900: $77

Call_000_0901:
Jump_000_0901:
    ret                                           ; $0901: $c9


Call_000_0902:
Jump_000_0902:
    ld e, a                                       ; $0902: $5f

Call_000_0903:
    ld hl, $002c                                  ; $0903: $21 $2c $00
    add hl, bc                                    ; $0906: $09

Call_000_0907:
Jump_000_0907:
    ld a, [hl]                                    ; $0907: $7e

Call_000_0908:
Jump_000_0908:
    and $f8                                       ; $0908: $e6 $f8

Call_000_090a:
    or e                                          ; $090a: $b3

Call_000_090b:
    ld [hl], a                                    ; $090b: $77
    ret                                           ; $090c: $c9


Call_000_090d:
Jump_000_090d:
    xor a                                         ; $090d: $af
    ld hl, $0005                                  ; $090e: $21 $05 $00
    add hl, bc                                    ; $0911: $09
    ld [hl+], a                                   ; $0912: $22

Jump_000_0913:
    ld [hl], e                                    ; $0913: $73
    inc hl                                        ; $0914: $23
    ld [hl+], a                                   ; $0915: $22
    ld [hl+], a                                   ; $0916: $22
    ld [hl], d                                    ; $0917: $72
    inc hl                                        ; $0918: $23
    ld [hl+], a                                   ; $0919: $22

Jump_000_091a:
    xor a                                         ; $091a: $af
    ld hl, $000b                                  ; $091b: $21 $0b $00
    add hl, bc                                    ; $091e: $09

Call_000_091f:
    ld [hl], e                                    ; $091f: $73

Call_000_0920:
Jump_000_0920:
    inc hl                                        ; $0920: $23
    ld [hl+], a                                   ; $0921: $22
    ld [hl], d                                    ; $0922: $72
    inc hl                                        ; $0923: $23
    ld [hl+], a                                   ; $0924: $22
    ret                                           ; $0925: $c9


Call_000_0926:
    ld hl, $cc09                                  ; $0926: $21 $09 $cc
    ld e, [hl]                                    ; $0929: $5e

Jump_000_092a:
    inc hl                                        ; $092a: $23

Call_000_092b:
Jump_000_092b:
    ld d, [hl]                                    ; $092b: $56
    call Call_000_0095                            ; $092c: $cd $95 $00
    ld hl, $cc0d                                  ; $092f: $21 $0d $cc
    ld a, [hl+]                                   ; $0932: $2a
    ld h, [hl]                                    ; $0933: $66
    ld l, a                                       ; $0934: $6f
    call Call_000_0078                            ; $0935: $cd $78 $00
    jp Jump_000_0061                              ; $0938: $c3 $61 $00


Call_000_093b:
    ldh a, [rSVBK]                                ; $093b: $f0 $70
    push af                                       ; $093d: $f5
    ld a, $02                                     ; $093e: $3e $02
    ldh [rSVBK], a                                ; $0940: $e0 $70
    ld hl, $d413                                  ; $0942: $21 $13 $d4
    ld bc, $0062                                  ; $0945: $01 $62 $00

Jump_000_0948:
    ld a, $ff                                     ; $0948: $3e $ff

Call_000_094a:
    call Call_000_112f                            ; $094a: $cd $2f $11
    xor a                                         ; $094d: $af

Call_000_094e:
    ld [$d412], a                                 ; $094e: $ea $12 $d4
    pop af                                        ; $0951: $f1

Call_000_0952:
    ldh [rSVBK], a                                ; $0952: $e0 $70
    ret                                           ; $0954: $c9


Call_000_0955:
    ld [$cce3], a                                 ; $0955: $ea $e3 $cc
    ld bc, $c320                                  ; $0958: $01 $20 $c3
    ldh a, [rSVBK]                                ; $095b: $f0 $70
    push af                                       ; $095d: $f5

Jump_000_095e:
    ld a, $02                                     ; $095e: $3e $02
    ldh [rSVBK], a                                ; $0960: $e0 $70
    ld a, $17                                     ; $0962: $3e $17

jr_000_0964:
    ld [$cab8], a                                 ; $0964: $ea $b8 $ca
    ld a, [bc]                                    ; $0967: $0a
    or a                                          ; $0968: $b7

Jump_000_0969:
    jr z, jr_000_0974                             ; $0969: $28 $09

Call_000_096b:
    ld [$cab9], a                                 ; $096b: $ea $b9 $ca
    call Call_000_028f                            ; $096e: $cd $8f $02
    call nz, Call_000_099d                        ; $0971: $c4 $9d $09

jr_000_0974:
    ld hl, $0051                                  ; $0974: $21 $51 $00
    add hl, bc                                    ; $0977: $09
    ld c, l                                       ; $0978: $4d
    ld b, h                                       ; $0979: $44
    ld a, [$cab8]                                 ; $097a: $fa $b8 $ca
    dec a                                         ; $097d: $3d
    jr nz, jr_000_0964                            ; $097e: $20 $e4

Call_000_0980:
Jump_000_0980:
    call Call_000_0987                            ; $0980: $cd $87 $09

Jump_000_0983:
    pop af                                        ; $0983: $f1
    ldh [rSVBK], a                                ; $0984: $e0 $70
    ret                                           ; $0986: $c9


Call_000_0987:
    push bc                                       ; $0987: $c5

Jump_000_0988:
    ld hl, $d413                                  ; $0988: $21 $13 $d4

Call_000_098b:
jr_000_098b:
    ld a, [hl+]                                   ; $098b: $2a

Call_000_098c:
    ld c, a                                       ; $098c: $4f
    ld a, [hl+]                                   ; $098d: $2a
    ld b, a                                       ; $098e: $47
    inc a                                         ; $098f: $3c
    jr z, jr_000_099b                             ; $0990: $28 $09

    push hl                                       ; $0992: $e5
    call Call_000_02ab                            ; $0993: $cd $ab $02
    pop hl                                        ; $0996: $e1

Call_000_0997:
    inc hl                                        ; $0997: $23

Call_000_0998:
Jump_000_0998:
    inc hl                                        ; $0998: $23
    jr jr_000_098b                                ; $0999: $18 $f0

jr_000_099b:
    pop bc                                        ; $099b: $c1
    ret                                           ; $099c: $c9


Call_000_099d:
    ldh a, [rSVBK]                                ; $099d: $f0 $70
    push af                                       ; $099f: $f5

Jump_000_09a0:
    ld a, $02                                     ; $09a0: $3e $02
    ldh [rSVBK], a                                ; $09a2: $e0 $70

Jump_000_09a4:
    push bc                                       ; $09a4: $c5

Call_000_09a5:
    ld hl, $0009                                  ; $09a5: $21 $09 $00
    add hl, bc                                    ; $09a8: $09
    ld a, [hl+]                                   ; $09a9: $2a
    ld d, [hl]                                    ; $09aa: $56
    ld e, a                                       ; $09ab: $5f
    ld b, $00                                     ; $09ac: $06 $00
    ld hl, $d413                                  ; $09ae: $21 $13 $d4

jr_000_09b1:
    ld a, [hl+]                                   ; $09b1: $2a

Call_000_09b2:
    ld a, [hl+]                                   ; $09b2: $2a
    cp $ff                                        ; $09b3: $fe $ff
    jr z, jr_000_09c9                             ; $09b5: $28 $12

    push hl                                       ; $09b7: $e5
    ld a, [hl+]                                   ; $09b8: $2a
    ld h, [hl]                                    ; $09b9: $66
    ld l, a                                       ; $09ba: $6f

Call_000_09bb:
Jump_000_09bb:
    rst $10                                       ; $09bb: $d7
    pop hl                                        ; $09bc: $e1
    jr z, jr_000_09c1                             ; $09bd: $28 $02

    jr nc, jr_000_09c6                            ; $09bf: $30 $05

jr_000_09c1:
    inc b                                         ; $09c1: $04
    inc hl                                        ; $09c2: $23

Jump_000_09c3:
    inc hl                                        ; $09c3: $23

Jump_000_09c4:
    jr jr_000_09b1                                ; $09c4: $18 $eb

Call_000_09c6:
jr_000_09c6:
    call Call_000_09db                            ; $09c6: $cd $db $09

Jump_000_09c9:
jr_000_09c9:
    pop bc                                        ; $09c9: $c1
    dec hl                                        ; $09ca: $2b
    dec hl                                        ; $09cb: $2b
    ld a, c                                       ; $09cc: $79

Jump_000_09cd:
    ld [hl+], a                                   ; $09cd: $22

Call_000_09ce:
    ld a, b                                       ; $09ce: $78
    ld [hl+], a                                   ; $09cf: $22
    ld a, e                                       ; $09d0: $7b

Call_000_09d1:
Jump_000_09d1:
    ld [hl+], a                                   ; $09d1: $22

Call_000_09d2:
    ld [hl], d                                    ; $09d2: $72

Jump_000_09d3:
    ld hl, $d412                                  ; $09d3: $21 $12 $d4
    inc [hl]                                      ; $09d6: $34
    pop af                                        ; $09d7: $f1
    ldh [rSVBK], a                                ; $09d8: $e0 $70
    ret                                           ; $09da: $c9


Call_000_09db:
    push bc                                       ; $09db: $c5
    push de                                       ; $09dc: $d5
    push hl                                       ; $09dd: $e5

Jump_000_09de:
    ld a, [$d412]                                 ; $09de: $fa $12 $d4
    ld hl, $d416                                  ; $09e1: $21 $16 $d4

Jump_000_09e4:
    call Call_000_0006                            ; $09e4: $cd $06 $00
    ld e, l                                       ; $09e7: $5d
    ld d, h                                       ; $09e8: $54
    ld hl, $fffc                                  ; $09e9: $21 $fc $ff

Call_000_09ec:
    add hl, de                                    ; $09ec: $19
    ld a, [$d412]                                 ; $09ed: $fa $12 $d4
    sub b                                         ; $09f0: $90

Jump_000_09f1:
    add a                                         ; $09f1: $87
    add a                                         ; $09f2: $87

Call_000_09f3:
    ld c, a                                       ; $09f3: $4f

Call_000_09f4:
    ld b, $00                                     ; $09f4: $06 $00
    call Call_000_1173                            ; $09f6: $cd $73 $11
    pop hl                                        ; $09f9: $e1
    pop de                                        ; $09fa: $d1
    pop bc                                        ; $09fb: $c1

Jump_000_09fc:
    ret                                           ; $09fc: $c9


Call_000_09fd:
Jump_000_09fd:
    push de                                       ; $09fd: $d5
    push hl                                       ; $09fe: $e5

Jump_000_09ff:
    ld hl, $c329                                  ; $09ff: $21 $29 $c3

Call_000_0a02:
Jump_000_0a02:
    ld e, [hl]                                    ; $0a02: $5e

Jump_000_0a03:
    inc hl                                        ; $0a03: $23

Call_000_0a04:
Jump_000_0a04:
    ld d, [hl]                                    ; $0a04: $56

Jump_000_0a05:
    call Call_000_0098                            ; $0a05: $cd $98 $00

Call_000_0a08:
    ld hl, $0009                                  ; $0a08: $21 $09 $00

Call_000_0a0b:
Jump_000_0a0b:
    add hl, bc                                    ; $0a0b: $09
    ld a, [hl+]                                   ; $0a0c: $2a
    ld h, [hl]                                    ; $0a0d: $66

Call_000_0a0e:
    ld l, a                                       ; $0a0e: $6f

Call_000_0a0f:
    add hl, de                                    ; $0a0f: $19

Jump_000_0a10:
    push hl                                       ; $0a10: $e5
    ld hl, $c326                                  ; $0a11: $21 $26 $c3
    ld e, [hl]                                    ; $0a14: $5e

Jump_000_0a15:
    inc hl                                        ; $0a15: $23
    ld d, [hl]                                    ; $0a16: $56

Jump_000_0a17:
    call Call_000_0098                            ; $0a17: $cd $98 $00
    ld hl, $0006                                  ; $0a1a: $21 $06 $00

Jump_000_0a1d:
    add hl, bc                                    ; $0a1d: $09

Call_000_0a1e:
    ld a, [hl+]                                   ; $0a1e: $2a
    ld h, [hl]                                    ; $0a1f: $66
    ld l, a                                       ; $0a20: $6f
    add hl, de                                    ; $0a21: $19
    pop de                                        ; $0a22: $d1
    call Call_000_327a                            ; $0a23: $cd $7a $32
    pop hl                                        ; $0a26: $e1
    pop de                                        ; $0a27: $d1

Jump_000_0a28:
    ret                                           ; $0a28: $c9


Call_000_0a29:
    push hl                                       ; $0a29: $e5
    call Call_000_0098                            ; $0a2a: $cd $98 $00
    ld hl, $0009                                  ; $0a2d: $21 $09 $00
    add hl, bc                                    ; $0a30: $09
    ld a, [hl+]                                   ; $0a31: $2a

Call_000_0a32:
    ld h, [hl]                                    ; $0a32: $66
    ld l, a                                       ; $0a33: $6f

Jump_000_0a34:
    add hl, de                                    ; $0a34: $19

Jump_000_0a35:
    pop de                                        ; $0a35: $d1
    push hl                                       ; $0a36: $e5
    call Call_000_0098                            ; $0a37: $cd $98 $00
    ld hl, $0006                                  ; $0a3a: $21 $06 $00

Jump_000_0a3d:
    add hl, bc                                    ; $0a3d: $09
    ld a, [hl+]                                   ; $0a3e: $2a
    ld h, [hl]                                    ; $0a3f: $66

Call_000_0a40:
    ld l, a                                       ; $0a40: $6f
    add hl, de                                    ; $0a41: $19
    pop de                                        ; $0a42: $d1

Call_000_0a43:
Jump_000_0a43:
    jp Jump_000_327a                              ; $0a43: $c3 $7a $32


    push hl                                       ; $0a46: $e5
    call Call_000_09fd                            ; $0a47: $cd $fd $09
    ld hl, $cae1                                  ; $0a4a: $21 $e1 $ca
    cp [hl]                                       ; $0a4d: $be
    pop hl                                        ; $0a4e: $e1

Jump_000_0a4f:
    ret                                           ; $0a4f: $c9


Call_000_0a50:
Jump_000_0a50:
    ld hl, $0023                                  ; $0a50: $21 $23 $00
    add hl, bc                                    ; $0a53: $09

Call_000_0a54:
    ld [hl], e                                    ; $0a54: $73
    inc hl                                        ; $0a55: $23

Jump_000_0a56:
    ld [hl], d                                    ; $0a56: $72
    inc hl                                        ; $0a57: $23

Jump_000_0a58:
    ld [hl], $01                                  ; $0a58: $36 $01
    ret                                           ; $0a5a: $c9


Call_000_0a5b:
    ld hl, $001a                                  ; $0a5b: $21 $1a $00

Call_000_0a5e:
Jump_000_0a5e:
    add hl, bc                                    ; $0a5e: $09

Call_000_0a5f:
Jump_000_0a5f:
    ld [hl], e                                    ; $0a5f: $73
    inc hl                                        ; $0a60: $23
    ld [hl], d                                    ; $0a61: $72
    ld hl, $001c                                  ; $0a62: $21 $1c $00
    add hl, bc                                    ; $0a65: $09
    ld [hl], $01                                  ; $0a66: $36 $01
    ld hl, $001e                                  ; $0a68: $21 $1e $00
    add hl, bc                                    ; $0a6b: $09
    ld [hl], $00                                  ; $0a6c: $36 $00
    ret                                           ; $0a6e: $c9


Call_000_0a6f:
    push bc                                       ; $0a6f: $c5
    ld hl, $c371                                  ; $0a70: $21 $71 $c3

Jump_000_0a73:
    ld b, $17                                     ; $0a73: $06 $17

jr_000_0a75:
    cp [hl]                                       ; $0a75: $be

Jump_000_0a76:
    jr nz, jr_000_0a84                            ; $0a76: $20 $0c

    ld d, a                                       ; $0a78: $57
    ld a, e                                       ; $0a79: $7b
    cp $ff                                        ; $0a7a: $fe $ff

Call_000_0a7c:
    jr z, jr_000_0a92                             ; $0a7c: $28 $14

    inc hl                                        ; $0a7e: $23

Call_000_0a7f:
    cp [hl]                                       ; $0a7f: $be
    dec hl                                        ; $0a80: $2b

Call_000_0a81:
    jr z, jr_000_0a92                             ; $0a81: $28 $0f

    ld a, d                                       ; $0a83: $7a

jr_000_0a84:
    push de                                       ; $0a84: $d5
    ld de, $0051                                  ; $0a85: $11 $51 $00
    add hl, de                                    ; $0a88: $19
    pop de                                        ; $0a89: $d1
    dec b                                         ; $0a8a: $05
    jr nz, jr_000_0a75                            ; $0a8b: $20 $e8

    pop bc                                        ; $0a8d: $c1

Call_000_0a8e:
    ld a, $01                                     ; $0a8e: $3e $01
    or a                                          ; $0a90: $b7
    ret                                           ; $0a91: $c9


jr_000_0a92:
    pop bc                                        ; $0a92: $c1
    xor a                                         ; $0a93: $af
    ret                                           ; $0a94: $c9


Call_000_0a95:
Jump_000_0a95:
    ld a, [bc]                                    ; $0a95: $0a

Call_000_0a96:
Jump_000_0a96:
    cp $83                                        ; $0a96: $fe $83

Call_000_0a98:
Jump_000_0a98:
    jr z, jr_000_0acc                             ; $0a98: $28 $32

    cp $7c                                        ; $0a9a: $fe $7c

Call_000_0a9c:
    jr z, jr_000_0acc                             ; $0a9c: $28 $2e

    cp $b2                                        ; $0a9e: $fe $b2
    jr z, jr_000_0acc                             ; $0aa0: $28 $2a

    ld a, [$cb17]                                 ; $0aa2: $fa $17 $cb
    cp $09                                        ; $0aa5: $fe $09

Call_000_0aa7:
    jr z, jr_000_0aad                             ; $0aa7: $28 $04

Jump_000_0aa9:
    cp $04                                        ; $0aa9: $fe $04

Call_000_0aab:
    jr nz, jr_000_0acc                            ; $0aab: $20 $1f

Jump_000_0aad:
jr_000_0aad:
    ld hl, $cb20                                  ; $0aad: $21 $20 $cb

Jump_000_0ab0:
    ld a, [hl+]                                   ; $0ab0: $2a
    ld h, [hl]                                    ; $0ab1: $66
    ld l, a                                       ; $0ab2: $6f
    ld d, b                                       ; $0ab3: $50
    ld e, c                                       ; $0ab4: $59
    rst $10                                       ; $0ab5: $d7
    jr z, jr_000_0acc                             ; $0ab6: $28 $14

    ldh a, [rSVBK]                                ; $0ab8: $f0 $70
    push af                                       ; $0aba: $f5
    ld a, $06                                     ; $0abb: $3e $06
    ldh [rSVBK], a                                ; $0abd: $e0 $70

Jump_000_0abf:
    ld a, [$d5d5]                                 ; $0abf: $fa $d5 $d5

Call_000_0ac2:
    ldh [$bc], a                                  ; $0ac2: $e0 $bc
    pop af                                        ; $0ac4: $f1

Call_000_0ac5:
    ldh [rSVBK], a                                ; $0ac5: $e0 $70
    ldh a, [$bc]                                  ; $0ac7: $f0 $bc
    cp $06                                        ; $0ac9: $fe $06

Jump_000_0acb:
    ret nz                                        ; $0acb: $c0

jr_000_0acc:
    ld hl, $004e                                  ; $0acc: $21 $4e $00
    add hl, bc                                    ; $0acf: $09
    ld a, [hl+]                                   ; $0ad0: $2a

Jump_000_0ad1:
    or [hl]                                       ; $0ad1: $b6

Jump_000_0ad2:
    jr z, jr_000_0ae6                             ; $0ad2: $28 $12

    ld a, $03                                     ; $0ad4: $3e $03

Call_000_0ad6:
    ld [$2000], a                                 ; $0ad6: $ea $00 $20
    call $730f                                    ; $0ad9: $cd $0f $73
    ld a, $03                                     ; $0adc: $3e $03

Call_000_0ade:
Jump_000_0ade:
    ld [$2000], a                                 ; $0ade: $ea $00 $20

Jump_000_0ae1:
    call $6c37                                    ; $0ae1: $cd $37 $6c

Call_000_0ae4:
    jr jr_000_0afb                                ; $0ae4: $18 $15

jr_000_0ae6:
    ld a, $03                                     ; $0ae6: $3e $03
    ld [$2000], a                                 ; $0ae8: $ea $00 $20

Call_000_0aeb:
    call $6c37                                    ; $0aeb: $cd $37 $6c
    call $6c9c                                    ; $0aee: $cd $9c $6c

Call_000_0af1:
    ld a, $01                                     ; $0af1: $3e $01
    ld [$2000], a                                 ; $0af3: $ea $00 $20
    call $4f2b                                    ; $0af6: $cd $2b $4f

Call_000_0af9:
    jr z, jr_000_0b05                             ; $0af9: $28 $0a

jr_000_0afb:
    ld a, $03                                     ; $0afb: $3e $03

Jump_000_0afd:
    ld [$2000], a                                 ; $0afd: $ea $00 $20

Call_000_0b00:
Jump_000_0b00:
    call $775c                                    ; $0b00: $cd $5c $77

Call_000_0b03:
    jr jr_000_0b05                                ; $0b03: $18 $00

Call_000_0b05:
jr_000_0b05:
    ld a, $01                                     ; $0b05: $3e $01

Call_000_0b07:
    ld [$2000], a                                 ; $0b07: $ea $00 $20

Jump_000_0b0a:
    call $6aab                                    ; $0b0a: $cd $ab $6a
    call $6ac5                                    ; $0b0d: $cd $c5 $6a
    ld a, $03                                     ; $0b10: $3e $03
    ld [$2000], a                                 ; $0b12: $ea $00 $20
    call $7728                                    ; $0b15: $cd $28 $77

Call_000_0b18:
    jp nz, Jump_000_0e8b                          ; $0b18: $c2 $8b $0e

    ld a, $03                                     ; $0b1b: $3e $03

Jump_000_0b1d:
    ld [$2000], a                                 ; $0b1d: $ea $00 $20
    call $709e                                    ; $0b20: $cd $9e $70
    call Call_000_072b                            ; $0b23: $cd $2b $07
    ld a, $03                                     ; $0b26: $3e $03
    ld [$2000], a                                 ; $0b28: $ea $00 $20

Jump_000_0b2b:
    call $7223                                    ; $0b2b: $cd $23 $72
    jr nc, jr_000_0b35                            ; $0b2e: $30 $05

Call_000_0b30:
    push bc                                       ; $0b30: $c5

Call_000_0b31:
    call $72df                                    ; $0b31: $cd $df $72
    pop bc                                        ; $0b34: $c1

Call_000_0b35:
jr_000_0b35:
    ld a, [bc]                                    ; $0b35: $0a
    or a                                          ; $0b36: $b7
    ret z                                         ; $0b37: $c8

Jump_000_0b38:
    call Call_000_2e25                            ; $0b38: $cd $25 $2e
    jp Jump_000_29b9                              ; $0b3b: $c3 $b9 $29


Call_000_0b3e:
    ld a, $03                                     ; $0b3e: $3e $03

Jump_000_0b40:
    ld [$2000], a                                 ; $0b40: $ea $00 $20
    call $6c37                                    ; $0b43: $cd $37 $6c

Call_000_0b46:
    ld a, $03                                     ; $0b46: $3e $03

Jump_000_0b48:
    ld [$2000], a                                 ; $0b48: $ea $00 $20
    call $775c                                    ; $0b4b: $cd $5c $77
    ld a, $01                                     ; $0b4e: $3e $01
    ld [$2000], a                                 ; $0b50: $ea $00 $20
    call $6aab                                    ; $0b53: $cd $ab $6a
    call $6ac5                                    ; $0b56: $cd $c5 $6a
    ld a, $03                                     ; $0b59: $3e $03

Jump_000_0b5b:
    ld [$2000], a                                 ; $0b5b: $ea $00 $20
    call $7728                                    ; $0b5e: $cd $28 $77
    jp nz, Jump_000_0e8b                          ; $0b61: $c2 $8b $0e

    ld a, [bc]                                    ; $0b64: $0a
    or a                                          ; $0b65: $b7
    ret z                                         ; $0b66: $c8

    call Call_000_2e25                            ; $0b67: $cd $25 $2e
    jp Jump_000_29b9                              ; $0b6a: $c3 $b9 $29


    call Call_000_0a95                            ; $0b6d: $cd $95 $0a
    ld a, [bc]                                    ; $0b70: $0a
    or a                                          ; $0b71: $b7
    ret z                                         ; $0b72: $c8

Jump_000_0b73:
    ld a, $03                                     ; $0b73: $3e $03
    ld [$2000], a                                 ; $0b75: $ea $00 $20
    jp $763b                                      ; $0b78: $c3 $3b $76


    call Call_000_0a95                            ; $0b7b: $cd $95 $0a

Call_000_0b7e:
    ld a, [bc]                                    ; $0b7e: $0a

Call_000_0b7f:
    or a                                          ; $0b7f: $b7
    ret z                                         ; $0b80: $c8

    push bc                                       ; $0b81: $c5
    push af                                       ; $0b82: $f5
    ld a, $03                                     ; $0b83: $3e $03
    ld [$2000], a                                 ; $0b85: $ea $00 $20
    pop af                                        ; $0b88: $f1
    call $72b5                                    ; $0b89: $cd $b5 $72
    pop bc                                        ; $0b8c: $c1
    ret                                           ; $0b8d: $c9


Call_000_0b8e:
    call Call_000_0a95                            ; $0b8e: $cd $95 $0a

Call_000_0b91:
    ld a, [$cb28]                                 ; $0b91: $fa $28 $cb

Call_000_0b94:
    or a                                          ; $0b94: $b7
    ret z                                         ; $0b95: $c8

    ld hl, $002b                                  ; $0b96: $21 $2b $00
    add hl, bc                                    ; $0b99: $09

Call_000_0b9a:
    bit 6, [hl]                                   ; $0b9a: $cb $76
    ret z                                         ; $0b9c: $c8

Jump_000_0b9d:
    ld a, $01                                     ; $0b9d: $3e $01
    ld [$2000], a                                 ; $0b9f: $ea $00 $20
    call $4e93                                    ; $0ba2: $cd $93 $4e

Jump_000_0ba5:
    jr nc, jr_000_0bbd                            ; $0ba5: $30 $16

Call_000_0ba7:
    ld a, $39                                     ; $0ba7: $3e $39
    call $4f70                                    ; $0ba9: $cd $70 $4f
    jr nc, jr_000_0bbd                            ; $0bac: $30 $0f

Jump_000_0bae:
    ld a, $38                                     ; $0bae: $3e $38
    call $4f70                                    ; $0bb0: $cd $70 $4f
    jr nc, jr_000_0bbd                            ; $0bb3: $30 $08

Jump_000_0bb5:
    ld a, $37                                     ; $0bb5: $3e $37
    call $4f70                                    ; $0bb7: $cd $70 $4f
    jr nc, jr_000_0bbd                            ; $0bba: $30 $01

    ret                                           ; $0bbc: $c9


jr_000_0bbd:
    ld e, $03                                     ; $0bbd: $1e $03
    push af                                       ; $0bbf: $f5
    ld a, $05                                     ; $0bc0: $3e $05

Jump_000_0bc2:
    ld [$2000], a                                 ; $0bc2: $ea $00 $20
    pop af                                        ; $0bc5: $f1
    jp $5f9b                                      ; $0bc6: $c3 $9b $5f


Jump_000_0bc9:
    ret                                           ; $0bc9: $c9


Jump_000_0bca:
    call Call_000_0a95                            ; $0bca: $cd $95 $0a
    ld a, [bc]                                    ; $0bcd: $0a

Jump_000_0bce:
    or a                                          ; $0bce: $b7
    ret z                                         ; $0bcf: $c8

Call_000_0bd0:
Jump_000_0bd0:
    ld a, $01                                     ; $0bd0: $3e $01

Call_000_0bd2:
Jump_000_0bd2:
    ld [$2000], a                                 ; $0bd2: $ea $00 $20

Jump_000_0bd5:
    call $4e93                                    ; $0bd5: $cd $93 $4e
    ret c                                         ; $0bd8: $d8

Call_000_0bd9:
    ret                                           ; $0bd9: $c9


    call Call_000_0a95                            ; $0bda: $cd $95 $0a
    ld a, [bc]                                    ; $0bdd: $0a
    or a                                          ; $0bde: $b7

Jump_000_0bdf:
    ret z                                         ; $0bdf: $c8

    ldh a, [rSVBK]                                ; $0be0: $f0 $70

Jump_000_0be2:
    push af                                       ; $0be2: $f5
    ld a, $06                                     ; $0be3: $3e $06
    ldh [rSVBK], a                                ; $0be5: $e0 $70
    ld a, [$d5d5]                                 ; $0be7: $fa $d5 $d5
    ldh [$bc], a                                  ; $0bea: $e0 $bc
    pop af                                        ; $0bec: $f1
    ldh [rSVBK], a                                ; $0bed: $e0 $70
    ldh a, [$bc]                                  ; $0bef: $f0 $bc

Jump_000_0bf1:
    cp $08                                        ; $0bf1: $fe $08
    ret z                                         ; $0bf3: $c8

Call_000_0bf4:
    cp $09                                        ; $0bf4: $fe $09
    ret z                                         ; $0bf6: $c8

Call_000_0bf7:
Jump_000_0bf7:
    ld a, [$cd19]                                 ; $0bf7: $fa $19 $cd

Call_000_0bfa:
    cp $ff                                        ; $0bfa: $fe $ff
    ret nz                                        ; $0bfc: $c0

    ldh a, [$a5]                                  ; $0bfd: $f0 $a5

Call_000_0bff:
    bit 0, a                                      ; $0bff: $cb $47

Jump_000_0c01:
    ret z                                         ; $0c01: $c8

Jump_000_0c02:
    ld a, $01                                     ; $0c02: $3e $01

Jump_000_0c04:
    ld [$2000], a                                 ; $0c04: $ea $00 $20
    call $4e93                                    ; $0c07: $cd $93 $4e

Jump_000_0c0a:
    ret c                                         ; $0c0a: $d8

Jump_000_0c0b:
    ldh a, [$de]                                  ; $0c0b: $f0 $de

Jump_000_0c0d:
    or a                                          ; $0c0d: $b7

Jump_000_0c0e:
    ret z                                         ; $0c0e: $c8

Call_000_0c0f:
Jump_000_0c0f:
    ld a, $01                                     ; $0c0f: $3e $01
    ldh [$dd], a                                  ; $0c11: $e0 $dd

Jump_000_0c13:
    xor a                                         ; $0c13: $af
    ld hl, $002d                                  ; $0c14: $21 $2d $00
    add hl, bc                                    ; $0c17: $09
    ld [hl], a                                    ; $0c18: $77

Jump_000_0c19:
    ldh [$a5], a                                  ; $0c19: $e0 $a5
    jp Jump_000_0c95                              ; $0c1b: $c3 $95 $0c


    call Call_000_0a95                            ; $0c1e: $cd $95 $0a
    ld a, [bc]                                    ; $0c21: $0a

Jump_000_0c22:
    or a                                          ; $0c22: $b7

Jump_000_0c23:
    ret z                                         ; $0c23: $c8

Call_000_0c24:
    push bc                                       ; $0c24: $c5

Jump_000_0c25:
    push af                                       ; $0c25: $f5
    ld a, $03                                     ; $0c26: $3e $03
    ld [$2000], a                                 ; $0c28: $ea $00 $20
    pop af                                        ; $0c2b: $f1
    call $7288                                    ; $0c2c: $cd $88 $72
    pop bc                                        ; $0c2f: $c1

Jump_000_0c30:
    ret                                           ; $0c30: $c9


    call Call_000_0a95                            ; $0c31: $cd $95 $0a
    ld a, [bc]                                    ; $0c34: $0a
    or a                                          ; $0c35: $b7
    ret z                                         ; $0c36: $c8

    push af                                       ; $0c37: $f5

Call_000_0c38:
    ld a, $03                                     ; $0c38: $3e $03
    ld [$2000], a                                 ; $0c3a: $ea $00 $20
    pop af                                        ; $0c3d: $f1

Jump_000_0c3e:
    call $7258                                    ; $0c3e: $cd $58 $72
    ret nc                                        ; $0c41: $d0

Call_000_0c42:
    ld e, $15                                     ; $0c42: $1e $15
    ld a, $05                                     ; $0c44: $3e $05
    ld [$2000], a                                 ; $0c46: $ea $00 $20

Call_000_0c49:
    jp $5f9b                                      ; $0c49: $c3 $9b $5f


    call Call_000_0a95                            ; $0c4c: $cd $95 $0a

Jump_000_0c4f:
    ld a, [bc]                                    ; $0c4f: $0a

Jump_000_0c50:
    or a                                          ; $0c50: $b7
    ret z                                         ; $0c51: $c8

Jump_000_0c52:
    ld a, [$cb17]                                 ; $0c52: $fa $17 $cb
    or a                                          ; $0c55: $b7

Call_000_0c56:
    ret nz                                        ; $0c56: $c0

    ld a, $03                                     ; $0c57: $3e $03
    ld [$2000], a                                 ; $0c59: $ea $00 $20

Call_000_0c5c:
    jp $73d4                                      ; $0c5c: $c3 $d4 $73


    call Call_000_0a95                            ; $0c5f: $cd $95 $0a

Jump_000_0c62:
    ld a, [bc]                                    ; $0c62: $0a
    or a                                          ; $0c63: $b7

Call_000_0c64:
    ret z                                         ; $0c64: $c8

    ld a, [$cb17]                                 ; $0c65: $fa $17 $cb
    cp $09                                        ; $0c68: $fe $09

Jump_000_0c6a:
    ret z                                         ; $0c6a: $c8

Jump_000_0c6b:
    cp $04                                        ; $0c6b: $fe $04
    ret z                                         ; $0c6d: $c8

    ld hl, $002e                                  ; $0c6e: $21 $2e $00
    add hl, bc                                    ; $0c71: $09

Call_000_0c72:
    bit 1, [hl]                                   ; $0c72: $cb $4e
    ret nz                                        ; $0c74: $c0

    ld hl, $002d                                  ; $0c75: $21 $2d $00
    add hl, bc                                    ; $0c78: $09
    bit 4, [hl]                                   ; $0c79: $cb $66
    ret z                                         ; $0c7b: $c8

    ld a, $01                                     ; $0c7c: $3e $01

Call_000_0c7e:
    ld [$2000], a                                 ; $0c7e: $ea $00 $20
    call $4e8b                                    ; $0c81: $cd $8b $4e
    ret c                                         ; $0c84: $d8

    ldh a, [$de]                                  ; $0c85: $f0 $de
    or a                                          ; $0c87: $b7
    ret z                                         ; $0c88: $c8

    ld a, $01                                     ; $0c89: $3e $01
    ldh [$dd], a                                  ; $0c8b: $e0 $dd

Jump_000_0c8d:
    xor a                                         ; $0c8d: $af
    ld hl, $002d                                  ; $0c8e: $21 $2d $00
    add hl, bc                                    ; $0c91: $09
    ld [hl], a                                    ; $0c92: $77
    ldh [$a5], a                                  ; $0c93: $e0 $a5

Jump_000_0c95:
jr_000_0c95:
    ld hl, $001c                                  ; $0c95: $21 $1c $00

Jump_000_0c98:
    add hl, bc                                    ; $0c98: $09

Call_000_0c99:
    ld [hl], $01                                  ; $0c99: $36 $01
    ret                                           ; $0c9b: $c9


Jump_000_0c9c:
    call Call_000_0a95                            ; $0c9c: $cd $95 $0a
    ld a, [bc]                                    ; $0c9f: $0a
    or a                                          ; $0ca0: $b7
    ret z                                         ; $0ca1: $c8

Jump_000_0ca2:
    ld hl, $002e                                  ; $0ca2: $21 $2e $00

Call_000_0ca5:
    add hl, bc                                    ; $0ca5: $09
    bit 1, [hl]                                   ; $0ca6: $cb $4e
    ret nz                                        ; $0ca8: $c0

    ld a, $01                                     ; $0ca9: $3e $01
    ld [$2000], a                                 ; $0cab: $ea $00 $20

Call_000_0cae:
Jump_000_0cae:
    call $4e93                                    ; $0cae: $cd $93 $4e
    ret c                                         ; $0cb1: $d8

    call Call_000_2e82                            ; $0cb2: $cd $82 $2e
    or a                                          ; $0cb5: $b7
    jp z, Jump_000_0d86                           ; $0cb6: $ca $86 $0d

    ld hl, $0003                                  ; $0cb9: $21 $03 $00
    add hl, bc                                    ; $0cbc: $09
    ld a, [hl]                                    ; $0cbd: $7e
    or a                                          ; $0cbe: $b7
    ret nz                                        ; $0cbf: $c0

    ld [hl], $01                                  ; $0cc0: $36 $01
    jr z, jr_000_0c95                             ; $0cc2: $28 $d1

    ret                                           ; $0cc4: $c9


    call Call_000_0a95                            ; $0cc5: $cd $95 $0a
    ld a, [bc]                                    ; $0cc8: $0a
    or a                                          ; $0cc9: $b7

Call_000_0cca:
Jump_000_0cca:
    ret                                           ; $0cca: $c9


Call_000_0ccb:
Jump_000_0ccb:
    call Call_000_0a95                            ; $0ccb: $cd $95 $0a
    ld a, [bc]                                    ; $0cce: $0a
    or a                                          ; $0ccf: $b7
    ret z                                         ; $0cd0: $c8

Jump_000_0cd1:
    call Call_000_2e82                            ; $0cd1: $cd $82 $2e
    or a                                          ; $0cd4: $b7
    ret nz                                        ; $0cd5: $c0

Call_000_0cd6:
    ld a, $03                                     ; $0cd6: $3e $03

Call_000_0cd8:
    ld [$2000], a                                 ; $0cd8: $ea $00 $20
    jp $7305                                      ; $0cdb: $c3 $05 $73


    call Call_000_0a95                            ; $0cde: $cd $95 $0a
    ld a, [bc]                                    ; $0ce1: $0a

Call_000_0ce2:
    or a                                          ; $0ce2: $b7
    ret z                                         ; $0ce3: $c8

Call_000_0ce4:
    ld a, $01                                     ; $0ce4: $3e $01
    ld [$2000], a                                 ; $0ce6: $ea $00 $20

Call_000_0ce9:
    call $4e93                                    ; $0ce9: $cd $93 $4e
    ret c                                         ; $0cec: $d8

    call Call_000_0e9d                            ; $0ced: $cd $9d $0e

Jump_000_0cf0:
    call Call_000_2485                            ; $0cf0: $cd $85 $24

Call_000_0cf3:
    ret nz                                        ; $0cf3: $c0

Call_000_0cf4:
    ldh a, [$cc]                                  ; $0cf4: $f0 $cc
    cp $3e                                        ; $0cf6: $fe $3e
    jr nz, jr_000_0cff                            ; $0cf8: $20 $05

    ld a, $3e                                     ; $0cfa: $3e $3e

Jump_000_0cfc:
    jp Jump_000_2448                              ; $0cfc: $c3 $48 $24


Call_000_0cff:
Jump_000_0cff:
jr_000_0cff:
    ld a, $02                                     ; $0cff: $3e $02

Call_000_0d01:
Jump_000_0d01:
    ld [$c0bb], a                                 ; $0d01: $ea $bb $c0

Jump_000_0d04:
    ld a, $0b                                     ; $0d04: $3e $0b

Call_000_0d06:
    jp Jump_000_2448                              ; $0d06: $c3 $48 $24


Jump_000_0d09:
    call Call_000_0a95                            ; $0d09: $cd $95 $0a

Call_000_0d0c:
Jump_000_0d0c:
    ld a, [bc]                                    ; $0d0c: $0a
    or a                                          ; $0d0d: $b7

Call_000_0d0e:
    ret z                                         ; $0d0e: $c8

Jump_000_0d0f:
    ld a, $01                                     ; $0d0f: $3e $01
    ld [$2000], a                                 ; $0d11: $ea $00 $20
    call $4e93                                    ; $0d14: $cd $93 $4e

Call_000_0d17:
Jump_000_0d17:
    ret c                                         ; $0d17: $d8

    ld hl, $cbbe                                  ; $0d18: $21 $be $cb

Call_000_0d1b:
    ld e, [hl]                                    ; $0d1b: $5e

Jump_000_0d1c:
    inc hl                                        ; $0d1c: $23

Call_000_0d1d:
    ld d, [hl]                                    ; $0d1d: $56

Call_000_0d1e:
Jump_000_0d1e:
    ld hl, $0003                                  ; $0d1e: $21 $03 $00
    add hl, de                                    ; $0d21: $19
    ld [hl], $3c                                  ; $0d22: $36 $3c
    ld hl, $002d                                  ; $0d24: $21 $2d $00
    add hl, bc                                    ; $0d27: $09
    ld [hl], $00                                  ; $0d28: $36 $00

Jump_000_0d2a:
    ld de, $5b18                                  ; $0d2a: $11 $18 $5b
    call Call_000_0475                            ; $0d2d: $cd $75 $04

Call_000_0d30:
    ld a, $23                                     ; $0d30: $3e $23
    call Call_000_393e                            ; $0d32: $cd $3e $39
    jp Jump_000_0c95                              ; $0d35: $c3 $95 $0c


Jump_000_0d38:
    call Call_000_0a95                            ; $0d38: $cd $95 $0a
    ld a, [bc]                                    ; $0d3b: $0a

Call_000_0d3c:
Jump_000_0d3c:
    or a                                          ; $0d3c: $b7
    ret z                                         ; $0d3d: $c8

    ld a, $03                                     ; $0d3e: $3e $03
    ld [$2000], a                                 ; $0d40: $ea $00 $20
    jp $769d                                      ; $0d43: $c3 $9d $76


Jump_000_0d46:
    call Call_000_0a95                            ; $0d46: $cd $95 $0a
    ld a, [bc]                                    ; $0d49: $0a
    or a                                          ; $0d4a: $b7

Jump_000_0d4b:
    ret z                                         ; $0d4b: $c8

Jump_000_0d4c:
    ld a, $03                                     ; $0d4c: $3e $03

Jump_000_0d4e:
    ld [$2000], a                                 ; $0d4e: $ea $00 $20
    jp $76e3                                      ; $0d51: $c3 $e3 $76


    call Call_000_0a95                            ; $0d54: $cd $95 $0a
    ld a, [bc]                                    ; $0d57: $0a

Jump_000_0d58:
    or a                                          ; $0d58: $b7

Jump_000_0d59:
    ret z                                         ; $0d59: $c8

    ld a, $03                                     ; $0d5a: $3e $03
    ld [$2000], a                                 ; $0d5c: $ea $00 $20

Jump_000_0d5f:
    jp $74f9                                      ; $0d5f: $c3 $f9 $74


    call Call_000_0a95                            ; $0d62: $cd $95 $0a

Call_000_0d65:
Jump_000_0d65:
    ld a, [bc]                                    ; $0d65: $0a
    or a                                          ; $0d66: $b7

Jump_000_0d67:
    ret z                                         ; $0d67: $c8

    ld a, $03                                     ; $0d68: $3e $03
    ld [$2000], a                                 ; $0d6a: $ea $00 $20
    jp $75ae                                      ; $0d6d: $c3 $ae $75


Call_000_0d70:
    call Call_000_0a95                            ; $0d70: $cd $95 $0a

Call_000_0d73:
Jump_000_0d73:
    ld a, [bc]                                    ; $0d73: $0a

Call_000_0d74:
    or a                                          ; $0d74: $b7
    ret z                                         ; $0d75: $c8

    ld hl, $002e                                  ; $0d76: $21 $2e $00
    add hl, bc                                    ; $0d79: $09
    bit 1, [hl]                                   ; $0d7a: $cb $4e
    ret nz                                        ; $0d7c: $c0

    ld a, $01                                     ; $0d7d: $3e $01
    ld [$2000], a                                 ; $0d7f: $ea $00 $20
    call $4e93                                    ; $0d82: $cd $93 $4e

Jump_000_0d85:
    ret c                                         ; $0d85: $d8

Jump_000_0d86:
    ld a, $03                                     ; $0d86: $3e $03

Call_000_0d88:
    ld [$2000], a                                 ; $0d88: $ea $00 $20
    jp $7552                                      ; $0d8b: $c3 $52 $75


    push af                                       ; $0d8e: $f5
    ld a, $07                                     ; $0d8f: $3e $07

Call_000_0d91:
    ld [$2000], a                                 ; $0d91: $ea $00 $20
    pop af                                        ; $0d94: $f1

Call_000_0d95:
    call $68a8                                    ; $0d95: $cd $a8 $68
    ret                                           ; $0d98: $c9


    ldh a, [$a5]                                  ; $0d99: $f0 $a5

Call_000_0d9b:
Jump_000_0d9b:
    and $01                                       ; $0d9b: $e6 $01

Call_000_0d9d:
    jr z, jr_000_0deb                             ; $0d9d: $28 $4c

Jump_000_0d9f:
    call Call_000_0a95                            ; $0d9f: $cd $95 $0a
    ld a, [bc]                                    ; $0da2: $0a

Call_000_0da3:
    or a                                          ; $0da3: $b7

Jump_000_0da4:
    jr z, jr_000_0deb                             ; $0da4: $28 $45

    ld hl, $002e                                  ; $0da6: $21 $2e $00
    add hl, bc                                    ; $0da9: $09
    bit 1, [hl]                                   ; $0daa: $cb $4e
    jr nz, jr_000_0deb                            ; $0dac: $20 $3d

    ld a, $01                                     ; $0dae: $3e $01
    ld [$2000], a                                 ; $0db0: $ea $00 $20
    call $4e93                                    ; $0db3: $cd $93 $4e
    jr c, jr_000_0deb                             ; $0db6: $38 $33

    ld a, [$caf4]                                 ; $0db8: $fa $f4 $ca

Jump_000_0dbb:
    ld l, a                                       ; $0dbb: $6f

Jump_000_0dbc:
    ld a, [$caf5]                                 ; $0dbc: $fa $f5 $ca

Jump_000_0dbf:
    or l                                          ; $0dbf: $b5

Call_000_0dc0:
Jump_000_0dc0:
    ret nz                                        ; $0dc0: $c0

    ld hl, $0006                                  ; $0dc1: $21 $06 $00

Call_000_0dc4:
    add hl, bc                                    ; $0dc4: $09

Jump_000_0dc5:
    ld a, [hl+]                                   ; $0dc5: $2a
    ld h, [hl]                                    ; $0dc6: $66

Jump_000_0dc7:
    ld l, a                                       ; $0dc7: $6f
    ld a, l                                       ; $0dc8: $7d
    ld [$caf4], a                                 ; $0dc9: $ea $f4 $ca
    ld a, h                                       ; $0dcc: $7c
    ld [$caf5], a                                 ; $0dcd: $ea $f5 $ca
    ld hl, $0009                                  ; $0dd0: $21 $09 $00

Jump_000_0dd3:
    add hl, bc                                    ; $0dd3: $09
    ld a, [hl+]                                   ; $0dd4: $2a
    ld h, [hl]                                    ; $0dd5: $66
    ld l, a                                       ; $0dd6: $6f
    ld a, l                                       ; $0dd7: $7d
    ld [$caf6], a                                 ; $0dd8: $ea $f6 $ca

Jump_000_0ddb:
    ld a, h                                       ; $0ddb: $7c
    ld [$caf7], a                                 ; $0ddc: $ea $f7 $ca
    call Call_000_2e82                            ; $0ddf: $cd $82 $2e
    ld e, a                                       ; $0de2: $5f
    ld a, $05                                     ; $0de3: $3e $05
    ld [$2000], a                                 ; $0de5: $ea $00 $20

Jump_000_0de8:
    jp $5f9b                                      ; $0de8: $c3 $9b $5f


Call_000_0deb:
Jump_000_0deb:
jr_000_0deb:
    ld a, [$caf4]                                 ; $0deb: $fa $f4 $ca

Call_000_0dee:
    or a                                          ; $0dee: $b7
    ret z                                         ; $0def: $c8

    ld hl, $caf4                                  ; $0df0: $21 $f4 $ca
    ld e, [hl]                                    ; $0df3: $5e
    inc hl                                        ; $0df4: $23
    ld d, [hl]                                    ; $0df5: $56
    ld hl, $0006                                  ; $0df6: $21 $06 $00
    add hl, bc                                    ; $0df9: $09
    ld a, [hl+]                                   ; $0dfa: $2a
    ld h, [hl]                                    ; $0dfb: $66

Call_000_0dfc:
Jump_000_0dfc:
    ld l, a                                       ; $0dfc: $6f
    rst $10                                       ; $0dfd: $d7
    ret nz                                        ; $0dfe: $c0

Call_000_0dff:
Jump_000_0dff:
    ld hl, $caf6                                  ; $0dff: $21 $f6 $ca

Call_000_0e02:
Jump_000_0e02:
    ld e, [hl]                                    ; $0e02: $5e
    inc hl                                        ; $0e03: $23
    ld d, [hl]                                    ; $0e04: $56

Jump_000_0e05:
    ld hl, $0009                                  ; $0e05: $21 $09 $00

Call_000_0e08:
Jump_000_0e08:
    add hl, bc                                    ; $0e08: $09

Call_000_0e09:
Jump_000_0e09:
    ld a, [hl+]                                   ; $0e09: $2a
    ld h, [hl]                                    ; $0e0a: $66
    ld l, a                                       ; $0e0b: $6f

Call_000_0e0c:
Jump_000_0e0c:
    rst $10                                       ; $0e0c: $d7

Call_000_0e0d:
Jump_000_0e0d:
    ret nz                                        ; $0e0d: $c0

Call_000_0e0e:
Jump_000_0e0e:
    ld hl, $caf4                                  ; $0e0e: $21 $f4 $ca
    xor a                                         ; $0e11: $af

Call_000_0e12:
    ld [hl+], a                                   ; $0e12: $22
    ld [hl+], a                                   ; $0e13: $22

Jump_000_0e14:
    ld [hl+], a                                   ; $0e14: $22

Call_000_0e15:
    ld [hl], a                                    ; $0e15: $77

Call_000_0e16:
    ret                                           ; $0e16: $c9


Jump_000_0e17:
    call Call_000_2485                            ; $0e17: $cd $85 $24

Call_000_0e1a:
    jr nz, jr_000_0e22                            ; $0e1a: $20 $06

    ldh a, [$de]                                  ; $0e1c: $f0 $de
    cp $00                                        ; $0e1e: $fe $00
    jr nz, jr_000_0e2d                            ; $0e20: $20 $0b

jr_000_0e22:
    ld a, $03                                     ; $0e22: $3e $03
    ld [$2000], a                                 ; $0e24: $ea $00 $20
    call $4414                                    ; $0e27: $cd $14 $44
    jp Jump_000_0e9d                              ; $0e2a: $c3 $9d $0e


Jump_000_0e2d:
jr_000_0e2d:
    call Call_000_0a95                            ; $0e2d: $cd $95 $0a

Call_000_0e30:
    ld a, [bc]                                    ; $0e30: $0a

Call_000_0e31:
Jump_000_0e31:
    or a                                          ; $0e31: $b7
    ret z                                         ; $0e32: $c8

    ld hl, $002e                                  ; $0e33: $21 $2e $00
    add hl, bc                                    ; $0e36: $09

Call_000_0e37:
Jump_000_0e37:
    bit 1, [hl]                                   ; $0e37: $cb $4e
    ret nz                                        ; $0e39: $c0

Jump_000_0e3a:
    ld a, $01                                     ; $0e3a: $3e $01

Call_000_0e3c:
    ld [$2000], a                                 ; $0e3c: $ea $00 $20
    call $4e93                                    ; $0e3f: $cd $93 $4e
    ret c                                         ; $0e42: $d8

    ldh a, [rSVBK]                                ; $0e43: $f0 $70
    push af                                       ; $0e45: $f5

Call_000_0e46:
Jump_000_0e46:
    ld a, $06                                     ; $0e46: $3e $06
    ldh [rSVBK], a                                ; $0e48: $e0 $70
    ld a, [$d611]                                 ; $0e4a: $fa $11 $d6
    or a                                          ; $0e4d: $b7
    jr nz, jr_000_0e72                            ; $0e4e: $20 $22

Call_000_0e50:
    ld a, $01                                     ; $0e50: $3e $01

Jump_000_0e52:
    ld [$d611], a                                 ; $0e52: $ea $11 $d6
    ld [$d612], a                                 ; $0e55: $ea $12 $d6
    pop af                                        ; $0e58: $f1

Call_000_0e59:
    ldh [rSVBK], a                                ; $0e59: $e0 $70

Call_000_0e5b:
    xor a                                         ; $0e5b: $af
    ldh [$de], a                                  ; $0e5c: $e0 $de
    ld a, $03                                     ; $0e5e: $3e $03
    ld [$cd19], a                                 ; $0e60: $ea $19 $cd

Call_000_0e63:
    ld hl, $1d8f                                  ; $0e63: $21 $8f $1d
    ld a, $5e                                     ; $0e66: $3e $5e

Call_000_0e68:
    push af                                       ; $0e68: $f5

Call_000_0e69:
Jump_000_0e69:
    ld a, $04                                     ; $0e69: $3e $04

Call_000_0e6b:
    ld [$2000], a                                 ; $0e6b: $ea $00 $20
    pop af                                        ; $0e6e: $f1
    jp $4334                                      ; $0e6f: $c3 $34 $43


Jump_000_0e72:
jr_000_0e72:
    pop af                                        ; $0e72: $f1

Call_000_0e73:
Jump_000_0e73:
    ldh [rSVBK], a                                ; $0e73: $e0 $70

Call_000_0e75:
    ld a, $03                                     ; $0e75: $3e $03
    ld [$2000], a                                 ; $0e77: $ea $00 $20

Call_000_0e7a:
    jp $6d1c                                      ; $0e7a: $c3 $1c $6d


Jump_000_0e7d:
    ldh a, [$bb]                                  ; $0e7d: $f0 $bb

Jump_000_0e7f:
    or a                                          ; $0e7f: $b7

Jump_000_0e80:
    ret nz                                        ; $0e80: $c0

    push af                                       ; $0e81: $f5
    ld a, $03                                     ; $0e82: $3e $03
    ld [$2000], a                                 ; $0e84: $ea $00 $20
    pop af                                        ; $0e87: $f1
    jp $40ae                                      ; $0e88: $c3 $ae $40


Call_000_0e8b:
Jump_000_0e8b:
    xor a                                         ; $0e8b: $af

Jump_000_0e8c:
    ld [bc], a                                    ; $0e8c: $02

Jump_000_0e8d:
    ld a, $01                                     ; $0e8d: $3e $01

Call_000_0e8f:
    ld [$2000], a                                 ; $0e8f: $ea $00 $20
    call $5ba9                                    ; $0e92: $cd $a9 $5b
    ld hl, $0030                                  ; $0e95: $21 $30 $00
    add hl, bc                                    ; $0e98: $09
    ld a, [hl]                                    ; $0e99: $7e

Jump_000_0e9a:
    jp Jump_000_0483                              ; $0e9a: $c3 $83 $04


Call_000_0e9d:
Jump_000_0e9d:
    push bc                                       ; $0e9d: $c5
    ld a, [$4000]                                 ; $0e9e: $fa $00 $40
    push af                                       ; $0ea1: $f5
    xor a                                         ; $0ea2: $af
    ld [bc], a                                    ; $0ea3: $02
    ld a, $01                                     ; $0ea4: $3e $01
    ld [$2000], a                                 ; $0ea6: $ea $00 $20
    call $5ba9                                    ; $0ea9: $cd $a9 $5b
    ld hl, $0005                                  ; $0eac: $21 $05 $00

Jump_000_0eaf:
    add hl, bc                                    ; $0eaf: $09
    ld bc, $000a                                  ; $0eb0: $01 $0a $00

Call_000_0eb3:
    call Call_000_112e                            ; $0eb3: $cd $2e $11
    pop af                                        ; $0eb6: $f1
    ld [$2000], a                                 ; $0eb7: $ea $00 $20
    pop bc                                        ; $0eba: $c1

Call_000_0ebb:
    ret                                           ; $0ebb: $c9


Call_000_0ebc:
    ld a, [hl+]                                   ; $0ebc: $2a
    ld d, a                                       ; $0ebd: $57

Call_000_0ebe:
    and $3f                                       ; $0ebe: $e6 $3f
    ld e, a                                       ; $0ec0: $5f
    ld a, [$c0b9]                                 ; $0ec1: $fa $b9 $c0
    sub e                                         ; $0ec4: $93

Jump_000_0ec5:
    ret c                                         ; $0ec5: $d8

    ld [$c0b9], a                                 ; $0ec6: $ea $b9 $c0
    push bc                                       ; $0ec9: $c5
    ld b, e                                       ; $0eca: $43
    ld c, d                                       ; $0ecb: $4a

Call_000_0ecc:
Jump_000_0ecc:
    ldh a, [$b0]                                  ; $0ecc: $f0 $b0

Call_000_0ece:
    add [hl]                                      ; $0ece: $86

Jump_000_0ecf:
    ldh [$b0], a                                  ; $0ecf: $e0 $b0

Call_000_0ed1:
Jump_000_0ed1:
    inc hl                                        ; $0ed1: $23

Call_000_0ed2:
Jump_000_0ed2:
    jr jr_000_0ee4                                ; $0ed2: $18 $10

Call_000_0ed4:
Jump_000_0ed4:
    ld a, [hl+]                                   ; $0ed4: $2a
    ld d, a                                       ; $0ed5: $57
    and $3f                                       ; $0ed6: $e6 $3f

Call_000_0ed8:
    ld e, a                                       ; $0ed8: $5f

Jump_000_0ed9:
    ld a, [$c0b9]                                 ; $0ed9: $fa $b9 $c0
    sub e                                         ; $0edc: $93
    ret c                                         ; $0edd: $d8

    ld [$c0b9], a                                 ; $0ede: $ea $b9 $c0
    push bc                                       ; $0ee1: $c5
    ld b, e                                       ; $0ee2: $43

Call_000_0ee3:
    ld c, d                                       ; $0ee3: $4a

jr_000_0ee4:
    ldh a, [$b1]                                  ; $0ee4: $f0 $b1
    or a                                          ; $0ee6: $b7

Jump_000_0ee7:
    jr nz, jr_000_0eed                            ; $0ee7: $20 $04

    ld de, $0004                                  ; $0ee9: $11 $04 $00
    add hl, de                                    ; $0eec: $19

jr_000_0eed:
    ld a, [$c0b7]                                 ; $0eed: $fa $b7 $c0

Call_000_0ef0:
    ld e, a                                       ; $0ef0: $5f
    ld a, [$c0b8]                                 ; $0ef1: $fa $b8 $c0
    ld d, a                                       ; $0ef4: $57

jr_000_0ef5:
    ldh a, [$af]                                  ; $0ef5: $f0 $af

Jump_000_0ef7:
    bit 6, a                                      ; $0ef7: $cb $77

Call_000_0ef9:
Jump_000_0ef9:
    ldh a, [$ad]                                  ; $0ef9: $f0 $ad
    jr z, jr_000_0f02                             ; $0efb: $28 $05

    sub [hl]                                      ; $0efd: $96
    sub $0f                                       ; $0efe: $d6 $0f

Call_000_0f00:
Jump_000_0f00:
    jr jr_000_0f03                                ; $0f00: $18 $01

Call_000_0f02:
jr_000_0f02:
    add [hl]                                      ; $0f02: $86

Call_000_0f03:
jr_000_0f03:
    ld [de], a                                    ; $0f03: $12
    inc de                                        ; $0f04: $13
    inc hl                                        ; $0f05: $23
    ldh a, [$af]                                  ; $0f06: $f0 $af

Call_000_0f08:
Jump_000_0f08:
    bit 5, a                                      ; $0f08: $cb $6f

Call_000_0f0a:
Jump_000_0f0a:
    ldh a, [$ab]                                  ; $0f0a: $f0 $ab

Call_000_0f0c:
    jr z, jr_000_0f13                             ; $0f0c: $28 $05

Call_000_0f0e:
Jump_000_0f0e:
    sub [hl]                                      ; $0f0e: $96

Call_000_0f0f:
Jump_000_0f0f:
    sub $07                                       ; $0f0f: $d6 $07

Call_000_0f11:
Jump_000_0f11:
    jr jr_000_0f14                                ; $0f11: $18 $01

jr_000_0f13:
    add [hl]                                      ; $0f13: $86

jr_000_0f14:
    ld [de], a                                    ; $0f14: $12

Call_000_0f15:
    inc de                                        ; $0f15: $13
    inc hl                                        ; $0f16: $23

Jump_000_0f17:
    ldh a, [$ba]                                  ; $0f17: $f0 $ba
    dec a                                         ; $0f19: $3d
    ldh a, [$b0]                                  ; $0f1a: $f0 $b0
    ld [de], a                                    ; $0f1c: $12
    jr z, jr_000_0f20                             ; $0f1d: $28 $01

    inc a                                         ; $0f1f: $3c

Jump_000_0f20:
jr_000_0f20:
    inc a                                         ; $0f20: $3c
    ldh [$b0], a                                  ; $0f21: $e0 $b0
    inc de                                        ; $0f23: $13
    ldh a, [$af]                                  ; $0f24: $f0 $af
    bit 7, c                                      ; $0f26: $cb $79
    jr z, jr_000_0f2e                             ; $0f28: $28 $04

    and $f0                                       ; $0f2a: $e6 $f0

Jump_000_0f2c:
    or [hl]                                       ; $0f2c: $b6
    inc hl                                        ; $0f2d: $23

Jump_000_0f2e:
jr_000_0f2e:
    ld [de], a                                    ; $0f2e: $12
    inc de                                        ; $0f2f: $13
    dec b                                         ; $0f30: $05

Jump_000_0f31:
    jr nz, jr_000_0ef5                            ; $0f31: $20 $c2

Call_000_0f33:
    ld a, e                                       ; $0f33: $7b
    ld [$c0b7], a                                 ; $0f34: $ea $b7 $c0
    ld a, d                                       ; $0f37: $7a

Jump_000_0f38:
    ld [$c0b8], a                                 ; $0f38: $ea $b8 $c0

Call_000_0f3b:
    pop bc                                        ; $0f3b: $c1
    ret                                           ; $0f3c: $c9


    ld a, [$cdd3]                                 ; $0f3d: $fa $d3 $cd
    ld hl, $ffb8                                  ; $0f40: $21 $b8 $ff
    ld [hl+], a                                   ; $0f43: $22
    ld [hl], $00                                  ; $0f44: $36 $00

Call_000_0f46:
Jump_000_0f46:
    ld a, $08                                     ; $0f46: $3e $08
    ld hl, $526d                                  ; $0f48: $21 $6d $52
    call Call_000_294b                            ; $0f4b: $cd $4b $29

Jump_000_0f4e:
    ret                                           ; $0f4e: $c9


    push bc                                       ; $0f4f: $c5
    push de                                       ; $0f50: $d5
    push hl                                       ; $0f51: $e5

Call_000_0f52:
    ld a, $08                                     ; $0f52: $3e $08
    ld hl, $537b                                  ; $0f54: $21 $7b $53
    call Call_000_2987                            ; $0f57: $cd $87 $29

Call_000_0f5a:
    ld a, [$cdd3]                                 ; $0f5a: $fa $d3 $cd
    ld c, a                                       ; $0f5d: $4f
    ld b, $00                                     ; $0f5e: $06 $00
    ld de, $d800                                  ; $0f60: $11 $00 $d8

Jump_000_0f63:
    call Call_000_129d                            ; $0f63: $cd $9d $12
    pop hl                                        ; $0f66: $e1
    pop de                                        ; $0f67: $d1
    pop bc                                        ; $0f68: $c1
    ret                                           ; $0f69: $c9


Call_000_0f6a:
    push af                                       ; $0f6a: $f5

Call_000_0f6b:
    ld a, l                                       ; $0f6b: $7d
    ldh [$b8], a                                  ; $0f6c: $e0 $b8
    ld a, h                                       ; $0f6e: $7c

Jump_000_0f6f:
    ldh [$b9], a                                  ; $0f6f: $e0 $b9
    pop af                                        ; $0f71: $f1

Call_000_0f72:
    push af                                       ; $0f72: $f5
    ld l, c                                       ; $0f73: $69
    ld h, b                                       ; $0f74: $60
    call Call_000_294b                            ; $0f75: $cd $4b $29
    pop af                                        ; $0f78: $f1
    ret                                           ; $0f79: $c9


    push hl                                       ; $0f7a: $e5
    xor a                                         ; $0f7b: $af
    ld l, c                                       ; $0f7c: $69
    ld h, b                                       ; $0f7d: $60
    call Call_000_2987                            ; $0f7e: $cd $87 $29
    pop bc                                        ; $0f81: $c1
    ld b, $00                                     ; $0f82: $06 $00

Call_000_0f84:
    jp Jump_000_129f                              ; $0f84: $c3 $9f $12


    push bc                                       ; $0f87: $c5

Call_000_0f88:
    push de                                       ; $0f88: $d5

Call_000_0f89:
    push hl                                       ; $0f89: $e5
    ld hl, $6266                                  ; $0f8a: $21 $66 $62
    call Call_000_32b9                            ; $0f8d: $cd $b9 $32

Jump_000_0f90:
    ld de, $c139                                  ; $0f90: $11 $39 $c1

Jump_000_0f93:
    call Call_000_123f                            ; $0f93: $cd $3f $12

Jump_000_0f96:
    pop hl                                        ; $0f96: $e1
    pop de                                        ; $0f97: $d1
    pop bc                                        ; $0f98: $c1

Call_000_0f99:
Jump_000_0f99:
    ret                                           ; $0f99: $c9


    push bc                                       ; $0f9a: $c5
    push de                                       ; $0f9b: $d5
    push hl                                       ; $0f9c: $e5

Jump_000_0f9d:
    ld hl, $6251                                  ; $0f9d: $21 $51 $62
    call Call_000_32bf                            ; $0fa0: $cd $bf $32
    ld de, $c139                                  ; $0fa3: $11 $39 $c1

Call_000_0fa6:
    call Call_000_123f                            ; $0fa6: $cd $3f $12
    pop hl                                        ; $0fa9: $e1
    pop de                                        ; $0faa: $d1
    pop bc                                        ; $0fab: $c1

Call_000_0fac:
Jump_000_0fac:
    ret                                           ; $0fac: $c9


Call_000_0fad:
    call Call_000_3185                            ; $0fad: $cd $85 $31
    ld a, [$4000]                                 ; $0fb0: $fa $00 $40

Jump_000_0fb3:
    push af                                       ; $0fb3: $f5
    ld a, $07                                     ; $0fb4: $3e $07
    ld [$2000], a                                 ; $0fb6: $ea $00 $20
    ld a, [hl+]                                   ; $0fb9: $2a
    ld [$c142], a                                 ; $0fba: $ea $42 $c1
    ld a, [hl+]                                   ; $0fbd: $2a

Jump_000_0fbe:
    ld h, [hl]                                    ; $0fbe: $66
    ld l, a                                       ; $0fbf: $6f
    ld a, l                                       ; $0fc0: $7d
    ld [$c143], a                                 ; $0fc1: $ea $43 $c1

Call_000_0fc4:
    ld a, h                                       ; $0fc4: $7c
    ld [$c144], a                                 ; $0fc5: $ea $44 $c1

Call_000_0fc8:
    pop af                                        ; $0fc8: $f1
    ld [$2000], a                                 ; $0fc9: $ea $00 $20
    ret                                           ; $0fcc: $c9


Call_000_0fcd:
    ld bc, $2778                                  ; $0fcd: $01 $78 $27
    ld de, $0004                                  ; $0fd0: $11 $04 $00

Call_000_0fd3:
Jump_000_0fd3:
    ld hl, $c000                                  ; $0fd3: $21 $00 $c0

jr_000_0fd6:
    ld a, [hl]                                    ; $0fd6: $7e

Call_000_0fd7:
Jump_000_0fd7:
    cp c                                          ; $0fd7: $b9

Call_000_0fd8:
Jump_000_0fd8:
    jr c, jr_000_0fdb                             ; $0fd8: $38 $01

Call_000_0fda:
Jump_000_0fda:
    ld [hl], d                                    ; $0fda: $72

Jump_000_0fdb:
jr_000_0fdb:
    add hl, de                                    ; $0fdb: $19

Call_000_0fdc:
    dec b                                         ; $0fdc: $05
    jr nz, jr_000_0fd6                            ; $0fdd: $20 $f7

Call_000_0fdf:
    ret                                           ; $0fdf: $c9


Jump_000_0fe0:
    ld hl, $000b                                  ; $0fe0: $21 $0b $00

Call_000_0fe3:
    add hl, bc                                    ; $0fe3: $09
    ld a, [hl+]                                   ; $0fe4: $2a

Jump_000_0fe5:
    ld d, [hl]                                    ; $0fe5: $56
    inc hl                                        ; $0fe6: $23

Jump_000_0fe7:
    add a                                         ; $0fe7: $87

Jump_000_0fe8:
    rl d                                          ; $0fe8: $cb $12
    add a                                         ; $0fea: $87

Jump_000_0feb:
    rl d                                          ; $0feb: $cb $12
    add a                                         ; $0fed: $87

Call_000_0fee:
Jump_000_0fee:
    rl d                                          ; $0fee: $cb $12

Call_000_0ff0:
    ld e, d                                       ; $0ff0: $5a

Jump_000_0ff1:
    ld a, [hl+]                                   ; $0ff1: $2a
    ld h, [hl]                                    ; $0ff2: $66

Call_000_0ff3:
Jump_000_0ff3:
    add a                                         ; $0ff3: $87
    rl h                                          ; $0ff4: $cb $14

Jump_000_0ff6:
    add a                                         ; $0ff6: $87

Call_000_0ff7:
Jump_000_0ff7:
    rl h                                          ; $0ff7: $cb $14

Call_000_0ff9:
    add a                                         ; $0ff9: $87
    rl h                                          ; $0ffa: $cb $14

Jump_000_0ffc:
    ld d, h                                       ; $0ffc: $54
    ld a, [$cdbd]                                 ; $0ffd: $fa $bd $cd

Call_000_1000:
Jump_000_1000:
    ld [$2000], a                                 ; $1000: $ea $00 $20
    ld hl, $0003                                  ; $1003: $21 $03 $00

Call_000_1006:
Jump_000_1006:
    add hl, bc                                    ; $1006: $09

Call_000_1007:
Jump_000_1007:
    ld a, [hl]                                    ; $1007: $7e

Call_000_1008:
    push bc                                       ; $1008: $c5
    inc a                                         ; $1009: $3c

Call_000_100a:
    ld c, a                                       ; $100a: $4f

Call_000_100b:
    ld hl, $cdbe                                  ; $100b: $21 $be $cd

Jump_000_100e:
    ld a, [hl+]                                   ; $100e: $2a

Call_000_100f:
Jump_000_100f:
    ld h, [hl]                                    ; $100f: $66

Call_000_1010:
Jump_000_1010:
    ld l, a                                       ; $1010: $6f

Call_000_1011:
Jump_000_1011:
    ld a, [hl+]                                   ; $1011: $2a

Jump_000_1012:
    sub c                                         ; $1012: $91

Jump_000_1013:
    ld b, a                                       ; $1013: $47

Call_000_1014:
    ld a, c                                       ; $1014: $79
    push de                                       ; $1015: $d5

Call_000_1016:
    call Call_000_3194                            ; $1016: $cd $94 $31

Jump_000_1019:
    ld hl, $cdbe                                  ; $1019: $21 $be $cd
    ld a, [hl+]                                   ; $101c: $2a

Call_000_101d:
    ld h, [hl]                                    ; $101d: $66

Jump_000_101e:
    ld l, a                                       ; $101e: $6f

Call_000_101f:
    add hl, de                                    ; $101f: $19

Call_000_1020:
    pop de                                        ; $1020: $d1

Jump_000_1021:
jr_000_1021:
    ld a, [hl+]                                   ; $1021: $2a
    cp e                                          ; $1022: $bb

Call_000_1023:
    ld a, [hl+]                                   ; $1023: $2a
    jr nz, jr_000_1029                            ; $1024: $20 $03

    cp d                                          ; $1026: $ba
    jr z, jr_000_1032                             ; $1027: $28 $09

Jump_000_1029:
jr_000_1029:
    inc hl                                        ; $1029: $23
    ld a, [hl+]                                   ; $102a: $2a

Call_000_102b:
Jump_000_102b:
    rst $08                                       ; $102b: $cf

Jump_000_102c:
    inc c                                         ; $102c: $0c
    dec b                                         ; $102d: $05

Call_000_102e:
    jr nz, jr_000_1021                            ; $102e: $20 $f1

Call_000_1030:
Jump_000_1030:
    ld c, $ff                                     ; $1030: $0e $ff

jr_000_1032:
    ld a, c                                       ; $1032: $79
    pop bc                                        ; $1033: $c1
    ld hl, $0002                                  ; $1034: $21 $02 $00
    add hl, bc                                    ; $1037: $09

Jump_000_1038:
    ld [hl], $ff                                  ; $1038: $36 $ff

Jump_000_103a:
    inc hl                                        ; $103a: $23
    ld [hl], a                                    ; $103b: $77
    ret                                           ; $103c: $c9


Call_000_103d:
jr_000_103d:
    ld a, [$cdbd]                                 ; $103d: $fa $bd $cd
    ld [$2000], a                                 ; $1040: $ea $00 $20

Call_000_1043:
Jump_000_1043:
    ld hl, $0002                                  ; $1043: $21 $02 $00
    add hl, bc                                    ; $1046: $09
    ld a, [hl+]                                   ; $1047: $2a

Jump_000_1048:
    inc a                                         ; $1048: $3c

Call_000_1049:
    ld e, [hl]                                    ; $1049: $5e
    ld d, $00                                     ; $104a: $16 $00

Call_000_104c:
    sla e                                         ; $104c: $cb $23

Call_000_104e:
    rl d                                          ; $104e: $cb $12
    push af                                       ; $1050: $f5
    ld hl, $cdbe                                  ; $1051: $21 $be $cd

Jump_000_1054:
    ld a, [hl+]                                   ; $1054: $2a
    ld h, [hl]                                    ; $1055: $66

Jump_000_1056:
    ld l, a                                       ; $1056: $6f

Call_000_1057:
Jump_000_1057:
    inc hl                                        ; $1057: $23
    add hl, de                                    ; $1058: $19
    ld a, [hl+]                                   ; $1059: $2a
    ld d, [hl]                                    ; $105a: $56
    ld e, a                                       ; $105b: $5f
    ld hl, $cdbe                                  ; $105c: $21 $be $cd
    ld a, [hl+]                                   ; $105f: $2a

Call_000_1060:
Jump_000_1060:
    ld h, [hl]                                    ; $1060: $66
    ld l, a                                       ; $1061: $6f
    add hl, de                                    ; $1062: $19

Jump_000_1063:
    pop af                                        ; $1063: $f1
    inc hl                                        ; $1064: $23

Call_000_1065:
    inc hl                                        ; $1065: $23

Jump_000_1066:
    inc hl                                        ; $1066: $23
    cp [hl]                                       ; $1067: $be
    ret c                                         ; $1068: $d8

    ld e, $ff                                     ; $1069: $1e $ff

Jump_000_106b:
    dec hl                                        ; $106b: $2b

Call_000_106c:
    ld a, [hl]                                    ; $106c: $7e
    ld hl, $0002                                  ; $106d: $21 $02 $00

Jump_000_1070:
    add hl, bc                                    ; $1070: $09
    ld [hl], e                                    ; $1071: $73
    jr jr_000_103d                                ; $1072: $18 $c9

Jump_000_1074:
    ret                                           ; $1074: $c9


    call Call_000_103d                            ; $1075: $cd $3d $10

Jump_000_1078:
    ldh [$bc], a                                  ; $1078: $e0 $bc
    ldh a, [rSVBK]                                ; $107a: $f0 $70
    push af                                       ; $107c: $f5
    ld a, $03                                     ; $107d: $3e $03

Call_000_107f:
Jump_000_107f:
    ldh [rSVBK], a                                ; $107f: $e0 $70

Call_000_1081:
    ldh a, [$bc]                                  ; $1081: $f0 $bc
    ld e, a                                       ; $1083: $5f
    inc hl                                        ; $1084: $23
    rst $08                                       ; $1085: $cf
    ld hl, $0002                                  ; $1086: $21 $02 $00
    add hl, bc                                    ; $1089: $09
    ld [hl], e                                    ; $108a: $73
    push af                                       ; $108b: $f5

Jump_000_108c:
    ld hl, $000b                                  ; $108c: $21 $0b $00

Call_000_108f:
Jump_000_108f:
    add hl, bc                                    ; $108f: $09
    ld a, [hl+]                                   ; $1090: $2a

Call_000_1091:
    ld e, a                                       ; $1091: $5f
    ld a, [hl+]                                   ; $1092: $2a
    ld d, a                                       ; $1093: $57

Call_000_1094:
Jump_000_1094:
    ld a, [hl+]                                   ; $1094: $2a

Call_000_1095:
    ld h, [hl]                                    ; $1095: $66
    ld l, a                                       ; $1096: $6f
    push bc                                       ; $1097: $c5
    call Call_000_2f9b                            ; $1098: $cd $9b $2f
    call Call_000_2fb0                            ; $109b: $cd $b0 $2f
    pop bc                                        ; $109e: $c1

Jump_000_109f:
    pop af                                        ; $109f: $f1

Call_000_10a0:
    ld [hl], a                                    ; $10a0: $77

Jump_000_10a1:
    ld a, [$4000]                                 ; $10a1: $fa $00 $40
    push af                                       ; $10a4: $f5
    ld a, $01                                     ; $10a5: $3e $01
    ld [$2000], a                                 ; $10a7: $ea $00 $20
    call $711c                                    ; $10aa: $cd $1c $71
    pop af                                        ; $10ad: $f1

Call_000_10ae:
    ld [$2000], a                                 ; $10ae: $ea $00 $20

Call_000_10b1:
    pop af                                        ; $10b1: $f1
    ldh [rSVBK], a                                ; $10b2: $e0 $70
    ret                                           ; $10b4: $c9


Call_000_10b5:
    push de                                       ; $10b5: $d5
    ld a, [$ccf3]                                 ; $10b6: $fa $f3 $cc

Jump_000_10b9:
jr_000_10b9:
    push af                                       ; $10b9: $f5
    push de                                       ; $10ba: $d5
    ld a, [$ccf1]                                 ; $10bb: $fa $f1 $cc

Call_000_10be:
    ld c, a                                       ; $10be: $4f
    call Call_000_114a                            ; $10bf: $cd $4a $11

Call_000_10c2:
    pop de                                        ; $10c2: $d1

Call_000_10c3:
    ld a, e                                       ; $10c3: $7b

Call_000_10c4:
Jump_000_10c4:
    add $20                                       ; $10c4: $c6 $20

Jump_000_10c6:
    ld e, a                                       ; $10c6: $5f
    ld a, d                                       ; $10c7: $7a
    adc $00                                       ; $10c8: $ce $00

Jump_000_10ca:
    ld d, a                                       ; $10ca: $57
    pop af                                        ; $10cb: $f1
    dec a                                         ; $10cc: $3d

Jump_000_10cd:
    jr nz, jr_000_10b9                            ; $10cd: $20 $ea

Jump_000_10cf:
    pop de                                        ; $10cf: $d1

Call_000_10d0:
Jump_000_10d0:
    ldh a, [$ef]                                  ; $10d0: $f0 $ef
    or a                                          ; $10d2: $b7
    ret z                                         ; $10d3: $c8

Jump_000_10d4:
    ld a, $01                                     ; $10d4: $3e $01

Call_000_10d6:
    ldh [rVBK], a                                 ; $10d6: $e0 $4f
    ld a, [$ccf3]                                 ; $10d8: $fa $f3 $cc

Call_000_10db:
jr_000_10db:
    push af                                       ; $10db: $f5
    push de                                       ; $10dc: $d5
    ld a, [$ccf1]                                 ; $10dd: $fa $f1 $cc

Call_000_10e0:
    ld c, a                                       ; $10e0: $4f

Call_000_10e1:
    call Call_000_114a                            ; $10e1: $cd $4a $11
    pop de                                        ; $10e4: $d1
    ld a, e                                       ; $10e5: $7b
    add $20                                       ; $10e6: $c6 $20
    ld e, a                                       ; $10e8: $5f
    ld a, d                                       ; $10e9: $7a

Jump_000_10ea:
    adc $00                                       ; $10ea: $ce $00

Jump_000_10ec:
    ld d, a                                       ; $10ec: $57

Call_000_10ed:
    pop af                                        ; $10ed: $f1
    dec a                                         ; $10ee: $3d

Call_000_10ef:
Jump_000_10ef:
    jr nz, jr_000_10db                            ; $10ef: $20 $ea

    xor a                                         ; $10f1: $af

Jump_000_10f2:
    ldh [rVBK], a                                 ; $10f2: $e0 $4f

Call_000_10f4:
    ret                                           ; $10f4: $c9


Call_000_10f5:
Jump_000_10f5:
    push bc                                       ; $10f5: $c5
    push hl                                       ; $10f6: $e5

Call_000_10f7:
    push de                                       ; $10f7: $d5
    push de                                       ; $10f8: $d5
    ld d, h                                       ; $10f9: $54

Jump_000_10fa:
    ld e, l                                       ; $10fa: $5d

Call_000_10fb:
    pop hl                                        ; $10fb: $e1

Call_000_10fc:
    add hl, bc                                    ; $10fc: $09
    ld de, $9800                                  ; $10fd: $11 $00 $98

Call_000_1100:
Jump_000_1100:
    rst $10                                       ; $1100: $d7

Jump_000_1101:
    jr nc, jr_000_1129                            ; $1101: $30 $26

Call_000_1103:
    call Call_000_3132                            ; $1103: $cd $32 $31
    push de                                       ; $1106: $d5

Jump_000_1107:
    ld d, h                                       ; $1107: $54

Call_000_1108:
    ld e, l                                       ; $1108: $5d
    pop hl                                        ; $1109: $e1

Call_000_110a:
    add hl, bc                                    ; $110a: $09

Call_000_110b:
    ld c, l                                       ; $110b: $4d

Call_000_110c:
Jump_000_110c:
    ld b, h                                       ; $110c: $44

Jump_000_110d:
    pop de                                        ; $110d: $d1

Jump_000_110e:
    pop hl                                        ; $110e: $e1

Call_000_110f:
    push bc                                       ; $110f: $c5

Call_000_1110:
Jump_000_1110:
    call Call_000_1140                            ; $1110: $cd $40 $11
    push af                                       ; $1113: $f5

Jump_000_1114:
    ld a, $01                                     ; $1114: $3e $01
    ldh [rVBK], a                                 ; $1116: $e0 $4f
    pop af                                        ; $1118: $f1

Jump_000_1119:
    pop bc                                        ; $1119: $c1

Jump_000_111a:
    pop de                                        ; $111a: $d1
    push hl                                       ; $111b: $e5

Jump_000_111c:
    ld l, c                                       ; $111c: $69
    ld h, b                                       ; $111d: $60
    call Call_000_3132                            ; $111e: $cd $32 $31
    ld c, e                                       ; $1121: $4b

Jump_000_1122:
    ld b, d                                       ; $1122: $42

Call_000_1123:
    ld de, $8800                                  ; $1123: $11 $00 $88
    pop hl                                        ; $1126: $e1
    jr jr_000_1140                                ; $1127: $18 $17

jr_000_1129:
    pop de                                        ; $1129: $d1
    pop hl                                        ; $112a: $e1

Call_000_112b:
    pop bc                                        ; $112b: $c1
    jr jr_000_1140                                ; $112c: $18 $12

Call_000_112e:
Jump_000_112e:
    xor a                                         ; $112e: $af

Call_000_112f:
Jump_000_112f:
    inc b                                         ; $112f: $04

Call_000_1130:
    dec b                                         ; $1130: $05

Jump_000_1131:
    jr z, jr_000_1137                             ; $1131: $28 $04

    inc c                                         ; $1133: $0c
    dec c                                         ; $1134: $0d

Call_000_1135:
    jr z, jr_000_1138                             ; $1135: $28 $01

jr_000_1137:
    inc b                                         ; $1137: $04

jr_000_1138:
    ld [hl+], a                                   ; $1138: $22

Call_000_1139:
    dec c                                         ; $1139: $0d
    jr nz, jr_000_1138                            ; $113a: $20 $fc

Call_000_113c:
Jump_000_113c:
    dec b                                         ; $113c: $05
    jr nz, jr_000_1138                            ; $113d: $20 $f9

Jump_000_113f:
    ret                                           ; $113f: $c9


Call_000_1140:
jr_000_1140:
    ld a, b                                       ; $1140: $78
    or a                                          ; $1141: $b7

Jump_000_1142:
    jr z, jr_000_114a                             ; $1142: $28 $06

Call_000_1144:
Jump_000_1144:
jr_000_1144:
    call Call_000_11e2                            ; $1144: $cd $e2 $11
    dec b                                         ; $1147: $05
    jr nz, jr_000_1144                            ; $1148: $20 $fa

Call_000_114a:
jr_000_114a:
    ld a, c                                       ; $114a: $79
    and $1f                                       ; $114b: $e6 $1f
    jr z, jr_000_1156                             ; $114d: $28 $07

Call_000_114f:
    ld b, a                                       ; $114f: $47

jr_000_1150:
    ld a, [hl+]                                   ; $1150: $2a
    ld [de], a                                    ; $1151: $12
    inc de                                        ; $1152: $13

Call_000_1153:
    dec b                                         ; $1153: $05

Jump_000_1154:
    jr nz, jr_000_1150                            ; $1154: $20 $fa

jr_000_1156:
    ld a, c                                       ; $1156: $79
    and $e0                                       ; $1157: $e6 $e0

Call_000_1159:
    jr z, jr_000_116f                             ; $1159: $28 $14

    swap a                                        ; $115b: $cb $37
    rra                                           ; $115d: $1f
    ld c, a                                       ; $115e: $4f
    ld a, $08                                     ; $115f: $3e $08
    sub c                                         ; $1161: $91

Jump_000_1162:
    ld c, a                                       ; $1162: $4f

Jump_000_1163:
    add c                                         ; $1163: $81
    add c                                         ; $1164: $81
    ld bc, $11e2                                  ; $1165: $01 $e2 $11

Call_000_1168:
    add c                                         ; $1168: $81
    ld c, a                                       ; $1169: $4f
    ld a, $00                                     ; $116a: $3e $00
    adc b                                         ; $116c: $88
    ld b, a                                       ; $116d: $47
    push bc                                       ; $116e: $c5

jr_000_116f:
    ld bc, $0000                                  ; $116f: $01 $00 $00

Call_000_1172:
    ret                                           ; $1172: $c9


Call_000_1173:
jr_000_1173:
    ld a, b                                       ; $1173: $78

Jump_000_1174:
    or c                                          ; $1174: $b1
    ret z                                         ; $1175: $c8

    ld a, [hl-]                                   ; $1176: $3a

Call_000_1177:
    ld [de], a                                    ; $1177: $12

Jump_000_1178:
    dec de                                        ; $1178: $1b
    dec bc                                        ; $1179: $0b
    jr jr_000_1173                                ; $117a: $18 $f7

Call_000_117c:
    ld c, $00                                     ; $117c: $0e $00
    ld a, $20                                     ; $117e: $3e $20

Call_000_1180:
Jump_000_1180:
    ld [c], a                                     ; $1180: $e2

Jump_000_1181:
    ld a, [c]                                     ; $1181: $f2
    ld a, [c]                                     ; $1182: $f2

Jump_000_1183:
    cpl                                           ; $1183: $2f

Call_000_1184:
Jump_000_1184:
    and $0f                                       ; $1184: $e6 $0f

Call_000_1186:
    swap a                                        ; $1186: $cb $37
    ld b, a                                       ; $1188: $47
    ld a, $10                                     ; $1189: $3e $10
    ld [c], a                                     ; $118b: $e2
    ld a, [c]                                     ; $118c: $f2
    ld a, [c]                                     ; $118d: $f2
    ld a, [c]                                     ; $118e: $f2
    ld a, [c]                                     ; $118f: $f2
    ld a, [c]                                     ; $1190: $f2
    ld a, [c]                                     ; $1191: $f2
    cpl                                           ; $1192: $2f

Call_000_1193:
    and $0f                                       ; $1193: $e6 $0f
    or b                                          ; $1195: $b0

Jump_000_1196:
    ld c, a                                       ; $1196: $4f
    ldh a, [$a4]                                  ; $1197: $f0 $a4
    xor c                                         ; $1199: $a9
    and c                                         ; $119a: $a1
    ldh [$a5], a                                  ; $119b: $e0 $a5

Jump_000_119d:
    ld a, c                                       ; $119d: $79
    ldh [$a4], a                                  ; $119e: $e0 $a4

Call_000_11a0:
    ld a, $30                                     ; $11a0: $3e $30
    ldh [rP1], a                                  ; $11a2: $e0 $00

Jump_000_11a4:
    ldh a, [$a4]                                  ; $11a4: $f0 $a4
    or a                                          ; $11a6: $b7
    jr nz, jr_000_11b2                            ; $11a7: $20 $09

Call_000_11a9:
    ld a, [$c0bc]                                 ; $11a9: $fa $bc $c0
    or a                                          ; $11ac: $b7
    jp nz, Jump_000_311e                          ; $11ad: $c2 $1e $31

Jump_000_11b0:
    ldh a, [$a4]                                  ; $11b0: $f0 $a4

jr_000_11b2:
    and $0f                                       ; $11b2: $e6 $0f

Call_000_11b4:
    cp $0f                                        ; $11b4: $fe $0f
    ret nz                                        ; $11b6: $c0

Jump_000_11b7:
    ld a, $01                                     ; $11b7: $3e $01
    ld [$c0bc], a                                 ; $11b9: $ea $bc $c0
    ret                                           ; $11bc: $c9


    ;; Set the LCD Scroll X/Y coordinates of the visible 160x144 pixel area
    ;;      $ffc8: Scroll X coordinate
    ;;      $ffc9: Scroll Y coordinate
LCDScroll:
    ldh a, [$c8]                                  ; $11bd: $f0 $c8
    ldh [rSCX], a                                 ; $11bf: $e0 $43
    ldh a, [$c9]                                  ; $11c1: $f0 $c9
    ldh [rSCY], a                                 ; $11c3: $e0 $42
    ret                                           ; $11c5: $c9

    ;; NOTE(terin): Pan Docs notes that this is potentially damaging to real
    ;; hardware if it was called outside of VBlank periods. A safer version is
    ;; at LCDOff (in bank 1).
    ;;
    ;; https://gbdev.io/pandocs/LCDC.html#lcdc7---lcd-enable
UnsafeLCDOff:
    ld hl, rLCDC
    res 7, [hl]
    ret

LCDOn:
    ld hl, rLCDC
    set 7, [hl]
    ret

Jump_000_11d2:
    ld c, $00                                     ; $11d2: $0e $00

Call_000_11d4:
    jr jr_000_11d8                                ; $11d4: $18 $02

Call_000_11d6:
    ld c, $01                                     ; $11d6: $0e $01

jr_000_11d8:
    ld l, a                                       ; $11d8: $6f
    ld a, $01                                     ; $11d9: $3e $01

Call_000_11db:
Jump_000_11db:
    ld [$2000], a                                 ; $11db: $ea $00 $20
    ld a, l                                       ; $11de: $7d
    jp $4576                                      ; $11df: $c3 $76 $45


Call_000_11e2:
    call Call_000_11f7                            ; $11e2: $cd $f7 $11

Jump_000_11e5:
    call Call_000_11f7                            ; $11e5: $cd $f7 $11

Call_000_11e8:
    call Call_000_11f7                            ; $11e8: $cd $f7 $11
    call Call_000_11f7                            ; $11eb: $cd $f7 $11

Call_000_11ee:
Jump_000_11ee:
    call Call_000_11f7                            ; $11ee: $cd $f7 $11
    call Call_000_11f7                            ; $11f1: $cd $f7 $11

Call_000_11f4:
    call Call_000_11f7                            ; $11f4: $cd $f7 $11

Call_000_11f7:
Jump_000_11f7:
    ld a, [hl+]                                   ; $11f7: $2a
    ld [de], a                                    ; $11f8: $12

Call_000_11f9:
Jump_000_11f9:
    inc de                                        ; $11f9: $13
    ld a, [hl+]                                   ; $11fa: $2a
    ld [de], a                                    ; $11fb: $12

Call_000_11fc:
    inc de                                        ; $11fc: $13
    ld a, [hl+]                                   ; $11fd: $2a
    ld [de], a                                    ; $11fe: $12

Jump_000_11ff:
    inc de                                        ; $11ff: $13

Call_000_1200:
Jump_000_1200:
    ld a, [hl+]                                   ; $1200: $2a

Jump_000_1201:
    ld [de], a                                    ; $1201: $12
    inc de                                        ; $1202: $13

Call_000_1203:
    ld a, [hl+]                                   ; $1203: $2a

Call_000_1204:
Jump_000_1204:
    ld [de], a                                    ; $1204: $12
    inc de                                        ; $1205: $13

Call_000_1206:
    ld a, [hl+]                                   ; $1206: $2a

Call_000_1207:
    ld [de], a                                    ; $1207: $12

Call_000_1208:
    inc de                                        ; $1208: $13
    ld a, [hl+]                                   ; $1209: $2a
    ld [de], a                                    ; $120a: $12
    inc de                                        ; $120b: $13
    ld a, [hl+]                                   ; $120c: $2a

Call_000_120d:
Jump_000_120d:
    ld [de], a                                    ; $120d: $12
    inc de                                        ; $120e: $13
    ld a, [hl+]                                   ; $120f: $2a
    ld [de], a                                    ; $1210: $12

Jump_000_1211:
    inc de                                        ; $1211: $13

Jump_000_1212:
    ld a, [hl+]                                   ; $1212: $2a
    ld [de], a                                    ; $1213: $12

Jump_000_1214:
    inc de                                        ; $1214: $13

Jump_000_1215:
    ld a, [hl+]                                   ; $1215: $2a
    ld [de], a                                    ; $1216: $12
    inc de                                        ; $1217: $13
    ld a, [hl+]                                   ; $1218: $2a
    ld [de], a                                    ; $1219: $12
    inc de                                        ; $121a: $13
    ld a, [hl+]                                   ; $121b: $2a
    ld [de], a                                    ; $121c: $12

Call_000_121d:
Jump_000_121d:
    inc de                                        ; $121d: $13
    ld a, [hl+]                                   ; $121e: $2a
    ld [de], a                                    ; $121f: $12

Call_000_1220:
    inc de                                        ; $1220: $13
    ld a, [hl+]                                   ; $1221: $2a
    ld [de], a                                    ; $1222: $12
    inc de                                        ; $1223: $13
    ld a, [hl+]                                   ; $1224: $2a

Call_000_1225:
    ld [de], a                                    ; $1225: $12
    inc de                                        ; $1226: $13

Call_000_1227:
Jump_000_1227:
    ld a, [hl+]                                   ; $1227: $2a
    ld [de], a                                    ; $1228: $12
    inc de                                        ; $1229: $13
    ld a, [hl+]                                   ; $122a: $2a
    ld [de], a                                    ; $122b: $12
    inc de                                        ; $122c: $13

Call_000_122d:
    ld a, [hl+]                                   ; $122d: $2a
    ld [de], a                                    ; $122e: $12
    inc de                                        ; $122f: $13

Jump_000_1230:
    ld a, [hl+]                                   ; $1230: $2a
    ld [de], a                                    ; $1231: $12
    inc de                                        ; $1232: $13

Call_000_1233:
    ld a, [hl+]                                   ; $1233: $2a
    ld [de], a                                    ; $1234: $12

Jump_000_1235:
    inc de                                        ; $1235: $13

Call_000_1236:
    ld a, [hl+]                                   ; $1236: $2a
    ld [de], a                                    ; $1237: $12
    inc de                                        ; $1238: $13

Call_000_1239:
    ld a, [hl+]                                   ; $1239: $2a
    ld [de], a                                    ; $123a: $12
    inc de                                        ; $123b: $13

Jump_000_123c:
    ld a, [hl+]                                   ; $123c: $2a
    ld [de], a                                    ; $123d: $12

Call_000_123e:
    inc de                                        ; $123e: $13

Call_000_123f:
Jump_000_123f:
    ld a, [hl+]                                   ; $123f: $2a
    ld [de], a                                    ; $1240: $12
    inc de                                        ; $1241: $13

Call_000_1242:
Jump_000_1242:
    ld a, [hl+]                                   ; $1242: $2a
    ld [de], a                                    ; $1243: $12
    inc de                                        ; $1244: $13

Call_000_1245:
Jump_000_1245:
    ld a, [hl+]                                   ; $1245: $2a
    ld [de], a                                    ; $1246: $12

Call_000_1247:
    inc de                                        ; $1247: $13

Call_000_1248:
Jump_000_1248:
    ld a, [hl+]                                   ; $1248: $2a
    ld [de], a                                    ; $1249: $12
    inc de                                        ; $124a: $13

Call_000_124b:
Jump_000_124b:
    ld a, [hl+]                                   ; $124b: $2a

Call_000_124c:
    ld [de], a                                    ; $124c: $12
    inc de                                        ; $124d: $13

Call_000_124e:
    ld a, [hl+]                                   ; $124e: $2a

Call_000_124f:
    ld [de], a                                    ; $124f: $12
    inc de                                        ; $1250: $13

Call_000_1251:
Jump_000_1251:
    ld a, [hl+]                                   ; $1251: $2a

Jump_000_1252:
    ld [de], a                                    ; $1252: $12
    inc de                                        ; $1253: $13
    ld a, [hl+]                                   ; $1254: $2a
    ld [de], a                                    ; $1255: $12

Jump_000_1256:
    inc de                                        ; $1256: $13
    ret                                           ; $1257: $c9


Call_000_1258:
    ld a, [hl+]                                   ; $1258: $2a
    ld b, [hl]                                    ; $1259: $46

Call_000_125a:
    inc hl                                        ; $125a: $23
    push hl                                       ; $125b: $e5

Call_000_125c:
Jump_000_125c:
    srl b                                         ; $125c: $cb $38
    rra                                           ; $125e: $1f
    srl b                                         ; $125f: $cb $38

Call_000_1261:
    rra                                           ; $1261: $1f
    srl b                                         ; $1262: $cb $38

Jump_000_1264:
    rra                                           ; $1264: $1f
    srl b                                         ; $1265: $cb $38
    rra                                           ; $1267: $1f
    ld c, a                                       ; $1268: $4f
    ld hl, $ffb8                                  ; $1269: $21 $b8 $ff
    ld a, [hl+]                                   ; $126c: $2a

Call_000_126d:
    ld h, [hl]                                    ; $126d: $66
    ld l, a                                       ; $126e: $6f

Call_000_126f:
Jump_000_126f:
    ld e, l                                       ; $126f: $5d
    ld d, h                                       ; $1270: $54
    add hl, bc                                    ; $1271: $09

Call_000_1272:
    ld a, l                                       ; $1272: $7d

Jump_000_1273:
    ldh [$b8], a                                  ; $1273: $e0 $b8
    ld a, h                                       ; $1275: $7c

Jump_000_1276:
    ldh [$b9], a                                  ; $1276: $e0 $b9
    xor a                                         ; $1278: $af
    ld hl, $fe80                                  ; $1279: $21 $80 $fe
    add hl, de                                    ; $127c: $19
    jr nc, jr_000_1282                            ; $127d: $30 $03

Call_000_127f:
    inc a                                         ; $127f: $3c

Jump_000_1280:
    ld e, l                                       ; $1280: $5d
    ld d, h                                       ; $1281: $54

jr_000_1282:
    ld [$c315], a                                 ; $1282: $ea $15 $c3
    call Call_000_3154                            ; $1285: $cd $54 $31
    set 7, d                                      ; $1288: $cb $fa
    pop hl                                        ; $128a: $e1
    ret                                           ; $128b: $c9


Call_000_128c:
    push hl                                       ; $128c: $e5
    ld l, d                                       ; $128d: $6a

Call_000_128e:
    ld h, $00                                     ; $128e: $26 $00
    call Call_000_314a                            ; $1290: $cd $4a $31
    ld a, e                                       ; $1293: $7b
    rst $08                                       ; $1294: $cf
    ld de, $d800                                  ; $1295: $11 $00 $d8

Call_000_1298:
    add hl, de                                    ; $1298: $19
    ld d, h                                       ; $1299: $54
    ld e, l                                       ; $129a: $5d
    pop hl                                        ; $129b: $e1
    ret                                           ; $129c: $c9


Call_000_129d:
Jump_000_129d:
    ld b, $00                                     ; $129d: $06 $00

Jump_000_129f:
    ld a, b                                       ; $129f: $78
    ldh [$f4], a                                  ; $12a0: $e0 $f4
    push de                                       ; $12a2: $d5

Jump_000_12a3:
    call Call_000_12ba                            ; $12a3: $cd $ba $12
    pop de                                        ; $12a6: $d1
    push hl                                       ; $12a7: $e5

Jump_000_12a8:
    ld hl, $0400                                  ; $12a8: $21 $00 $04
    add hl, de                                    ; $12ab: $19
    ld e, l                                       ; $12ac: $5d
    ld d, h                                       ; $12ad: $54
    pop hl                                        ; $12ae: $e1

Call_000_12af:
    ldh a, [$f4]                                  ; $12af: $f0 $f4
    ld c, a                                       ; $12b1: $4f
    call Call_000_12ba                            ; $12b2: $cd $ba $12

Call_000_12b5:
    ld a, $01                                     ; $12b5: $3e $01
    ldh [$a8], a                                  ; $12b7: $e0 $a8
    ret                                           ; $12b9: $c9


Call_000_12ba:
Jump_000_12ba:
    ld a, [$ccf3]                                 ; $12ba: $fa $f3 $cc

Jump_000_12bd:
jr_000_12bd:
    push af                                       ; $12bd: $f5

Call_000_12be:
    push de                                       ; $12be: $d5
    ld a, [$ccf1]                                 ; $12bf: $fa $f1 $cc
    ld b, a                                       ; $12c2: $47

Jump_000_12c3:
jr_000_12c3:
    ld a, [hl+]                                   ; $12c3: $2a
    add c                                         ; $12c4: $81

Call_000_12c5:
    ld [de], a                                    ; $12c5: $12
    inc de                                        ; $12c6: $13
    dec b                                         ; $12c7: $05
    jr nz, jr_000_12c3                            ; $12c8: $20 $f9

Jump_000_12ca:
    pop de                                        ; $12ca: $d1
    ld a, $20                                     ; $12cb: $3e $20
    add e                                         ; $12cd: $83

Call_000_12ce:
    ld e, a                                       ; $12ce: $5f
    ld a, $00                                     ; $12cf: $3e $00

Jump_000_12d1:
    adc d                                         ; $12d1: $8a
    ld d, a                                       ; $12d2: $57

Jump_000_12d3:
    pop af                                        ; $12d3: $f1
    dec a                                         ; $12d4: $3d

Call_000_12d5:
Jump_000_12d5:
    jr nz, jr_000_12bd                            ; $12d5: $20 $e6

    ret                                           ; $12d7: $c9


Call_000_12d8:
Jump_000_12d8:
    ld a, $20                                     ; $12d8: $3e $20
    ld [$ccf1], a                                 ; $12da: $ea $f1 $cc
    ld [$ccf3], a                                 ; $12dd: $ea $f3 $cc
    ld hl, $d800                                  ; $12e0: $21 $00 $d8
    jr jr_000_12e7                                ; $12e3: $18 $02

Jump_000_12e5:
    ld b, $00                                     ; $12e5: $06 $00

Call_000_12e7:
jr_000_12e7:
    ld a, b                                       ; $12e7: $78
    ldh [$f4], a                                  ; $12e8: $e0 $f4
    ldh a, [$f1]                                  ; $12ea: $f0 $f1
    or a                                          ; $12ec: $b7
    jr z, jr_000_12fc                             ; $12ed: $28 $0d

    push de                                       ; $12ef: $d5
    push hl                                       ; $12f0: $e5
    ld l, a                                       ; $12f1: $6f
    ld a, [$ccf1]                                 ; $12f2: $fa $f1 $cc
    ld h, a                                       ; $12f5: $67
    call Call_000_00a5                            ; $12f6: $cd $a5 $00
    pop de                                        ; $12f9: $d1

Call_000_12fa:
Jump_000_12fa:
    add hl, de                                    ; $12fa: $19

Call_000_12fb:
    pop de                                        ; $12fb: $d1

Call_000_12fc:
jr_000_12fc:
    ldh a, [$f0]                                  ; $12fc: $f0 $f0

Call_000_12fe:
Jump_000_12fe:
    rst $08                                       ; $12fe: $cf

Call_000_12ff:
Jump_000_12ff:
    push hl                                       ; $12ff: $e5

Call_000_1300:
Jump_000_1300:
    push de                                       ; $1300: $d5

Call_000_1301:
    call Call_000_1329                            ; $1301: $cd $29 $13

Call_000_1304:
    pop de                                        ; $1304: $d1

Call_000_1305:
    pop hl                                        ; $1305: $e1
    push hl                                       ; $1306: $e5
    ld hl, $0400                                  ; $1307: $21 $00 $04
    add hl, de                                    ; $130a: $19
    ld e, l                                       ; $130b: $5d

Call_000_130c:
Jump_000_130c:
    ld d, h                                       ; $130c: $54
    pop hl                                        ; $130d: $e1
    push de                                       ; $130e: $d5

Call_000_130f:
Jump_000_130f:
    ld d, h                                       ; $130f: $54
    ld e, l                                       ; $1310: $5d
    ld a, [$ccf1]                                 ; $1311: $fa $f1 $cc
    ld h, a                                       ; $1314: $67
    ld a, [$ccf3]                                 ; $1315: $fa $f3 $cc
    ld l, a                                       ; $1318: $6f
    call Call_000_00a5                            ; $1319: $cd $a5 $00
    add hl, de                                    ; $131c: $19

Jump_000_131d:
    pop de                                        ; $131d: $d1
    ldh a, [$f4]                                  ; $131e: $f0 $f4
    ld c, a                                       ; $1320: $4f
    call Call_000_1329                            ; $1321: $cd $29 $13
    ld a, $02                                     ; $1324: $3e $02
    ldh [$a8], a                                  ; $1326: $e0 $a8
    ret                                           ; $1328: $c9


Call_000_1329:
    ldh a, [$f3]                                  ; $1329: $f0 $f3

Jump_000_132b:
jr_000_132b:
    push af                                       ; $132b: $f5

Call_000_132c:
    push de                                       ; $132c: $d5
    push hl                                       ; $132d: $e5
    ldh a, [$f2]                                  ; $132e: $f0 $f2
    ld b, a                                       ; $1330: $47

jr_000_1331:
    ld a, [hl+]                                   ; $1331: $2a

Call_000_1332:
    add c                                         ; $1332: $81
    ld [de], a                                    ; $1333: $12
    inc de                                        ; $1334: $13
    dec b                                         ; $1335: $05
    jr nz, jr_000_1331                            ; $1336: $20 $f9

    ld hl, $ccf1                                  ; $1338: $21 $f1 $cc
    ld e, [hl]                                    ; $133b: $5e
    inc hl                                        ; $133c: $23
    ld d, [hl]                                    ; $133d: $56
    pop hl                                        ; $133e: $e1
    add hl, de                                    ; $133f: $19
    pop de                                        ; $1340: $d1
    ld a, $20                                     ; $1341: $3e $20
    add e                                         ; $1343: $83

Jump_000_1344:
    ld e, a                                       ; $1344: $5f
    ld a, $00                                     ; $1345: $3e $00
    adc d                                         ; $1347: $8a

Jump_000_1348:
    ld d, a                                       ; $1348: $57
    pop af                                        ; $1349: $f1

Jump_000_134a:
    dec a                                         ; $134a: $3d

Jump_000_134b:
    jr nz, jr_000_132b                            ; $134b: $20 $de

    ret                                           ; $134d: $c9


Call_000_134e:
Jump_000_134e:
    ld a, $20                                     ; $134e: $3e $20

Call_000_1350:
    ld [$ccf1], a                                 ; $1350: $ea $f1 $cc
    ld [$ccf3], a                                 ; $1353: $ea $f3 $cc

Jump_000_1356:
    ld hl, $d800                                  ; $1356: $21 $00 $d8

Call_000_1359:
    push bc                                       ; $1359: $c5
    ld a, l                                       ; $135a: $7d
    ldh [$b3], a                                  ; $135b: $e0 $b3
    ld a, h                                       ; $135d: $7c

Jump_000_135e:
    ldh [$b4], a                                  ; $135e: $e0 $b4
    ld h, d                                       ; $1360: $62
    ld l, e                                       ; $1361: $6b
    ld a, [hl+]                                   ; $1362: $2a

Jump_000_1363:
    push af                                       ; $1363: $f5
    ld a, [hl+]                                   ; $1364: $2a

Call_000_1365:
    ld b, a                                       ; $1365: $47
    ld a, [hl+]                                   ; $1366: $2a
    ld c, a                                       ; $1367: $4f

Jump_000_1368:
    pop af                                        ; $1368: $f1

Jump_000_1369:
jr_000_1369:
    push af                                       ; $1369: $f5

Call_000_136a:
    push bc                                       ; $136a: $c5

Call_000_136b:
    ld a, [hl+]                                   ; $136b: $2a

Call_000_136c:
Jump_000_136c:
    ldh [$f0], a                                  ; $136c: $e0 $f0
    ld a, [hl+]                                   ; $136e: $2a
    ldh [$f1], a                                  ; $136f: $e0 $f1

Jump_000_1371:
    ld a, [hl+]                                   ; $1371: $2a
    ldh [$f2], a                                  ; $1372: $e0 $f2
    ld a, [hl+]                                   ; $1374: $2a
    ldh [$f3], a                                  ; $1375: $e0 $f3
    ld a, [hl+]                                   ; $1377: $2a

Jump_000_1378:
    ld e, a                                       ; $1378: $5f
    ld a, [hl+]                                   ; $1379: $2a
    ld d, a                                       ; $137a: $57
    call Call_000_128c                            ; $137b: $cd $8c $12
    push hl                                       ; $137e: $e5
    ld hl, $ffb3                                  ; $137f: $21 $b3 $ff
    ld a, [hl+]                                   ; $1382: $2a
    ld h, [hl]                                    ; $1383: $66

Jump_000_1384:
    ld l, a                                       ; $1384: $6f
    call Call_000_12e7                            ; $1385: $cd $e7 $12
    pop hl                                        ; $1388: $e1
    pop bc                                        ; $1389: $c1

Jump_000_138a:
    pop af                                        ; $138a: $f1
    dec a                                         ; $138b: $3d
    jr nz, jr_000_1369                            ; $138c: $20 $db

Call_000_138e:
    pop bc                                        ; $138e: $c1
    ret                                           ; $138f: $c9


Call_000_1390:
    ld a, b                                       ; $1390: $78

Call_000_1391:
    cpl                                           ; $1391: $2f
    ld b, a                                       ; $1392: $47

Call_000_1393:
Jump_000_1393:
    ld a, d                                       ; $1393: $7a

Jump_000_1394:
jr_000_1394:
    push hl                                       ; $1394: $e5
    push de                                       ; $1395: $d5
    push de                                       ; $1396: $d5
    dec a                                         ; $1397: $3d

Call_000_1398:
    ld e, a                                       ; $1398: $5f
    ld d, $00                                     ; $1399: $16 $00
    call Call_000_3150                            ; $139b: $cd $50 $31

Call_000_139e:
    add hl, de                                    ; $139e: $19
    pop de                                        ; $139f: $d1

Jump_000_13a0:
jr_000_13a0:
    ld a, [hl]                                    ; $13a0: $7e

Call_000_13a1:
    and b                                         ; $13a1: $a0
    or c                                          ; $13a2: $b1
    ld [hl+], a                                   ; $13a3: $22

Jump_000_13a4:
    dec e                                         ; $13a4: $1d
    xor a                                         ; $13a5: $af
    cp e                                          ; $13a6: $bb
    jr nz, jr_000_13a0                            ; $13a7: $20 $f7

Call_000_13a9:
    dec d                                         ; $13a9: $15

Jump_000_13aa:
    ld a, d                                       ; $13aa: $7a
    pop de                                        ; $13ab: $d1

Jump_000_13ac:
    pop hl                                        ; $13ac: $e1
    or a                                          ; $13ad: $b7

Jump_000_13ae:
    jr z, jr_000_13b3                             ; $13ae: $28 $03

Jump_000_13b0:
    ld d, a                                       ; $13b0: $57
    jr jr_000_1394                                ; $13b1: $18 $e1

Call_000_13b3:
jr_000_13b3:
    ld a, $02                                     ; $13b3: $3e $02
    ldh [$a8], a                                  ; $13b5: $e0 $a8
    ret                                           ; $13b7: $c9


Jump_000_13b8:
    call Call_000_13c2                            ; $13b8: $cd $c2 $13
    ld a, $02                                     ; $13bb: $3e $02
    ldh [$a8], a                                  ; $13bd: $e0 $a8
    ret                                           ; $13bf: $c9


    ld c, $00                                     ; $13c0: $0e $00

Call_000_13c2:
Jump_000_13c2:
    ld b, $ff                                     ; $13c2: $06 $ff

Call_000_13c4:
Jump_000_13c4:
    push hl                                       ; $13c4: $e5
    push de                                       ; $13c5: $d5
    ld de, $d800                                  ; $13c6: $11 $00 $d8

Call_000_13c9:
    add hl, de                                    ; $13c9: $19
    pop de                                        ; $13ca: $d1

Jump_000_13cb:
    call Call_000_13da                            ; $13cb: $cd $da $13
    ld a, $ff                                     ; $13ce: $3e $ff
    cp b                                          ; $13d0: $b8

Jump_000_13d1:
    pop hl                                        ; $13d1: $e1

Call_000_13d2:
    ret z                                         ; $13d2: $c8

    push de                                       ; $13d3: $d5

Call_000_13d4:
    ld de, $dc00                                  ; $13d4: $11 $00 $dc
    add hl, de                                    ; $13d7: $19

Call_000_13d8:
Jump_000_13d8:
    pop de                                        ; $13d8: $d1
    ld c, b                                       ; $13d9: $48

Call_000_13da:
    ldh a, [rSVBK]                                ; $13da: $f0 $70

Call_000_13dc:
    push af                                       ; $13dc: $f5
    ld a, $01                                     ; $13dd: $3e $01

Jump_000_13df:
    ldh [rSVBK], a                                ; $13df: $e0 $70
    push bc                                       ; $13e1: $c5
    push de                                       ; $13e2: $d5

Call_000_13e3:
    push hl                                       ; $13e3: $e5

Call_000_13e4:
jr_000_13e4:
    push bc                                       ; $13e4: $c5
    push de                                       ; $13e5: $d5
    push hl                                       ; $13e6: $e5
    ld a, c                                       ; $13e7: $79
    ld c, e                                       ; $13e8: $4b
    ld b, $00                                     ; $13e9: $06 $00

Call_000_13eb:
    call Call_000_112f                            ; $13eb: $cd $2f $11
    pop hl                                        ; $13ee: $e1
    pop de                                        ; $13ef: $d1

Call_000_13f0:
    ld bc, $0020                                  ; $13f0: $01 $20 $00
    add hl, bc                                    ; $13f3: $09
    pop bc                                        ; $13f4: $c1
    dec d                                         ; $13f5: $15
    jr nz, jr_000_13e4                            ; $13f6: $20 $ec

    pop hl                                        ; $13f8: $e1
    pop de                                        ; $13f9: $d1

Call_000_13fa:
Jump_000_13fa:
    pop bc                                        ; $13fa: $c1
    pop af                                        ; $13fb: $f1
    ldh [rSVBK], a                                ; $13fc: $e0 $70

Call_000_13fe:
    ret                                           ; $13fe: $c9


Call_000_13ff:
    ld c, a                                       ; $13ff: $4f

Call_000_1400:
Jump_000_1400:
    ld b, $00                                     ; $1400: $06 $00

Call_000_1402:
Jump_000_1402:
    push hl                                       ; $1402: $e5

Call_000_1403:
    ld h, b                                       ; $1403: $60

Call_000_1404:
    ld l, b                                       ; $1404: $68
    add hl, bc                                    ; $1405: $09

Jump_000_1406:
    add hl, bc                                    ; $1406: $09
    add hl, bc                                    ; $1407: $09

Call_000_1408:
    ld c, l                                       ; $1408: $4d

Call_000_1409:
Jump_000_1409:
    ld b, h                                       ; $1409: $44

Jump_000_140a:
    pop hl                                        ; $140a: $e1

Jump_000_140b:
    ret                                           ; $140b: $c9


    ld hl, $caf4                                  ; $140c: $21 $f4 $ca

Jump_000_140f:
    xor a                                         ; $140f: $af
    ld [hl+], a                                   ; $1410: $22
    ld [hl+], a                                   ; $1411: $22
    ld [hl+], a                                   ; $1412: $22

Call_000_1413:
Jump_000_1413:
    ld [hl], a                                    ; $1413: $77

Call_000_1414:
    ld a, $03                                     ; $1414: $3e $03

Jump_000_1416:
    ld [$2000], a                                 ; $1416: $ea $00 $20

Jump_000_1419:
    call $7d13                                    ; $1419: $cd $13 $7d
    ld a, [$c0bb]                                 ; $141c: $fa $bb $c0
    cp $02                                        ; $141f: $fe $02
    jr nz, jr_000_1429                            ; $1421: $20 $06

    ld d, $00                                     ; $1423: $16 $00
    ld e, $01                                     ; $1425: $1e $01
    jr jr_000_1434                                ; $1427: $18 $0b

Jump_000_1429:
jr_000_1429:
    ld d, $01                                     ; $1429: $16 $01
    ld e, $01                                     ; $142b: $1e $01

Jump_000_142d:
    ldh a, [$cc]                                  ; $142d: $f0 $cc
    cp $0e                                        ; $142f: $fe $0e
    jr nz, jr_000_1434                            ; $1431: $20 $01

    dec e                                         ; $1433: $1d

jr_000_1434:
    call Call_000_2899                            ; $1434: $cd $99 $28
    ld a, $03                                     ; $1437: $3e $03
    ld [$2000], a                                 ; $1439: $ea $00 $20

Jump_000_143c:
    ld hl, $79d7                                  ; $143c: $21 $d7 $79
    call $7c6d                                    ; $143f: $cd $6d $7c
    call Call_000_1850                            ; $1442: $cd $50 $18
    call $6f35                                    ; $1445: $cd $35 $6f

Call_000_1448:
    call Call_000_174e                            ; $1448: $cd $4e $17
    ld a, $01                                     ; $144b: $3e $01

Call_000_144d:
    ld [$2000], a                                 ; $144d: $ea $00 $20

Call_000_1450:
Jump_000_1450:
    call $62c1                                    ; $1450: $cd $c1 $62
    ld hl, $cced                                  ; $1453: $21 $ed $cc
    ld c, [hl]                                    ; $1456: $4e

Call_000_1457:
    inc hl                                        ; $1457: $23

Jump_000_1458:
    ld b, [hl]                                    ; $1458: $46
    ld hl, $4613                                  ; $1459: $21 $13 $46
    call Call_000_32be                            ; $145c: $cd $be $32

Jump_000_145f:
    ld [$cce7], a                                 ; $145f: $ea $e7 $cc

Jump_000_1462:
    ld de, $cd3a                                  ; $1462: $11 $3a $cd

Call_000_1465:
    call Call_000_124b                            ; $1465: $cd $4b $12
    ld a, $01                                     ; $1468: $3e $01
    ld [$2000], a                                 ; $146a: $ea $00 $20
    call $618a                                    ; $146d: $cd $8a $61
    ld de, $cce8                                  ; $1470: $11 $e8 $cc
    call Call_000_1251                            ; $1473: $cd $51 $12
    ld a, l                                       ; $1476: $7d
    ld [$ccea], a                                 ; $1477: $ea $ea $cc
    ld a, h                                       ; $147a: $7c
    ld [$cceb], a                                 ; $147b: $ea $eb $cc
    ld hl, $cd3a                                  ; $147e: $21 $3a $cd

Jump_000_1481:
    ld e, [hl]                                    ; $1481: $5e
    inc hl                                        ; $1482: $23
    ld d, [hl]                                    ; $1483: $56
    ld hl, $cd3c                                  ; $1484: $21 $3c $cd
    ld a, [hl+]                                   ; $1487: $2a
    ld h, [hl]                                    ; $1488: $66
    ld l, a                                       ; $1489: $6f
    call Call_000_00dc                            ; $148a: $cd $dc $00
    ld a, l                                       ; $148d: $7d

Jump_000_148e:
    ld [$cd3e], a                                 ; $148e: $ea $3e $cd
    ld a, h                                       ; $1491: $7c
    ld [$cd3f], a                                 ; $1492: $ea $3f $cd
    ld hl, $cced                                  ; $1495: $21 $ed $cc
    ld c, [hl]                                    ; $1498: $4e

Call_000_1499:
    inc hl                                        ; $1499: $23
    ld b, [hl]                                    ; $149a: $46
    ld hl, $4ab7                                  ; $149b: $21 $b7 $4a

Call_000_149e:
    call Call_000_32be                            ; $149e: $cd $be $32

Jump_000_14a1:
    ld [$c26e], a                                 ; $14a1: $ea $6e $c2
    ld a, l                                       ; $14a4: $7d
    ld [$c26f], a                                 ; $14a5: $ea $6f $c2
    ld a, h                                       ; $14a8: $7c
    ld [$c270], a                                 ; $14a9: $ea $70 $c2

Call_000_14ac:
    ld hl, $cced                                  ; $14ac: $21 $ed $cc
    ld c, [hl]                                    ; $14af: $4e
    inc hl                                        ; $14b0: $23

Jump_000_14b1:
    ld b, [hl]                                    ; $14b1: $46
    ld hl, $4865                                  ; $14b2: $21 $65 $48

Jump_000_14b5:
    call Call_000_32be                            ; $14b5: $cd $be $32
    ld a, [$cce4]                                 ; $14b8: $fa $e4 $cc
    ld e, a                                       ; $14bb: $5f

Jump_000_14bc:
    ld a, [$cce5]                                 ; $14bc: $fa $e5 $cc

Jump_000_14bf:
    ld d, a                                       ; $14bf: $57
    inc hl                                        ; $14c0: $23
    inc hl                                        ; $14c1: $23
    ld a, $03                                     ; $14c2: $3e $03
    call Call_000_25bd                            ; $14c4: $cd $bd $25
    xor a                                         ; $14c7: $af

Call_000_14c8:
Jump_000_14c8:
    ldh [rVBK], a                                 ; $14c8: $e0 $4f
    ld hl, $cced                                  ; $14ca: $21 $ed $cc
    ld c, [hl]                                    ; $14cd: $4e
    inc hl                                        ; $14ce: $23
    ld b, [hl]                                    ; $14cf: $46
    ld hl, $4be0                                  ; $14d0: $21 $e0 $4b
    call Call_000_32be                            ; $14d3: $cd $be $32

Call_000_14d6:
    ld [$cdbd], a                                 ; $14d6: $ea $bd $cd
    ld a, l                                       ; $14d9: $7d
    ld [$cdbe], a                                 ; $14da: $ea $be $cd

Call_000_14dd:
    ld a, h                                       ; $14dd: $7c
    ld [$cdbf], a                                 ; $14de: $ea $bf $cd
    ldh a, [rSVBK]                                ; $14e1: $f0 $70
    push af                                       ; $14e3: $f5

Call_000_14e4:
    ld a, $02                                     ; $14e4: $3e $02
    ldh [rSVBK], a                                ; $14e6: $e0 $70

Call_000_14e8:
Jump_000_14e8:
    ld hl, $cced                                  ; $14e8: $21 $ed $cc

Call_000_14eb:
Jump_000_14eb:
    ld c, [hl]                                    ; $14eb: $4e

Jump_000_14ec:
    inc hl                                        ; $14ec: $23
    ld b, [hl]                                    ; $14ed: $46
    ld hl, $498e                                  ; $14ee: $21 $8e $49

Jump_000_14f1:
    call Call_000_32be                            ; $14f1: $cd $be $32
    ld de, $d000                                  ; $14f4: $11 $00 $d0
    call Call_000_11f4                            ; $14f7: $cd $f4 $11
    pop af                                        ; $14fa: $f1
    ldh [rSVBK], a                                ; $14fb: $e0 $70

Call_000_14fd:
Jump_000_14fd:
    ldh a, [$da]                                  ; $14fd: $f0 $da

Call_000_14ff:
Jump_000_14ff:
    push af                                       ; $14ff: $f5

Call_000_1500:
Jump_000_1500:
    cp $45                                        ; $1500: $fe $45

Call_000_1502:
    jr nz, jr_000_151f                            ; $1502: $20 $1b

    ldh a, [rSVBK]                                ; $1504: $f0 $70

Call_000_1506:
    push af                                       ; $1506: $f5

Jump_000_1507:
    ld a, $06                                     ; $1507: $3e $06

Call_000_1509:
    ldh [rSVBK], a                                ; $1509: $e0 $70

Call_000_150b:
    ld a, [$d6d4]                                 ; $150b: $fa $d4 $d6
    ldh [$bc], a                                  ; $150e: $e0 $bc
    pop af                                        ; $1510: $f1

Jump_000_1511:
    ldh [rSVBK], a                                ; $1511: $e0 $70
    ldh a, [$bc]                                  ; $1513: $f0 $bc

Call_000_1515:
Jump_000_1515:
    cp $02                                        ; $1515: $fe $02
    jr z, jr_000_153c                             ; $1517: $28 $23

    pop af                                        ; $1519: $f1
    ld a, $2c                                     ; $151a: $3e $2c
    push af                                       ; $151c: $f5

Call_000_151d:
Jump_000_151d:
    jr jr_000_153c                                ; $151d: $18 $1d

jr_000_151f:
    cp $35                                        ; $151f: $fe $35

Jump_000_1521:
    jr nz, jr_000_153c                            ; $1521: $20 $19

    ldh a, [rSVBK]                                ; $1523: $f0 $70
    push af                                       ; $1525: $f5
    ld a, $06                                     ; $1526: $3e $06
    ldh [rSVBK], a                                ; $1528: $e0 $70

Call_000_152a:
Jump_000_152a:
    ld a, [$d6d4]                                 ; $152a: $fa $d4 $d6

Jump_000_152d:
    ldh [$bc], a                                  ; $152d: $e0 $bc
    pop af                                        ; $152f: $f1
    ldh [rSVBK], a                                ; $1530: $e0 $70
    ldh a, [$bc]                                  ; $1532: $f0 $bc

Jump_000_1534:
    cp $03                                        ; $1534: $fe $03
    jr nz, jr_000_153c                            ; $1536: $20 $04

    pop af                                        ; $1538: $f1
    ld a, $63                                     ; $1539: $3e $63

Call_000_153b:
    push af                                       ; $153b: $f5

Jump_000_153c:
jr_000_153c:
    pop af                                        ; $153c: $f1
    add $11                                       ; $153d: $c6 $11
    call Call_000_250f                            ; $153f: $cd $0f $25

Jump_000_1542:
    ld a, [$c0bb]                                 ; $1542: $fa $bb $c0
    cp $02                                        ; $1545: $fe $02

Jump_000_1547:
    jr z, jr_000_1550                             ; $1547: $28 $07

    ld a, [$c0bb]                                 ; $1549: $fa $bb $c0
    or a                                          ; $154c: $b7

Call_000_154d:
    jp nz, Jump_000_15d6                          ; $154d: $c2 $d6 $15

jr_000_1550:
    ld hl, $cced                                  ; $1550: $21 $ed $cc

Call_000_1553:
    ld c, [hl]                                    ; $1553: $4e

Call_000_1554:
    inc hl                                        ; $1554: $23

Call_000_1555:
    ld b, [hl]                                    ; $1555: $46

Jump_000_1556:
    ld hl, $4e2c                                  ; $1556: $21 $2c $4e
    call Call_000_32be                            ; $1559: $cd $be $32
    inc hl                                        ; $155c: $23
    inc hl                                        ; $155d: $23
    ldh a, [rSVBK]                                ; $155e: $f0 $70
    push af                                       ; $1560: $f5
    ld a, $05                                     ; $1561: $3e $05
    ldh [rSVBK], a                                ; $1563: $e0 $70

Call_000_1565:
    ld a, [$cd3e]                                 ; $1565: $fa $3e $cd
    ld c, a                                       ; $1568: $4f
    ld a, [$cd3f]                                 ; $1569: $fa $3f $cd
    ld b, a                                       ; $156c: $47
    ld de, $d000                                  ; $156d: $11 $00 $d0

Call_000_1570:
Jump_000_1570:
    call Call_000_1140                            ; $1570: $cd $40 $11
    pop af                                        ; $1573: $f1
    ldh [rSVBK], a                                ; $1574: $e0 $70

Call_000_1576:
Jump_000_1576:
    ld a, $01                                     ; $1576: $3e $01

Jump_000_1578:
    ld [$c26a], a                                 ; $1578: $ea $6a $c2
    ld a, $04                                     ; $157b: $3e $04
    ld [$c26b], a                                 ; $157d: $ea $6b $c2
    ld hl, $cced                                  ; $1580: $21 $ed $cc
    ld c, [hl]                                    ; $1583: $4e
    inc hl                                        ; $1584: $23

Call_000_1585:
Jump_000_1585:
    ld b, [hl]                                    ; $1585: $46

Jump_000_1586:
    ld de, $d000                                  ; $1586: $11 $00 $d0
    ld hl, $4d03                                  ; $1589: $21 $03 $4d
    call Call_000_32be                            ; $158c: $cd $be $32
    ld a, $05                                     ; $158f: $3e $05

Call_000_1591:
    call Call_000_25bd                            ; $1591: $cd $bd $25
    ld a, $03                                     ; $1594: $3e $03

Jump_000_1596:
    ldh [rSVBK], a                                ; $1596: $e0 $70
    ld bc, $0700                                  ; $1598: $01 $00 $07

Jump_000_159b:
    ld hl, $d000                                  ; $159b: $21 $00 $d0
    call Call_000_112e                            ; $159e: $cd $2e $11
    ld a, $01                                     ; $15a1: $3e $01
    ldh [rSVBK], a                                ; $15a3: $e0 $70

Call_000_15a5:
    ld hl, $cced                                  ; $15a5: $21 $ed $cc
    ld c, [hl]                                    ; $15a8: $4e
    inc hl                                        ; $15a9: $23
    ld b, [hl]                                    ; $15aa: $46
    ld hl, $473c                                  ; $15ab: $21 $3c $47
    call Call_000_32be                            ; $15ae: $cd $be $32

Call_000_15b1:
    xor a                                         ; $15b1: $af
    call Call_000_25bd                            ; $15b2: $cd $bd $25
    ld hl, $cd3e                                  ; $15b5: $21 $3e $cd
    ld a, [hl+]                                   ; $15b8: $2a

Jump_000_15b9:
    ld h, [hl]                                    ; $15b9: $66

Call_000_15ba:
Jump_000_15ba:
    ld l, a                                       ; $15ba: $6f
    add hl, hl                                    ; $15bb: $29
    ld b, h                                       ; $15bc: $44
    ld c, l                                       ; $15bd: $4d
    ld a, $01                                     ; $15be: $3e $01

Jump_000_15c0:
    ld [$c26a], a                                 ; $15c0: $ea $6a $c2

Jump_000_15c3:
    ld a, $03                                     ; $15c3: $3e $03
    ld [$c26b], a                                 ; $15c5: $ea $6b $c2
    ld a, $03                                     ; $15c8: $3e $03

Call_000_15ca:
Jump_000_15ca:
    ld [$2000], a                                 ; $15ca: $ea $00 $20
    ld hl, $d000                                  ; $15cd: $21 $00 $d0

Jump_000_15d0:
    ld de, $d000                                  ; $15d0: $11 $00 $d0

Jump_000_15d3:
    call $78bb                                    ; $15d3: $cd $bb $78

Jump_000_15d6:
    xor a                                         ; $15d6: $af
    ldh [$9b], a                                  ; $15d7: $e0 $9b

Jump_000_15d9:
    ld a, [$c0bb]                                 ; $15d9: $fa $bb $c0

Call_000_15dc:
    cp $02                                        ; $15dc: $fe $02
    jr z, jr_000_15e9                             ; $15de: $28 $09

Call_000_15e0:
Jump_000_15e0:
    ld a, [$c0bb]                                 ; $15e0: $fa $bb $c0
    or a                                          ; $15e3: $b7
    jp nz, Jump_000_160d                          ; $15e4: $c2 $0d $16

Call_000_15e7:
    jr jr_000_15ff                                ; $15e7: $18 $16

jr_000_15e9:
    ld hl, $cbee                                  ; $15e9: $21 $ee $cb

Call_000_15ec:
    ld de, $ff9c                                  ; $15ec: $11 $9c $ff
    call Call_000_124b                            ; $15ef: $cd $4b $12
    call Call_000_0499                            ; $15f2: $cd $99 $04
    ld a, $03                                     ; $15f5: $3e $03
    ld [$2000], a                                 ; $15f7: $ea $00 $20

Jump_000_15fa:
    call $71cf                                    ; $15fa: $cd $cf $71
    jr jr_000_1605                                ; $15fd: $18 $06

Call_000_15ff:
jr_000_15ff:
    call Call_000_0499                            ; $15ff: $cd $99 $04
    call Call_000_1760                            ; $1602: $cd $60 $17

Call_000_1605:
Jump_000_1605:
jr_000_1605:
    ld a, $03                                     ; $1605: $3e $03
    ld [$2000], a                                 ; $1607: $ea $00 $20

Call_000_160a:
    call $7e05                                    ; $160a: $cd $05 $7e

Jump_000_160d:
    ld hl, $c272                                  ; $160d: $21 $72 $c2

Jump_000_1610:
    ld de, $ff90                                  ; $1610: $11 $90 $ff
    call Call_000_124b                            ; $1613: $cd $4b $12

Jump_000_1616:
    ld a, $04                                     ; $1616: $3e $04
    ld [$2000], a                                 ; $1618: $ea $00 $20
    call $401d                                    ; $161b: $cd $1d $40

Jump_000_161e:
    ld a, $01                                     ; $161e: $3e $01

Jump_000_1620:
    ld [$2000], a                                 ; $1620: $ea $00 $20
    call $7103                                    ; $1623: $cd $03 $71
    call $71d8                                    ; $1626: $cd $d8 $71
    call Call_000_06bb                            ; $1629: $cd $bb $06
    ld a, $01                                     ; $162c: $3e $01

Jump_000_162e:
    ld [$cdb6], a                                 ; $162e: $ea $b6 $cd
    ld a, $01                                     ; $1631: $3e $01
    ld [$2000], a                                 ; $1633: $ea $00 $20
    ldh a, [$da]                                  ; $1636: $f0 $da
    ld hl, $61c9                                  ; $1638: $21 $c9 $61

Call_000_163b:
    call Call_000_319d                            ; $163b: $cd $9d $31
    call Call_000_06ed                            ; $163e: $cd $ed $06
    ld hl, $60c4                                  ; $1641: $21 $c4 $60
    ldh a, [$da]                                  ; $1644: $f0 $da
    call Call_000_319d                            ; $1646: $cd $9d $31
    ld a, $01                                     ; $1649: $3e $01

Jump_000_164b:
    ld [$2000], a                                 ; $164b: $ea $00 $20

Jump_000_164e:
    call $5b8f                                    ; $164e: $cd $8f $5b

Call_000_1651:
    ld a, [$c0bb]                                 ; $1651: $fa $bb $c0
    cp $02                                        ; $1654: $fe $02

Jump_000_1656:
    jr z, jr_000_165e                             ; $1656: $28 $06

    ld a, [$c0bb]                                 ; $1658: $fa $bb $c0
    or a                                          ; $165b: $b7
    jr nz, jr_000_1695                            ; $165c: $20 $37

Call_000_165e:
jr_000_165e:
    ldh a, [rSVBK]                                ; $165e: $f0 $70
    push af                                       ; $1660: $f5
    ld a, $06                                     ; $1661: $3e $06
    ldh [rSVBK], a                                ; $1663: $e0 $70
    ld a, [$d6d1]                                 ; $1665: $fa $d1 $d6
    ld d, a                                       ; $1668: $57

Call_000_1669:
Jump_000_1669:
    pop af                                        ; $1669: $f1
    ldh [rSVBK], a                                ; $166a: $e0 $70
    ld a, [$c0bb]                                 ; $166c: $fa $bb $c0
    cp $02                                        ; $166f: $fe $02
    jr nz, jr_000_167b                            ; $1671: $20 $08

    ld a, [$cbf2]                                 ; $1673: $fa $f2 $cb

Call_000_1676:
Jump_000_1676:
    ld [$cae1], a                                 ; $1676: $ea $e1 $ca

Call_000_1679:
    jr jr_000_1688                                ; $1679: $18 $0d

Jump_000_167b:
jr_000_167b:
    ld a, $01                                     ; $167b: $3e $01

Jump_000_167d:
    ld [$2000], a                                 ; $167d: $ea $00 $20

Call_000_1680:
    ldh a, [$d9]                                  ; $1680: $f0 $d9
    call $5a85                                    ; $1682: $cd $85 $5a
    ld [$cae1], a                                 ; $1685: $ea $e1 $ca

jr_000_1688:
    xor a                                         ; $1688: $af
    ldh [$9b], a                                  ; $1689: $e0 $9b
    ld a, $01                                     ; $168b: $3e $01

Jump_000_168d:
    call Call_000_03a0                            ; $168d: $cd $a0 $03
    ld a, $1e                                     ; $1690: $3e $1e
    ld [$cbf5], a                                 ; $1692: $ea $f5 $cb

jr_000_1695:
    ld a, $01                                     ; $1695: $3e $01

Call_000_1697:
    ld [$c0bb], a                                 ; $1697: $ea $bb $c0
    ldh a, [$da]                                  ; $169a: $f0 $da
    ldh [$d8], a                                  ; $169c: $e0 $d8
    ld a, $01                                     ; $169e: $3e $01
    ld [$2000], a                                 ; $16a0: $ea $00 $20
    call $461c                                    ; $16a3: $cd $1c $46

Call_000_16a6:
    ld de, $01c9                                  ; $16a6: $11 $c9 $01
    call Call_000_0512                            ; $16a9: $cd $12 $05
    ld a, $03                                     ; $16ac: $3e $03
    ld [$2000], a                                 ; $16ae: $ea $00 $20
    call $43d5                                    ; $16b1: $cd $d5 $43
    call Call_000_01d1                            ; $16b4: $cd $d1 $01
    call LCDScroll                                ; $16b7: $cd $bd $11
    ld a, $01                                     ; $16ba: $3e $01
    ld [$2000], a                                 ; $16bc: $ea $00 $20
    call $7128                                    ; $16bf: $cd $28 $71
    call Call_000_37be                            ; $16c2: $cd $be $37

Call_000_16c5:
    ld a, $e7                                     ; $16c5: $3e $e7
    ldh [rLCDC], a                                ; $16c7: $e0 $40
    ld a, $87                                     ; $16c9: $3e $87

Jump_000_16cb:
    ldh [rWX], a                                  ; $16cb: $e0 $4b
    ld a, $91                                     ; $16cd: $3e $91

Jump_000_16cf:
    ldh [rWY], a                                  ; $16cf: $e0 $4a

Jump_000_16d1:
    ld a, [$cb17]                                 ; $16d1: $fa $17 $cb

Call_000_16d4:
    cp $0a                                        ; $16d4: $fe $0a
    jr nz, jr_000_16ec                            ; $16d6: $20 $14

    ld a, [$cb18]                                 ; $16d8: $fa $18 $cb
    ld [$cb1d], a                                 ; $16db: $ea $1d $cb
    ld a, [$cb19]                                 ; $16de: $fa $19 $cb
    ld [$cb1e], a                                 ; $16e1: $ea $1e $cb
    ld a, [$cb1a]                                 ; $16e4: $fa $1a $cb
    ld [$cb1f], a                                 ; $16e7: $ea $1f $cb
    jr jr_000_16f9                                ; $16ea: $18 $0d

jr_000_16ec:
    xor a                                         ; $16ec: $af
    ld [$cb17], a                                 ; $16ed: $ea $17 $cb
    ld [$cb1d], a                                 ; $16f0: $ea $1d $cb

Jump_000_16f3:
    ld [$cb1e], a                                 ; $16f3: $ea $1e $cb
    ld [$cb1f], a                                 ; $16f6: $ea $1f $cb

Call_000_16f9:
jr_000_16f9:
    ld a, $01                                     ; $16f9: $3e $01

Call_000_16fb:
    ld [$2000], a                                 ; $16fb: $ea $00 $20
    call LCDOn                                    ; $16fe: $cd $cc $11
    ld a, $01                                     ; $1701: $3e $01
    ld e, $01                                     ; $1703: $1e $01
    push af                                       ; $1705: $f5
    ld a, $05                                     ; $1706: $3e $05
    ld [$2000], a                                 ; $1708: $ea $00 $20

Call_000_170b:
    pop af                                        ; $170b: $f1
    call $7c44                                    ; $170c: $cd $44 $7c

Call_000_170f:
Jump_000_170f:
    ld hl, $5f9b                                  ; $170f: $21 $9b $5f
    ldh a, [$d8]                                  ; $1712: $f0 $d8

Jump_000_1714:
    ld hl, $cd25                                  ; $1714: $21 $25 $cd
    ld a, [hl+]                                   ; $1717: $2a
    ld h, [hl]                                    ; $1718: $66
    ld l, a                                       ; $1719: $6f
    ld a, h                                       ; $171a: $7c
    or a                                          ; $171b: $b7

Jump_000_171c:
    jr z, jr_000_1737                             ; $171c: $28 $19

Jump_000_171e:
    xor a                                         ; $171e: $af
    ld [$cb17], a                                 ; $171f: $ea $17 $cb
    ld a, [$cd27]                                 ; $1722: $fa $27 $cd
    or a                                          ; $1725: $b7
    jr z, jr_000_172c                             ; $1726: $28 $04

Jump_000_1728:
    ld a, a                                       ; $1728: $7f

Call_000_1729:
    ld [$2000], a                                 ; $1729: $ea $00 $20

Call_000_172c:
jr_000_172c:
    xor a                                         ; $172c: $af

Jump_000_172d:
    ld [$cd25], a                                 ; $172d: $ea $25 $cd
    ld [$cd26], a                                 ; $1730: $ea $26 $cd

Call_000_1733:
    ld [$cd27], a                                 ; $1733: $ea $27 $cd
    jp hl                                         ; $1736: $e9


Jump_000_1737:
jr_000_1737:
    ld a, [$cb17]                                 ; $1737: $fa $17 $cb
    cp $0a                                        ; $173a: $fe $0a

Call_000_173c:
    ret nz                                        ; $173c: $c0

    ld a, $01                                     ; $173d: $3e $01

Jump_000_173f:
    ld [$cb17], a                                 ; $173f: $ea $17 $cb
    xor a                                         ; $1742: $af
    ld [$cb1d], a                                 ; $1743: $ea $1d $cb

Jump_000_1746:
    ld [$cb1e], a                                 ; $1746: $ea $1e $cb
    ld [$cb1f], a                                 ; $1749: $ea $1f $cb
    ret                                           ; $174c: $c9


    ret                                           ; $174d: $c9


Call_000_174e:
    ld hl, $cac0                                  ; $174e: $21 $c0 $ca

Call_000_1751:
Jump_000_1751:
    ld bc, $0010                                  ; $1751: $01 $10 $00

Jump_000_1754:
    jp Jump_000_112e                              ; $1754: $c3 $2e $11


    ld hl, $ff90                                  ; $1757: $21 $90 $ff
    ld de, $c272                                  ; $175a: $11 $72 $c2
    jp Jump_000_124b                              ; $175d: $c3 $4b $12


Call_000_1760:
    ld a, $01                                     ; $1760: $3e $01

Jump_000_1762:
    ld [$2000], a                                 ; $1762: $ea $00 $20

Jump_000_1765:
    ldh a, [$d9]                                  ; $1765: $f0 $d9
    call $5a9b                                    ; $1767: $cd $9b $5a
    ld a, l                                       ; $176a: $7d

Call_000_176b:
    ldh [$9c], a                                  ; $176b: $e0 $9c

Call_000_176d:
    ld a, h                                       ; $176d: $7c
    ldh [$9d], a                                  ; $176e: $e0 $9d

Call_000_1770:
Jump_000_1770:
    ld hl, $ff9e                                  ; $1770: $21 $9e $ff
    ld [hl], e                                    ; $1773: $73

Jump_000_1774:
    inc hl                                        ; $1774: $23
    ld [hl], d                                    ; $1775: $72
    ld a, $03                                     ; $1776: $3e $03
    ld [$2000], a                                 ; $1778: $ea $00 $20

Call_000_177b:
    call $71cf                                    ; $177b: $cd $cf $71

Jump_000_177e:
    ret                                           ; $177e: $c9


    call Call_000_178f                            ; $177f: $cd $8f $17
    ld a, $01                                     ; $1782: $3e $01
    ld [$2000], a                                 ; $1784: $ea $00 $20

Call_000_1787:
Jump_000_1787:
    ld a, [$c0c1]                                 ; $1787: $fa $c1 $c0
    or a                                          ; $178a: $b7
    jp nz, $62ab                                  ; $178b: $c2 $ab $62

Jump_000_178e:
    ret                                           ; $178e: $c9


Call_000_178f:
    call Call_000_1837                            ; $178f: $cd $37 $18
    ld a, $01                                     ; $1792: $3e $01
    ld [$2000], a                                 ; $1794: $ea $00 $20
    call $7128                                    ; $1797: $cd $28 $71

Jump_000_179a:
    jp Jump_000_0211                              ; $179a: $c3 $11 $02


Jump_000_179d:
    ld a, [$4000]                                 ; $179d: $fa $00 $40
    push af                                       ; $17a0: $f5

Jump_000_17a1:
    ld a, $03                                     ; $17a1: $3e $03
    ld [$2000], a                                 ; $17a3: $ea $00 $20

Jump_000_17a6:
    call $444c                                    ; $17a6: $cd $4c $44
    ld l, a                                       ; $17a9: $6f
    pop af                                        ; $17aa: $f1
    ld [$2000], a                                 ; $17ab: $ea $00 $20
    ld a, l                                       ; $17ae: $7d

Call_000_17af:
    or a                                          ; $17af: $b7
    ret z                                         ; $17b0: $c8

Call_000_17b1:
    jr jr_000_17cc                                ; $17b1: $18 $19

    ldh a, [$a4]                                  ; $17b3: $f0 $a4

Jump_000_17b5:
    and $47                                       ; $17b5: $e6 $47
    cp $47                                        ; $17b7: $fe $47

Call_000_17b9:
    jr nz, jr_000_17cc                            ; $17b9: $20 $11

Call_000_17bb:
    xor a                                         ; $17bb: $af
    ld hl, $ce16                                  ; $17bc: $21 $16 $ce
    or [hl]                                       ; $17bf: $b6
    jr z, jr_000_17cc                             ; $17c0: $28 $0a

    dec [hl]                                      ; $17c2: $35

Call_000_17c3:
Jump_000_17c3:
    ret nz                                        ; $17c3: $c0

    call Call_000_355e                            ; $17c4: $cd $5e $35
    ld a, $44                                     ; $17c7: $3e $44
    jp Jump_000_2448                              ; $17c9: $c3 $48 $24


Jump_000_17cc:
jr_000_17cc:
    ld a, $1e                                     ; $17cc: $3e $1e
    ld [$ce16], a                                 ; $17ce: $ea $16 $ce

Call_000_17d1:
Jump_000_17d1:
    ld a, [$cb17]                                 ; $17d1: $fa $17 $cb

Jump_000_17d4:
    or a                                          ; $17d4: $b7

Call_000_17d5:
    ret nz                                        ; $17d5: $c0

    ldh a, [$a4]                                  ; $17d6: $f0 $a4
    and $f0                                       ; $17d8: $e6 $f0
    ret nz                                        ; $17da: $c0

    ldh a, [$a5]                                  ; $17db: $f0 $a5
    bit 2, a                                      ; $17dd: $cb $57

Jump_000_17df:
    jr z, jr_000_1805                             ; $17df: $28 $24

    ldh a, [$d8]                                  ; $17e1: $f0 $d8

Jump_000_17e3:
    cp $0a                                        ; $17e3: $fe $0a
    jr z, jr_000_1805                             ; $17e5: $28 $1e

Call_000_17e7:
Jump_000_17e7:
    ldh a, [$de]                                  ; $17e7: $f0 $de
    cp $00                                        ; $17e9: $fe $00
    ret z                                         ; $17eb: $c8

    ld a, [$4000]                                 ; $17ec: $fa $00 $40

Jump_000_17ef:
    push af                                       ; $17ef: $f5
    ld a, $04                                     ; $17f0: $3e $04
    ld [$2000], a                                 ; $17f2: $ea $00 $20
    ldh a, [$d8]                                  ; $17f5: $f0 $d8
    ld hl, $19f6                                  ; $17f7: $21 $f6 $19
    call Call_000_3185                            ; $17fa: $cd $85 $31
    xor a                                         ; $17fd: $af
    call $4354                                    ; $17fe: $cd $54 $43

Call_000_1801:
Jump_000_1801:
    pop af                                        ; $1801: $f1

Jump_000_1802:
    ld [$2000], a                                 ; $1802: $ea $00 $20

Call_000_1805:
Jump_000_1805:
jr_000_1805:
    ldh a, [$a5]                                  ; $1805: $f0 $a5

Call_000_1807:
Jump_000_1807:
    and $08                                       ; $1807: $e6 $08

Call_000_1809:
    ret z                                         ; $1809: $c8

Call_000_180a:
    ldh a, [$d8]                                  ; $180a: $f0 $d8
    cp $0a                                        ; $180c: $fe $0a
    jr z, jr_000_1817                             ; $180e: $28 $07

Call_000_1810:
Jump_000_1810:
    ldh a, [$de]                                  ; $1810: $f0 $de
    cp $00                                        ; $1812: $fe $00

Jump_000_1814:
    ret z                                         ; $1814: $c8

    jr jr_000_182c                                ; $1815: $18 $15

Jump_000_1817:
jr_000_1817:
    ld a, $1d                                     ; $1817: $3e $1d

Jump_000_1819:
    push af                                       ; $1819: $f5
    ld a, $04                                     ; $181a: $3e $04
    ld [$2000], a                                 ; $181c: $ea $00 $20

Call_000_181f:
Jump_000_181f:
    pop af                                        ; $181f: $f1
    call $689e                                    ; $1820: $cd $9e $68

Call_000_1823:
    cp $10                                        ; $1823: $fe $10
    jr c, jr_000_182c                             ; $1825: $38 $05

    ld a, $2a                                     ; $1827: $3e $2a
    ld [$cbe1], a                                 ; $1829: $ea $e1 $cb

Call_000_182c:
jr_000_182c:
    xor a                                         ; $182c: $af
    ldh [$a5], a                                  ; $182d: $e0 $a5
    call Call_000_355e                            ; $182f: $cd $5e $35
    ld a, $0f                                     ; $1832: $3e $0f

Jump_000_1834:
    jp Jump_000_2448                              ; $1834: $c3 $48 $24


Call_000_1837:
Jump_000_1837:
    ld a, $01                                     ; $1837: $3e $01
    ld [$2000], a                                 ; $1839: $ea $00 $20

Call_000_183c:
Jump_000_183c:
    call $70d6                                    ; $183c: $cd $d6 $70
    call Call_000_3850                            ; $183f: $cd $50 $38

Jump_000_1842:
    call Call_000_04d1                            ; $1842: $cd $d1 $04

Call_000_1845:
Jump_000_1845:
    ld a, $05                                     ; $1845: $3e $05

Jump_000_1847:
    ld [$2000], a                                 ; $1847: $ea $00 $20
    call $5fe1                                    ; $184a: $cd $e1 $5f
    jp Jump_000_01d1                              ; $184d: $c3 $d1 $01


Call_000_1850:
Jump_000_1850:
    xor a                                         ; $1850: $af
    ldh [$dc], a                                  ; $1851: $e0 $dc
    ld [$c26c], a                                 ; $1853: $ea $6c $c2
    ret                                           ; $1856: $c9


Call_000_1857:
    ld hl, $004b                                  ; $1857: $21 $4b $00

Call_000_185a:
    ld de, $c0ce                                  ; $185a: $11 $ce $c0
    call Call_000_124e                            ; $185d: $cd $4e $12

Jump_000_1860:
    xor a                                         ; $1860: $af
    ld [$c114], a                                 ; $1861: $ea $14 $c1
    ld [$c115], a                                 ; $1864: $ea $15 $c1
    ret                                           ; $1867: $c9


Call_000_1868:
    ld hl, $c0d3                                  ; $1868: $21 $d3 $c0

Call_000_186b:
Jump_000_186b:
    call Call_000_0006                            ; $186b: $cd $06 $00
    ld [hl], $00                                  ; $186e: $36 $00
    ret                                           ; $1870: $c9


Call_000_1871:
    ld hl, $c0d3                                  ; $1871: $21 $d3 $c0
    call Call_000_0006                            ; $1874: $cd $06 $00
    ld [hl], $01                                  ; $1877: $36 $01

Jump_000_1879:
    ret                                           ; $1879: $c9


Jump_000_187a:
    push af                                       ; $187a: $f5
    push hl                                       ; $187b: $e5
    ld a, [$c118]                                 ; $187c: $fa $18 $c1
    or a                                          ; $187f: $b7

Jump_000_1880:
    jr z, jr_000_1895                             ; $1880: $28 $13

    push bc                                       ; $1882: $c5

Call_000_1883:
    push de                                       ; $1883: $d5
    xor a                                         ; $1884: $af

Call_000_1885:
    ld [$c118], a                                 ; $1885: $ea $18 $c1
    ld hl, $1893                                  ; $1888: $21 $93 $18
    push hl                                       ; $188b: $e5

Jump_000_188c:
    ld hl, $c119                                  ; $188c: $21 $19 $c1

Jump_000_188f:
    ld a, [hl+]                                   ; $188f: $2a

Jump_000_1890:
    ld h, [hl]                                    ; $1890: $66
    ld l, a                                       ; $1891: $6f

Call_000_1892:
    jp hl                                         ; $1892: $e9


    pop de                                        ; $1893: $d1
    pop bc                                        ; $1894: $c1

jr_000_1895:
    call Call_000_18a3                            ; $1895: $cd $a3 $18

Jump_000_1898:
    pop hl                                        ; $1898: $e1
    pop af                                        ; $1899: $f1
    reti                                          ; $189a: $d9


    push af                                       ; $189b: $f5
    push hl                                       ; $189c: $e5
    call Call_000_18a3                            ; $189d: $cd $a3 $18
    pop hl                                        ; $18a0: $e1
    pop af                                        ; $18a1: $f1
    reti                                          ; $18a2: $d9


Call_000_18a3:
jr_000_18a3:
    ld a, [$c0d1]                                 ; $18a3: $fa $d1 $c0

Jump_000_18a6:
    inc a                                         ; $18a6: $3c

Call_000_18a7:
Jump_000_18a7:
    ld hl, $c0d2                                  ; $18a7: $21 $d2 $c0
    cp [hl]                                       ; $18aa: $be
    jr c, jr_000_18ae                             ; $18ab: $38 $01

    xor a                                         ; $18ad: $af

Jump_000_18ae:
jr_000_18ae:
    ld [$c0d1], a                                 ; $18ae: $ea $d1 $c0
    ld hl, $c0d3                                  ; $18b1: $21 $d3 $c0

Jump_000_18b4:
    call nz, Call_000_0006                        ; $18b4: $c4 $06 $00
    ld a, [hl+]                                   ; $18b7: $2a

Jump_000_18b8:
    or a                                          ; $18b8: $b7

Call_000_18b9:
    jr z, jr_000_18a3                             ; $18b9: $28 $e8

    ld a, [hl+]                                   ; $18bb: $2a

Jump_000_18bc:
    ldh [rLYC], a                                 ; $18bc: $e0 $45

Jump_000_18be:
    ld a, [hl+]                                   ; $18be: $2a

Jump_000_18bf:
    ld h, [hl]                                    ; $18bf: $66
    ld l, a                                       ; $18c0: $6f
    ld a, l                                       ; $18c1: $7d

Call_000_18c2:
    ld [$c0cf], a                                 ; $18c2: $ea $cf $c0

Call_000_18c5:
    ld a, h                                       ; $18c5: $7c
    ld [$c0d0], a                                 ; $18c6: $ea $d0 $c0

Call_000_18c9:
    ld a, $40                                     ; $18c9: $3e $40
    ldh [rSTAT], a                                ; $18cb: $e0 $41

Call_000_18cd:
    ld hl, $ff0f                                  ; $18cd: $21 $0f $ff
    res 1, [hl]                                   ; $18d0: $cb $8e

Jump_000_18d2:
    ret                                           ; $18d2: $c9


Jump_000_18d3:
    push af                                       ; $18d3: $f5

Jump_000_18d4:
    push hl                                       ; $18d4: $e5

Call_000_18d5:
Jump_000_18d5:
    ldh a, [$a8]                                  ; $18d5: $f0 $a8
    dec a                                         ; $18d7: $3d

Call_000_18d8:
Jump_000_18d8:
    jp nz, Jump_000_1948                          ; $18d8: $c2 $48 $19

Call_000_18db:
Jump_000_18db:
    ldh [$a8], a                                  ; $18db: $e0 $a8
    push bc                                       ; $18dd: $c5
    push de                                       ; $18de: $d5
    ldh a, [rSVBK]                                ; $18df: $f0 $70
    push af                                       ; $18e1: $f5
    ld a, $01                                     ; $18e2: $3e $01

Call_000_18e4:
    ldh [rSVBK], a                                ; $18e4: $e0 $70

Call_000_18e6:
    xor a                                         ; $18e6: $af

Call_000_18e7:
Jump_000_18e7:
    ldh [rSTAT], a                                ; $18e7: $e0 $41
    ld bc, $0a04                                  ; $18e9: $01 $04 $0a
    ldh a, [$a9]                                  ; $18ec: $f0 $a9
    or a                                          ; $18ee: $b7
    jr z, jr_000_18f4                             ; $18ef: $28 $03

    ld bc, $1804                                  ; $18f1: $01 $04 $18

Jump_000_18f4:
jr_000_18f4:
    ld hl, $d900                                  ; $18f4: $21 $00 $d9

Jump_000_18f7:
    ld de, $9900                                  ; $18f7: $11 $00 $99
    ld a, [$c0c4]                                 ; $18fa: $fa $c4 $c0

Jump_000_18fd:
    bit 2, a                                      ; $18fd: $cb $57

Call_000_18ff:
Jump_000_18ff:
    jr z, jr_000_1904                             ; $18ff: $28 $03

Call_000_1901:
Jump_000_1901:
    ld de, $9d00                                  ; $1901: $11 $00 $9d

Call_000_1904:
Jump_000_1904:
jr_000_1904:
    ld a, b                                       ; $1904: $78

Jump_000_1905:
    ldh [rVBK], a                                 ; $1905: $e0 $4f
    ld a, h                                       ; $1907: $7c
    ldh [rHDMA1], a                               ; $1908: $e0 $51
    ld a, l                                       ; $190a: $7d
    ldh [rHDMA2], a                               ; $190b: $e0 $52

Jump_000_190d:
    ld a, d                                       ; $190d: $7a
    ldh [rHDMA3], a                               ; $190e: $e0 $53
    ld a, e                                       ; $1910: $7b
    ldh [rHDMA4], a                               ; $1911: $e0 $54

jr_000_1913:
    ldh a, [rSTAT]                                ; $1913: $f0 $41

Jump_000_1915:
    and $03                                       ; $1915: $e6 $03

Jump_000_1917:
    jr z, jr_000_1913                             ; $1917: $28 $fa

jr_000_1919:
    ldh a, [rSTAT]                                ; $1919: $f0 $41

Call_000_191b:
    and $03                                       ; $191b: $e6 $03

Call_000_191d:
    jr nz, jr_000_1919                            ; $191d: $20 $fa

Call_000_191f:
Jump_000_191f:
    ld a, $03                                     ; $191f: $3e $03
    ldh [rHDMA5], a                               ; $1921: $e0 $55
    ld a, b                                       ; $1923: $78
    and $01                                       ; $1924: $e6 $01
    jr nz, jr_000_1931                            ; $1926: $20 $09

    push bc                                       ; $1928: $c5
    ld bc, $0400                                  ; $1929: $01 $00 $04
    add hl, bc                                    ; $192c: $09

Call_000_192d:
Jump_000_192d:
    pop bc                                        ; $192d: $c1
    dec b                                         ; $192e: $05
    jr jr_000_1904                                ; $192f: $18 $d3

Call_000_1931:
jr_000_1931:
    push hl                                       ; $1931: $e5
    ld hl, $0040                                  ; $1932: $21 $40 $00

Jump_000_1935:
    add hl, de                                    ; $1935: $19
    pop de                                        ; $1936: $d1
    push hl                                       ; $1937: $e5

Jump_000_1938:
    ld hl, $fc40                                  ; $1938: $21 $40 $fc

Call_000_193b:
    add hl, de                                    ; $193b: $19
    pop de                                        ; $193c: $d1

Jump_000_193d:
    dec b                                         ; $193d: $05
    jr nz, jr_000_1904                            ; $193e: $20 $c4

    xor a                                         ; $1940: $af
    ldh [rVBK], a                                 ; $1941: $e0 $4f
    pop af                                        ; $1943: $f1
    ldh [rSVBK], a                                ; $1944: $e0 $70
    pop de                                        ; $1946: $d1

Jump_000_1947:
    pop bc                                        ; $1947: $c1

Call_000_1948:
Jump_000_1948:
    call Call_000_18a3                            ; $1948: $cd $a3 $18
    pop hl                                        ; $194b: $e1

Call_000_194c:
    pop af                                        ; $194c: $f1
    reti                                          ; $194d: $d9


Call_000_194e:
Jump_000_194e:
    push af                                       ; $194e: $f5

Jump_000_194f:
    push hl                                       ; $194f: $e5
    ld a, [$cd28]                                 ; $1950: $fa $28 $cd
    cp $01                                        ; $1953: $fe $01
    jp nz, Jump_000_19b1                          ; $1955: $c2 $b1 $19

    push bc                                       ; $1958: $c5
    push de                                       ; $1959: $d5
    ldh a, [rSVBK]                                ; $195a: $f0 $70
    push af                                       ; $195c: $f5
    ld a, $03                                     ; $195d: $3e $03
    ldh [rSVBK], a                                ; $195f: $e0 $70

Jump_000_1961:
    xor a                                         ; $1961: $af

Jump_000_1962:
    ld [$cd28], a                                 ; $1962: $ea $28 $cd

Call_000_1965:
    ldh [rSTAT], a                                ; $1965: $e0 $41

Jump_000_1967:
    ld bc, $2004                                  ; $1967: $01 $04 $20
    ld hl, $d700                                  ; $196a: $21 $00 $d7
    ld de, $9800                                  ; $196d: $11 $00 $98

jr_000_1970:
    ld a, b                                       ; $1970: $78

Jump_000_1971:
    ldh [rVBK], a                                 ; $1971: $e0 $4f
    ld a, h                                       ; $1973: $7c
    ldh [rHDMA1], a                               ; $1974: $e0 $51

Jump_000_1976:
    ld a, l                                       ; $1976: $7d
    ldh [rHDMA2], a                               ; $1977: $e0 $52
    ld a, d                                       ; $1979: $7a

Jump_000_197a:
    ldh [rHDMA3], a                               ; $197a: $e0 $53
    ld a, e                                       ; $197c: $7b

Jump_000_197d:
    ldh [rHDMA4], a                               ; $197d: $e0 $54

jr_000_197f:
    ldh a, [rSTAT]                                ; $197f: $f0 $41
    and $03                                       ; $1981: $e6 $03
    jr z, jr_000_197f                             ; $1983: $28 $fa

Jump_000_1985:
jr_000_1985:
    ldh a, [rSTAT]                                ; $1985: $f0 $41
    and $03                                       ; $1987: $e6 $03
    jr nz, jr_000_1985                            ; $1989: $20 $fa

Call_000_198b:
    ld a, $03                                     ; $198b: $3e $03

Call_000_198d:
Jump_000_198d:
    ldh [rHDMA5], a                               ; $198d: $e0 $55
    ld a, b                                       ; $198f: $78
    and $01                                       ; $1990: $e6 $01

Jump_000_1992:
    jr nz, jr_000_199a                            ; $1992: $20 $06

    ld a, h                                       ; $1994: $7c

Call_000_1995:
    add c                                         ; $1995: $81

Jump_000_1996:
    ld h, a                                       ; $1996: $67
    dec b                                         ; $1997: $05
    jr jr_000_1970                                ; $1998: $18 $d6

Call_000_199a:
jr_000_199a:
    push hl                                       ; $199a: $e5
    ld hl, $0040                                  ; $199b: $21 $40 $00
    add hl, de                                    ; $199e: $19
    pop de                                        ; $199f: $d1
    push hl                                       ; $19a0: $e5

Jump_000_19a1:
    ld hl, $fc40                                  ; $19a1: $21 $40 $fc

Jump_000_19a4:
    add hl, de                                    ; $19a4: $19

Call_000_19a5:
Jump_000_19a5:
    pop de                                        ; $19a5: $d1
    dec b                                         ; $19a6: $05

Call_000_19a7:
Jump_000_19a7:
    jr nz, jr_000_1970                            ; $19a7: $20 $c7

    xor a                                         ; $19a9: $af
    ldh [rVBK], a                                 ; $19aa: $e0 $4f
    pop af                                        ; $19ac: $f1
    ldh [rSVBK], a                                ; $19ad: $e0 $70

Jump_000_19af:
    pop de                                        ; $19af: $d1

Call_000_19b0:
Jump_000_19b0:
    pop bc                                        ; $19b0: $c1

Jump_000_19b1:
    call Call_000_18a3                            ; $19b1: $cd $a3 $18
    pop hl                                        ; $19b4: $e1
    pop af                                        ; $19b5: $f1
    reti                                          ; $19b6: $d9


Call_000_19b7:
Jump_000_19b7:
    ld hl, $c124                                  ; $19b7: $21 $24 $c1
    ld bc, $0014                                  ; $19ba: $01 $14 $00

Jump_000_19bd:
    jp Jump_000_112e                              ; $19bd: $c3 $2e $11


Call_000_19c0:
    push af                                       ; $19c0: $f5
    push bc                                       ; $19c1: $c5
    push de                                       ; $19c2: $d5
    push hl                                       ; $19c3: $e5
    ldh a, [$8c]                                  ; $19c4: $f0 $8c

Call_000_19c6:
    or a                                          ; $19c6: $b7
    ld a, [$4000]                                 ; $19c7: $fa $00 $40
    jr z, jr_000_19ce                             ; $19ca: $28 $02

    ldh a, [$8a]                                  ; $19cc: $f0 $8a

jr_000_19ce:
    push af                                       ; $19ce: $f5
    ld a, $05                                     ; $19cf: $3e $05

Call_000_19d1:
Jump_000_19d1:
    ld [$2000], a                                 ; $19d1: $ea $00 $20

Call_000_19d4:
    ld hl, $19df                                  ; $19d4: $21 $df $19

Call_000_19d7:
    push hl                                       ; $19d7: $e5
    ld hl, $cbc6                                  ; $19d8: $21 $c6 $cb

Jump_000_19db:
    ld a, [hl+]                                   ; $19db: $2a

Call_000_19dc:
    ld h, [hl]                                    ; $19dc: $66
    ld l, a                                       ; $19dd: $6f
    jp hl                                         ; $19de: $e9


Call_000_19df:
Jump_000_19df:
    call Call_000_18a3                            ; $19df: $cd $a3 $18

Call_000_19e2:
    pop af                                        ; $19e2: $f1
    ld [$2000], a                                 ; $19e3: $ea $00 $20

Jump_000_19e6:
    pop hl                                        ; $19e6: $e1
    pop de                                        ; $19e7: $d1
    pop bc                                        ; $19e8: $c1
    pop af                                        ; $19e9: $f1

Call_000_19ea:
    reti                                          ; $19ea: $d9


    push af                                       ; $19eb: $f5
    push hl                                       ; $19ec: $e5
    ld hl, $cb31                                  ; $19ed: $21 $31 $cb
    ld a, [$cbc4]                                 ; $19f0: $fa $c4 $cb
    or a                                          ; $19f3: $b7
    jr nz, jr_000_19f7                            ; $19f4: $20 $01

    dec [hl]                                      ; $19f6: $35

jr_000_19f7:
    ld a, $7f                                     ; $19f7: $3e $7f
    and [hl]                                      ; $19f9: $a6
    jr nz, jr_000_1a06                            ; $19fa: $20 $0a

    ld a, [$cb30]                                 ; $19fc: $fa $30 $cb
    sub $08                                       ; $19ff: $d6 $08

Call_000_1a01:
    jr c, jr_000_1a06                             ; $1a01: $38 $03

Call_000_1a03:
    ld [$cb30], a                                 ; $1a03: $ea $30 $cb

jr_000_1a06:
    call Call_000_18a3                            ; $1a06: $cd $a3 $18

Call_000_1a09:
Jump_000_1a09:
    pop hl                                        ; $1a09: $e1
    pop af                                        ; $1a0a: $f1
    reti                                          ; $1a0b: $d9


    push af                                       ; $1a0c: $f5
    push hl                                       ; $1a0d: $e5

Call_000_1a0e:
Jump_000_1a0e:
    ld hl, $cbbb                                  ; $1a0e: $21 $bb $cb
    inc [hl]                                      ; $1a11: $34
    ld a, $3f                                     ; $1a12: $3e $3f
    and [hl]                                      ; $1a14: $a6

Jump_000_1a15:
    jr nz, jr_000_1a26                            ; $1a15: $20 $0f

Jump_000_1a17:
    ld hl, $cbbd                                  ; $1a17: $21 $bd $cb
    ld a, [$cbba]                                 ; $1a1a: $fa $ba $cb

Jump_000_1a1d:
    add $08                                       ; $1a1d: $c6 $08
    cp [hl]                                       ; $1a1f: $be

Jump_000_1a20:
    jr c, jr_000_1a23                             ; $1a20: $38 $01

Jump_000_1a22:
    xor a                                         ; $1a22: $af

jr_000_1a23:
    ld [$cbba], a                                 ; $1a23: $ea $ba $cb

jr_000_1a26:
    call Call_000_18a3                            ; $1a26: $cd $a3 $18
    pop hl                                        ; $1a29: $e1
    pop af                                        ; $1a2a: $f1
    reti                                          ; $1a2b: $d9


    push af                                       ; $1a2c: $f5
    push hl                                       ; $1a2d: $e5
    ld hl, $cbbb                                  ; $1a2e: $21 $bb $cb
    inc [hl]                                      ; $1a31: $34
    ld a, $1f                                     ; $1a32: $3e $1f
    and [hl]                                      ; $1a34: $a6
    jr nz, jr_000_1a47                            ; $1a35: $20 $10

    ld [hl], a                                    ; $1a37: $77
    ld hl, $cbbd                                  ; $1a38: $21 $bd $cb
    ld a, [$cbba]                                 ; $1a3b: $fa $ba $cb
    add $08                                       ; $1a3e: $c6 $08
    cp [hl]                                       ; $1a40: $be
    jr c, jr_000_1a44                             ; $1a41: $38 $01

    xor a                                         ; $1a43: $af

Jump_000_1a44:
jr_000_1a44:
    ld [$cbba], a                                 ; $1a44: $ea $ba $cb

jr_000_1a47:
    call Call_000_18a3                            ; $1a47: $cd $a3 $18

Jump_000_1a4a:
    pop hl                                        ; $1a4a: $e1
    pop af                                        ; $1a4b: $f1
    reti                                          ; $1a4c: $d9


    push af                                       ; $1a4d: $f5
    push hl                                       ; $1a4e: $e5
    ld hl, $cbbb                                  ; $1a4f: $21 $bb $cb

Jump_000_1a52:
    inc [hl]                                      ; $1a52: $34
    ld a, $3f                                     ; $1a53: $3e $3f
    and [hl]                                      ; $1a55: $a6
    jr nz, jr_000_1a68                            ; $1a56: $20 $10

Call_000_1a58:
Jump_000_1a58:
    ld [hl], a                                    ; $1a58: $77
    ld hl, $cbbd                                  ; $1a59: $21 $bd $cb
    ld a, [$cbba]                                 ; $1a5c: $fa $ba $cb
    add $08                                       ; $1a5f: $c6 $08
    cp [hl]                                       ; $1a61: $be
    jr c, jr_000_1a65                             ; $1a62: $38 $01

    xor a                                         ; $1a64: $af

Call_000_1a65:
jr_000_1a65:
    ld [$cbba], a                                 ; $1a65: $ea $ba $cb

Call_000_1a68:
jr_000_1a68:
    call Call_000_18a3                            ; $1a68: $cd $a3 $18

Call_000_1a6b:
    pop hl                                        ; $1a6b: $e1
    pop af                                        ; $1a6c: $f1
    reti                                          ; $1a6d: $d9


    push af                                       ; $1a6e: $f5
    push bc                                       ; $1a6f: $c5
    push de                                       ; $1a70: $d5

Call_000_1a71:
Jump_000_1a71:
    push hl                                       ; $1a71: $e5
    ld b, $04                                     ; $1a72: $06 $04

Jump_000_1a74:
    ld de, $fe98                                  ; $1a74: $11 $98 $fe
    ld hl, $cd1a                                  ; $1a77: $21 $1a $cd
    ldh a, [rLCDC]                                ; $1a7a: $f0 $40
    and $d9                                       ; $1a7c: $e6 $d9

Jump_000_1a7e:
    set 3, a                                      ; $1a7e: $cb $df

Call_000_1a80:
Jump_000_1a80:
    ld c, a                                       ; $1a80: $4f

jr_000_1a81:
    ldh a, [rSTAT]                                ; $1a81: $f0 $41
    and $03                                       ; $1a83: $e6 $03
    jr nz, jr_000_1a81                            ; $1a85: $20 $fa

    ld a, c                                       ; $1a87: $79

Call_000_1a88:
    ldh [rLCDC], a                                ; $1a88: $e0 $40
    ld a, $98                                     ; $1a8a: $3e $98
    ldh [rSCY], a                                 ; $1a8c: $e0 $42
    xor a                                         ; $1a8e: $af

Call_000_1a8f:
    ldh [rSCX], a                                 ; $1a8f: $e0 $43

jr_000_1a91:
    ld a, [hl+]                                   ; $1a91: $2a

Jump_000_1a92:
    ld [de], a                                    ; $1a92: $12

Jump_000_1a93:
    inc e                                         ; $1a93: $1c

Call_000_1a94:
Jump_000_1a94:
    ld a, [hl+]                                   ; $1a94: $2a

Jump_000_1a95:
    ld [de], a                                    ; $1a95: $12
    inc e                                         ; $1a96: $1c

Jump_000_1a97:
    dec b                                         ; $1a97: $05
    jr nz, jr_000_1a91                            ; $1a98: $20 $f7

    jr jr_000_1aa0                                ; $1a9a: $18 $04

Jump_000_1a9c:
    push af                                       ; $1a9c: $f5

Jump_000_1a9d:
    push bc                                       ; $1a9d: $c5
    push de                                       ; $1a9e: $d5
    push hl                                       ; $1a9f: $e5

jr_000_1aa0:
    ldh a, [$8c]                                  ; $1aa0: $f0 $8c
    or a                                          ; $1aa2: $b7
    ld a, [$4000]                                 ; $1aa3: $fa $00 $40
    jr z, jr_000_1aaa                             ; $1aa6: $28 $02

    ldh a, [$8a]                                  ; $1aa8: $f0 $8a

jr_000_1aaa:
    push af                                       ; $1aaa: $f5

Call_000_1aab:
    ld a, [$c138]                                 ; $1aab: $fa $38 $c1

Jump_000_1aae:
    ld l, a                                       ; $1aae: $6f
    add a                                         ; $1aaf: $87

Call_000_1ab0:
    add a                                         ; $1ab0: $87
    add l                                         ; $1ab1: $85

Call_000_1ab2:
Jump_000_1ab2:
    ld e, a                                       ; $1ab2: $5f
    ld d, $00                                     ; $1ab3: $16 $00
    ld hl, $c124                                  ; $1ab5: $21 $24 $c1

Call_000_1ab8:
    add hl, de                                    ; $1ab8: $19
    ld a, [hl+]                                   ; $1ab9: $2a
    or a                                          ; $1aba: $b7
    jr nz, jr_000_1ac3                            ; $1abb: $20 $06

    xor a                                         ; $1abd: $af
    ld [$c138], a                                 ; $1abe: $ea $38 $c1

Jump_000_1ac1:
    jr jr_000_1b3f                                ; $1ac1: $18 $7c

Call_000_1ac3:
jr_000_1ac3:
    ld c, a                                       ; $1ac3: $4f
    ld a, $04                                     ; $1ac4: $3e $04
    sub c                                         ; $1ac6: $91

Jump_000_1ac7:
    ld e, a                                       ; $1ac7: $5f
    ld a, [hl+]                                   ; $1ac8: $2a

Jump_000_1ac9:
    add a                                         ; $1ac9: $87
    add a                                         ; $1aca: $87

Jump_000_1acb:
    add a                                         ; $1acb: $87
    or $80                                        ; $1acc: $f6 $80

Call_000_1ace:
    ldh [rBCPS], a                                ; $1ace: $e0 $68
    ld a, [hl+]                                   ; $1ad0: $2a
    ld d, a                                       ; $1ad1: $57

Jump_000_1ad2:
    ld a, [hl+]                                   ; $1ad2: $2a

Jump_000_1ad3:
    ld h, [hl]                                    ; $1ad3: $66
    ld l, a                                       ; $1ad4: $6f
    call Call_000_32bf                            ; $1ad5: $cd $bf $32
    ld a, d                                       ; $1ad8: $7a
    call Call_000_0005                            ; $1ad9: $cd $05 $00
    ld c, e                                       ; $1adc: $4b
    ld [$c0b5], sp                                ; $1add: $08 $b5 $c0
    ld sp, hl                                     ; $1ae0: $f9
    pop de                                        ; $1ae1: $d1
    ld hl, $ff69                                  ; $1ae2: $21 $69 $ff

jr_000_1ae5:
    ldh a, [rSTAT]                                ; $1ae5: $f0 $41

Call_000_1ae7:
    and $03                                       ; $1ae7: $e6 $03
    jr z, jr_000_1ae5                             ; $1ae9: $28 $fa

jr_000_1aeb:
    ldh a, [rSTAT]                                ; $1aeb: $f0 $41
    and $03                                       ; $1aed: $e6 $03

Call_000_1aef:
    jr nz, jr_000_1aeb                            ; $1aef: $20 $fa

    ld a, c                                       ; $1af1: $79
    or a                                          ; $1af2: $b7

Call_000_1af3:
    jr z, jr_000_1afd                             ; $1af3: $28 $08

Call_000_1af5:
Jump_000_1af5:
    dec a                                         ; $1af5: $3d
    jr z, jr_000_1b09                             ; $1af6: $28 $11

    dec a                                         ; $1af8: $3d

Call_000_1af9:
    jr z, jr_000_1b15                             ; $1af9: $28 $1a

    jr jr_000_1b21                                ; $1afb: $18 $24

Call_000_1afd:
jr_000_1afd:
    ld [hl], e                                    ; $1afd: $73
    ld [hl], d                                    ; $1afe: $72

Call_000_1aff:
    pop de                                        ; $1aff: $d1

Jump_000_1b00:
    ld [hl], e                                    ; $1b00: $73
    ld [hl], d                                    ; $1b01: $72
    pop de                                        ; $1b02: $d1

Call_000_1b03:
    ld [hl], e                                    ; $1b03: $73
    ld [hl], d                                    ; $1b04: $72

Jump_000_1b05:
    pop de                                        ; $1b05: $d1
    ld [hl], e                                    ; $1b06: $73

Call_000_1b07:
    ld [hl], d                                    ; $1b07: $72
    pop de                                        ; $1b08: $d1

jr_000_1b09:
    ld [hl], e                                    ; $1b09: $73
    ld [hl], d                                    ; $1b0a: $72
    pop de                                        ; $1b0b: $d1
    ld [hl], e                                    ; $1b0c: $73
    ld [hl], d                                    ; $1b0d: $72

Call_000_1b0e:
    pop de                                        ; $1b0e: $d1
    ld [hl], e                                    ; $1b0f: $73

Call_000_1b10:
Jump_000_1b10:
    ld [hl], d                                    ; $1b10: $72
    pop de                                        ; $1b11: $d1
    ld [hl], e                                    ; $1b12: $73
    ld [hl], d                                    ; $1b13: $72
    pop de                                        ; $1b14: $d1

Call_000_1b15:
jr_000_1b15:
    ld [hl], e                                    ; $1b15: $73
    ld [hl], d                                    ; $1b16: $72
    pop de                                        ; $1b17: $d1

Call_000_1b18:
Jump_000_1b18:
    ld [hl], e                                    ; $1b18: $73
    ld [hl], d                                    ; $1b19: $72

Call_000_1b1a:
Jump_000_1b1a:
    pop de                                        ; $1b1a: $d1
    ld [hl], e                                    ; $1b1b: $73

Jump_000_1b1c:
    ld [hl], d                                    ; $1b1c: $72
    pop de                                        ; $1b1d: $d1
    ld [hl], e                                    ; $1b1e: $73
    ld [hl], d                                    ; $1b1f: $72
    pop de                                        ; $1b20: $d1

jr_000_1b21:
    ld [hl], e                                    ; $1b21: $73
    ld [hl], d                                    ; $1b22: $72
    pop de                                        ; $1b23: $d1

Call_000_1b24:
    ld [hl], e                                    ; $1b24: $73
    ld [hl], d                                    ; $1b25: $72

Jump_000_1b26:
    pop de                                        ; $1b26: $d1
    ld [hl], e                                    ; $1b27: $73
    ld [hl], d                                    ; $1b28: $72
    pop de                                        ; $1b29: $d1
    ld [hl], e                                    ; $1b2a: $73
    ld [hl], d                                    ; $1b2b: $72
    ld hl, $c0b5                                  ; $1b2c: $21 $b5 $c0

Call_000_1b2f:
    ld a, [hl+]                                   ; $1b2f: $2a

Jump_000_1b30:
    ld h, [hl]                                    ; $1b30: $66

Call_000_1b31:
    ld l, a                                       ; $1b31: $6f
    ld sp, hl                                     ; $1b32: $f9

Jump_000_1b33:
    ld a, [$c138]                                 ; $1b33: $fa $38 $c1
    inc a                                         ; $1b36: $3c
    and $03                                       ; $1b37: $e6 $03
    ld [$c138], a                                 ; $1b39: $ea $38 $c1
    jp nz, Jump_000_1aae                          ; $1b3c: $c2 $ae $1a

Call_000_1b3f:
jr_000_1b3f:
    ld a, $01                                     ; $1b3f: $3e $01
    ld [$c0cc], a                                 ; $1b41: $ea $cc $c0

Call_000_1b44:
    call Call_000_18a3                            ; $1b44: $cd $a3 $18
    pop af                                        ; $1b47: $f1
    ld [$2000], a                                 ; $1b48: $ea $00 $20

Call_000_1b4b:
Jump_000_1b4b:
    pop hl                                        ; $1b4b: $e1

Call_000_1b4c:
    pop de                                        ; $1b4c: $d1
    pop bc                                        ; $1b4d: $c1
    pop af                                        ; $1b4e: $f1
    reti                                          ; $1b4f: $d9


    push af                                       ; $1b50: $f5
    push bc                                       ; $1b51: $c5
    push de                                       ; $1b52: $d5
    push hl                                       ; $1b53: $e5
    ldh a, [$8c]                                  ; $1b54: $f0 $8c
    or a                                          ; $1b56: $b7
    ld a, [$4000]                                 ; $1b57: $fa $00 $40
    jr z, jr_000_1b5e                             ; $1b5a: $28 $02

    ldh a, [$8a]                                  ; $1b5c: $f0 $8a

Jump_000_1b5e:
jr_000_1b5e:
    push af                                       ; $1b5e: $f5
    ld a, [$c138]                                 ; $1b5f: $fa $38 $c1
    ld l, a                                       ; $1b62: $6f
    add a                                         ; $1b63: $87
    add a                                         ; $1b64: $87
    add l                                         ; $1b65: $85
    ld e, a                                       ; $1b66: $5f
    ld d, $00                                     ; $1b67: $16 $00

Jump_000_1b69:
    ld hl, $c124                                  ; $1b69: $21 $24 $c1
    add hl, de                                    ; $1b6c: $19
    ld a, [hl+]                                   ; $1b6d: $2a
    ld a, [hl+]                                   ; $1b6e: $2a
    ld a, $80                                     ; $1b6f: $3e $80
    ldh [rBCPS], a                                ; $1b71: $e0 $68
    ld a, [hl+]                                   ; $1b73: $2a

Jump_000_1b74:
    ld a, [hl+]                                   ; $1b74: $2a
    ld h, [hl]                                    ; $1b75: $66
    ld l, a                                       ; $1b76: $6f
    call Call_000_32bf                            ; $1b77: $cd $bf $32

jr_000_1b7a:
    ldh a, [rSTAT]                                ; $1b7a: $f0 $41
    and $03                                       ; $1b7c: $e6 $03
    jr z, jr_000_1b7a                             ; $1b7e: $28 $fa

jr_000_1b80:
    ldh a, [rSTAT]                                ; $1b80: $f0 $41

Call_000_1b82:
Jump_000_1b82:
    and $03                                       ; $1b82: $e6 $03
    jr nz, jr_000_1b80                            ; $1b84: $20 $fa

    ld [$c0b5], sp                                ; $1b86: $08 $b5 $c0
    ld sp, hl                                     ; $1b89: $f9
    ld c, $04                                     ; $1b8a: $0e $04
    ld hl, $ff69                                  ; $1b8c: $21 $69 $ff

jr_000_1b8f:
    pop de                                        ; $1b8f: $d1
    ld [hl], e                                    ; $1b90: $73
    ld [hl], d                                    ; $1b91: $72
    dec c                                         ; $1b92: $0d
    jr nz, jr_000_1b8f                            ; $1b93: $20 $fa

    ld hl, $c0b5                                  ; $1b95: $21 $b5 $c0
    ld a, [hl+]                                   ; $1b98: $2a
    ld h, [hl]                                    ; $1b99: $66
    ld l, a                                       ; $1b9a: $6f
    ld sp, hl                                     ; $1b9b: $f9
    ld a, [$c138]                                 ; $1b9c: $fa $38 $c1
    inc a                                         ; $1b9f: $3c
    ld [$c138], a                                 ; $1ba0: $ea $38 $c1
    cp $03                                        ; $1ba3: $fe $03
    jr nz, jr_000_1b3f                            ; $1ba5: $20 $98

Call_000_1ba7:
    xor a                                         ; $1ba7: $af

Call_000_1ba8:
    ld [$c138], a                                 ; $1ba8: $ea $38 $c1
    jr jr_000_1b3f                                ; $1bab: $18 $92

    push af                                       ; $1bad: $f5
    push bc                                       ; $1bae: $c5
    push de                                       ; $1baf: $d5
    push hl                                       ; $1bb0: $e5

Jump_000_1bb1:
    ldh a, [$8c]                                  ; $1bb1: $f0 $8c
    or a                                          ; $1bb3: $b7
    ld a, [$4000]                                 ; $1bb4: $fa $00 $40
    jr z, jr_000_1bbb                             ; $1bb7: $28 $02

    ldh a, [$8a]                                  ; $1bb9: $f0 $8a

Call_000_1bbb:
Jump_000_1bbb:
jr_000_1bbb:
    push af                                       ; $1bbb: $f5
    ld a, [$c142]                                 ; $1bbc: $fa $42 $c1

Jump_000_1bbf:
    ld [$2000], a                                 ; $1bbf: $ea $00 $20
    ld hl, $c143                                  ; $1bc2: $21 $43 $c1
    ld a, [hl+]                                   ; $1bc5: $2a
    ld h, [hl]                                    ; $1bc6: $66
    ld l, a                                       ; $1bc7: $6f

Call_000_1bc8:
Jump_000_1bc8:
    ld [$c0b5], sp                                ; $1bc8: $08 $b5 $c0
    ld sp, hl                                     ; $1bcb: $f9

Call_000_1bcc:
    ld hl, $ff69                                  ; $1bcc: $21 $69 $ff

Jump_000_1bcf:
    ld a, [$c141]                                 ; $1bcf: $fa $41 $c1
    rra                                           ; $1bd2: $1f
    ld b, a                                       ; $1bd3: $47

Jump_000_1bd4:
jr_000_1bd4:
    ld a, $a0                                     ; $1bd4: $3e $a0

Jump_000_1bd6:
    ldh [rBCPS], a                                ; $1bd6: $e0 $68

Jump_000_1bd8:
jr_000_1bd8:
    ldh a, [rSTAT]                                ; $1bd8: $f0 $41
    and $03                                       ; $1bda: $e6 $03
    jr z, jr_000_1bd8                             ; $1bdc: $28 $fa

jr_000_1bde:
    ldh a, [rSTAT]                                ; $1bde: $f0 $41
    and $03                                       ; $1be0: $e6 $03
    jr nz, jr_000_1bde                            ; $1be2: $20 $fa

Call_000_1be4:
    pop de                                        ; $1be4: $d1

Jump_000_1be5:
    ld [hl], e                                    ; $1be5: $73
    ld [hl], d                                    ; $1be6: $72
    pop de                                        ; $1be7: $d1
    ld [hl], e                                    ; $1be8: $73
    ld [hl], d                                    ; $1be9: $72
    pop de                                        ; $1bea: $d1
    ld [hl], e                                    ; $1beb: $73
    ld [hl], d                                    ; $1bec: $72
    pop de                                        ; $1bed: $d1
    ld [hl], e                                    ; $1bee: $73

Jump_000_1bef:
    ld [hl], d                                    ; $1bef: $72
    pop de                                        ; $1bf0: $d1
    ld [hl], e                                    ; $1bf1: $73
    ld [hl], d                                    ; $1bf2: $72
    pop de                                        ; $1bf3: $d1
    ld [hl], e                                    ; $1bf4: $73
    ld [hl], d                                    ; $1bf5: $72
    pop de                                        ; $1bf6: $d1

Call_000_1bf7:
Jump_000_1bf7:
    ld [hl], e                                    ; $1bf7: $73

Jump_000_1bf8:
    ld [hl], d                                    ; $1bf8: $72
    pop de                                        ; $1bf9: $d1
    ld [hl], e                                    ; $1bfa: $73
    ld [hl], d                                    ; $1bfb: $72

Jump_000_1bfc:
    pop de                                        ; $1bfc: $d1

Jump_000_1bfd:
    ld [hl], e                                    ; $1bfd: $73
    ld [hl], d                                    ; $1bfe: $72

Call_000_1bff:
    pop de                                        ; $1bff: $d1

Call_000_1c00:
Jump_000_1c00:
    ld [hl], e                                    ; $1c00: $73
    ld [hl], d                                    ; $1c01: $72

Jump_000_1c02:
    pop de                                        ; $1c02: $d1

Jump_000_1c03:
    ld [hl], e                                    ; $1c03: $73

Call_000_1c04:
    ld [hl], d                                    ; $1c04: $72
    pop de                                        ; $1c05: $d1

Jump_000_1c06:
    ld [hl], e                                    ; $1c06: $73
    ld [hl], d                                    ; $1c07: $72

Jump_000_1c08:
    pop de                                        ; $1c08: $d1
    ld [hl], e                                    ; $1c09: $73

Call_000_1c0a:
Jump_000_1c0a:
    ld [hl], d                                    ; $1c0a: $72

Jump_000_1c0b:
    pop de                                        ; $1c0b: $d1
    ld [hl], e                                    ; $1c0c: $73
    ld [hl], d                                    ; $1c0d: $72

Call_000_1c0e:
    pop de                                        ; $1c0e: $d1
    ld [hl], e                                    ; $1c0f: $73

Jump_000_1c10:
    ld [hl], d                                    ; $1c10: $72
    pop de                                        ; $1c11: $d1

Call_000_1c12:
    ld [hl], e                                    ; $1c12: $73

Jump_000_1c13:
    ld [hl], d                                    ; $1c13: $72
    ldh a, [$cf]                                  ; $1c14: $f0 $cf
    cp $0b                                        ; $1c16: $fe $0b

Call_000_1c18:
    jr c, jr_000_1c43                             ; $1c18: $38 $29

    cp $0e                                        ; $1c1a: $fe $0e

Call_000_1c1c:
    jr nc, jr_000_1c43                            ; $1c1c: $30 $25

    ld a, b                                       ; $1c1e: $78

Call_000_1c1f:
    cp $0d                                        ; $1c1f: $fe $0d

Call_000_1c21:
    jr nz, jr_000_1c43                            ; $1c21: $20 $20

Call_000_1c23:
Jump_000_1c23:
    ld a, $80                                     ; $1c23: $3e $80
    ldh [rOCPS], a                                ; $1c25: $e0 $6a
    ld c, $08                                     ; $1c27: $0e $08

Call_000_1c29:
    ld de, $c139                                  ; $1c29: $11 $39 $c1

Call_000_1c2c:
jr_000_1c2c:
    ldh a, [rSTAT]                                ; $1c2c: $f0 $41
    and $03                                       ; $1c2e: $e6 $03
    jr nz, jr_000_1c2c                            ; $1c30: $20 $fa

Call_000_1c32:
jr_000_1c32:
    ld a, [de]                                    ; $1c32: $1a
    ldh [rOCPD], a                                ; $1c33: $e0 $6b

Call_000_1c35:
Jump_000_1c35:
    inc de                                        ; $1c35: $13
    dec c                                         ; $1c36: $0d
    jr nz, jr_000_1c32                            ; $1c37: $20 $f9

Call_000_1c39:
Jump_000_1c39:
    ldh a, [rLCDC]                                ; $1c39: $f0 $40
    set 1, a                                      ; $1c3b: $cb $cf

Jump_000_1c3d:
    set 2, a                                      ; $1c3d: $cb $d7
    ldh [rLCDC], a                                ; $1c3f: $e0 $40
    jr jr_000_1c4f                                ; $1c41: $18 $0c

jr_000_1c43:
    ldh a, [rSTAT]                                ; $1c43: $f0 $41
    and $03                                       ; $1c45: $e6 $03
    jr z, jr_000_1c43                             ; $1c47: $28 $fa

jr_000_1c49:
    ldh a, [rSTAT]                                ; $1c49: $f0 $41

Call_000_1c4b:
Jump_000_1c4b:
    and $03                                       ; $1c4b: $e6 $03
    jr nz, jr_000_1c49                            ; $1c4d: $20 $fa

jr_000_1c4f:
    dec b                                         ; $1c4f: $05
    jr nz, jr_000_1bd4                            ; $1c50: $20 $82

    ld hl, $c0b5                                  ; $1c52: $21 $b5 $c0

Call_000_1c55:
    ld a, [hl+]                                   ; $1c55: $2a

Jump_000_1c56:
    ld h, [hl]                                    ; $1c56: $66
    ld l, a                                       ; $1c57: $6f
    ld sp, hl                                     ; $1c58: $f9

Call_000_1c59:
Jump_000_1c59:
    ld a, $01                                     ; $1c59: $3e $01
    ld [$c0cc], a                                 ; $1c5b: $ea $cc $c0
    call Call_000_18a3                            ; $1c5e: $cd $a3 $18
    pop af                                        ; $1c61: $f1

Call_000_1c62:
    ld [$2000], a                                 ; $1c62: $ea $00 $20
    pop hl                                        ; $1c65: $e1

Call_000_1c66:
Jump_000_1c66:
    pop de                                        ; $1c66: $d1
    pop bc                                        ; $1c67: $c1
    pop af                                        ; $1c68: $f1
    reti                                          ; $1c69: $d9


    push af                                       ; $1c6a: $f5
    push hl                                       ; $1c6b: $e5

Call_000_1c6c:
jr_000_1c6c:
    ldh a, [rSTAT]                                ; $1c6c: $f0 $41
    and $03                                       ; $1c6e: $e6 $03
    jr z, jr_000_1c6c                             ; $1c70: $28 $fa

Call_000_1c72:
jr_000_1c72:
    ldh a, [rSTAT]                                ; $1c72: $f0 $41

Jump_000_1c74:
    and $03                                       ; $1c74: $e6 $03
    jr nz, jr_000_1c72                            ; $1c76: $20 $fa

Call_000_1c78:
    ld hl, $ff40                                  ; $1c78: $21 $40 $ff
    set 1, [hl]                                   ; $1c7b: $cb $ce

Jump_000_1c7d:
    set 2, [hl]                                   ; $1c7d: $cb $d6

Call_000_1c7f:
Jump_000_1c7f:
    call Call_000_18a3                            ; $1c7f: $cd $a3 $18
    pop hl                                        ; $1c82: $e1
    pop af                                        ; $1c83: $f1

Call_000_1c84:
    reti                                          ; $1c84: $d9


Call_000_1c85:
Jump_000_1c85:
    push af                                       ; $1c85: $f5
    push bc                                       ; $1c86: $c5
    push hl                                       ; $1c87: $e5

Call_000_1c88:
    ld c, $6a                                     ; $1c88: $0e $6a
    ld a, $80                                     ; $1c8a: $3e $80
    ld [c], a                                     ; $1c8c: $e2
    inc c                                         ; $1c8d: $0c

Call_000_1c8e:
Jump_000_1c8e:
    ld b, $08                                     ; $1c8e: $06 $08

Call_000_1c90:
Jump_000_1c90:
    ld hl, $c139                                  ; $1c90: $21 $39 $c1

jr_000_1c93:
    ldh a, [rSTAT]                                ; $1c93: $f0 $41

Call_000_1c95:
    and $03                                       ; $1c95: $e6 $03

Call_000_1c97:
    jr z, jr_000_1c93                             ; $1c97: $28 $fa

jr_000_1c99:
    ldh a, [rSTAT]                                ; $1c99: $f0 $41
    and $03                                       ; $1c9b: $e6 $03
    jr nz, jr_000_1c99                            ; $1c9d: $20 $fa

jr_000_1c9f:
    ld a, [hl+]                                   ; $1c9f: $2a
    ld [c], a                                     ; $1ca0: $e2
    dec b                                         ; $1ca1: $05
    jr nz, jr_000_1c9f                            ; $1ca2: $20 $fb

    ld a, $01                                     ; $1ca4: $3e $01

Call_000_1ca6:
    ld [$c0cc], a                                 ; $1ca6: $ea $cc $c0
    call Call_000_18a3                            ; $1ca9: $cd $a3 $18
    pop hl                                        ; $1cac: $e1
    pop bc                                        ; $1cad: $c1
    pop af                                        ; $1cae: $f1

Jump_000_1caf:
    reti                                          ; $1caf: $d9


    push af                                       ; $1cb0: $f5
    push bc                                       ; $1cb1: $c5
    push de                                       ; $1cb2: $d5

Call_000_1cb3:
    push hl                                       ; $1cb3: $e5
    ldh a, [$8c]                                  ; $1cb4: $f0 $8c
    or a                                          ; $1cb6: $b7
    ld a, [$4000]                                 ; $1cb7: $fa $00 $40
    jr z, jr_000_1cbe                             ; $1cba: $28 $02

Jump_000_1cbc:
    ldh a, [$8a]                                  ; $1cbc: $f0 $8a

jr_000_1cbe:
    push af                                       ; $1cbe: $f5
    ld a, [$c142]                                 ; $1cbf: $fa $42 $c1
    ld [$2000], a                                 ; $1cc2: $ea $00 $20
    ld hl, $c143                                  ; $1cc5: $21 $43 $c1

Call_000_1cc8:
Jump_000_1cc8:
    ld a, [hl+]                                   ; $1cc8: $2a
    ld h, [hl]                                    ; $1cc9: $66

Jump_000_1cca:
    ld l, a                                       ; $1cca: $6f

Jump_000_1ccb:
    ld [$c0b5], sp                                ; $1ccb: $08 $b5 $c0

Call_000_1cce:
Jump_000_1cce:
    ld sp, hl                                     ; $1cce: $f9
    ld hl, $ff69                                  ; $1ccf: $21 $69 $ff

Call_000_1cd2:
Jump_000_1cd2:
    ld a, [$c141]                                 ; $1cd2: $fa $41 $c1
    ld b, a                                       ; $1cd5: $47

jr_000_1cd6:
    ld c, $04                                     ; $1cd6: $0e $04
    ld a, b                                       ; $1cd8: $78

Call_000_1cd9:
Jump_000_1cd9:
    and $01                                       ; $1cd9: $e6 $01

Jump_000_1cdb:
    jr nz, jr_000_1ce2                            ; $1cdb: $20 $05

Call_000_1cdd:
    dec c                                         ; $1cdd: $0d
    ld a, $88                                     ; $1cde: $3e $88
    ldh [rBCPS], a                                ; $1ce0: $e0 $68

jr_000_1ce2:
    ldh a, [rSTAT]                                ; $1ce2: $f0 $41
    and $03                                       ; $1ce4: $e6 $03

Jump_000_1ce6:
    jr z, jr_000_1ce2                             ; $1ce6: $28 $fa

jr_000_1ce8:
    ldh a, [rSTAT]                                ; $1ce8: $f0 $41
    and $03                                       ; $1cea: $e6 $03

Call_000_1cec:
    jr nz, jr_000_1ce8                            ; $1cec: $20 $fa

Call_000_1cee:
jr_000_1cee:
    pop de                                        ; $1cee: $d1

Call_000_1cef:
Jump_000_1cef:
    ld [hl], e                                    ; $1cef: $73
    ld [hl], d                                    ; $1cf0: $72

Jump_000_1cf1:
    pop de                                        ; $1cf1: $d1

Call_000_1cf2:
Jump_000_1cf2:
    ld [hl], e                                    ; $1cf2: $73
    ld [hl], d                                    ; $1cf3: $72

Call_000_1cf4:
    pop de                                        ; $1cf4: $d1
    ld [hl], e                                    ; $1cf5: $73

Jump_000_1cf6:
    ld [hl], d                                    ; $1cf6: $72
    pop de                                        ; $1cf7: $d1

Jump_000_1cf8:
    ld [hl], e                                    ; $1cf8: $73
    ld [hl], d                                    ; $1cf9: $72
    dec c                                         ; $1cfa: $0d

Call_000_1cfb:
Jump_000_1cfb:
    jr nz, jr_000_1cee                            ; $1cfb: $20 $f1

    dec b                                         ; $1cfd: $05
    jr nz, jr_000_1cd6                            ; $1cfe: $20 $d6

Call_000_1d00:
Jump_000_1d00:
    ld hl, $c0b5                                  ; $1d00: $21 $b5 $c0
    ld a, [hl+]                                   ; $1d03: $2a

Jump_000_1d04:
    ld h, [hl]                                    ; $1d04: $66

Call_000_1d05:
Jump_000_1d05:
    ld l, a                                       ; $1d05: $6f
    ld sp, hl                                     ; $1d06: $f9

Call_000_1d07:
    ld a, $01                                     ; $1d07: $3e $01

Call_000_1d09:
    ld [$c0cc], a                                 ; $1d09: $ea $cc $c0

Call_000_1d0c:
    call Call_000_18a3                            ; $1d0c: $cd $a3 $18

Call_000_1d0f:
Jump_000_1d0f:
    pop af                                        ; $1d0f: $f1

Call_000_1d10:
    ld [$2000], a                                 ; $1d10: $ea $00 $20
    pop hl                                        ; $1d13: $e1
    pop de                                        ; $1d14: $d1

Call_000_1d15:
    pop bc                                        ; $1d15: $c1

Call_000_1d16:
    pop af                                        ; $1d16: $f1
    reti                                          ; $1d17: $d9


    ld hl, $c11d                                  ; $1d18: $21 $1d $c1
    ld e, [hl]                                    ; $1d1b: $5e

Call_000_1d1c:
Jump_000_1d1c:
    inc hl                                        ; $1d1c: $23
    ld d, [hl]                                    ; $1d1d: $56
    ld hl, $c11b                                  ; $1d1e: $21 $1b $c1
    ld a, [hl+]                                   ; $1d21: $2a
    ld h, [hl]                                    ; $1d22: $66
    ld l, a                                       ; $1d23: $6f

jr_000_1d24:
    ldh a, [rSTAT]                                ; $1d24: $f0 $41
    and $03                                       ; $1d26: $e6 $03
    jr z, jr_000_1d24                             ; $1d28: $28 $fa

jr_000_1d2a:
    ldh a, [rSTAT]                                ; $1d2a: $f0 $41

Call_000_1d2c:
    and $03                                       ; $1d2c: $e6 $03

Jump_000_1d2e:
    jr nz, jr_000_1d2a                            ; $1d2e: $20 $fa

    jp Jump_000_1227                              ; $1d30: $c3 $27 $12


Jump_000_1d33:
    ldh a, [rSVBK]                                ; $1d33: $f0 $70
    push af                                       ; $1d35: $f5
    ld a, $01                                     ; $1d36: $3e $01
    ldh [rSVBK], a                                ; $1d38: $e0 $70

Call_000_1d3a:
    ld a, $01                                     ; $1d3a: $3e $01
    ldh [rVBK], a                                 ; $1d3c: $e0 $4f
    ld c, $0a                                     ; $1d3e: $0e $0a
    ld de, $9c00                                  ; $1d40: $11 $00 $9c
    ld hl, $dc00                                  ; $1d43: $21 $00 $dc
    call Call_000_1d9c                            ; $1d46: $cd $9c $1d
    xor a                                         ; $1d49: $af
    ldh [rVBK], a                                 ; $1d4a: $e0 $4f
    ld c, $0a                                     ; $1d4c: $0e $0a

Jump_000_1d4e:
    ld de, $9c00                                  ; $1d4e: $11 $00 $9c

Call_000_1d51:
    ld hl, $d800                                  ; $1d51: $21 $00 $d8
    call Call_000_1d9c                            ; $1d54: $cd $9c $1d
    pop af                                        ; $1d57: $f1

Call_000_1d58:
    ldh [rSVBK], a                                ; $1d58: $e0 $70

Call_000_1d5a:
    ret                                           ; $1d5a: $c9


Call_000_1d5b:
Jump_000_1d5b:
    ld a, [$c11f]                                 ; $1d5b: $fa $1f $c1
    or a                                          ; $1d5e: $b7

Call_000_1d5f:
    ret z                                         ; $1d5f: $c8

    ld c, a                                       ; $1d60: $4f
    ld hl, $c122                                  ; $1d61: $21 $22 $c1

Call_000_1d64:
    ld e, [hl]                                    ; $1d64: $5e
    inc hl                                        ; $1d65: $23
    ld d, [hl]                                    ; $1d66: $56
    ld hl, $c120                                  ; $1d67: $21 $20 $c1
    ld a, [hl+]                                   ; $1d6a: $2a

Call_000_1d6b:
Jump_000_1d6b:
    ld h, [hl]                                    ; $1d6b: $66
    ld l, a                                       ; $1d6c: $6f
    jr jr_000_1d9c                                ; $1d6d: $18 $2d

    ldh a, [rSVBK]                                ; $1d6f: $f0 $70
    push af                                       ; $1d71: $f5
    ld a, $02                                     ; $1d72: $3e $02

Jump_000_1d74:
    ldh [rSVBK], a                                ; $1d74: $e0 $70

Call_000_1d76:
    ld hl, $c167                                  ; $1d76: $21 $67 $c1
    call Call_000_1d8c                            ; $1d79: $cd $8c $1d

Call_000_1d7c:
    call nz, Call_000_1d9c                        ; $1d7c: $c4 $9c $1d
    ld hl, $c170                                  ; $1d7f: $21 $70 $c1

Call_000_1d82:
    call Call_000_1d8c                            ; $1d82: $cd $8c $1d
    call nz, Call_000_1d9c                        ; $1d85: $c4 $9c $1d
    pop af                                        ; $1d88: $f1
    ldh [rSVBK], a                                ; $1d89: $e0 $70
    ret                                           ; $1d8b: $c9


Call_000_1d8c:
    ld a, [hl]                                    ; $1d8c: $7e
    or a                                          ; $1d8d: $b7
    ret z                                         ; $1d8e: $c8

    ld [hl], $00                                  ; $1d8f: $36 $00

Call_000_1d91:
    inc hl                                        ; $1d91: $23
    add a                                         ; $1d92: $87
    ld c, a                                       ; $1d93: $4f

Call_000_1d94:
    ld a, [hl+]                                   ; $1d94: $2a
    ld e, a                                       ; $1d95: $5f
    ld a, [hl+]                                   ; $1d96: $2a

Call_000_1d97:
    ld d, a                                       ; $1d97: $57
    ld a, [hl+]                                   ; $1d98: $2a
    ld h, [hl]                                    ; $1d99: $66

Call_000_1d9a:
    ld l, a                                       ; $1d9a: $6f
    ret                                           ; $1d9b: $c9


Call_000_1d9c:
jr_000_1d9c:
    ld a, e                                       ; $1d9c: $7b
    ldh [rHDMA4], a                               ; $1d9d: $e0 $54
    ld a, d                                       ; $1d9f: $7a

Jump_000_1da0:
    ldh [rHDMA3], a                               ; $1da0: $e0 $53

Jump_000_1da2:
    ld a, l                                       ; $1da2: $7d

Jump_000_1da3:
    ldh [rHDMA2], a                               ; $1da3: $e0 $52

Jump_000_1da5:
    ld a, h                                       ; $1da5: $7c

Jump_000_1da6:
    ldh [rHDMA1], a                               ; $1da6: $e0 $51

Call_000_1da8:
Jump_000_1da8:
    ld a, c                                       ; $1da8: $79
    srl a                                         ; $1da9: $cb $3f

Call_000_1dab:
Jump_000_1dab:
    srl a                                         ; $1dab: $cb $3f
    jr z, jr_000_1dc4                             ; $1dad: $28 $15

Jump_000_1daf:
    ld b, a                                       ; $1daf: $47

Call_000_1db0:
    ld d, $03                                     ; $1db0: $16 $03

jr_000_1db2:
    ldh a, [rSTAT]                                ; $1db2: $f0 $41
    and $03                                       ; $1db4: $e6 $03
    jr z, jr_000_1db2                             ; $1db6: $28 $fa

jr_000_1db8:
    ldh a, [rSTAT]                                ; $1db8: $f0 $41

Jump_000_1dba:
    and $03                                       ; $1dba: $e6 $03
    jr nz, jr_000_1db8                            ; $1dbc: $20 $fa

Jump_000_1dbe:
    ld a, d                                       ; $1dbe: $7a
    ldh [rHDMA5], a                               ; $1dbf: $e0 $55

Call_000_1dc1:
    dec b                                         ; $1dc1: $05

Call_000_1dc2:
Jump_000_1dc2:
    jr nz, jr_000_1db2                            ; $1dc2: $20 $ee

Jump_000_1dc4:
jr_000_1dc4:
    ld a, c                                       ; $1dc4: $79
    and $03                                       ; $1dc5: $e6 $03
    ret z                                         ; $1dc7: $c8

Call_000_1dc8:
    dec a                                         ; $1dc8: $3d

Jump_000_1dc9:
    ld b, a                                       ; $1dc9: $47

Jump_000_1dca:
jr_000_1dca:
    ldh a, [rSTAT]                                ; $1dca: $f0 $41

Call_000_1dcc:
    and $03                                       ; $1dcc: $e6 $03

Jump_000_1dce:
    jr z, jr_000_1dca                             ; $1dce: $28 $fa

jr_000_1dd0:
    ldh a, [rSTAT]                                ; $1dd0: $f0 $41

Jump_000_1dd2:
    and $03                                       ; $1dd2: $e6 $03
    jr nz, jr_000_1dd0                            ; $1dd4: $20 $fa

    ld a, b                                       ; $1dd6: $78

Jump_000_1dd7:
    ldh [rHDMA5], a                               ; $1dd7: $e0 $55
    ret                                           ; $1dd9: $c9


    push af                                       ; $1dda: $f5
    push hl                                       ; $1ddb: $e5
    ld hl, $ff40                                  ; $1ddc: $21 $40 $ff
    res 1, [hl]                                   ; $1ddf: $cb $8e

Call_000_1de1:
    ldh a, [rSCY]                                 ; $1de1: $f0 $42

Jump_000_1de3:
    dec a                                         ; $1de3: $3d
    ldh [rSCY], a                                 ; $1de4: $e0 $42
    ldh a, [rSVBK]                                ; $1de6: $f0 $70

Call_000_1de8:
    push af                                       ; $1de8: $f5
    ld a, $05                                     ; $1de9: $3e $05
    ldh [rSVBK], a                                ; $1deb: $e0 $70
    ld a, [$cbd9]                                 ; $1ded: $fa $d9 $cb

Jump_000_1df0:
    ld l, $06                                     ; $1df0: $2e $06
    add l                                         ; $1df2: $85

Call_000_1df3:
Jump_000_1df3:
    ld [$cbd9], a                                 ; $1df3: $ea $d9 $cb
    sub l                                         ; $1df6: $95

Call_000_1df7:
    ld l, a                                       ; $1df7: $6f

Jump_000_1df8:
    ld a, [$cbda]                                 ; $1df8: $fa $da $cb
    add l                                         ; $1dfb: $85
    ld l, a                                       ; $1dfc: $6f
    ld h, $d5                                     ; $1dfd: $26 $d5
    ld a, [hl]                                    ; $1dff: $7e

Call_000_1e00:
Jump_000_1e00:
    sra a                                         ; $1e00: $cb $2f
    sra a                                         ; $1e02: $cb $2f

Call_000_1e04:
    ld l, a                                       ; $1e04: $6f
    ld a, [$cbd8]                                 ; $1e05: $fa $d8 $cb

Call_000_1e08:
    add l                                         ; $1e08: $85
    ldh [rSCX], a                                 ; $1e09: $e0 $43
    pop af                                        ; $1e0b: $f1
    ldh [rSVBK], a                                ; $1e0c: $e0 $70

Jump_000_1e0e:
    ld a, [$c0d4]                                 ; $1e0e: $fa $d4 $c0

Call_000_1e11:
    inc a                                         ; $1e11: $3c

Call_000_1e12:
    ld [$c0d4], a                                 ; $1e12: $ea $d4 $c0

Call_000_1e15:
Jump_000_1e15:
    ld l, a                                       ; $1e15: $6f
    ld a, [$c0d8]                                 ; $1e16: $fa $d8 $c0

Call_000_1e19:
    cp l                                          ; $1e19: $bd
    jr z, jr_000_1e23                             ; $1e1a: $28 $07

Jump_000_1e1c:
    ld a, [$c0d1]                                 ; $1e1c: $fa $d1 $c0
    dec a                                         ; $1e1f: $3d
    ld [$c0d1], a                                 ; $1e20: $ea $d1 $c0

Call_000_1e23:
jr_000_1e23:
    call Call_000_18a3                            ; $1e23: $cd $a3 $18
    pop hl                                        ; $1e26: $e1
    pop af                                        ; $1e27: $f1
    reti                                          ; $1e28: $d9


    push af                                       ; $1e29: $f5
    push hl                                       ; $1e2a: $e5
    ld hl, $ff40                                  ; $1e2b: $21 $40 $ff

Jump_000_1e2e:
    res 1, [hl]                                   ; $1e2e: $cb $8e
    ldh a, [rSCY]                                 ; $1e30: $f0 $42

Call_000_1e32:
    dec a                                         ; $1e32: $3d
    ldh [rSCY], a                                 ; $1e33: $e0 $42
    ldh a, [rSVBK]                                ; $1e35: $f0 $70
    push af                                       ; $1e37: $f5
    ld a, $05                                     ; $1e38: $3e $05

Call_000_1e3a:
    ldh [rSVBK], a                                ; $1e3a: $e0 $70

Call_000_1e3c:
Jump_000_1e3c:
    ld a, [$cbd9]                                 ; $1e3c: $fa $d9 $cb

Jump_000_1e3f:
    ld l, $06                                     ; $1e3f: $2e $06
    add l                                         ; $1e41: $85
    ld [$cbd9], a                                 ; $1e42: $ea $d9 $cb
    sub l                                         ; $1e45: $95
    ld l, a                                       ; $1e46: $6f
    ld a, [$cbda]                                 ; $1e47: $fa $da $cb
    add l                                         ; $1e4a: $85
    ld l, a                                       ; $1e4b: $6f
    ld h, $d5                                     ; $1e4c: $26 $d5
    ld a, [hl]                                    ; $1e4e: $7e
    sra a                                         ; $1e4f: $cb $2f

Call_000_1e51:
    sra a                                         ; $1e51: $cb $2f

Call_000_1e53:
    ld l, a                                       ; $1e53: $6f
    ld a, [$cbd8]                                 ; $1e54: $fa $d8 $cb

Jump_000_1e57:
    add l                                         ; $1e57: $85

Call_000_1e58:
    ldh [rSCX], a                                 ; $1e58: $e0 $43
    pop af                                        ; $1e5a: $f1
    ldh [rSVBK], a                                ; $1e5b: $e0 $70
    ld a, [$c0d4]                                 ; $1e5d: $fa $d4 $c0
    inc a                                         ; $1e60: $3c
    ld [$c0d4], a                                 ; $1e61: $ea $d4 $c0
    ld l, a                                       ; $1e64: $6f
    ld a, [$c0d8]                                 ; $1e65: $fa $d8 $c0

Call_000_1e68:
    cp l                                          ; $1e68: $bd

Jump_000_1e69:
    jr z, jr_000_1e78                             ; $1e69: $28 $0d

    ld a, [$c0d1]                                 ; $1e6b: $fa $d1 $c0
    dec a                                         ; $1e6e: $3d
    ld [$c0d1], a                                 ; $1e6f: $ea $d1 $c0

Jump_000_1e72:
    ld a, $80                                     ; $1e72: $3e $80

Jump_000_1e74:
    cp l                                          ; $1e74: $bd
    jp z, Jump_000_18d5                           ; $1e75: $ca $d5 $18

jr_000_1e78:
    call Call_000_18a3                            ; $1e78: $cd $a3 $18
    pop hl                                        ; $1e7b: $e1
    pop af                                        ; $1e7c: $f1

Call_000_1e7d:
    reti                                          ; $1e7d: $d9


    push af                                       ; $1e7e: $f5

Jump_000_1e7f:
    push hl                                       ; $1e7f: $e5
    ld hl, $ff40                                  ; $1e80: $21 $40 $ff
    set 1, [hl]                                   ; $1e83: $cb $ce
    ld a, [$cbd0]                                 ; $1e85: $fa $d0 $cb
    ldh [rSCY], a                                 ; $1e88: $e0 $42
    ld a, [$cbd8]                                 ; $1e8a: $fa $d8 $cb
    ldh [rSCX], a                                 ; $1e8d: $e0 $43

Call_000_1e8f:
    xor a                                         ; $1e8f: $af
    ld [$c0d4], a                                 ; $1e90: $ea $d4 $c0
    ld a, [$cbd2]                                 ; $1e93: $fa $d2 $cb
    or a                                          ; $1e96: $b7

Jump_000_1e97:
    jr nz, jr_000_1ea0                            ; $1e97: $20 $07

Jump_000_1e99:
    ld a, [$c0d8]                                 ; $1e99: $fa $d8 $c0
    dec a                                         ; $1e9c: $3d

Jump_000_1e9d:
    ld [$c0d8], a                                 ; $1e9d: $ea $d8 $c0

jr_000_1ea0:
    call Call_000_18a3                            ; $1ea0: $cd $a3 $18

Jump_000_1ea3:
    pop hl                                        ; $1ea3: $e1
    pop af                                        ; $1ea4: $f1
    reti                                          ; $1ea5: $d9


    push af                                       ; $1ea6: $f5
    push hl                                       ; $1ea7: $e5
    ld hl, $ff40                                  ; $1ea8: $21 $40 $ff

Call_000_1eab:
    set 1, [hl]                                   ; $1eab: $cb $ce
    ld a, [$cbd1]                                 ; $1ead: $fa $d1 $cb
    or a                                          ; $1eb0: $b7
    jr z, jr_000_1ec8                             ; $1eb1: $28 $15

Jump_000_1eb3:
    ld a, [$cbd2]                                 ; $1eb3: $fa $d2 $cb
    or a                                          ; $1eb6: $b7
    jr z, jr_000_1ec2                             ; $1eb7: $28 $09

    dec a                                         ; $1eb9: $3d
    ld [$cbd2], a                                 ; $1eba: $ea $d2 $cb

Jump_000_1ebd:
    ld a, [$cbcf]                                 ; $1ebd: $fa $cf $cb

Call_000_1ec0:
Jump_000_1ec0:
    jr jr_000_1ed5                                ; $1ec0: $18 $13

Call_000_1ec2:
Jump_000_1ec2:
jr_000_1ec2:
    ld a, [$cbd1]                                 ; $1ec2: $fa $d1 $cb

Jump_000_1ec5:
    ld [$cbd2], a                                 ; $1ec5: $ea $d2 $cb

Call_000_1ec8:
jr_000_1ec8:
    ld a, [$c0d8]                                 ; $1ec8: $fa $d8 $c0
    or a                                          ; $1ecb: $b7
    jr z, jr_000_1eed                             ; $1ecc: $28 $1f

Call_000_1ece:
    ld a, [$cbcf]                                 ; $1ece: $fa $cf $cb
    dec a                                         ; $1ed1: $3d
    ld [$cbcf], a                                 ; $1ed2: $ea $cf $cb

Call_000_1ed5:
jr_000_1ed5:
    ldh [$c9], a                                  ; $1ed5: $e0 $c9

Jump_000_1ed7:
    ld a, [$cbd8]                                 ; $1ed7: $fa $d8 $cb
    ldh [$c8], a                                  ; $1eda: $e0 $c8
    ld a, [$cbda]                                 ; $1edc: $fa $da $cb

Call_000_1edf:
    inc a                                         ; $1edf: $3c

Jump_000_1ee0:
    ld [$cbda], a                                 ; $1ee0: $ea $da $cb
    xor a                                         ; $1ee3: $af
    ld [$cbd9], a                                 ; $1ee4: $ea $d9 $cb
    call Call_000_18a3                            ; $1ee7: $cd $a3 $18
    pop hl                                        ; $1eea: $e1

Call_000_1eeb:
    pop af                                        ; $1eeb: $f1

Call_000_1eec:
    reti                                          ; $1eec: $d9


Call_000_1eed:
jr_000_1eed:
    ld a, [$cbd0]                                 ; $1eed: $fa $d0 $cb

Call_000_1ef0:
Jump_000_1ef0:
    ldh [$c9], a                                  ; $1ef0: $e0 $c9
    pop hl                                        ; $1ef2: $e1
    jp Jump_000_2111                              ; $1ef3: $c3 $11 $21


    push af                                       ; $1ef6: $f5
    push hl                                       ; $1ef7: $e5

Call_000_1ef8:
    ld a, [$cbd0]                                 ; $1ef8: $fa $d0 $cb
    ldh [rSCY], a                                 ; $1efb: $e0 $42

Jump_000_1efd:
    xor a                                         ; $1efd: $af
    ld [$c0d4], a                                 ; $1efe: $ea $d4 $c0

Call_000_1f01:
Jump_000_1f01:
    ld a, [$cbd2]                                 ; $1f01: $fa $d2 $cb

Jump_000_1f04:
    or a                                          ; $1f04: $b7

Jump_000_1f05:
    jr nz, jr_000_1f0e                            ; $1f05: $20 $07

    ld a, [$c0d8]                                 ; $1f07: $fa $d8 $c0

Call_000_1f0a:
    inc a                                         ; $1f0a: $3c
    ld [$c0d8], a                                 ; $1f0b: $ea $d8 $c0

Call_000_1f0e:
Jump_000_1f0e:
jr_000_1f0e:
    call Call_000_18a3                            ; $1f0e: $cd $a3 $18
    pop hl                                        ; $1f11: $e1
    pop af                                        ; $1f12: $f1

Call_000_1f13:
    reti                                          ; $1f13: $d9


Jump_000_1f14:
    push af                                       ; $1f14: $f5

Call_000_1f15:
    push hl                                       ; $1f15: $e5

Call_000_1f16:
    ld a, [$cbd1]                                 ; $1f16: $fa $d1 $cb

Jump_000_1f19:
    or a                                          ; $1f19: $b7
    jr z, jr_000_1f31                             ; $1f1a: $28 $15

    ld a, [$cbd2]                                 ; $1f1c: $fa $d2 $cb

Call_000_1f1f:
    or a                                          ; $1f1f: $b7
    jr z, jr_000_1f2b                             ; $1f20: $28 $09

    dec a                                         ; $1f22: $3d
    ld [$cbd2], a                                 ; $1f23: $ea $d2 $cb

Call_000_1f26:
Jump_000_1f26:
    ld a, [$cbcf]                                 ; $1f26: $fa $cf $cb

Call_000_1f29:
    jr jr_000_1f38                                ; $1f29: $18 $0d

jr_000_1f2b:
    ld a, [$cbd1]                                 ; $1f2b: $fa $d1 $cb
    ld [$cbd2], a                                 ; $1f2e: $ea $d2 $cb

Jump_000_1f31:
jr_000_1f31:
    ld a, [$cbcf]                                 ; $1f31: $fa $cf $cb
    inc a                                         ; $1f34: $3c
    ld [$cbcf], a                                 ; $1f35: $ea $cf $cb

jr_000_1f38:
    ldh [$c9], a                                  ; $1f38: $e0 $c9
    ld a, [$c0d8]                                 ; $1f3a: $fa $d8 $c0
    cp $8f                                        ; $1f3d: $fe $8f
    jp z, Jump_000_2100                           ; $1f3f: $ca $00 $21

    call Call_000_18a3                            ; $1f42: $cd $a3 $18
    pop hl                                        ; $1f45: $e1
    pop af                                        ; $1f46: $f1

Call_000_1f47:
Jump_000_1f47:
    reti                                          ; $1f47: $d9


    push af                                       ; $1f48: $f5

Call_000_1f49:
    push hl                                       ; $1f49: $e5
    ld hl, $ff42                                  ; $1f4a: $21 $42 $ff

Call_000_1f4d:
Jump_000_1f4d:
    dec [hl]                                      ; $1f4d: $35
    ldh a, [rSVBK]                                ; $1f4e: $f0 $70

Call_000_1f50:
Jump_000_1f50:
    push af                                       ; $1f50: $f5

Jump_000_1f51:
    ld a, $05                                     ; $1f51: $3e $05
    ldh [rSVBK], a                                ; $1f53: $e0 $70

Jump_000_1f55:
    ld a, [$cbd9]                                 ; $1f55: $fa $d9 $cb
    ld l, $06                                     ; $1f58: $2e $06
    add l                                         ; $1f5a: $85
    ld [$cbd9], a                                 ; $1f5b: $ea $d9 $cb

Call_000_1f5e:
    sub l                                         ; $1f5e: $95
    ld l, a                                       ; $1f5f: $6f

Call_000_1f60:
    ld a, [$cbda]                                 ; $1f60: $fa $da $cb
    add l                                         ; $1f63: $85
    ld l, a                                       ; $1f64: $6f
    ld h, $d5                                     ; $1f65: $26 $d5
    ld a, [hl]                                    ; $1f67: $7e

Call_000_1f68:
    sra a                                         ; $1f68: $cb $2f

Jump_000_1f6a:
    sra a                                         ; $1f6a: $cb $2f
    ld l, a                                       ; $1f6c: $6f
    ld a, [$cbd8]                                 ; $1f6d: $fa $d8 $cb
    add l                                         ; $1f70: $85

Call_000_1f71:
    ldh [rSCX], a                                 ; $1f71: $e0 $43
    pop af                                        ; $1f73: $f1
    ldh [rSVBK], a                                ; $1f74: $e0 $70

Call_000_1f76:
    ld a, [$c0d4]                                 ; $1f76: $fa $d4 $c0
    inc a                                         ; $1f79: $3c
    ld [$c0d4], a                                 ; $1f7a: $ea $d4 $c0

Call_000_1f7d:
Jump_000_1f7d:
    ld l, a                                       ; $1f7d: $6f
    ld a, [$c0d8]                                 ; $1f7e: $fa $d8 $c0
    cp l                                          ; $1f81: $bd
    jr z, jr_000_1f90                             ; $1f82: $28 $0c

    ld a, [$c0d1]                                 ; $1f84: $fa $d1 $c0
    dec a                                         ; $1f87: $3d
    ld [$c0d1], a                                 ; $1f88: $ea $d1 $c0
    ld hl, $ff40                                  ; $1f8b: $21 $40 $ff
    res 1, [hl]                                   ; $1f8e: $cb $8e

jr_000_1f90:
    call Call_000_18a3                            ; $1f90: $cd $a3 $18

Jump_000_1f93:
    pop hl                                        ; $1f93: $e1
    pop af                                        ; $1f94: $f1

Jump_000_1f95:
    reti                                          ; $1f95: $d9


    push af                                       ; $1f96: $f5

Jump_000_1f97:
    push hl                                       ; $1f97: $e5
    ld a, [$cbd0]                                 ; $1f98: $fa $d0 $cb
    ldh [rSCY], a                                 ; $1f9b: $e0 $42
    xor a                                         ; $1f9d: $af
    ld [$c0d4], a                                 ; $1f9e: $ea $d4 $c0
    ld a, [$cbd2]                                 ; $1fa1: $fa $d2 $cb
    or a                                          ; $1fa4: $b7
    jr nz, jr_000_1fae                            ; $1fa5: $20 $07

Jump_000_1fa7:
    ld a, [$c0d8]                                 ; $1fa7: $fa $d8 $c0
    dec a                                         ; $1faa: $3d
    ld [$c0d8], a                                 ; $1fab: $ea $d8 $c0

jr_000_1fae:
    call Call_000_18a3                            ; $1fae: $cd $a3 $18

Call_000_1fb1:
    pop hl                                        ; $1fb1: $e1
    pop af                                        ; $1fb2: $f1
    reti                                          ; $1fb3: $d9


Call_000_1fb4:
    push af                                       ; $1fb4: $f5

Call_000_1fb5:
Jump_000_1fb5:
    push hl                                       ; $1fb5: $e5
    ld a, [$cbd2]                                 ; $1fb6: $fa $d2 $cb
    or a                                          ; $1fb9: $b7
    jr nz, jr_000_1fc3                            ; $1fba: $20 $07

Call_000_1fbc:
Jump_000_1fbc:
    ld a, [$cbdb]                                 ; $1fbc: $fa $db $cb
    inc a                                         ; $1fbf: $3c

Call_000_1fc0:
    ld [$cbdb], a                                 ; $1fc0: $ea $db $cb

jr_000_1fc3:
    call Call_000_18a3                            ; $1fc3: $cd $a3 $18

Call_000_1fc6:
    pop hl                                        ; $1fc6: $e1
    pop af                                        ; $1fc7: $f1

Call_000_1fc8:
Jump_000_1fc8:
    reti                                          ; $1fc8: $d9


Call_000_1fc9:
    push af                                       ; $1fc9: $f5
    push hl                                       ; $1fca: $e5
    ldh a, [rSCY]                                 ; $1fcb: $f0 $42
    dec a                                         ; $1fcd: $3d
    ldh [rSCY], a                                 ; $1fce: $e0 $42
    ld a, [$c0e0]                                 ; $1fd0: $fa $e0 $c0

Jump_000_1fd3:
    inc a                                         ; $1fd3: $3c

Jump_000_1fd4:
    ld [$c0e0], a                                 ; $1fd4: $ea $e0 $c0
    ld l, a                                       ; $1fd7: $6f

Call_000_1fd8:
    ld a, [$c0e4]                                 ; $1fd8: $fa $e4 $c0
    cp l                                          ; $1fdb: $bd

Jump_000_1fdc:
    jr z, jr_000_1fe5                             ; $1fdc: $28 $07

Jump_000_1fde:
    ld a, [$c0d1]                                 ; $1fde: $fa $d1 $c0

Jump_000_1fe1:
    dec a                                         ; $1fe1: $3d
    ld [$c0d1], a                                 ; $1fe2: $ea $d1 $c0

jr_000_1fe5:
    call Call_000_18a3                            ; $1fe5: $cd $a3 $18
    pop hl                                        ; $1fe8: $e1
    pop af                                        ; $1fe9: $f1
    reti                                          ; $1fea: $d9


    push af                                       ; $1feb: $f5
    push hl                                       ; $1fec: $e5
    ld a, [$cbd1]                                 ; $1fed: $fa $d1 $cb

Call_000_1ff0:
    or a                                          ; $1ff0: $b7
    jr z, jr_000_2008                             ; $1ff1: $28 $15

Call_000_1ff3:
    ld a, [$cbd2]                                 ; $1ff3: $fa $d2 $cb
    or a                                          ; $1ff6: $b7

Jump_000_1ff7:
    jr z, jr_000_2002                             ; $1ff7: $28 $09

    dec a                                         ; $1ff9: $3d
    ld [$cbd2], a                                 ; $1ffa: $ea $d2 $cb
    ld a, [$cbcf]                                 ; $1ffd: $fa $cf $cb

Call_000_2000:
Jump_000_2000:
    jr jr_000_200f                                ; $2000: $18 $0d

Call_000_2002:
jr_000_2002:
    ld a, [$cbd1]                                 ; $2002: $fa $d1 $cb

Jump_000_2005:
    ld [$cbd2], a                                 ; $2005: $ea $d2 $cb

Jump_000_2008:
jr_000_2008:
    ld a, [$cbcf]                                 ; $2008: $fa $cf $cb

Call_000_200b:
    dec a                                         ; $200b: $3d

Call_000_200c:
    ld [$cbcf], a                                 ; $200c: $ea $cf $cb

Jump_000_200f:
jr_000_200f:
    ldh [$c9], a                                  ; $200f: $e0 $c9

Jump_000_2011:
    ld a, [$cbdb]                                 ; $2011: $fa $db $cb
    cp $8e                                        ; $2014: $fe $8e
    jr z, jr_000_2028                             ; $2016: $28 $10

Call_000_2018:
Jump_000_2018:
    ld [$c0e0], a                                 ; $2018: $ea $e0 $c0

Call_000_201b:
Jump_000_201b:
    ld a, [$c0d8]                                 ; $201b: $fa $d8 $c0
    cp $01                                        ; $201e: $fe $01

Call_000_2020:
    jr z, jr_000_2028                             ; $2020: $28 $06

Call_000_2022:
    call Call_000_18a3                            ; $2022: $cd $a3 $18

Call_000_2025:
Jump_000_2025:
    pop hl                                        ; $2025: $e1
    pop af                                        ; $2026: $f1

Jump_000_2027:
    reti                                          ; $2027: $d9


jr_000_2028:
    pop hl                                        ; $2028: $e1
    jp Jump_000_2111                              ; $2029: $c3 $11 $21


    push af                                       ; $202c: $f5

Jump_000_202d:
    push hl                                       ; $202d: $e5
    ld hl, $ff42                                  ; $202e: $21 $42 $ff

Jump_000_2031:
    dec [hl]                                      ; $2031: $35

Call_000_2032:
    ldh a, [rSVBK]                                ; $2032: $f0 $70

Call_000_2034:
Jump_000_2034:
    push af                                       ; $2034: $f5
    ld a, $05                                     ; $2035: $3e $05

Jump_000_2037:
    ldh [rSVBK], a                                ; $2037: $e0 $70
    ld a, [$cbd9]                                 ; $2039: $fa $d9 $cb

Jump_000_203c:
    ld l, $06                                     ; $203c: $2e $06

Jump_000_203e:
    add l                                         ; $203e: $85

Call_000_203f:
Jump_000_203f:
    ld [$cbd9], a                                 ; $203f: $ea $d9 $cb
    sub l                                         ; $2042: $95

Call_000_2043:
    ld l, a                                       ; $2043: $6f
    ld a, [$cbda]                                 ; $2044: $fa $da $cb
    add l                                         ; $2047: $85
    ld l, a                                       ; $2048: $6f
    ld h, $d5                                     ; $2049: $26 $d5

Jump_000_204b:
    ld a, [hl]                                    ; $204b: $7e

Call_000_204c:
    sra a                                         ; $204c: $cb $2f

Call_000_204e:
    sra a                                         ; $204e: $cb $2f

Call_000_2050:
    ld l, a                                       ; $2050: $6f
    ld a, [$cbd8]                                 ; $2051: $fa $d8 $cb

Call_000_2054:
    add l                                         ; $2054: $85
    ldh [rSCX], a                                 ; $2055: $e0 $43
    pop af                                        ; $2057: $f1

Call_000_2058:
Jump_000_2058:
    ldh [rSVBK], a                                ; $2058: $e0 $70
    ld a, [$c0e0]                                 ; $205a: $fa $e0 $c0

Jump_000_205d:
    inc a                                         ; $205d: $3c

Jump_000_205e:
    ld [$c0e0], a                                 ; $205e: $ea $e0 $c0
    ld l, a                                       ; $2061: $6f
    ld a, [$c0e4]                                 ; $2062: $fa $e4 $c0

Jump_000_2065:
    cp l                                          ; $2065: $bd
    jr z, jr_000_2071                             ; $2066: $28 $09

Call_000_2068:
    ld hl, $c0d1                                  ; $2068: $21 $d1 $c0
    dec [hl]                                      ; $206b: $35
    ld hl, $ff40                                  ; $206c: $21 $40 $ff
    res 1, [hl]                                   ; $206f: $cb $8e

Call_000_2071:
jr_000_2071:
    call Call_000_18a3                            ; $2071: $cd $a3 $18
    pop hl                                        ; $2074: $e1
    pop af                                        ; $2075: $f1
    reti                                          ; $2076: $d9


    push af                                       ; $2077: $f5
    push hl                                       ; $2078: $e5
    ld a, [$cbd0]                                 ; $2079: $fa $d0 $cb

Call_000_207c:
    ldh [rSCY], a                                 ; $207c: $e0 $42

Call_000_207e:
Jump_000_207e:
    ld a, [$cbd8]                                 ; $207e: $fa $d8 $cb
    ldh [rSCX], a                                 ; $2081: $e0 $43

Jump_000_2083:
    xor a                                         ; $2083: $af
    ld [$c0d4], a                                 ; $2084: $ea $d4 $c0

Call_000_2087:
    ld hl, $ff40                                  ; $2087: $21 $40 $ff
    set 1, [hl]                                   ; $208a: $cb $ce
    ld a, [$cbd2]                                 ; $208c: $fa $d2 $cb

Call_000_208f:
    or a                                          ; $208f: $b7
    jr nz, jr_000_2096                            ; $2090: $20 $04

Call_000_2092:
    ld hl, $c0d8                                  ; $2092: $21 $d8 $c0
    inc [hl]                                      ; $2095: $34

jr_000_2096:
    call Call_000_18a3                            ; $2096: $cd $a3 $18
    pop hl                                        ; $2099: $e1
    pop af                                        ; $209a: $f1
    reti                                          ; $209b: $d9


Call_000_209c:
Jump_000_209c:
    push af                                       ; $209c: $f5
    push hl                                       ; $209d: $e5
    ld a, [$cbd2]                                 ; $209e: $fa $d2 $cb

Jump_000_20a1:
    or a                                          ; $20a1: $b7
    jr nz, jr_000_20a8                            ; $20a2: $20 $04

    ld hl, $cbdb                                  ; $20a4: $21 $db $cb
    dec [hl]                                      ; $20a7: $35

Call_000_20a8:
Jump_000_20a8:
jr_000_20a8:
    call Call_000_18a3                            ; $20a8: $cd $a3 $18

Call_000_20ab:
    pop hl                                        ; $20ab: $e1

Jump_000_20ac:
    pop af                                        ; $20ac: $f1
    reti                                          ; $20ad: $d9


Jump_000_20ae:
    push af                                       ; $20ae: $f5

Call_000_20af:
    push hl                                       ; $20af: $e5
    ld hl, $ff40                                  ; $20b0: $21 $40 $ff

Jump_000_20b3:
    set 1, [hl]                                   ; $20b3: $cb $ce
    ld a, [$cbd1]                                 ; $20b5: $fa $d1 $cb

Call_000_20b8:
    or a                                          ; $20b8: $b7

Call_000_20b9:
    jr z, jr_000_20d0                             ; $20b9: $28 $15

Call_000_20bb:
    ld a, [$cbd2]                                 ; $20bb: $fa $d2 $cb

Jump_000_20be:
    or a                                          ; $20be: $b7
    jr z, jr_000_20ca                             ; $20bf: $28 $09

Call_000_20c1:
    dec a                                         ; $20c1: $3d
    ld [$cbd2], a                                 ; $20c2: $ea $d2 $cb

Call_000_20c5:
    ld a, [$cbcf]                                 ; $20c5: $fa $cf $cb

Call_000_20c8:
    jr jr_000_20d7                                ; $20c8: $18 $0d

Jump_000_20ca:
jr_000_20ca:
    ld a, [$cbd1]                                 ; $20ca: $fa $d1 $cb

Call_000_20cd:
    ld [$cbd2], a                                 ; $20cd: $ea $d2 $cb

jr_000_20d0:
    ld a, [$cbcf]                                 ; $20d0: $fa $cf $cb
    inc a                                         ; $20d3: $3c

Call_000_20d4:
    ld [$cbcf], a                                 ; $20d4: $ea $cf $cb

Jump_000_20d7:
jr_000_20d7:
    ldh [$c9], a                                  ; $20d7: $e0 $c9

Call_000_20d9:
    ld a, [$cbd8]                                 ; $20d9: $fa $d8 $cb

Jump_000_20dc:
    ldh [$c8], a                                  ; $20dc: $e0 $c8

Call_000_20de:
    ld a, [$cbda]                                 ; $20de: $fa $da $cb
    inc a                                         ; $20e1: $3c
    ld [$cbda], a                                 ; $20e2: $ea $da $cb

Call_000_20e5:
    xor a                                         ; $20e5: $af
    ld [$cbd9], a                                 ; $20e6: $ea $d9 $cb
    ld a, [$cbdb]                                 ; $20e9: $fa $db $cb

Call_000_20ec:
    cp $40                                        ; $20ec: $fe $40
    jr z, jr_000_2100                             ; $20ee: $28 $10

    ld [$c0e0], a                                 ; $20f0: $ea $e0 $c0
    ld a, [$c0d8]                                 ; $20f3: $fa $d8 $c0
    cp $4a                                        ; $20f6: $fe $4a
    jr z, jr_000_2100                             ; $20f8: $28 $06

    call Call_000_18a3                            ; $20fa: $cd $a3 $18
    pop hl                                        ; $20fd: $e1
    pop af                                        ; $20fe: $f1

Call_000_20ff:
Jump_000_20ff:
    reti                                          ; $20ff: $d9


Call_000_2100:
Jump_000_2100:
jr_000_2100:
    ld a, [$cb17]                                 ; $2100: $fa $17 $cb

Jump_000_2103:
    cp $08                                        ; $2103: $fe $08

Call_000_2105:
Jump_000_2105:
    jr nz, jr_000_210c                            ; $2105: $20 $05

    ld a, $01                                     ; $2107: $3e $01
    ld [$cb17], a                                 ; $2109: $ea $17 $cb

jr_000_210c:
    pop hl                                        ; $210c: $e1
    jp Jump_000_2111                              ; $210d: $c3 $11 $21


Jump_000_2110:
    push af                                       ; $2110: $f5

Call_000_2111:
Jump_000_2111:
    ld a, [$cb17]                                 ; $2111: $fa $17 $cb

Jump_000_2114:
    cp $08                                        ; $2114: $fe $08
    jr nz, jr_000_211d                            ; $2116: $20 $05

    ld a, $01                                     ; $2118: $3e $01

Call_000_211a:
Jump_000_211a:
    ld [$cb17], a                                 ; $211a: $ea $17 $cb

Jump_000_211d:
jr_000_211d:
    push hl                                       ; $211d: $e5

Jump_000_211e:
    xor a                                         ; $211e: $af

Call_000_211f:
Jump_000_211f:
    ldh [$dc], a                                  ; $211f: $e0 $dc
    ld [$cd4d], a                                 ; $2121: $ea $4d $cd

Jump_000_2124:
    ldh [$a9], a                                  ; $2124: $e0 $a9
    ld hl, $cbd3                                  ; $2126: $21 $d3 $cb

Call_000_2129:
Jump_000_2129:
    ld a, [hl+]                                   ; $2129: $2a
    ld h, [hl]                                    ; $212a: $66

Call_000_212b:
    ld l, a                                       ; $212b: $6f
    ldh a, [$8c]                                  ; $212c: $f0 $8c

Jump_000_212e:
    or a                                          ; $212e: $b7

Call_000_212f:
    ld a, [$4000]                                 ; $212f: $fa $00 $40
    jr z, jr_000_2136                             ; $2132: $28 $02

    ldh a, [$8a]                                  ; $2134: $f0 $8a

jr_000_2136:
    push af                                       ; $2136: $f5
    ld a, $03                                     ; $2137: $3e $03
    ld [$2000], a                                 ; $2139: $ea $00 $20
    call $7c6d                                    ; $213c: $cd $6d $7c

Jump_000_213f:
    pop af                                        ; $213f: $f1

Call_000_2140:
    ld [$2000], a                                 ; $2140: $ea $00 $20

Jump_000_2143:
    xor a                                         ; $2143: $af
    call Call_000_1868                            ; $2144: $cd $68 $18
    ld a, $01                                     ; $2147: $3e $01
    call Call_000_1868                            ; $2149: $cd $68 $18
    call Call_000_18a3                            ; $214c: $cd $a3 $18
    pop hl                                        ; $214f: $e1
    pop af                                        ; $2150: $f1
    reti                                          ; $2151: $d9


Jump_000_2152:
    push af                                       ; $2152: $f5

Call_000_2153:
    push hl                                       ; $2153: $e5

Jump_000_2154:
    ld a, [$cbd3]                                 ; $2154: $fa $d3 $cb
    or a                                          ; $2157: $b7
    ld a, $02                                     ; $2158: $3e $02
    jr z, jr_000_215e                             ; $215a: $28 $02

    cpl                                           ; $215c: $2f

Jump_000_215d:
    inc a                                         ; $215d: $3c

Jump_000_215e:
jr_000_215e:
    ldh [rSCX], a                                 ; $215e: $e0 $43

Call_000_2160:
Jump_000_2160:
    ldh [$90], a                                  ; $2160: $e0 $90
    call Call_000_18a3                            ; $2162: $cd $a3 $18
    pop hl                                        ; $2165: $e1
    pop af                                        ; $2166: $f1

Jump_000_2167:
    reti                                          ; $2167: $d9


Call_000_2168:
    push af                                       ; $2168: $f5

Call_000_2169:
    push hl                                       ; $2169: $e5

Call_000_216a:
    ld a, [$cbd3]                                 ; $216a: $fa $d3 $cb
    or a                                          ; $216d: $b7
    ld a, $01                                     ; $216e: $3e $01

Jump_000_2170:
    jr z, jr_000_2173                             ; $2170: $28 $01

    xor a                                         ; $2172: $af

jr_000_2173:
    ld [$cbd3], a                                 ; $2173: $ea $d3 $cb
    xor a                                         ; $2176: $af

Call_000_2177:
Jump_000_2177:
    ldh [rSCX], a                                 ; $2177: $e0 $43
    ldh [$90], a                                  ; $2179: $e0 $90

Jump_000_217b:
    call Call_000_18a3                            ; $217b: $cd $a3 $18
    pop hl                                        ; $217e: $e1

Call_000_217f:
    pop af                                        ; $217f: $f1

Jump_000_2180:
    reti                                          ; $2180: $d9


Call_000_2181:
    push af                                       ; $2181: $f5
    push bc                                       ; $2182: $c5
    push de                                       ; $2183: $d5

Jump_000_2184:
    push hl                                       ; $2184: $e5

Call_000_2185:
Jump_000_2185:
    ldh a, [$8c]                                  ; $2185: $f0 $8c
    or a                                          ; $2187: $b7
    ld a, [$4000]                                 ; $2188: $fa $00 $40
    jr z, jr_000_218f                             ; $218b: $28 $02

    ldh a, [$8a]                                  ; $218d: $f0 $8a

jr_000_218f:
    push af                                       ; $218f: $f5
    ld a, [$c0cd]                                 ; $2190: $fa $cd $c0
    or a                                          ; $2193: $b7
    jr nz, jr_000_21a2                            ; $2194: $20 $0c

    ld a, [$cd63]                                 ; $2196: $fa $63 $cd
    cp $ff                                        ; $2199: $fe $ff
    jr z, jr_000_21c9                             ; $219b: $28 $2c

    ld hl, $5a2c                                  ; $219d: $21 $2c $5a
    jr jr_000_21a7                                ; $21a0: $18 $05

jr_000_21a2:
    ld hl, $d000                                  ; $21a2: $21 $00 $d0
    jr jr_000_21aa                                ; $21a5: $18 $03

jr_000_21a7:
    call Call_000_32b9                            ; $21a7: $cd $b9 $32

jr_000_21aa:
    ldh a, [rSVBK]                                ; $21aa: $f0 $70

Call_000_21ac:
    push af                                       ; $21ac: $f5
    ld a, $02                                     ; $21ad: $3e $02
    ldh [rSVBK], a                                ; $21af: $e0 $70
    ld de, $d080                                  ; $21b1: $11 $80 $d0

Call_000_21b4:
    call Call_000_11f4                            ; $21b4: $cd $f4 $11

Call_000_21b7:
    pop af                                        ; $21b7: $f1

Call_000_21b8:
    ldh [rSVBK], a                                ; $21b8: $e0 $70
    call Call_000_258a                            ; $21ba: $cd $8a $25

Call_000_21bd:
Jump_000_21bd:
    call Call_000_18a3                            ; $21bd: $cd $a3 $18
    pop af                                        ; $21c0: $f1
    ld [$2000], a                                 ; $21c1: $ea $00 $20
    pop hl                                        ; $21c4: $e1
    pop de                                        ; $21c5: $d1
    pop bc                                        ; $21c6: $c1

Call_000_21c7:
    pop af                                        ; $21c7: $f1

Call_000_21c8:
    reti                                          ; $21c8: $d9


jr_000_21c9:
    ld a, $fe                                     ; $21c9: $3e $fe
    ld [$cd63], a                                 ; $21cb: $ea $63 $cd

Call_000_21ce:
    call Call_000_18a3                            ; $21ce: $cd $a3 $18

Jump_000_21d1:
    pop af                                        ; $21d1: $f1
    ld [$2000], a                                 ; $21d2: $ea $00 $20
    pop hl                                        ; $21d5: $e1
    pop de                                        ; $21d6: $d1
    pop bc                                        ; $21d7: $c1

Call_000_21d8:
    pop af                                        ; $21d8: $f1
    reti                                          ; $21d9: $d9


Jump_000_21da:
    push af                                       ; $21da: $f5
    push de                                       ; $21db: $d5

Jump_000_21dc:
    push hl                                       ; $21dc: $e5

Call_000_21dd:
    jr jr_000_21e9                                ; $21dd: $18 $0a

    push af                                       ; $21df: $f5

Call_000_21e0:
Jump_000_21e0:
    push de                                       ; $21e0: $d5
    push hl                                       ; $21e1: $e5
    ld a, [$c0cd]                                 ; $21e2: $fa $cd $c0
    or a                                          ; $21e5: $b7

Call_000_21e6:
    jp nz, Jump_000_228c                          ; $21e6: $c2 $8c $22

Call_000_21e9:
jr_000_21e9:
    ldh a, [$8c]                                  ; $21e9: $f0 $8c
    or a                                          ; $21eb: $b7
    ld a, [$4000]                                 ; $21ec: $fa $00 $40
    jr z, jr_000_21f3                             ; $21ef: $28 $02

    ldh a, [$8a]                                  ; $21f1: $f0 $8a

jr_000_21f3:
    push af                                       ; $21f3: $f5

Call_000_21f4:
    ldh a, [rSVBK]                                ; $21f4: $f0 $70
    push af                                       ; $21f6: $f5
    ld a, $05                                     ; $21f7: $3e $05
    ldh [rSVBK], a                                ; $21f9: $e0 $70
    ld a, [$d466]                                 ; $21fb: $fa $66 $d4

Jump_000_21fe:
    or a                                          ; $21fe: $b7

Call_000_21ff:
Jump_000_21ff:
    jp z, Jump_000_2279                           ; $21ff: $ca $79 $22

Jump_000_2202:
    dec a                                         ; $2202: $3d
    ld [$d466], a                                 ; $2203: $ea $66 $d4

Call_000_2206:
Jump_000_2206:
    jp nz, Jump_000_2279                          ; $2206: $c2 $79 $22

    ld hl, $4e0c                                  ; $2209: $21 $0c $4e

Call_000_220c:
    ld a, [$cd63]                                 ; $220c: $fa $63 $cd

Call_000_220f:
Jump_000_220f:
    ld d, a                                       ; $220f: $57

Call_000_2210:
Jump_000_2210:
    ld e, $05                                     ; $2210: $1e $05
    call Call_000_230a                            ; $2212: $cd $0a $23
    ld a, l                                       ; $2215: $7d

Call_000_2216:
    or a                                          ; $2216: $b7
    jr z, jr_000_2268                             ; $2217: $28 $4f

Call_000_2219:
    cp $01                                        ; $2219: $fe $01
    jr z, jr_000_2268                             ; $221b: $28 $4b

Jump_000_221d:
    cp $03                                        ; $221d: $fe $03
    jr z, jr_000_2247                             ; $221f: $28 $26

Jump_000_2221:
    push hl                                       ; $2221: $e5

Jump_000_2222:
    ld a, $01                                     ; $2222: $3e $01

Call_000_2224:
    ld [$2000], a                                 ; $2224: $ea $00 $20
    ld hl, $d464                                  ; $2227: $21 $64 $d4
    ld a, [$d467]                                 ; $222a: $fa $67 $d4
    add [hl]                                      ; $222d: $86
    ld [hl+], a                                   ; $222e: $22
    ld a, [$d468]                                 ; $222f: $fa $68 $d4

Jump_000_2232:
    add $18                                       ; $2232: $c6 $18

Jump_000_2234:
    ld [$d468], a                                 ; $2234: $ea $68 $d4
    call $6b11                                    ; $2237: $cd $11 $6b
    pop hl                                        ; $223a: $e1

jr_000_223b:
    sra a                                         ; $223b: $cb $2f
    dec h                                         ; $223d: $25

Call_000_223e:
    jr nz, jr_000_223b                            ; $223e: $20 $fb

    ld hl, $d465                                  ; $2240: $21 $65 $d4
    add [hl]                                      ; $2243: $86

Jump_000_2244:
    ld [hl+], a                                   ; $2244: $22

Call_000_2245:
    jr jr_000_2275                                ; $2245: $18 $2e

Call_000_2247:
jr_000_2247:
    push hl                                       ; $2247: $e5
    ld a, $01                                     ; $2248: $3e $01
    ld [$2000], a                                 ; $224a: $ea $00 $20
    ld a, [$d467]                                 ; $224d: $fa $67 $d4
    add $18                                       ; $2250: $c6 $18
    ld [$d467], a                                 ; $2252: $ea $67 $d4
    call $6b11                                    ; $2255: $cd $11 $6b
    pop hl                                        ; $2258: $e1

jr_000_2259:
    sra a                                         ; $2259: $cb $2f
    dec h                                         ; $225b: $25

Call_000_225c:
    jr nz, jr_000_2259                            ; $225c: $20 $fb

    ld hl, $d464                                  ; $225e: $21 $64 $d4
    add [hl]                                      ; $2261: $86

Call_000_2262:
    ld [hl], a                                    ; $2262: $77

Jump_000_2263:
    ld hl, $d465                                  ; $2263: $21 $65 $d4
    jr jr_000_2270                                ; $2266: $18 $08

jr_000_2268:
    ld hl, $d464                                  ; $2268: $21 $64 $d4
    ld a, [$d467]                                 ; $226b: $fa $67 $d4
    add [hl]                                      ; $226e: $86
    ld [hl+], a                                   ; $226f: $22

jr_000_2270:
    ld a, [$d468]                                 ; $2270: $fa $68 $d4

Jump_000_2273:
    add [hl]                                      ; $2273: $86

Jump_000_2274:
    ld [hl+], a                                   ; $2274: $22

jr_000_2275:
    ld a, [$d469]                                 ; $2275: $fa $69 $d4
    ld [hl], a                                    ; $2278: $77

Jump_000_2279:
    ld a, [$d464]                                 ; $2279: $fa $64 $d4
    ldh [$c8], a                                  ; $227c: $e0 $c8
    ld a, [$d465]                                 ; $227e: $fa $65 $d4
    ldh [$c9], a                                  ; $2281: $e0 $c9

Call_000_2283:
    pop af                                        ; $2283: $f1

Jump_000_2284:
    ldh [rSVBK], a                                ; $2284: $e0 $70
    pop af                                        ; $2286: $f1
    ld [$2000], a                                 ; $2287: $ea $00 $20
    jr jr_000_2291                                ; $228a: $18 $05

Jump_000_228c:
    xor a                                         ; $228c: $af
    ldh [$c8], a                                  ; $228d: $e0 $c8

Call_000_228f:
    ldh [$c9], a                                  ; $228f: $e0 $c9

Jump_000_2291:
jr_000_2291:
    call Call_000_18a3                            ; $2291: $cd $a3 $18
    pop hl                                        ; $2294: $e1

Call_000_2295:
    pop de                                        ; $2295: $d1
    pop af                                        ; $2296: $f1
    reti                                          ; $2297: $d9


    push af                                       ; $2298: $f5
    push hl                                       ; $2299: $e5
    xor a                                         ; $229a: $af
    ldh [rSCX], a                                 ; $229b: $e0 $43
    ldh [rSCY], a                                 ; $229d: $e0 $42
    call Call_000_18a3                            ; $229f: $cd $a3 $18
    pop hl                                        ; $22a2: $e1
    pop af                                        ; $22a3: $f1
    reti                                          ; $22a4: $d9


Call_000_22a5:
    push af                                       ; $22a5: $f5
    push hl                                       ; $22a6: $e5
    ldh a, [$8c]                                  ; $22a7: $f0 $8c

Call_000_22a9:
    or a                                          ; $22a9: $b7
    ld a, [$4000]                                 ; $22aa: $fa $00 $40
    jr z, jr_000_22b1                             ; $22ad: $28 $02

    ldh a, [$8a]                                  ; $22af: $f0 $8a

Jump_000_22b1:
jr_000_22b1:
    push af                                       ; $22b1: $f5
    ld a, [$cd63]                                 ; $22b2: $fa $63 $cd
    cp $ff                                        ; $22b5: $fe $ff
    jr nz, jr_000_22f3                            ; $22b7: $20 $3a

    ld hl, $c0c4                                  ; $22b9: $21 $c4 $c0
    res 3, [hl]                                   ; $22bc: $cb $9e
    push af                                       ; $22be: $f5
    ld a, $03                                     ; $22bf: $3e $03
    ld [$2000], a                                 ; $22c1: $ea $00 $20

Jump_000_22c4:
    pop af                                        ; $22c4: $f1
    call $4687                                    ; $22c5: $cd $87 $46

Call_000_22c8:
    ld hl, $57da                                  ; $22c8: $21 $da $57

Jump_000_22cb:
    call Call_000_13ff                            ; $22cb: $cd $ff $13

Jump_000_22ce:
    call Call_000_32be                            ; $22ce: $cd $be $32

Jump_000_22d1:
    ldh a, [rSVBK]                                ; $22d1: $f0 $70
    push af                                       ; $22d3: $f5
    ld a, $02                                     ; $22d4: $3e $02
    ldh [rSVBK], a                                ; $22d6: $e0 $70
    ld de, $d000                                  ; $22d8: $11 $00 $d0
    ld c, $40                                     ; $22db: $0e $40
    call Call_000_114a                            ; $22dd: $cd $4a $11

Call_000_22e0:
    pop af                                        ; $22e0: $f1
    ldh [rSVBK], a                                ; $22e1: $e0 $70
    xor a                                         ; $22e3: $af
    push af                                       ; $22e4: $f5

Call_000_22e5:
Jump_000_22e5:
    ld a, $05                                     ; $22e5: $3e $05

Jump_000_22e7:
    ld [$2000], a                                 ; $22e7: $ea $00 $20
    pop af                                        ; $22ea: $f1
    call $7c44                                    ; $22eb: $cd $44 $7c
    ld a, $fe                                     ; $22ee: $3e $fe
    ld [$cd63], a                                 ; $22f0: $ea $63 $cd

Jump_000_22f3:
jr_000_22f3:
    call Call_000_18a3                            ; $22f3: $cd $a3 $18
    pop af                                        ; $22f6: $f1

Jump_000_22f7:
    ld [$2000], a                                 ; $22f7: $ea $00 $20
    pop hl                                        ; $22fa: $e1

Call_000_22fb:
    pop af                                        ; $22fb: $f1

Call_000_22fc:
    reti                                          ; $22fc: $d9


    push af                                       ; $22fd: $f5
    push hl                                       ; $22fe: $e5
    ld hl, $ff40                                  ; $22ff: $21 $40 $ff

Call_000_2302:
    res 3, [hl]                                   ; $2302: $cb $9e
    call Call_000_18a3                            ; $2304: $cd $a3 $18

Jump_000_2307:
    pop hl                                        ; $2307: $e1
    pop af                                        ; $2308: $f1

Call_000_2309:
    reti                                          ; $2309: $d9


Call_000_230a:
    ldh a, [$8c]                                  ; $230a: $f0 $8c

Call_000_230c:
Jump_000_230c:
    or a                                          ; $230c: $b7
    ld a, [$4000]                                 ; $230d: $fa $00 $40
    jr z, jr_000_2314                             ; $2310: $28 $02

    ldh a, [$8a]                                  ; $2312: $f0 $8a

jr_000_2314:
    push af                                       ; $2314: $f5
    ld a, e                                       ; $2315: $7b

Call_000_2316:
    ld [$2000], a                                 ; $2316: $ea $00 $20

Jump_000_2319:
    ld a, d                                       ; $2319: $7a

Jump_000_231a:
    call Call_000_319d                            ; $231a: $cd $9d $31
    pop af                                        ; $231d: $f1

Call_000_231e:
Jump_000_231e:
    ld [$2000], a                                 ; $231e: $ea $00 $20

Jump_000_2321:
    ret                                           ; $2321: $c9


Call_000_2322:
Jump_000_2322:
    push af                                       ; $2322: $f5

Call_000_2323:
Jump_000_2323:
    push bc                                       ; $2323: $c5

Call_000_2324:
    push de                                       ; $2324: $d5
    push hl                                       ; $2325: $e5

Call_000_2326:
    ldh a, [$8c]                                  ; $2326: $f0 $8c
    or a                                          ; $2328: $b7
    ld a, [$4000]                                 ; $2329: $fa $00 $40

Call_000_232c:
Jump_000_232c:
    jr z, jr_000_2330                             ; $232c: $28 $02

    ldh a, [$8a]                                  ; $232e: $f0 $8a

Jump_000_2330:
jr_000_2330:
    push af                                       ; $2330: $f5
    ld e, $00                                     ; $2331: $1e $00
    ld a, $20                                     ; $2333: $3e $20

Call_000_2335:
Jump_000_2335:
    ld d, $07                                     ; $2335: $16 $07
    ld hl, $61f1                                  ; $2337: $21 $f1 $61
    call Call_000_32b9                            ; $233a: $cd $b9 $32
    ld a, e                                       ; $233d: $7b
    call Call_000_0005                            ; $233e: $cd $05 $00

Jump_000_2341:
    ld a, $b8                                     ; $2341: $3e $b8
    ldh [rOCPS], a                                ; $2343: $e0 $6a

Call_000_2345:
Jump_000_2345:
    ld b, $08                                     ; $2345: $06 $08

jr_000_2347:
    ldh a, [rSTAT]                                ; $2347: $f0 $41
    and $03                                       ; $2349: $e6 $03

Jump_000_234b:
    jr z, jr_000_2347                             ; $234b: $28 $fa

jr_000_234d:
    ldh a, [rSTAT]                                ; $234d: $f0 $41
    and $03                                       ; $234f: $e6 $03

Call_000_2351:
    jr nz, jr_000_234d                            ; $2351: $20 $fa

Call_000_2353:
jr_000_2353:
    ld a, [hl+]                                   ; $2353: $2a

Jump_000_2354:
    ldh [rOCPD], a                                ; $2354: $e0 $6b

Jump_000_2356:
    dec b                                         ; $2356: $05
    jr nz, jr_000_2353                            ; $2357: $20 $fa

Call_000_2359:
Jump_000_2359:
    call Call_000_18a3                            ; $2359: $cd $a3 $18

Call_000_235c:
Jump_000_235c:
    pop af                                        ; $235c: $f1
    ld [$2000], a                                 ; $235d: $ea $00 $20
    pop hl                                        ; $2360: $e1

Call_000_2361:
    pop de                                        ; $2361: $d1
    pop bc                                        ; $2362: $c1

Jump_000_2363:
    pop af                                        ; $2363: $f1

Call_000_2364:
    reti                                          ; $2364: $d9


    push af                                       ; $2365: $f5
    push bc                                       ; $2366: $c5

Jump_000_2367:
    push hl                                       ; $2367: $e5

Call_000_2368:
    ld a, [$cbad]                                 ; $2368: $fa $ad $cb
    or a                                          ; $236b: $b7
    jr z, jr_000_23a5                             ; $236c: $28 $37

    ld hl, $cb9b                                  ; $236e: $21 $9b $cb
    jr jr_000_238d                                ; $2371: $18 $1a

    push af                                       ; $2373: $f5

Jump_000_2374:
    push bc                                       ; $2374: $c5
    push hl                                       ; $2375: $e5
    ld a, [$cbae]                                 ; $2376: $fa $ae $cb
    or a                                          ; $2379: $b7

Jump_000_237a:
    jr z, jr_000_23a5                             ; $237a: $28 $29

    ld hl, $cba1                                  ; $237c: $21 $a1 $cb

Jump_000_237f:
    jr jr_000_238d                                ; $237f: $18 $0c

Call_000_2381:
    push af                                       ; $2381: $f5
    push bc                                       ; $2382: $c5
    push hl                                       ; $2383: $e5

Jump_000_2384:
    ld a, [$cbaf]                                 ; $2384: $fa $af $cb
    or a                                          ; $2387: $b7
    jr z, jr_000_23a5                             ; $2388: $28 $1b

    ld hl, $cba7                                  ; $238a: $21 $a7 $cb

jr_000_238d:
    ld a, $ba                                     ; $238d: $3e $ba
    ldh [rOCPS], a                                ; $238f: $e0 $6a

Call_000_2391:
    ld b, $06                                     ; $2391: $06 $06

Jump_000_2393:
jr_000_2393:
    ldh a, [rSTAT]                                ; $2393: $f0 $41

Jump_000_2395:
    and $03                                       ; $2395: $e6 $03
    jr z, jr_000_2393                             ; $2397: $28 $fa

jr_000_2399:
    ldh a, [rSTAT]                                ; $2399: $f0 $41

Call_000_239b:
    and $03                                       ; $239b: $e6 $03

Jump_000_239d:
    jr nz, jr_000_2399                            ; $239d: $20 $fa

Call_000_239f:
jr_000_239f:
    ld a, [hl+]                                   ; $239f: $2a
    ldh [rOCPD], a                                ; $23a0: $e0 $6b
    dec b                                         ; $23a2: $05
    jr nz, jr_000_239f                            ; $23a3: $20 $fa

Call_000_23a5:
Jump_000_23a5:
jr_000_23a5:
    call Call_000_18a3                            ; $23a5: $cd $a3 $18

Jump_000_23a8:
    pop hl                                        ; $23a8: $e1
    pop bc                                        ; $23a9: $c1

Jump_000_23aa:
    pop af                                        ; $23aa: $f1
    reti                                          ; $23ab: $d9


Call_000_23ac:
Jump_000_23ac:
    reti                                          ; $23ac: $d9


Call_000_23ad:
    ld a, $ff                                     ; $23ad: $3e $ff

Jump_000_23af:
    ld de, $0000                                  ; $23af: $11 $00 $00
    call Call_000_2433                            ; $23b2: $cd $33 $24
    ld a, [$cddd]                                 ; $23b5: $fa $dd $cd
    cp $ff                                        ; $23b8: $fe $ff

Call_000_23ba:
    ld a, $00                                     ; $23ba: $3e $00
    jp nz, Jump_000_244b                          ; $23bc: $c2 $4b $24

    ld a, $09                                     ; $23bf: $3e $09
    jp Jump_000_244b                              ; $23c1: $c3 $4b $24


Call_000_23c4:
    push de                                       ; $23c4: $d5
    ld hl, $ffc2                                  ; $23c5: $21 $c2 $ff
    inc [hl]                                      ; $23c8: $34
    call Call_000_2485                            ; $23c9: $cd $85 $24
    jr z, jr_000_23fd                             ; $23cc: $28 $2f

Jump_000_23ce:
    ldh a, [$d2]                                  ; $23ce: $f0 $d2
    and $7f                                       ; $23d0: $e6 $7f

Jump_000_23d2:
    ldh [$d2], a                                  ; $23d2: $e0 $d2

Jump_000_23d4:
    call Call_000_2414                            ; $23d4: $cd $14 $24
    call Call_000_2433                            ; $23d7: $cd $33 $24
    ld a, $04                                     ; $23da: $3e $04
    ld [$2000], a                                 ; $23dc: $ea $00 $20

Jump_000_23df:
    ldh a, [$cf]                                  ; $23df: $f0 $cf

Call_000_23e1:
    cp $ff                                        ; $23e1: $fe $ff

Call_000_23e3:
    jr z, jr_000_23fd                             ; $23e3: $28 $18

    ld l, a                                       ; $23e5: $6f
    ld h, $00                                     ; $23e6: $26 $00
    ld de, $0009                                  ; $23e8: $11 $09 $00
    call Call_000_00dc                            ; $23eb: $cd $dc $00
    ld de, $58b9                                  ; $23ee: $11 $b9 $58

Call_000_23f1:
    add hl, de                                    ; $23f1: $19
    ld de, $ccfb                                  ; $23f2: $11 $fb $cc
    ld c, $09                                     ; $23f5: $0e $09

Call_000_23f7:
Jump_000_23f7:
    call Call_000_114a                            ; $23f7: $cd $4a $11
    call Call_000_24a2                            ; $23fa: $cd $a2 $24

jr_000_23fd:
    call Call_000_37e0                            ; $23fd: $cd $e0 $37

Call_000_2400:
Jump_000_2400:
    call Call_000_24ba                            ; $2400: $cd $ba $24

Call_000_2403:
Jump_000_2403:
    call Call_000_24b2                            ; $2403: $cd $b2 $24
    pop de                                        ; $2406: $d1
    ret                                           ; $2407: $c9


Call_000_2408:
    ldh a, [$cf]                                  ; $2408: $f0 $cf

Call_000_240a:
Jump_000_240a:
    ret                                           ; $240a: $c9


    ldh a, [$d1]                                  ; $240b: $f0 $d1

Jump_000_240d:
    ld e, a                                       ; $240d: $5f
    ldh a, [$d0]                                  ; $240e: $f0 $d0

Jump_000_2410:
    ld d, a                                       ; $2410: $57
    ldh a, [$cf]                                  ; $2411: $f0 $cf
    ret                                           ; $2413: $c9


Call_000_2414:
    ldh a, [$d4]                                  ; $2414: $f0 $d4
    ld e, a                                       ; $2416: $5f
    ldh a, [$d3]                                  ; $2417: $f0 $d3

Call_000_2419:
Jump_000_2419:
    ld d, a                                       ; $2419: $57
    ldh a, [$d2]                                  ; $241a: $f0 $d2
    ret                                           ; $241c: $c9


Call_000_241d:
    push af                                       ; $241d: $f5
    push de                                       ; $241e: $d5
    push hl                                       ; $241f: $e5

Call_000_2420:
    ld hl, $ffcc                                  ; $2420: $21 $cc $ff

Call_000_2423:
Jump_000_2423:
    ld de, $ffcf                                  ; $2423: $11 $cf $ff
    ld a, [de]                                    ; $2426: $1a
    ld [hl+], a                                   ; $2427: $22
    inc de                                        ; $2428: $13
    ld a, [de]                                    ; $2429: $1a

Call_000_242a:
    ld [hl+], a                                   ; $242a: $22
    inc de                                        ; $242b: $13
    ld a, [de]                                    ; $242c: $1a
    ld [hl+], a                                   ; $242d: $22
    inc de                                        ; $242e: $13

Call_000_242f:
    pop hl                                        ; $242f: $e1
    pop de                                        ; $2430: $d1
    pop af                                        ; $2431: $f1

Jump_000_2432:
    ret                                           ; $2432: $c9


Call_000_2433:
    push af                                       ; $2433: $f5
    call Call_000_241d                            ; $2434: $cd $1d $24
    ldh [$cf], a                                  ; $2437: $e0 $cf
    ld a, d                                       ; $2439: $7a

Call_000_243a:
    ldh [$d0], a                                  ; $243a: $e0 $d0
    ld a, e                                       ; $243c: $7b
    ldh [$d1], a                                  ; $243d: $e0 $d1
    pop af                                        ; $243f: $f1
    ret                                           ; $2440: $c9


Call_000_2441:
Jump_000_2441:
    push af                                       ; $2441: $f5

Call_000_2442:
    or $80                                        ; $2442: $f6 $80
    ldh [$d2], a                                  ; $2444: $e0 $d2
    pop af                                        ; $2446: $f1

Jump_000_2447:
    ret                                           ; $2447: $c9


Call_000_2448:
Jump_000_2448:
    ld de, $0000                                  ; $2448: $11 $00 $00

Call_000_244b:
Jump_000_244b:
    push af                                       ; $244b: $f5
    or $80                                        ; $244c: $f6 $80
    ldh [$d2], a                                  ; $244e: $e0 $d2
    ld a, d                                       ; $2450: $7a
    ldh [$d3], a                                  ; $2451: $e0 $d3
    ld a, e                                       ; $2453: $7b
    ldh [$d4], a                                  ; $2454: $e0 $d4
    pop af                                        ; $2456: $f1
    ret                                           ; $2457: $c9


    push af                                       ; $2458: $f5
    push bc                                       ; $2459: $c5
    call Call_000_246c                            ; $245a: $cd $6c $24
    ld hl, $537b                                  ; $245d: $21 $7b $53
    call Call_000_2987                            ; $2460: $cd $87 $29

Jump_000_2463:
    ld de, $cb29                                  ; $2463: $11 $29 $cb

Jump_000_2466:
    call Call_000_1359                            ; $2466: $cd $59 $13
    pop bc                                        ; $2469: $c1

Call_000_246a:
    pop af                                        ; $246a: $f1
    ret                                           ; $246b: $c9


Call_000_246c:
    push af                                       ; $246c: $f5
    push bc                                       ; $246d: $c5
    push hl                                       ; $246e: $e5

Call_000_246f:
    ld a, [de]                                    ; $246f: $1a
    ld c, a                                       ; $2470: $4f

Jump_000_2471:
    add a                                         ; $2471: $87
    add c                                         ; $2472: $81
    add a                                         ; $2473: $87
    add $03                                       ; $2474: $c6 $03
    ld c, a                                       ; $2476: $4f
    ld b, $00                                     ; $2477: $06 $00

Jump_000_2479:
    ld h, d                                       ; $2479: $62
    ld l, e                                       ; $247a: $6b
    ld de, $cb29                                  ; $247b: $11 $29 $cb
    call Call_000_114a                            ; $247e: $cd $4a $11

Jump_000_2481:
    pop hl                                        ; $2481: $e1

Call_000_2482:
    pop bc                                        ; $2482: $c1

Call_000_2483:
    pop af                                        ; $2483: $f1
    ret                                           ; $2484: $c9


Call_000_2485:
    push hl                                       ; $2485: $e5
    ld hl, $ffcf                                  ; $2486: $21 $cf $ff
    ldh a, [$d2]                                  ; $2489: $f0 $d2
    cp [hl]                                       ; $248b: $be

Call_000_248c:
    jr nz, jr_000_2492                            ; $248c: $20 $04

    ldh a, [$d0]                                  ; $248e: $f0 $d0

Call_000_2490:
    inc hl                                        ; $2490: $23
    cp [hl]                                       ; $2491: $be

jr_000_2492:
    pop hl                                        ; $2492: $e1

Call_000_2493:
    ret                                           ; $2493: $c9


jr_000_2494:
    ld a, [$ccfb]                                 ; $2494: $fa $fb $cc
    or a                                          ; $2497: $b7
    jr z, jr_000_249d                             ; $2498: $28 $03

    ld [$2000], a                                 ; $249a: $ea $00 $20

jr_000_249d:
    ld a, d                                       ; $249d: $7a
    or e                                          ; $249e: $b3
    ret z                                         ; $249f: $c8

    push de                                       ; $24a0: $d5
    ret                                           ; $24a1: $c9


Call_000_24a2:
    ld hl, $ccfc                                  ; $24a2: $21 $fc $cc
    ld e, [hl]                                    ; $24a5: $5e
    inc hl                                        ; $24a6: $23

Jump_000_24a7:
    ld d, [hl]                                    ; $24a7: $56
    jr jr_000_2494                                ; $24a8: $18 $ea

    ld hl, $ccfe                                  ; $24aa: $21 $fe $cc
    ld e, [hl]                                    ; $24ad: $5e

Jump_000_24ae:
    inc hl                                        ; $24ae: $23

Jump_000_24af:
    ld d, [hl]                                    ; $24af: $56
    jr jr_000_2494                                ; $24b0: $18 $e2

Call_000_24b2:
Jump_000_24b2:
    ld hl, $cd00                                  ; $24b2: $21 $00 $cd
    ld e, [hl]                                    ; $24b5: $5e
    inc hl                                        ; $24b6: $23

Call_000_24b7:
    ld d, [hl]                                    ; $24b7: $56
    jr jr_000_2494                                ; $24b8: $18 $da

Call_000_24ba:
    call Call_000_117c                            ; $24ba: $cd $7c $11
    ld hl, $cd02                                  ; $24bd: $21 $02 $cd

Jump_000_24c0:
    ld e, [hl]                                    ; $24c0: $5e
    inc hl                                        ; $24c1: $23
    ld d, [hl]                                    ; $24c2: $56
    jr jr_000_2494                                ; $24c3: $18 $cf

    call Call_000_0211                            ; $24c5: $cd $11 $02

Call_000_24c8:
    jp Jump_000_1837                              ; $24c8: $c3 $37 $18


Call_000_24cb:
    ld a, $03                                     ; $24cb: $3e $03
    ld [$2000], a                                 ; $24cd: $ea $00 $20
    call $4df4                                    ; $24d0: $cd $f4 $4d

Jump_000_24d3:
    ld a, $01                                     ; $24d3: $3e $01
    ld [$2000], a                                 ; $24d5: $ea $00 $20
    call Call_000_0211                            ; $24d8: $cd $11 $02

Call_000_24db:
Jump_000_24db:
    jp Jump_000_1837                              ; $24db: $c3 $37 $18


    call Call_000_0211                            ; $24de: $cd $11 $02
    jp Jump_000_1837                              ; $24e1: $c3 $37 $18


Call_000_24e4:
    push af                                       ; $24e4: $f5
    push bc                                       ; $24e5: $c5

Call_000_24e6:
Jump_000_24e6:
    call Call_000_246c                            ; $24e6: $cd $6c $24
    ld hl, $5fcc                                  ; $24e9: $21 $cc $5f
    call Call_000_2987                            ; $24ec: $cd $87 $29
    ld de, $cb29                                  ; $24ef: $11 $29 $cb

Jump_000_24f2:
    call Call_000_1359                            ; $24f2: $cd $59 $13

Jump_000_24f5:
    pop bc                                        ; $24f5: $c1

Call_000_24f6:
    pop af                                        ; $24f6: $f1
    ret                                           ; $24f7: $c9


Call_000_24f8:
    call Call_000_13ff                            ; $24f8: $cd $ff $13

Call_000_24fb:
    call Call_000_32be                            ; $24fb: $cd $be $32

Jump_000_24fe:
    ldh a, [rSVBK]                                ; $24fe: $f0 $70

Call_000_2500:
Jump_000_2500:
    push af                                       ; $2500: $f5

Call_000_2501:
Jump_000_2501:
    ld a, $02                                     ; $2501: $3e $02

Call_000_2503:
Jump_000_2503:
    ldh [rSVBK], a                                ; $2503: $e0 $70
    ld de, $d000                                  ; $2505: $11 $00 $d0

Call_000_2508:
    call Call_000_11f4                            ; $2508: $cd $f4 $11

Jump_000_250b:
    pop af                                        ; $250b: $f1
    ldh [rSVBK], a                                ; $250c: $e0 $70

Jump_000_250e:
    ret                                           ; $250e: $c9


Call_000_250f:
    call Call_000_13ff                            ; $250f: $cd $ff $13
    ld hl, $5fd2                                  ; $2512: $21 $d2 $5f
    ldh a, [rSVBK]                                ; $2515: $f0 $70
    push af                                       ; $2517: $f5

Call_000_2518:
    ld a, $02                                     ; $2518: $3e $02
    ldh [rSVBK], a                                ; $251a: $e0 $70

Call_000_251c:
Jump_000_251c:
    call Call_000_32be                            ; $251c: $cd $be $32
    ld de, $d040                                  ; $251f: $11 $40 $d0
    call Call_000_11f4                            ; $2522: $cd $f4 $11
    pop af                                        ; $2525: $f1
    ldh [rSVBK], a                                ; $2526: $e0 $70
    ret                                           ; $2528: $c9


    call Call_000_13ff                            ; $2529: $cd $ff $13

Jump_000_252c:
    call Call_000_32be                            ; $252c: $cd $be $32
    ld a, e                                       ; $252f: $7b
    call Call_000_0005                            ; $2530: $cd $05 $00

Jump_000_2533:
    ld bc, $0008                                  ; $2533: $01 $08 $00

Call_000_2536:
    ldh a, [rLCDC]                                ; $2536: $f0 $40
    bit 7, a                                      ; $2538: $cb $7f
    ld a, d                                       ; $253a: $7a

Jump_000_253b:
    jr jr_000_2546                                ; $253b: $18 $09

    call Call_000_13ff                            ; $253d: $cd $ff $13
    call Call_000_32be                            ; $2540: $cd $be $32

Call_000_2543:
    call Call_000_257d                            ; $2543: $cd $7d $25

jr_000_2546:
    ld de, $d0c0                                  ; $2546: $11 $c0 $d0
    jr nz, jr_000_254e                            ; $2549: $20 $03

    ld de, $d040                                  ; $254b: $11 $40 $d0

Call_000_254e:
jr_000_254e:
    jr jr_000_2563                                ; $254e: $18 $13

Jump_000_2550:
    call Call_000_13ff                            ; $2550: $cd $ff $13

Call_000_2553:
    call Call_000_32be                            ; $2553: $cd $be $32
    call Call_000_257d                            ; $2556: $cd $7d $25
    ld de, $d080                                  ; $2559: $11 $80 $d0
    jr nz, jr_000_2561                            ; $255c: $20 $03

    ld de, $d000                                  ; $255e: $11 $00 $d0

Jump_000_2561:
jr_000_2561:
    jr jr_000_2563                                ; $2561: $18 $00

jr_000_2563:
    add a                                         ; $2563: $87
    add a                                         ; $2564: $87
    add a                                         ; $2565: $87
    add e                                         ; $2566: $83
    ld e, a                                       ; $2567: $5f

Call_000_2568:
    ld a, $00                                     ; $2568: $3e $00
    adc d                                         ; $256a: $8a
    ld d, a                                       ; $256b: $57
    ldh a, [rSVBK]                                ; $256c: $f0 $70
    push af                                       ; $256e: $f5
    ld a, $02                                     ; $256f: $3e $02
    ldh [rSVBK], a                                ; $2571: $e0 $70
    call Call_000_1140                            ; $2573: $cd $40 $11
    call Call_000_258a                            ; $2576: $cd $8a $25
    pop af                                        ; $2579: $f1
    ldh [rSVBK], a                                ; $257a: $e0 $70
    ret                                           ; $257c: $c9


Call_000_257d:
Jump_000_257d:
    ld a, e                                       ; $257d: $7b
    add a                                         ; $257e: $87
    add a                                         ; $257f: $87
    add a                                         ; $2580: $87

Jump_000_2581:
    ld c, a                                       ; $2581: $4f
    ld b, $00                                     ; $2582: $06 $00

Call_000_2584:
    ldh a, [rLCDC]                                ; $2584: $f0 $40

Jump_000_2586:
    bit 7, a                                      ; $2586: $cb $7f
    ld a, d                                       ; $2588: $7a
    ret                                           ; $2589: $c9


Call_000_258a:
    push bc                                       ; $258a: $c5
    push de                                       ; $258b: $d5

Jump_000_258c:
    push hl                                       ; $258c: $e5
    ldh a, [rSVBK]                                ; $258d: $f0 $70
    push af                                       ; $258f: $f5

Call_000_2590:
    ld a, $02                                     ; $2590: $3e $02
    ldh [rSVBK], a                                ; $2592: $e0 $70
    xor a                                         ; $2594: $af

Call_000_2595:
    ld [$c0cc], a                                 ; $2595: $ea $cc $c0
    ld c, $02                                     ; $2598: $0e $02
    ld hl, $d080                                  ; $259a: $21 $80 $d0
    ld de, $d311                                  ; $259d: $11 $11 $d3

jr_000_25a0:
    ld b, $20                                     ; $25a0: $06 $20

jr_000_25a2:
    ld a, [hl+]                                   ; $25a2: $2a

Call_000_25a3:
Jump_000_25a3:
    ld [de], a                                    ; $25a3: $12

Call_000_25a4:
    inc de                                        ; $25a4: $13
    inc de                                        ; $25a5: $13
    ld a, [hl+]                                   ; $25a6: $2a
    ld [de], a                                    ; $25a7: $12
    inc de                                        ; $25a8: $13

Jump_000_25a9:
    inc de                                        ; $25a9: $13
    dec b                                         ; $25aa: $05

Call_000_25ab:
Jump_000_25ab:
    jr nz, jr_000_25a2                            ; $25ab: $20 $f5

    inc de                                        ; $25ad: $13
    dec c                                         ; $25ae: $0d

Jump_000_25af:
    jr nz, jr_000_25a0                            ; $25af: $20 $ef

Call_000_25b1:
    ld a, $01                                     ; $25b1: $3e $01
    ld [$c0cc], a                                 ; $25b3: $ea $cc $c0
    pop af                                        ; $25b6: $f1
    ldh [rSVBK], a                                ; $25b7: $e0 $70

Call_000_25b9:
Jump_000_25b9:
    pop hl                                        ; $25b9: $e1
    pop de                                        ; $25ba: $d1
    pop bc                                        ; $25bb: $c1
    ret                                           ; $25bc: $c9


Call_000_25bd:
Jump_000_25bd:
    ld [$c26d], a                                 ; $25bd: $ea $6d $c2

Jump_000_25c0:
    ld a, e                                       ; $25c0: $7b
    ld [$cdb7], a                                 ; $25c1: $ea $b7 $cd
    ld a, d                                       ; $25c4: $7a
    ld [$cdb8], a                                 ; $25c5: $ea $b8 $cd
    ld de, $0000                                  ; $25c8: $11 $00 $00
    ld a, e                                       ; $25cb: $7b
    ld [$cc14], a                                 ; $25cc: $ea $14 $cc
    ld a, d                                       ; $25cf: $7a
    ld [$cc15], a                                 ; $25d0: $ea $15 $cc
    ld c, [hl]                                    ; $25d3: $4e

Call_000_25d4:
    inc hl                                        ; $25d4: $23
    ld b, [hl]                                    ; $25d5: $46
    ld a, b                                       ; $25d6: $78
    or c                                          ; $25d7: $b1

Call_000_25d8:
    ret z                                         ; $25d8: $c8

    ldh a, [rSVBK]                                ; $25d9: $f0 $70

Jump_000_25db:
    push af                                       ; $25db: $f5
    ld a, $01                                     ; $25dc: $3e $01
    ldh [rSVBK], a                                ; $25de: $e0 $70
    inc hl                                        ; $25e0: $23
    ld a, c                                       ; $25e1: $79

Call_000_25e2:
    ld [$cc16], a                                 ; $25e2: $ea $16 $cc

Jump_000_25e5:
    ld a, b                                       ; $25e5: $78
    ld [$cc17], a                                 ; $25e6: $ea $17 $cc
    ld a, $80                                     ; $25e9: $3e $80

Call_000_25eb:
    ld [$cc18], a                                 ; $25eb: $ea $18 $cc
    xor a                                         ; $25ee: $af
    ld [$cc19], a                                 ; $25ef: $ea $19 $cc

Call_000_25f2:
Jump_000_25f2:
    ld [$cdb9], a                                 ; $25f2: $ea $b9 $cd
    ld de, $d000                                  ; $25f5: $11 $00 $d0

Jump_000_25f8:
    ld a, [$cdb9]                                 ; $25f8: $fa $b9 $cd

Call_000_25fb:
    ld c, a                                       ; $25fb: $4f

Jump_000_25fc:
    ld a, [$cc18]                                 ; $25fc: $fa $18 $cc

Call_000_25ff:
Jump_000_25ff:
    cp $80                                        ; $25ff: $fe $80
    jr nz, jr_000_260b                            ; $2601: $20 $08

    ld a, [hl+]                                   ; $2603: $2a
    ld [$cdb9], a                                 ; $2604: $ea $b9 $cd
    ld c, a                                       ; $2607: $4f
    ld a, [$cc18]                                 ; $2608: $fa $18 $cc

jr_000_260b:
    and c                                         ; $260b: $a1
    jr z, jr_000_2652                             ; $260c: $28 $44

    ld c, [hl]                                    ; $260e: $4e
    inc hl                                        ; $260f: $23

Jump_000_2610:
    ld b, [hl]                                    ; $2610: $46
    inc hl                                        ; $2611: $23
    push hl                                       ; $2612: $e5

Call_000_2613:
    ld a, b                                       ; $2613: $78
    and $f8                                       ; $2614: $e6 $f8
    push af                                       ; $2616: $f5
    xor b                                         ; $2617: $a8

Call_000_2618:
Jump_000_2618:
    ld b, a                                       ; $2618: $47
    pop af                                        ; $2619: $f1
    srl a                                         ; $261a: $cb $3f

Jump_000_261c:
    srl a                                         ; $261c: $cb $3f

Call_000_261e:
    srl a                                         ; $261e: $cb $3f

Jump_000_2620:
    add $03                                       ; $2620: $c6 $03
    push af                                       ; $2622: $f5
    ld a, e                                       ; $2623: $7b
    sub c                                         ; $2624: $91

Call_000_2625:
Jump_000_2625:
    ld l, a                                       ; $2625: $6f
    ld a, d                                       ; $2626: $7a

Jump_000_2627:
    sbc b                                         ; $2627: $98
    ld h, a                                       ; $2628: $67
    ld bc, $d000                                  ; $2629: $01 $00 $d0
    call Call_000_3118                            ; $262c: $cd $18 $31

Call_000_262f:
    jr z, jr_000_2637                             ; $262f: $28 $06

Jump_000_2631:
    jr c, jr_000_2637                             ; $2631: $38 $04

Call_000_2633:
    ld bc, $0800                                  ; $2633: $01 $00 $08
    add hl, bc                                    ; $2636: $09

jr_000_2637:
    pop af                                        ; $2637: $f1

Call_000_2638:
Jump_000_2638:
jr_000_2638:
    push af                                       ; $2638: $f5
    ld a, [hl]                                    ; $2639: $7e
    call Call_000_2703                            ; $263a: $cd $03 $27
    inc hl                                        ; $263d: $23
    ld a, l                                       ; $263e: $7d
    cp $00                                        ; $263f: $fe $00

Call_000_2641:
    jr nz, jr_000_264b                            ; $2641: $20 $08

    ld a, h                                       ; $2643: $7c

Call_000_2644:
    cp $d8                                        ; $2644: $fe $d8
    jr nz, jr_000_264b                            ; $2646: $20 $03

    ld hl, $d000                                  ; $2648: $21 $00 $d0

Call_000_264b:
jr_000_264b:
    pop af                                        ; $264b: $f1
    dec a                                         ; $264c: $3d
    jr nz, jr_000_2638                            ; $264d: $20 $e9

    pop hl                                        ; $264f: $e1

Call_000_2650:
    jr jr_000_2657                                ; $2650: $18 $05

Jump_000_2652:
jr_000_2652:
    ld a, [hl]                                    ; $2652: $7e

Jump_000_2653:
    inc hl                                        ; $2653: $23
    call Call_000_2703                            ; $2654: $cd $03 $27

Jump_000_2657:
jr_000_2657:
    ld a, [$cc18]                                 ; $2657: $fa $18 $cc
    srl a                                         ; $265a: $cb $3f
    jr nz, jr_000_2660                            ; $265c: $20 $02

    ld a, $80                                     ; $265e: $3e $80

jr_000_2660:
    ld [$cc18], a                                 ; $2660: $ea $18 $cc

Call_000_2663:
Jump_000_2663:
    ld a, [$cc16]                                 ; $2663: $fa $16 $cc
    ld c, a                                       ; $2666: $4f
    ld a, [$cc17]                                 ; $2667: $fa $17 $cc

Jump_000_266a:
    ld b, a                                       ; $266a: $47
    dec bc                                        ; $266b: $0b
    ld a, c                                       ; $266c: $79
    ld [$cc16], a                                 ; $266d: $ea $16 $cc

Call_000_2670:
Jump_000_2670:
    ld a, b                                       ; $2670: $78
    ld [$cc17], a                                 ; $2671: $ea $17 $cc
    ld a, b                                       ; $2674: $78
    or c                                          ; $2675: $b1
    jr z, jr_000_269f                             ; $2676: $28 $27

    ld a, [$cc15]                                 ; $2678: $fa $15 $cc
    cp $04                                        ; $267b: $fe $04
    jp nz, Jump_000_25f8                          ; $267d: $c2 $f8 $25

    push hl                                       ; $2680: $e5
    ld a, [$cc14]                                 ; $2681: $fa $14 $cc
    ld c, a                                       ; $2684: $4f

Call_000_2685:
    ld a, [$cc15]                                 ; $2685: $fa $15 $cc
    ld b, a                                       ; $2688: $47
    ld hl, $fc00                                  ; $2689: $21 $00 $fc

Jump_000_268c:
    add hl, bc                                    ; $268c: $09

Jump_000_268d:
    ld a, l                                       ; $268d: $7d
    ld [$cc14], a                                 ; $268e: $ea $14 $cc
    ld a, h                                       ; $2691: $7c
    ld [$cc15], a                                 ; $2692: $ea $15 $cc

Call_000_2695:
    pop hl                                        ; $2695: $e1
    ld bc, $0400                                  ; $2696: $01 $00 $04
    call Call_000_26b7                            ; $2699: $cd $b7 $26

Jump_000_269c:
    jp Jump_000_25f8                              ; $269c: $c3 $f8 $25


jr_000_269f:
    ld a, [$cc14]                                 ; $269f: $fa $14 $cc

Jump_000_26a2:
    ld c, a                                       ; $26a2: $4f
    ld a, [$cc15]                                 ; $26a3: $fa $15 $cc
    ld b, a                                       ; $26a6: $47
    call Call_000_26b7                            ; $26a7: $cd $b7 $26

Call_000_26aa:
    ld hl, $cdb7                                  ; $26aa: $21 $b7 $cd
    ld e, [hl]                                    ; $26ad: $5e
    inc hl                                        ; $26ae: $23

Call_000_26af:
Jump_000_26af:
    ld d, [hl]                                    ; $26af: $56
    pop af                                        ; $26b0: $f1

Jump_000_26b1:
    ldh [rSVBK], a                                ; $26b1: $e0 $70
    xor a                                         ; $26b3: $af
    ldh [rVBK], a                                 ; $26b4: $e0 $4f

Call_000_26b6:
    ret                                           ; $26b6: $c9


Call_000_26b7:
Jump_000_26b7:
    ld a, [$c26d]                                 ; $26b7: $fa $6d $c2

Jump_000_26ba:
    and $01                                       ; $26ba: $e6 $01
    ret z                                         ; $26bc: $c8

Call_000_26bd:
Jump_000_26bd:
    push de                                       ; $26bd: $d5

Jump_000_26be:
    push hl                                       ; $26be: $e5
    ld hl, $cdb7                                  ; $26bf: $21 $b7 $cd
    ld e, [hl]                                    ; $26c2: $5e
    inc hl                                        ; $26c3: $23
    ld d, [hl]                                    ; $26c4: $56

Call_000_26c5:
    ld a, [$cc19]                                 ; $26c5: $fa $19 $cc

Jump_000_26c8:
    xor $01                                       ; $26c8: $ee $01
    ld [$cc19], a                                 ; $26ca: $ea $19 $cc
    ld hl, $d000                                  ; $26cd: $21 $00 $d0

Call_000_26d0:
    jr nz, jr_000_26d5                            ; $26d0: $20 $03

Jump_000_26d2:
    ld hl, $d400                                  ; $26d2: $21 $00 $d4

Call_000_26d5:
jr_000_26d5:
    ld a, [$c26d]                                 ; $26d5: $fa $6d $c2

Call_000_26d8:
Jump_000_26d8:
    bit 1, a                                      ; $26d8: $cb $4f
    jr nz, jr_000_26e5                            ; $26da: $20 $09

    bit 2, a                                      ; $26dc: $cb $57
    jr nz, jr_000_26ea                            ; $26de: $20 $0a

    call Call_000_1140                            ; $26e0: $cd $40 $11

Call_000_26e3:
    jr jr_000_26fa                                ; $26e3: $18 $15

jr_000_26e5:
    call Call_000_10f5                            ; $26e5: $cd $f5 $10
    jr jr_000_26fa                                ; $26e8: $18 $10

Call_000_26ea:
jr_000_26ea:
    ld a, [$4000]                                 ; $26ea: $fa $00 $40
    push af                                       ; $26ed: $f5

Jump_000_26ee:
    ld a, $03                                     ; $26ee: $3e $03
    ld [$2000], a                                 ; $26f0: $ea $00 $20
    call $78bb                                    ; $26f3: $cd $bb $78

Call_000_26f6:
Jump_000_26f6:
    pop af                                        ; $26f6: $f1
    ld [$2000], a                                 ; $26f7: $ea $00 $20

Call_000_26fa:
jr_000_26fa:
    ld hl, $cdb7                                  ; $26fa: $21 $b7 $cd
    ld [hl], e                                    ; $26fd: $73

Call_000_26fe:
    inc hl                                        ; $26fe: $23
    ld [hl], d                                    ; $26ff: $72

Call_000_2700:
Jump_000_2700:
    pop hl                                        ; $2700: $e1

Call_000_2701:
Jump_000_2701:
    pop de                                        ; $2701: $d1

Call_000_2702:
Jump_000_2702:
    ret                                           ; $2702: $c9


Call_000_2703:
    ld [de], a                                    ; $2703: $12
    inc de                                        ; $2704: $13
    ld a, [$cc14]                                 ; $2705: $fa $14 $cc

Jump_000_2708:
    ld c, a                                       ; $2708: $4f

Jump_000_2709:
    ld a, [$cc15]                                 ; $2709: $fa $15 $cc
    ld b, a                                       ; $270c: $47
    inc bc                                        ; $270d: $03
    ld a, c                                       ; $270e: $79

Call_000_270f:
Jump_000_270f:
    ld [$cc14], a                                 ; $270f: $ea $14 $cc
    ld a, b                                       ; $2712: $78
    ld [$cc15], a                                 ; $2713: $ea $15 $cc
    ld a, e                                       ; $2716: $7b
    cp $00                                        ; $2717: $fe $00

Call_000_2719:
    ret nz                                        ; $2719: $c0

    ld a, d                                       ; $271a: $7a

Call_000_271b:
    cp $d8                                        ; $271b: $fe $d8
    ret nz                                        ; $271d: $c0

    ld de, $d000                                  ; $271e: $11 $00 $d0
    ret                                           ; $2721: $c9


Call_000_2722:
    cp $02                                        ; $2722: $fe $02
    jr nc, jr_000_2728                            ; $2724: $30 $02

Call_000_2726:
Jump_000_2726:
    ld a, $02                                     ; $2726: $3e $02

Jump_000_2728:
jr_000_2728:
    push de                                       ; $2728: $d5

Jump_000_2729:
    push hl                                       ; $2729: $e5

Jump_000_272a:
    ld e, a                                       ; $272a: $5f
    ld a, [$4000]                                 ; $272b: $fa $00 $40
    push af                                       ; $272e: $f5
    ld hl, $ce04                                  ; $272f: $21 $04 $ce

Call_000_2732:
    ld a, [hl]                                    ; $2732: $7e
    inc [hl]                                      ; $2733: $34
    add $ab                                       ; $2734: $c6 $ab
    ld l, a                                       ; $2736: $6f
    ld a, $00                                     ; $2737: $3e $00

Jump_000_2739:
    adc $69                                       ; $2739: $ce $69
    ld h, a                                       ; $273b: $67
    ld a, $01                                     ; $273c: $3e $01
    ld [$2000], a                                 ; $273e: $ea $00 $20
    ld a, [hl]                                    ; $2741: $7e

jr_000_2742:
    ld d, e                                       ; $2742: $53
    cp d                                          ; $2743: $ba
    jr c, jr_000_2756                             ; $2744: $38 $10

Call_000_2746:
jr_000_2746:
    sla d                                         ; $2746: $cb $22
    jr c, jr_000_2752                             ; $2748: $38 $08

    cp d                                          ; $274a: $ba

Call_000_274b:
    jr nc, jr_000_2746                            ; $274b: $30 $f9

    srl d                                         ; $274d: $cb $3a

Call_000_274f:
jr_000_274f:
    sub d                                         ; $274f: $92
    jr jr_000_2742                                ; $2750: $18 $f0

Jump_000_2752:
jr_000_2752:
    rr d                                          ; $2752: $cb $1a
    jr jr_000_274f                                ; $2754: $18 $f9

jr_000_2756:
    ld e, a                                       ; $2756: $5f
    pop af                                        ; $2757: $f1

Jump_000_2758:
    ld [$2000], a                                 ; $2758: $ea $00 $20

Jump_000_275b:
    ld a, e                                       ; $275b: $7b
    pop hl                                        ; $275c: $e1

Jump_000_275d:
    pop de                                        ; $275d: $d1

Jump_000_275e:
    ret                                           ; $275e: $c9


Call_000_275f:
    cp $02                                        ; $275f: $fe $02

Call_000_2761:
Jump_000_2761:
    jr nc, jr_000_2765                            ; $2761: $30 $02

    ld a, $02                                     ; $2763: $3e $02

jr_000_2765:
    push de                                       ; $2765: $d5

Jump_000_2766:
    push hl                                       ; $2766: $e5
    ld e, a                                       ; $2767: $5f

Call_000_2768:
    ld a, [$4000]                                 ; $2768: $fa $00 $40
    push af                                       ; $276b: $f5
    ld hl, $c0bd                                  ; $276c: $21 $bd $c0

Call_000_276f:
    ld a, [hl+]                                   ; $276f: $2a
    sra a                                         ; $2770: $cb $2f
    sra a                                         ; $2772: $cb $2f

Jump_000_2774:
    sra a                                         ; $2774: $cb $2f
    xor [hl]                                      ; $2776: $ae
    inc hl                                        ; $2777: $23
    rra                                           ; $2778: $1f

Jump_000_2779:
    rl [hl]                                       ; $2779: $cb $16

Call_000_277b:
    dec hl                                        ; $277b: $2b
    rl [hl]                                       ; $277c: $cb $16
    dec hl                                        ; $277e: $2b
    rl [hl]                                       ; $277f: $cb $16

Jump_000_2781:
    ldh a, [rDIV]                                 ; $2781: $f0 $04
    add [hl]                                      ; $2783: $86

Jump_000_2784:
    jr jr_000_2742                                ; $2784: $18 $bc

Call_000_2786:
    ldh a, [rSVBK]                                ; $2786: $f0 $70

Call_000_2788:
    push af                                       ; $2788: $f5

Call_000_2789:
Jump_000_2789:
    ld a, $02                                     ; $2789: $3e $02
    ldh [rSVBK], a                                ; $278b: $e0 $70
    push de                                       ; $278d: $d5

jr_000_278e:
    ld a, [hl]                                    ; $278e: $7e

Jump_000_278f:
    cp $ff                                        ; $278f: $fe $ff
    jr z, jr_000_27a9                             ; $2791: $28 $16

    and $7f                                       ; $2793: $e6 $7f
    ld c, a                                       ; $2795: $4f
    bit 7, [hl]                                   ; $2796: $cb $7e
    inc hl                                        ; $2798: $23
    jr nz, jr_000_27a4                            ; $2799: $20 $09

    ld b, c                                       ; $279b: $41

Call_000_279c:
Jump_000_279c:
    ld a, [hl+]                                   ; $279c: $2a

Call_000_279d:
Jump_000_279d:
jr_000_279d:
    ld [de], a                                    ; $279d: $12
    inc de                                        ; $279e: $13
    dec b                                         ; $279f: $05
    jr nz, jr_000_279d                            ; $27a0: $20 $fb

    jr jr_000_278e                                ; $27a2: $18 $ea

jr_000_27a4:
    call Call_000_114a                            ; $27a4: $cd $4a $11
    jr jr_000_278e                                ; $27a7: $18 $e5

jr_000_27a9:
    pop bc                                        ; $27a9: $c1
    push hl                                       ; $27aa: $e5
    ld l, e                                       ; $27ab: $6b
    ld h, d                                       ; $27ac: $62
    call Call_000_007b                            ; $27ad: $cd $7b $00

Call_000_27b0:
    add hl, bc                                    ; $27b0: $09

Call_000_27b1:
Jump_000_27b1:
    call Call_000_007b                            ; $27b1: $cd $7b $00
    ld c, l                                       ; $27b4: $4d
    ld b, h                                       ; $27b5: $44

Call_000_27b6:
    pop hl                                        ; $27b6: $e1

Call_000_27b7:
Jump_000_27b7:
    pop af                                        ; $27b7: $f1

Jump_000_27b8:
    ldh [rSVBK], a                                ; $27b8: $e0 $70

Jump_000_27ba:
    ret                                           ; $27ba: $c9


Call_000_27bb:
    ld hl, $002b                                  ; $27bb: $21 $2b $00

Jump_000_27be:
    add hl, bc                                    ; $27be: $09
    ld a, [hl]                                    ; $27bf: $7e
    ld h, $00                                     ; $27c0: $26 $00
    bit 3, a                                      ; $27c2: $cb $5f
    jr z, jr_000_27c8                             ; $27c4: $28 $02

    ld h, $01                                     ; $27c6: $26 $01

jr_000_27c8:
    push hl                                       ; $27c8: $e5
    push de                                       ; $27c9: $d5
    call Call_000_0871                            ; $27ca: $cd $71 $08
    ld hl, $ffb3                                  ; $27cd: $21 $b3 $ff
    ld [hl], e                                    ; $27d0: $73

Jump_000_27d1:
    inc hl                                        ; $27d1: $23
    ld [hl], d                                    ; $27d2: $72

Call_000_27d3:
    ld hl, $4001                                  ; $27d3: $21 $01 $40
    add hl, de                                    ; $27d6: $19
    add hl, de                                    ; $27d7: $19

Call_000_27d8:
Jump_000_27d8:
    add hl, de                                    ; $27d8: $19

Call_000_27d9:
    pop de                                        ; $27d9: $d1
    call Call_000_32d3                            ; $27da: $cd $d3 $32
    ld a, [hl+]                                   ; $27dd: $2a

Call_000_27de:
    rst $08                                       ; $27de: $cf
    call Call_000_2786                            ; $27df: $cd $86 $27
    pop af                                        ; $27e2: $f1
    or a                                          ; $27e3: $b7
    jr z, jr_000_2802                             ; $27e4: $28 $1c

    push bc                                       ; $27e6: $c5
    push de                                       ; $27e7: $d5

Call_000_27e8:
Jump_000_27e8:
    ld hl, $ffb3                                  ; $27e8: $21 $b3 $ff

Call_000_27eb:
    ld e, [hl]                                    ; $27eb: $5e

Jump_000_27ec:
    inc hl                                        ; $27ec: $23
    ld d, [hl]                                    ; $27ed: $56
    inc de                                        ; $27ee: $13
    ld hl, $4001                                  ; $27ef: $21 $01 $40
    add hl, de                                    ; $27f2: $19
    add hl, de                                    ; $27f3: $19
    add hl, de                                    ; $27f4: $19

Jump_000_27f5:
    call Call_000_32d3                            ; $27f5: $cd $d3 $32

Call_000_27f8:
    pop de                                        ; $27f8: $d1
    ld a, [hl+]                                   ; $27f9: $2a
    rst $08                                       ; $27fa: $cf
    call Call_000_2786                            ; $27fb: $cd $86 $27
    pop hl                                        ; $27fe: $e1

Jump_000_27ff:
    add hl, bc                                    ; $27ff: $09

Call_000_2800:
    push hl                                       ; $2800: $e5
    pop bc                                        ; $2801: $c1

Call_000_2802:
Jump_000_2802:
jr_000_2802:
    ld a, $01                                     ; $2802: $3e $01
    ld [$2000], a                                 ; $2804: $ea $00 $20

Jump_000_2807:
    ret                                           ; $2807: $c9


Unknown_Non_GBC:
    ld a, $01
    ld [rROMB0], a              ; load bank 1
    call LCDOff

    ld a, %11_10_01_00                            ; $2810: $3e $e4
    ldh [rBGP], a                                 ; $2812: $e0 $47

    xor a                       ; (a = 0)
    ldh [rSTAT], a

    inc a                       ; (a = 1)
    ldh [rLCDC], a
    inc a                       ; (a = 2)
    ldh [$a7], a

    ld a, $59                                     ; $281d: $3e $59
    ld de, $0080                                  ; $281f: $11 $80 $00
    call Call_000_28e1                            ; $2822: $cd $e1 $28

    ;; display from (0,0)
    ld hl, $ffc8
    ld [hl], $00
    inc hl
    ld [hl], $00
    call LCDScroll

    call LCDOn

:
    halt
    nop
    jr :-

Jump_000_2837:
    ld de, $cd06                                  ; $2837: $11 $06 $cd
    call Call_000_1233                            ; $283a: $cd $33 $12
    ld hl, $cd06                                  ; $283d: $21 $06 $cd

Call_000_2840:
Jump_000_2840:
    push hl                                       ; $2840: $e5
    ld a, [$cd0e]                                 ; $2841: $fa $0e $cd

Jump_000_2844:
    ld d, a                                       ; $2844: $57
    ld a, [$cd0f]                                 ; $2845: $fa $0f $cd

Call_000_2848:
    ld e, a                                       ; $2848: $5f

Call_000_2849:
    call Call_000_2899                            ; $2849: $cd $99 $28
    pop hl                                        ; $284c: $e1

Call_000_284d:
    ld a, [hl+]                                   ; $284d: $2a
    ldh [$a7], a                                  ; $284e: $e0 $a7
    ld a, [hl+]                                   ; $2850: $2a
    ld e, [hl]                                    ; $2851: $5e
    inc hl                                        ; $2852: $23
    ld d, [hl]                                    ; $2853: $56
    inc hl                                        ; $2854: $23

Call_000_2855:
    push hl                                       ; $2855: $e5
    call Call_000_28e1                            ; $2856: $cd $e1 $28
    pop hl                                        ; $2859: $e1
    ld e, [hl]                                    ; $285a: $5e
    inc hl                                        ; $285b: $23
    ld d, [hl]                                    ; $285c: $56
    inc hl                                        ; $285d: $23

Call_000_285e:
Jump_000_285e:
    ld a, [hl+]                                   ; $285e: $2a
    ld h, [hl]                                    ; $285f: $66
    ld l, a                                       ; $2860: $6f
    ld de, $2866                                  ; $2861: $11 $66 $28
    push de                                       ; $2864: $d5
    jp hl                                         ; $2865: $e9


    ld hl, $ffc8                                  ; $2866: $21 $c8 $ff
    ld [hl], $00                                  ; $2869: $36 $00
    inc hl                                        ; $286b: $23
    ld [hl], $00                                  ; $286c: $36 $00
    call LCDScroll                                ; $286e: $cd $bd $11

Call_000_2871:
Jump_000_2871:
    ldh a, [$a7]                                  ; $2871: $f0 $a7
    bit 0, a                                      ; $2873: $cb $47
    jr z, jr_000_287e                             ; $2875: $28 $07

Call_000_2877:
    ldh a, [$a8]                                  ; $2877: $f0 $a8
    cp $03                                        ; $2879: $fe $03
    call c, RST_20                                ; $287b: $dc $20 $00

jr_000_287e:
    call Call_000_01d1                            ; $287e: $cd $d1 $01
    call Call_000_0211                            ; $2881: $cd $11 $02
    call LCDOn                                    ; $2884: $cd $cc $11
    ld a, [$cd11]                                 ; $2887: $fa $11 $cd
    ld e, a                                       ; $288a: $5f

Jump_000_288b:
    ld a, [$cd10]                                 ; $288b: $fa $10 $cd
    push af                                       ; $288e: $f5
    ld a, $05                                     ; $288f: $3e $05
    ld [$2000], a                                 ; $2891: $ea $00 $20
    pop af                                        ; $2894: $f1
    call $7c44                                    ; $2895: $cd $44 $7c
    ret                                           ; $2898: $c9


Call_000_2899:
    ld a, d                                       ; $2899: $7a

Jump_000_289a:
    push af                                       ; $289a: $f5
    ld a, $05                                     ; $289b: $3e $05

Jump_000_289d:
    ld [$2000], a                                 ; $289d: $ea $00 $20
    pop af                                        ; $28a0: $f1
    call $7c0a                                    ; $28a1: $cd $0a $7c
    ld a, $01                                     ; $28a4: $3e $01

Jump_000_28a6:
    ld [$2000], a                                 ; $28a6: $ea $00 $20
    call $4625                                    ; $28a9: $cd $25 $46

Jump_000_28ac:
    ld a, $01                                     ; $28ac: $3e $01
    ld [$2000], a                                 ; $28ae: $ea $00 $20

Jump_000_28b1:
    call $5b6f                                    ; $28b1: $cd $6f $5b
    xor a                                         ; $28b4: $af

Call_000_28b5:
    ld hl, $ff90                                  ; $28b5: $21 $90 $ff

Call_000_28b8:
Jump_000_28b8:
    ld [hl+], a                                   ; $28b8: $22

Jump_000_28b9:
    ld [hl+], a                                   ; $28b9: $22
    ld [hl+], a                                   ; $28ba: $22
    ld [hl+], a                                   ; $28bb: $22
    ld [$c30b], a                                 ; $28bc: $ea $0b $c3

Call_000_28bf:
    ld [$c0c2], a                                 ; $28bf: $ea $c2 $c0
    ld [$c0c1], a                                 ; $28c2: $ea $c1 $c0
    ldh [$db], a                                  ; $28c5: $e0 $db
    inc a                                         ; $28c7: $3c
    ld [$c0c5], a                                 ; $28c8: $ea $c5 $c0
    call Call_000_1850                            ; $28cb: $cd $50 $18

Jump_000_28ce:
    ld a, $03                                     ; $28ce: $3e $03

Jump_000_28d0:
    ld [$2000], a                                 ; $28d0: $ea $00 $20

Call_000_28d3:
    call $6ed4                                    ; $28d3: $cd $d4 $6e
    ld a, $01                                     ; $28d6: $3e $01
    ld [$2000], a                                 ; $28d8: $ea $00 $20

Jump_000_28db:
    call Call_000_06fd                            ; $28db: $cd $fd $06

Call_000_28de:
    jp Jump_000_04b3                              ; $28de: $c3 $b3 $04


Call_000_28e1:
    call Call_000_2916                            ; $28e1: $cd $16 $29
    ld hl, $ccef                                  ; $28e4: $21 $ef $cc
    ld c, [hl]                                    ; $28e7: $4e
    inc hl                                        ; $28e8: $23
    ld b, [hl]                                    ; $28e9: $46
    ld hl, $5489                                  ; $28ea: $21 $89 $54
    call Call_000_24fb                            ; $28ed: $cd $fb $24

Call_000_28f0:
    ld hl, $ccef                                  ; $28f0: $21 $ef $cc
    ld c, [hl]                                    ; $28f3: $4e
    inc hl                                        ; $28f4: $23

Call_000_28f5:
Jump_000_28f5:
    ld b, [hl]                                    ; $28f5: $46
    ld hl, $537b                                  ; $28f6: $21 $7b $53
    call Call_000_2999                            ; $28f9: $cd $99 $29
    ld bc, $0000                                  ; $28fc: $01 $00 $00
    ldh a, [$a7]                                  ; $28ff: $f0 $a7
    bit 0, a                                      ; $2901: $cb $47

Call_000_2903:
Jump_000_2903:
    ld de, $d800                                  ; $2903: $11 $00 $d8
    push hl                                       ; $2906: $e5
    call nz, Call_000_129d                        ; $2907: $c4 $9d $12
    pop hl                                        ; $290a: $e1
    ldh a, [$a7]                                  ; $290b: $f0 $a7
    bit 1, a                                      ; $290d: $cb $4f

Call_000_290f:
    ld de, $9800                                  ; $290f: $11 $00 $98

Call_000_2912:
    call nz, Call_000_10b5                        ; $2912: $c4 $b5 $10

Call_000_2915:
Jump_000_2915:
    ret                                           ; $2915: $c9


Call_000_2916:
    call Call_000_13ff                            ; $2916: $cd $ff $13
    ld hl, $ccef                                  ; $2919: $21 $ef $cc
    ld [hl], c                                    ; $291c: $71
    inc hl                                        ; $291d: $23
    ld [hl], b                                    ; $291e: $70

Call_000_291f:
    ld hl, $ffb8                                  ; $291f: $21 $b8 $ff
    ld [hl], e                                    ; $2922: $73

Call_000_2923:
    inc hl                                        ; $2923: $23
    ld [hl], d                                    ; $2924: $72
    ld hl, $526d                                  ; $2925: $21 $6d $52

Jump_000_2928:
    jr jr_000_293a                                ; $2928: $18 $10

Jump_000_292a:
    call Call_000_13ff                            ; $292a: $cd $ff $13

Jump_000_292d:
    call Call_000_32be                            ; $292d: $cd $be $32

Call_000_2930:
    ld a, [hl+]                                   ; $2930: $2a
    ld c, a                                       ; $2931: $4f
    ld a, [hl+]                                   ; $2932: $2a
    ld b, a                                       ; $2933: $47

Call_000_2934:
    add hl, bc                                    ; $2934: $09

Call_000_2935:
    jr jr_000_293d                                ; $2935: $18 $06

    call Call_000_13ff                            ; $2937: $cd $ff $13

jr_000_293a:
    call Call_000_32be                            ; $293a: $cd $be $32

jr_000_293d:
    call Call_000_1258                            ; $293d: $cd $58 $12

Jump_000_2940:
    ldh a, [rLCDC]                                ; $2940: $f0 $40
    bit 7, a                                      ; $2942: $cb $7f
    jr nz, jr_000_295c                            ; $2944: $20 $16

    ld a, $03                                     ; $2946: $3e $03
    jp Jump_000_25bd                              ; $2948: $c3 $bd $25


Call_000_294b:
    call Call_000_13ff                            ; $294b: $cd $ff $13

Jump_000_294e:
    ld a, $01                                     ; $294e: $3e $01
    ld [$2000], a                                 ; $2950: $ea $00 $20

Call_000_2953:
    call $4155                                    ; $2953: $cd $55 $41

Jump_000_2956:
    call Call_000_32be                            ; $2956: $cd $be $32

Call_000_2959:
    call Call_000_1258                            ; $2959: $cd $58 $12

jr_000_295c:
    ld a, e                                       ; $295c: $7b
    ld [$c311], a                                 ; $295d: $ea $11 $c3

Jump_000_2960:
    ld a, d                                       ; $2960: $7a
    ld [$c312], a                                 ; $2961: $ea $12 $c3
    ld de, $d000                                  ; $2964: $11 $00 $d0
    ld a, e                                       ; $2967: $7b
    ld [$c313], a                                 ; $2968: $ea $13 $c3

Call_000_296b:
Jump_000_296b:
    ld a, d                                       ; $296b: $7a
    ld [$c314], a                                 ; $296c: $ea $14 $c3
    push bc                                       ; $296f: $c5
    xor a                                         ; $2970: $af

Jump_000_2971:
    call Call_000_25bd                            ; $2971: $cd $bd $25
    pop bc                                        ; $2974: $c1
    ld a, c                                       ; $2975: $79

Call_000_2976:
    dec a                                         ; $2976: $3d
    ld [$c310], a                                 ; $2977: $ea $10 $c3

Jump_000_297a:
    ldh a, [rLCDC]                                ; $297a: $f0 $40
    bit 7, a                                      ; $297c: $cb $7f

Call_000_297e:
    ret nz                                        ; $297e: $c0

Call_000_297f:
    ld a, $01                                     ; $297f: $3e $01
    ld [$2000], a                                 ; $2981: $ea $00 $20
    jp $4160                                      ; $2984: $c3 $60 $41


Call_000_2987:
    call Call_000_13ff                            ; $2987: $cd $ff $13
    push de                                       ; $298a: $d5

Call_000_298b:
    call Call_000_32be                            ; $298b: $cd $be $32
    ld de, $ccf1                                  ; $298e: $11 $f1 $cc

Call_000_2991:
    call Call_000_124b                            ; $2991: $cd $4b $12
    pop de                                        ; $2994: $d1
    ret                                           ; $2995: $c9


Call_000_2996:
Jump_000_2996:
    call Call_000_13ff                            ; $2996: $cd $ff $13

Call_000_2999:
    push de                                       ; $2999: $d5
    call Call_000_32be                            ; $299a: $cd $be $32
    ld de, $ccf1                                  ; $299d: $11 $f1 $cc
    call Call_000_124b                            ; $29a0: $cd $4b $12
    ld a, $00                                     ; $29a3: $3e $00

Jump_000_29a5:
    call Call_000_25bd                            ; $29a5: $cd $bd $25
    ld hl, $d000                                  ; $29a8: $21 $00 $d0

Call_000_29ab:
Jump_000_29ab:
    pop de                                        ; $29ab: $d1

Jump_000_29ac:
    ret                                           ; $29ac: $c9


Call_000_29ad:
    ld a, $02                                     ; $29ad: $3e $02

Jump_000_29af:
    ld [$2000], a                                 ; $29af: $ea $00 $20
    ld a, [bc]                                    ; $29b2: $0a

Call_000_29b3:
    ld hl, $4001                                  ; $29b3: $21 $01 $40
    jp Jump_000_3194                              ; $29b6: $c3 $94 $31


Call_000_29b9:
Jump_000_29b9:
    ld hl, $001c                                  ; $29b9: $21 $1c $00
    add hl, bc                                    ; $29bc: $09
    ld e, [hl]                                    ; $29bd: $5e

Jump_000_29be:
    inc hl                                        ; $29be: $23

Call_000_29bf:
Jump_000_29bf:
    ld d, [hl]                                    ; $29bf: $56
    dec de                                        ; $29c0: $1b
    bit 7, d                                      ; $29c1: $cb $7a
    ret nz                                        ; $29c3: $c0

    ld [hl], d                                    ; $29c4: $72
    dec hl                                        ; $29c5: $2b

Call_000_29c6:
    ld [hl], e                                    ; $29c6: $73
    ld a, d                                       ; $29c7: $7a
    or e                                          ; $29c8: $b3
    ret nz                                        ; $29c9: $c0

    ld hl, $001a                                  ; $29ca: $21 $1a $00
    add hl, bc                                    ; $29cd: $09
    ld e, [hl]                                    ; $29ce: $5e
    inc hl                                        ; $29cf: $23

Call_000_29d0:
Jump_000_29d0:
    ld d, [hl]                                    ; $29d0: $56

Call_000_29d1:
Jump_000_29d1:
    ld hl, $ff98                                  ; $29d1: $21 $98 $ff
    ld [hl], e                                    ; $29d4: $73

Call_000_29d5:
    inc hl                                        ; $29d5: $23
    ld [hl], d                                    ; $29d6: $72

Jump_000_29d7:
    ld a, $02                                     ; $29d7: $3e $02

Call_000_29d9:
Jump_000_29d9:
    ld [$2000], a                                 ; $29d9: $ea $00 $20
    call Call_000_2a04                            ; $29dc: $cd $04 $2a

Jump_000_29df:
    jp hl                                         ; $29df: $e9


Call_000_29e0:
    push de                                       ; $29e0: $d5
    push hl                                       ; $29e1: $e5

Call_000_29e2:
    ld hl, $ff98                                  ; $29e2: $21 $98 $ff

Jump_000_29e5:
    ld a, [hl+]                                   ; $29e5: $2a
    ld d, [hl]                                    ; $29e6: $56

Call_000_29e7:
    ld e, a                                       ; $29e7: $5f

Jump_000_29e8:
    push hl                                       ; $29e8: $e5
    ld hl, $0050                                  ; $29e9: $21 $50 $00
    add hl, bc                                    ; $29ec: $09

Call_000_29ed:
Jump_000_29ed:
    ld a, [hl]                                    ; $29ed: $7e
    or a                                          ; $29ee: $b7
    jr z, jr_000_29f6                             ; $29ef: $28 $05

    ld [$2000], a                                 ; $29f1: $ea $00 $20

Jump_000_29f4:
    jr jr_000_29fb                                ; $29f4: $18 $05

Call_000_29f6:
jr_000_29f6:
    ld a, $02                                     ; $29f6: $3e $02
    ld [$2000], a                                 ; $29f8: $ea $00 $20

Call_000_29fb:
jr_000_29fb:
    pop hl                                        ; $29fb: $e1
    ld a, [de]                                    ; $29fc: $1a

Jump_000_29fd:
    inc de                                        ; $29fd: $13
    ld [hl], d                                    ; $29fe: $72

Jump_000_29ff:
    dec hl                                        ; $29ff: $2b

Call_000_2a00:
Jump_000_2a00:
    ld [hl], e                                    ; $2a00: $73

Call_000_2a01:
    pop hl                                        ; $2a01: $e1
    pop de                                        ; $2a02: $d1
    ret                                           ; $2a03: $c9


Call_000_2a04:
Jump_000_2a04:
    call Call_000_29e0                            ; $2a04: $cd $e0 $29

Call_000_2a07:
    ld l, a                                       ; $2a07: $6f
    ld h, $00                                     ; $2a08: $26 $00
    ld a, $02                                     ; $2a0a: $3e $02
    ld [$2000], a                                 ; $2a0c: $ea $00 $20
    ld de, $7dfb                                  ; $2a0f: $11 $fb $7d
    add hl, de                                    ; $2a12: $19

Jump_000_2a13:
    ret                                           ; $2a13: $c9


Jump_000_2a14:
    ld hl, $0025                                  ; $2a14: $21 $25 $00

Call_000_2a17:
    add hl, bc                                    ; $2a17: $09
    ld [hl], $00                                  ; $2a18: $36 $00
    call Call_000_29e0                            ; $2a1a: $cd $e0 $29

Jump_000_2a1d:
    call Call_000_08ec                            ; $2a1d: $cd $ec $08
    jp Jump_000_29d7                              ; $2a20: $c3 $d7 $29


Jump_000_2a23:
    call Call_000_29e0                            ; $2a23: $cd $e0 $29
    ld e, a                                       ; $2a26: $5f
    ld hl, $002d                                  ; $2a27: $21 $2d $00

Call_000_2a2a:
    add hl, bc                                    ; $2a2a: $09
    ld a, [hl]                                    ; $2a2b: $7e
    and $40                                       ; $2a2c: $e6 $40
    or e                                          ; $2a2e: $b3

Jump_000_2a2f:
    ld [hl], a                                    ; $2a2f: $77
    jp Jump_000_29d7                              ; $2a30: $c3 $d7 $29


Jump_000_2a33:
    ld hl, $0025                                  ; $2a33: $21 $25 $00

Jump_000_2a36:
    add hl, bc                                    ; $2a36: $09
    jr jr_000_2a3f                                ; $2a37: $18 $06

Jump_000_2a39:
jr_000_2a39:
    add hl, bc                                    ; $2a39: $09
    call Call_000_29e0                            ; $2a3a: $cd $e0 $29
    ld [hl], a                                    ; $2a3d: $77
    inc hl                                        ; $2a3e: $23

Jump_000_2a3f:
jr_000_2a3f:
    call Call_000_29e0                            ; $2a3f: $cd $e0 $29
    ld [hl], a                                    ; $2a42: $77
    jp Jump_000_29d7                              ; $2a43: $c3 $d7 $29


Call_000_2a46:
Jump_000_2a46:
    ld a, [$cdbb]                                 ; $2a46: $fa $bb $cd
    jr jr_000_2a4e                                ; $2a49: $18 $03

Jump_000_2a4b:
    call Call_000_29e0                            ; $2a4b: $cd $e0 $29

jr_000_2a4e:
    ld hl, $001c                                  ; $2a4e: $21 $1c $00
    add hl, bc                                    ; $2a51: $09
    ld [hl], a                                    ; $2a52: $77

Jump_000_2a53:
    ld hl, $ff98                                  ; $2a53: $21 $98 $ff
    ld e, [hl]                                    ; $2a56: $5e
    inc hl                                        ; $2a57: $23
    ld d, [hl]                                    ; $2a58: $56
    ld hl, $001a                                  ; $2a59: $21 $1a $00

Jump_000_2a5c:
    add hl, bc                                    ; $2a5c: $09
    ld [hl], e                                    ; $2a5d: $73
    inc hl                                        ; $2a5e: $23
    ld [hl], d                                    ; $2a5f: $72
    ret                                           ; $2a60: $c9


Jump_000_2a61:
    call Call_000_2df4                            ; $2a61: $cd $f4 $2d
    ld hl, $001e                                  ; $2a64: $21 $1e $00
    add hl, bc                                    ; $2a67: $09

Jump_000_2a68:
    ld a, [hl]                                    ; $2a68: $7e
    inc [hl]                                      ; $2a69: $34
    inc hl                                        ; $2a6a: $23
    call Call_000_318c                            ; $2a6b: $cd $8c $31
    ldh a, [$98]                                  ; $2a6e: $f0 $98
    ld [hl+], a                                   ; $2a70: $22
    ldh a, [$99]                                  ; $2a71: $f0 $99
    ld [hl], a                                    ; $2a73: $77

Jump_000_2a74:
    ld hl, $ff98                                  ; $2a74: $21 $98 $ff

Call_000_2a77:
    ld [hl], e                                    ; $2a77: $73
    inc hl                                        ; $2a78: $23
    ld [hl], d                                    ; $2a79: $72
    jp Jump_000_29d7                              ; $2a7a: $c3 $d7 $29


Jump_000_2a7d:
    ld hl, $001e                                  ; $2a7d: $21 $1e $00

Call_000_2a80:
Jump_000_2a80:
    add hl, bc                                    ; $2a80: $09
    dec [hl]                                      ; $2a81: $35
    ld a, [hl+]                                   ; $2a82: $2a
    call Call_000_3194                            ; $2a83: $cd $94 $31
    ld hl, $ff98                                  ; $2a86: $21 $98 $ff
    ld [hl], e                                    ; $2a89: $73
    inc hl                                        ; $2a8a: $23
    ld [hl], d                                    ; $2a8b: $72
    jp Jump_000_29d7                              ; $2a8c: $c3 $d7 $29


Jump_000_2a8f:
    ld hl, $000f                                  ; $2a8f: $21 $0f $00
    jr jr_000_2a39                                ; $2a92: $18 $a5

Jump_000_2a94:
    ld hl, $0011                                  ; $2a94: $21 $11 $00
    jr jr_000_2a39                                ; $2a97: $18 $a0

Jump_000_2a99:
    call Call_000_29e0                            ; $2a99: $cd $e0 $29
    ld hl, $002b                                  ; $2a9c: $21 $2b $00
    add hl, bc                                    ; $2a9f: $09
    ld [hl], a                                    ; $2aa0: $77

Call_000_2aa1:
Jump_000_2aa1:
    jp Jump_000_29d7                              ; $2aa1: $c3 $d7 $29


Jump_000_2aa4:
    call Call_000_29e0                            ; $2aa4: $cd $e0 $29

Call_000_2aa7:
Jump_000_2aa7:
    call Call_000_393e                            ; $2aa7: $cd $3e $39
    jp Jump_000_29d7                              ; $2aaa: $c3 $d7 $29


Jump_000_2aad:
    call Call_000_2df4                            ; $2aad: $cd $f4 $2d

Jump_000_2ab0:
    ld hl, $ff98                                  ; $2ab0: $21 $98 $ff
    ld [hl], e                                    ; $2ab3: $73

Call_000_2ab4:
    inc hl                                        ; $2ab4: $23
    ld [hl], d                                    ; $2ab5: $72
    jp Jump_000_29d7                              ; $2ab6: $c3 $d7 $29


Jump_000_2ab9:
    call Call_000_2df4                            ; $2ab9: $cd $f4 $2d
    ld hl, $0031                                  ; $2abc: $21 $31 $00

Call_000_2abf:
    add hl, bc                                    ; $2abf: $09

Jump_000_2ac0:
    push de                                       ; $2ac0: $d5

Jump_000_2ac1:
    ld d, h                                       ; $2ac1: $54

Jump_000_2ac2:
    ld e, l                                       ; $2ac2: $5d
    pop hl                                        ; $2ac3: $e1
    call Call_000_1239                            ; $2ac4: $cd $39 $12
    jp Jump_000_29d7                              ; $2ac7: $c3 $d7 $29


Jump_000_2aca:
    call Call_000_2e0d                            ; $2aca: $cd $0d $2e
    jp Jump_000_29d7                              ; $2acd: $c3 $d7 $29


Jump_000_2ad0:
    ld de, $29d7                                  ; $2ad0: $11 $d7 $29
    push de                                       ; $2ad3: $d5
    call Call_000_2df4                            ; $2ad4: $cd $f4 $2d

Jump_000_2ad7:
    ld l, e                                       ; $2ad7: $6b
    ld h, d                                       ; $2ad8: $62
    jp hl                                         ; $2ad9: $e9


Jump_000_2ada:
    call Call_000_29e0                            ; $2ada: $cd $e0 $29
    push af                                       ; $2add: $f5
    call Call_000_2df4                            ; $2ade: $cd $f4 $2d
    ld l, e                                       ; $2ae1: $6b
    ld h, d                                       ; $2ae2: $62
    pop af                                        ; $2ae3: $f1

Call_000_2ae4:
    call Call_000_34db                            ; $2ae4: $cd $db $34
    jp Jump_000_29d7                              ; $2ae7: $c3 $d7 $29


Jump_000_2aea:
    call Call_000_2df4                            ; $2aea: $cd $f4 $2d
    ld a, [$cdba]                                 ; $2aed: $fa $ba $cd
    ld l, a                                       ; $2af0: $6f
    push hl                                       ; $2af1: $e5
    pop af                                        ; $2af2: $f1
    jp z, Jump_000_2ab0                           ; $2af3: $ca $b0 $2a

    jp Jump_000_29d7                              ; $2af6: $c3 $d7 $29


Jump_000_2af9:
    call Call_000_2df4                            ; $2af9: $cd $f4 $2d
    ld a, [$cdba]                                 ; $2afc: $fa $ba $cd
    ld l, a                                       ; $2aff: $6f

Call_000_2b00:
Jump_000_2b00:
    push hl                                       ; $2b00: $e5

Jump_000_2b01:
    pop af                                        ; $2b01: $f1
    jp nz, Jump_000_2ab0                          ; $2b02: $c2 $b0 $2a

    jp Jump_000_29d7                              ; $2b05: $c3 $d7 $29


Call_000_2b08:
Jump_000_2b08:
    call Call_000_2df4                            ; $2b08: $cd $f4 $2d

Call_000_2b0b:
    ld a, [$cdba]                                 ; $2b0b: $fa $ba $cd

Call_000_2b0e:
    ld l, a                                       ; $2b0e: $6f
    push hl                                       ; $2b0f: $e5
    pop af                                        ; $2b10: $f1
    jp c, Jump_000_2ab0                           ; $2b11: $da $b0 $2a

Jump_000_2b14:
    jp Jump_000_29d7                              ; $2b14: $c3 $d7 $29


Jump_000_2b17:
    call Call_000_2df4                            ; $2b17: $cd $f4 $2d
    ld a, [$cdba]                                 ; $2b1a: $fa $ba $cd
    ld l, a                                       ; $2b1d: $6f
    push hl                                       ; $2b1e: $e5
    pop af                                        ; $2b1f: $f1

Call_000_2b20:
    jp nc, Jump_000_2ab0                          ; $2b20: $d2 $b0 $2a

Call_000_2b23:
    jp Jump_000_29d7                              ; $2b23: $c3 $d7 $29


Call_000_2b26:
Jump_000_2b26:
    ld hl, $0031                                  ; $2b26: $21 $31 $00

Jump_000_2b29:
    jp Jump_000_2a39                              ; $2b29: $c3 $39 $2a


Jump_000_2b2c:
    ld hl, $0035                                  ; $2b2c: $21 $35 $00

Call_000_2b2f:
Jump_000_2b2f:
    jp Jump_000_2a39                              ; $2b2f: $c3 $39 $2a


Jump_000_2b32:
    ld a, [$c271]                                 ; $2b32: $fa $71 $c2

Jump_000_2b35:
    push af                                       ; $2b35: $f5
    call Call_000_29e0                            ; $2b36: $cd $e0 $29
    call Call_000_03a0                            ; $2b39: $cd $a0 $03
    pop af                                        ; $2b3c: $f1
    ld [$c271], a                                 ; $2b3d: $ea $71 $c2

Call_000_2b40:
    jp Jump_000_29d7                              ; $2b40: $c3 $d7 $29


Jump_000_2b43:
    ld hl, $002e                                  ; $2b43: $21 $2e $00

Call_000_2b46:
Jump_000_2b46:
    add hl, bc                                    ; $2b46: $09
    set 3, [hl]                                   ; $2b47: $cb $de
    jp Jump_000_29d7                              ; $2b49: $c3 $d7 $29


Call_000_2b4c:
Jump_000_2b4c:
    ld hl, $002e                                  ; $2b4c: $21 $2e $00
    add hl, bc                                    ; $2b4f: $09
    set 4, [hl]                                   ; $2b50: $cb $e6
    jp Jump_000_29d7                              ; $2b52: $c3 $d7 $29


Jump_000_2b55:
    ld hl, $002c                                  ; $2b55: $21 $2c $00
    add hl, bc                                    ; $2b58: $09
    res 4, [hl]                                   ; $2b59: $cb $a6
    jp Jump_000_29d7                              ; $2b5b: $c3 $d7 $29


Jump_000_2b5e:
    ld hl, $002c                                  ; $2b5e: $21 $2c $00
    add hl, bc                                    ; $2b61: $09
    set 4, [hl]                                   ; $2b62: $cb $e6
    jp Jump_000_29d7                              ; $2b64: $c3 $d7 $29


Jump_000_2b67:
    ld hl, $002c                                  ; $2b67: $21 $2c $00
    add hl, bc                                    ; $2b6a: $09

Jump_000_2b6b:
    set 3, [hl]                                   ; $2b6b: $cb $de
    jp Jump_000_29d7                              ; $2b6d: $c3 $d7 $29


Jump_000_2b70:
    ld hl, $0025                                  ; $2b70: $21 $25 $00
    add hl, bc                                    ; $2b73: $09

Jump_000_2b74:
    ld [hl], $00                                  ; $2b74: $36 $00
    jp Jump_000_29d7                              ; $2b76: $c3 $d7 $29


Jump_000_2b79:
    call Call_000_29e0                            ; $2b79: $cd $e0 $29
    ld hl, $002c                                  ; $2b7c: $21 $2c $00

Call_000_2b7f:
Jump_000_2b7f:
    add hl, bc                                    ; $2b7f: $09
    bit 5, [hl]                                   ; $2b80: $cb $6e
    jr z, jr_000_2b86                             ; $2b82: $28 $02

    cpl                                           ; $2b84: $2f
    inc a                                         ; $2b85: $3c

jr_000_2b86:
    ld hl, $000b                                  ; $2b86: $21 $0b $00
    call Call_000_2de7                            ; $2b89: $cd $e7 $2d
    ld hl, $ff9c                                  ; $2b8c: $21 $9c $ff
    ld [hl], e                                    ; $2b8f: $73
    inc hl                                        ; $2b90: $23
    ld [hl], d                                    ; $2b91: $72
    jp Jump_000_29d7                              ; $2b92: $c3 $d7 $29


Jump_000_2b95:
    call Call_000_29e0                            ; $2b95: $cd $e0 $29
    ld hl, $000d                                  ; $2b98: $21 $0d $00
    call Call_000_2de7                            ; $2b9b: $cd $e7 $2d
    ld hl, $ff9e                                  ; $2b9e: $21 $9e $ff

Jump_000_2ba1:
    ld [hl], e                                    ; $2ba1: $73
    inc hl                                        ; $2ba2: $23

Call_000_2ba3:
    ld [hl], d                                    ; $2ba3: $72
    jp Jump_000_29d7                              ; $2ba4: $c3 $d7 $29


Jump_000_2ba7:
    call Call_000_29e0                            ; $2ba7: $cd $e0 $29
    ldh [$9b], a                                  ; $2baa: $e0 $9b
    jp Jump_000_29d7                              ; $2bac: $c3 $d7 $29


Jump_000_2baf:
    call Call_000_29e0                            ; $2baf: $cd $e0 $29
    ld [$c301], a                                 ; $2bb2: $ea $01 $c3

Call_000_2bb5:
    jp Jump_000_29d7                              ; $2bb5: $c3 $d7 $29


Call_000_2bb8:
Jump_000_2bb8:
    call Call_000_2df4                            ; $2bb8: $cd $f4 $2d

Call_000_2bbb:
    ld hl, $002c                                  ; $2bbb: $21 $2c $00

Jump_000_2bbe:
    add hl, bc                                    ; $2bbe: $09

Call_000_2bbf:
Jump_000_2bbf:
    bit 5, [hl]                                   ; $2bbf: $cb $6e
    jr z, jr_000_2bca                             ; $2bc1: $28 $07

    ld a, e                                       ; $2bc3: $7b
    cpl                                           ; $2bc4: $2f
    ld e, a                                       ; $2bc5: $5f
    ld a, d                                       ; $2bc6: $7a

Call_000_2bc7:
    cpl                                           ; $2bc7: $2f
    ld d, a                                       ; $2bc8: $57
    inc de                                        ; $2bc9: $13

jr_000_2bca:
    ld hl, $000f                                  ; $2bca: $21 $0f $00

Call_000_2bcd:
    add hl, bc                                    ; $2bcd: $09
    ld [hl], e                                    ; $2bce: $73

Jump_000_2bcf:
    inc hl                                        ; $2bcf: $23

Jump_000_2bd0:
    ld [hl], d                                    ; $2bd0: $72

Call_000_2bd1:
    jp Jump_000_29d7                              ; $2bd1: $c3 $d7 $29


Call_000_2bd4:
Jump_000_2bd4:
    call Call_000_2df4                            ; $2bd4: $cd $f4 $2d
    call Call_000_0a50                            ; $2bd7: $cd $50 $0a

Jump_000_2bda:
    jp Jump_000_29d7                              ; $2bda: $c3 $d7 $29


Jump_000_2bdd:
    call Call_000_0e9d                            ; $2bdd: $cd $9d $0e
    jp Jump_000_29d7                              ; $2be0: $c3 $d7 $29


Jump_000_2be3:
    call Call_000_0e8b                            ; $2be3: $cd $8b $0e

Call_000_2be6:
Jump_000_2be6:
    jp Jump_000_29d7                              ; $2be6: $c3 $d7 $29


Jump_000_2be9:
    ld hl, $002d                                  ; $2be9: $21 $2d $00
    add hl, bc                                    ; $2bec: $09
    set 5, [hl]                                   ; $2bed: $cb $ee
    jp Jump_000_29d7                              ; $2bef: $c3 $d7 $29


Jump_000_2bf2:
    ld hl, $002d                                  ; $2bf2: $21 $2d $00

Call_000_2bf5:
    add hl, bc                                    ; $2bf5: $09
    res 5, [hl]                                   ; $2bf6: $cb $ae

Call_000_2bf8:
    jp Jump_000_29d7                              ; $2bf8: $c3 $d7 $29


Jump_000_2bfb:
    ld hl, $002b                                  ; $2bfb: $21 $2b $00

Call_000_2bfe:
Jump_000_2bfe:
    add hl, bc                                    ; $2bfe: $09

Call_000_2bff:
    set 0, [hl]                                   ; $2bff: $cb $c6

Call_000_2c01:
    jp Jump_000_29d7                              ; $2c01: $c3 $d7 $29


Jump_000_2c04:
    ld hl, $002b                                  ; $2c04: $21 $2b $00

Call_000_2c07:
Jump_000_2c07:
    add hl, bc                                    ; $2c07: $09

Jump_000_2c08:
    res 0, [hl]                                   ; $2c08: $cb $86

Jump_000_2c0a:
    jp Jump_000_29d7                              ; $2c0a: $c3 $d7 $29


Jump_000_2c0d:
    ld a, $20                                     ; $2c0d: $3e $20
    call Call_000_08ce                            ; $2c0f: $cd $ce $08

Jump_000_2c12:
    jp Jump_000_29d7                              ; $2c12: $c3 $d7 $29


Jump_000_2c15:
    xor a                                         ; $2c15: $af
    call Call_000_08ce                            ; $2c16: $cd $ce $08
    jp Jump_000_29d7                              ; $2c19: $c3 $d7 $29


Call_000_2c1c:
Jump_000_2c1c:
    jp Jump_000_29d7                              ; $2c1c: $c3 $d7 $29


Jump_000_2c1f:
    call Call_000_29e0                            ; $2c1f: $cd $e0 $29

Call_000_2c22:
    ld e, a                                       ; $2c22: $5f
    ld a, [$cc0c]                                 ; $2c23: $fa $0c $cc

Call_000_2c26:
    cp e                                          ; $2c26: $bb

Call_000_2c27:
Jump_000_2c27:
    call Call_000_0039                            ; $2c27: $cd $39 $00

Call_000_2c2a:
Jump_000_2c2a:
    jp Jump_000_29d7                              ; $2c2a: $c3 $d7 $29


Jump_000_2c2d:
    call Call_000_29e0                            ; $2c2d: $cd $e0 $29
    ld e, a                                       ; $2c30: $5f
    ld a, [$cc10]                                 ; $2c31: $fa $10 $cc

Call_000_2c34:
    cp e                                          ; $2c34: $bb

Call_000_2c35:
    call Call_000_0039                            ; $2c35: $cd $39 $00
    jp Jump_000_29d7                              ; $2c38: $c3 $d7 $29


Jump_000_2c3b:
    ld hl, $0006                                  ; $2c3b: $21 $06 $00
    jp Jump_000_2a39                              ; $2c3e: $c3 $39 $2a


Call_000_2c41:
Jump_000_2c41:
    call Call_000_29e0                            ; $2c41: $cd $e0 $29
    ld hl, $000b                                  ; $2c44: $21 $0b $00
    call Call_000_2de7                            ; $2c47: $cd $e7 $2d
    ld [hl], d                                    ; $2c4a: $72

Call_000_2c4b:
Jump_000_2c4b:
    dec hl                                        ; $2c4b: $2b
    ld [hl], e                                    ; $2c4c: $73
    ld hl, $0006                                  ; $2c4d: $21 $06 $00
    add hl, bc                                    ; $2c50: $09
    ld [hl], e                                    ; $2c51: $73
    inc hl                                        ; $2c52: $23

Call_000_2c53:
Jump_000_2c53:
    ld [hl], d                                    ; $2c53: $72
    jp Jump_000_29d7                              ; $2c54: $c3 $d7 $29


Jump_000_2c57:
    ld hl, $0009                                  ; $2c57: $21 $09 $00
    jp Jump_000_2a39                              ; $2c5a: $c3 $39 $2a


Jump_000_2c5d:
    call Call_000_29e0                            ; $2c5d: $cd $e0 $29

Jump_000_2c60:
    push af                                       ; $2c60: $f5
    ld hl, $000d                                  ; $2c61: $21 $0d $00
    call Call_000_2de7                            ; $2c64: $cd $e7 $2d
    ld [hl], d                                    ; $2c67: $72
    dec hl                                        ; $2c68: $2b
    ld [hl], e                                    ; $2c69: $73

Call_000_2c6a:
    pop af                                        ; $2c6a: $f1
    ld hl, $0009                                  ; $2c6b: $21 $09 $00
    call Call_000_2de7                            ; $2c6e: $cd $e7 $2d

Jump_000_2c71:
    ld [hl], d                                    ; $2c71: $72

Call_000_2c72:
Jump_000_2c72:
    dec hl                                        ; $2c72: $2b
    ld [hl], e                                    ; $2c73: $73
    jp Jump_000_29d7                              ; $2c74: $c3 $d7 $29


Jump_000_2c77:
    ld hl, $ff98                                  ; $2c77: $21 $98 $ff
    ld e, [hl]                                    ; $2c7a: $5e

Jump_000_2c7b:
    inc hl                                        ; $2c7b: $23
    ld d, [hl]                                    ; $2c7c: $56

Call_000_2c7d:
    ld hl, $0001                                  ; $2c7d: $21 $01 $00
    add hl, bc                                    ; $2c80: $09
    ld l, [hl]                                    ; $2c81: $6e
    ld h, $00                                     ; $2c82: $26 $00
    add hl, hl                                    ; $2c84: $29

Call_000_2c85:
    add hl, de                                    ; $2c85: $19

Call_000_2c86:
Jump_000_2c86:
    ld a, l                                       ; $2c86: $7d
    ldh [$98], a                                  ; $2c87: $e0 $98
    ld a, h                                       ; $2c89: $7c
    ldh [$99], a                                  ; $2c8a: $e0 $99
    jp Jump_000_2aad                              ; $2c8c: $c3 $ad $2a


Jump_000_2c8f:
    ld hl, $ff98                                  ; $2c8f: $21 $98 $ff
    ld e, [hl]                                    ; $2c92: $5e
    inc hl                                        ; $2c93: $23
    ld d, [hl]                                    ; $2c94: $56
    ld hl, $0002                                  ; $2c95: $21 $02 $00
    add hl, bc                                    ; $2c98: $09

Call_000_2c99:
    ld l, [hl]                                    ; $2c99: $6e
    ld h, $00                                     ; $2c9a: $26 $00

Call_000_2c9c:
    add hl, hl                                    ; $2c9c: $29

Call_000_2c9d:
    add hl, de                                    ; $2c9d: $19
    ld a, l                                       ; $2c9e: $7d
    ldh [$98], a                                  ; $2c9f: $e0 $98

Call_000_2ca1:
Jump_000_2ca1:
    ld a, h                                       ; $2ca1: $7c
    ldh [$99], a                                  ; $2ca2: $e0 $99
    jp Jump_000_2aad                              ; $2ca4: $c3 $ad $2a


Jump_000_2ca7:
    ld hl, $0004                                  ; $2ca7: $21 $04 $00
    add hl, bc                                    ; $2caa: $09
    ld e, [hl]                                    ; $2cab: $5e
    ld d, $00                                     ; $2cac: $16 $00

Call_000_2cae:
    ld hl, $001c                                  ; $2cae: $21 $1c $00

Call_000_2cb1:
    add hl, bc                                    ; $2cb1: $09
    ld [hl], e                                    ; $2cb2: $73

Call_000_2cb3:
    inc hl                                        ; $2cb3: $23

Call_000_2cb4:
    ld [hl], d                                    ; $2cb4: $72
    jp Jump_000_2a53                              ; $2cb5: $c3 $53 $2a


Call_000_2cb8:
Jump_000_2cb8:
    ld hl, $0001                                  ; $2cb8: $21 $01 $00
    jp Jump_000_2a36                              ; $2cbb: $c3 $36 $2a


Jump_000_2cbe:
    ld hl, $0002                                  ; $2cbe: $21 $02 $00

Call_000_2cc1:
    jp Jump_000_2a36                              ; $2cc1: $c3 $36 $2a


Jump_000_2cc4:
    ld hl, $0002                                  ; $2cc4: $21 $02 $00

Call_000_2cc7:
Jump_000_2cc7:
    add hl, bc                                    ; $2cc7: $09

Call_000_2cc8:
    dec [hl]                                      ; $2cc8: $35
    call Call_000_0039                            ; $2cc9: $cd $39 $00

Call_000_2ccc:
Jump_000_2ccc:
    jp Jump_000_29d7                              ; $2ccc: $c3 $d7 $29


Jump_000_2ccf:
    ld hl, $0003                                  ; $2ccf: $21 $03 $00
    jp Jump_000_2a39                              ; $2cd2: $c3 $39 $2a


Call_000_2cd5:
Jump_000_2cd5:
    ld hl, $0003                                  ; $2cd5: $21 $03 $00
    add hl, bc                                    ; $2cd8: $09
    ld a, [hl]                                    ; $2cd9: $7e
    sub $01                                       ; $2cda: $d6 $01
    ld [hl], a                                    ; $2cdc: $77
    ld e, a                                       ; $2cdd: $5f
    inc hl                                        ; $2cde: $23
    ld a, [hl]                                    ; $2cdf: $7e
    sbc $00                                       ; $2ce0: $de $00
    ld [hl], a                                    ; $2ce2: $77
    or e                                          ; $2ce3: $b3

Call_000_2ce4:
    call Call_000_0039                            ; $2ce4: $cd $39 $00
    jp Jump_000_29d7                              ; $2ce7: $c3 $d7 $29


Jump_000_2cea:
    jp Jump_000_29d7                              ; $2cea: $c3 $d7 $29


Jump_000_2ced:
    call Call_000_08c7                            ; $2ced: $cd $c7 $08

Jump_000_2cf0:
    jp Jump_000_29d7                              ; $2cf0: $c3 $d7 $29


Jump_000_2cf3:
    call Call_000_2df4                            ; $2cf3: $cd $f4 $2d
    ld a, e                                       ; $2cf6: $7b

Call_000_2cf7:
    call Call_000_2722                            ; $2cf7: $cd $22 $27
    cp d                                          ; $2cfa: $ba

Jump_000_2cfb:
    call Call_000_0039                            ; $2cfb: $cd $39 $00

Call_000_2cfe:
    jp Jump_000_29d7                              ; $2cfe: $c3 $d7 $29


Jump_000_2d01:
    call Call_000_29e0                            ; $2d01: $cd $e0 $29
    call Call_000_2722                            ; $2d04: $cd $22 $27
    call Call_000_2e9a                            ; $2d07: $cd $9a $2e
    jp Jump_000_29d7                              ; $2d0a: $c3 $d7 $29


Jump_000_2d0d:
    call Call_000_29e0                            ; $2d0d: $cd $e0 $29

Jump_000_2d10:
    call Call_000_2722                            ; $2d10: $cd $22 $27
    call Call_000_2e9e                            ; $2d13: $cd $9e $2e
    jp Jump_000_29d7                              ; $2d16: $c3 $d7 $29


    jp Jump_000_29d7                              ; $2d19: $c3 $d7 $29


Jump_000_2d1c:
    call Call_000_2df4                            ; $2d1c: $cd $f4 $2d

Jump_000_2d1f:
    ld hl, $002b                                  ; $2d1f: $21 $2b $00
    add hl, bc                                    ; $2d22: $09

Jump_000_2d23:
    bit 6, [hl]                                   ; $2d23: $cb $76
    jr nz, jr_000_2d2f                            ; $2d25: $20 $08

    ld l, e                                       ; $2d27: $6b
    ld h, d                                       ; $2d28: $62
    call Call_000_0859                            ; $2d29: $cd $59 $08

Call_000_2d2c:
    jp Jump_000_29d7                              ; $2d2c: $c3 $d7 $29


jr_000_2d2f:
    ld l, e                                       ; $2d2f: $6b
    ld h, d                                       ; $2d30: $62
    call Call_000_0843                            ; $2d31: $cd $43 $08

Jump_000_2d34:
    jp Jump_000_29d7                              ; $2d34: $c3 $d7 $29


Call_000_2d37:
Jump_000_2d37:
    call Call_000_29e0                            ; $2d37: $cd $e0 $29
    ld e, a                                       ; $2d3a: $5f
    ld hl, $002c                                  ; $2d3b: $21 $2c $00
    add hl, bc                                    ; $2d3e: $09
    ld a, [hl]                                    ; $2d3f: $7e

Jump_000_2d40:
    and $f8                                       ; $2d40: $e6 $f8
    or e                                          ; $2d42: $b3
    ld [hl], a                                    ; $2d43: $77
    jp Jump_000_29d7                              ; $2d44: $c3 $d7 $29


Jump_000_2d47:
    call Call_000_29e0                            ; $2d47: $cd $e0 $29

Call_000_2d4a:
    ld hl, $004d                                  ; $2d4a: $21 $4d $00

Call_000_2d4d:
    add hl, bc                                    ; $2d4d: $09
    ld [hl], a                                    ; $2d4e: $77
    jp Jump_000_29d7                              ; $2d4f: $c3 $d7 $29


Jump_000_2d52:
    ld hl, $002c                                  ; $2d52: $21 $2c $00

Call_000_2d55:
    add hl, bc                                    ; $2d55: $09
    set 7, [hl]                                   ; $2d56: $cb $fe
    jp Jump_000_29d7                              ; $2d58: $c3 $d7 $29


Call_000_2d5b:
Jump_000_2d5b:
    ld hl, $002c                                  ; $2d5b: $21 $2c $00
    add hl, bc                                    ; $2d5e: $09

Call_000_2d5f:
    res 7, [hl]                                   ; $2d5f: $cb $be
    jp Jump_000_29d7                              ; $2d61: $c3 $d7 $29


Jump_000_2d64:
    call Call_000_29e0                            ; $2d64: $cd $e0 $29
    call Call_000_395e                            ; $2d67: $cd $5e $39
    jp Jump_000_29d7                              ; $2d6a: $c3 $d7 $29


Jump_000_2d6d:
    ld hl, $002c                                  ; $2d6d: $21 $2c $00
    add hl, bc                                    ; $2d70: $09

Call_000_2d71:
    bit 5, [hl]                                   ; $2d71: $cb $6e

Call_000_2d73:
    call Call_000_0039                            ; $2d73: $cd $39 $00
    jp Jump_000_29d7                              ; $2d76: $c3 $d7 $29


Jump_000_2d79:
    call Call_000_0926                            ; $2d79: $cd $26 $09
    call Call_000_2df4                            ; $2d7c: $cd $f4 $2d
    push de                                       ; $2d7f: $d5
    ld d, h                                       ; $2d80: $54
    ld e, l                                       ; $2d81: $5d
    pop hl                                        ; $2d82: $e1
    rst $10                                       ; $2d83: $d7
    call Call_000_0039                            ; $2d84: $cd $39 $00

Call_000_2d87:
Jump_000_2d87:
    jp Jump_000_29d7                              ; $2d87: $c3 $d7 $29


Jump_000_2d8a:
    call Call_000_2e82                            ; $2d8a: $cd $82 $2e
    ld e, a                                       ; $2d8d: $5f
    call Call_000_29e0                            ; $2d8e: $cd $e0 $29

Jump_000_2d91:
    cp e                                          ; $2d91: $bb
    call Call_000_2df4                            ; $2d92: $cd $f4 $2d

Jump_000_2d95:
    jp z, Jump_000_2ab0                           ; $2d95: $ca $b0 $2a

    jp Jump_000_29d7                              ; $2d98: $c3 $d7 $29


Jump_000_2d9b:
    call Call_000_2e8a                            ; $2d9b: $cd $8a $2e

Call_000_2d9e:
    ld e, a                                       ; $2d9e: $5f
    call Call_000_29e0                            ; $2d9f: $cd $e0 $29
    cp e                                          ; $2da2: $bb
    call Call_000_2df4                            ; $2da3: $cd $f4 $2d
    jp z, Jump_000_2ab0                           ; $2da6: $ca $b0 $2a

    jp Jump_000_29d7                              ; $2da9: $c3 $d7 $29


Call_000_2dac:
Jump_000_2dac:
    call Call_000_29e0                            ; $2dac: $cd $e0 $29
    ld hl, $0019                                  ; $2daf: $21 $19 $00
    add hl, bc                                    ; $2db2: $09
    ld [hl], a                                    ; $2db3: $77
    jp Jump_000_29d7                              ; $2db4: $c3 $d7 $29


Jump_000_2db7:
    call Call_000_2df4                            ; $2db7: $cd $f4 $2d
    ld hl, $ff9c                                  ; $2dba: $21 $9c $ff
    ld [hl], e                                    ; $2dbd: $73
    inc hl                                        ; $2dbe: $23
    ld [hl], d                                    ; $2dbf: $72

Jump_000_2dc0:
    jp Jump_000_29d7                              ; $2dc0: $c3 $d7 $29


Jump_000_2dc3:
    call Call_000_2df4                            ; $2dc3: $cd $f4 $2d
    ld hl, $ff9e                                  ; $2dc6: $21 $9e $ff
    ld [hl], e                                    ; $2dc9: $73

Jump_000_2dca:
    inc hl                                        ; $2dca: $23

Call_000_2dcb:
    ld [hl], d                                    ; $2dcb: $72
    jp Jump_000_29d7                              ; $2dcc: $c3 $d7 $29


Jump_000_2dcf:
    call Call_000_2df4                            ; $2dcf: $cd $f4 $2d

Call_000_2dd2:
Jump_000_2dd2:
    ld hl, $ffa0                                  ; $2dd2: $21 $a0 $ff

Jump_000_2dd5:
    ld [hl], e                                    ; $2dd5: $73

Call_000_2dd6:
Jump_000_2dd6:
    inc hl                                        ; $2dd6: $23

Call_000_2dd7:
    ld [hl], d                                    ; $2dd7: $72
    jp Jump_000_29d7                              ; $2dd8: $c3 $d7 $29


Jump_000_2ddb:
    call Call_000_2df4                            ; $2ddb: $cd $f4 $2d

Jump_000_2dde:
    ld hl, $ffa2                                  ; $2dde: $21 $a2 $ff
    ld [hl], e                                    ; $2de1: $73
    inc hl                                        ; $2de2: $23
    ld [hl], d                                    ; $2de3: $72
    jp Jump_000_29d7                              ; $2de4: $c3 $d7 $29


Call_000_2de7:
Jump_000_2de7:
    ld e, a                                       ; $2de7: $5f

Call_000_2de8:
    rla                                           ; $2de8: $17
    sbc a                                         ; $2de9: $9f

Jump_000_2dea:
    ld d, a                                       ; $2dea: $57

Jump_000_2deb:
    add hl, bc                                    ; $2deb: $09
    ld a, [hl]                                    ; $2dec: $7e

Jump_000_2ded:
    add e                                         ; $2ded: $83
    ld e, a                                       ; $2dee: $5f

Jump_000_2def:
    inc hl                                        ; $2def: $23
    ld a, [hl]                                    ; $2df0: $7e
    adc d                                         ; $2df1: $8a

Call_000_2df2:
    ld d, a                                       ; $2df2: $57
    ret                                           ; $2df3: $c9


Call_000_2df4:
    push af                                       ; $2df4: $f5
    call Call_000_29e0                            ; $2df5: $cd $e0 $29
    ld e, a                                       ; $2df8: $5f
    call Call_000_29e0                            ; $2df9: $cd $e0 $29

Jump_000_2dfc:
    ld d, a                                       ; $2dfc: $57

Jump_000_2dfd:
    pop af                                        ; $2dfd: $f1
    ret                                           ; $2dfe: $c9


Jump_000_2dff:
    ld hl, $001a                                  ; $2dff: $21 $1a $00

Call_000_2e02:
Jump_000_2e02:
    add hl, bc                                    ; $2e02: $09

Jump_000_2e03:
    ld [hl], e                                    ; $2e03: $73
    inc hl                                        ; $2e04: $23

Jump_000_2e05:
    ld [hl], d                                    ; $2e05: $72

Jump_000_2e06:
    ld hl, $001c                                  ; $2e06: $21 $1c $00
    add hl, bc                                    ; $2e09: $09
    ld [hl], $01                                  ; $2e0a: $36 $01
    ret                                           ; $2e0c: $c9


Call_000_2e0d:
Jump_000_2e0d:
    ld hl, $000b                                  ; $2e0d: $21 $0b $00
    add hl, bc                                    ; $2e10: $09
    ld e, [hl]                                    ; $2e11: $5e

Call_000_2e12:
    inc hl                                        ; $2e12: $23
    ld d, [hl]                                    ; $2e13: $56

Jump_000_2e14:
    ld hl, $c32b                                  ; $2e14: $21 $2b $c3
    ld a, [hl+]                                   ; $2e17: $2a
    ld h, [hl]                                    ; $2e18: $66

Call_000_2e19:
    ld l, a                                       ; $2e19: $6f
    rst $10                                       ; $2e1a: $d7

Call_000_2e1b:
    ld a, $00                                     ; $2e1b: $3e $00

Call_000_2e1d:
Jump_000_2e1d:
    jp nc, Jump_000_08ce                          ; $2e1d: $d2 $ce $08

    ld a, $20                                     ; $2e20: $3e $20
    jp Jump_000_08ce                              ; $2e22: $c3 $ce $08


Call_000_2e25:
    ld hl, $0025                                  ; $2e25: $21 $25 $00

Call_000_2e28:
    add hl, bc                                    ; $2e28: $09
    ld a, [hl]                                    ; $2e29: $7e

Call_000_2e2a:
    sub $01                                       ; $2e2a: $d6 $01
    ret c                                         ; $2e2c: $d8

Call_000_2e2d:
Jump_000_2e2d:
    ld [hl], a                                    ; $2e2d: $77
    ret nz                                        ; $2e2e: $c0

    ld a, $02                                     ; $2e2f: $3e $02
    ld [$2000], a                                 ; $2e31: $ea $00 $20

Call_000_2e34:
    ld hl, $0023                                  ; $2e34: $21 $23 $00
    add hl, bc                                    ; $2e37: $09
    ld e, [hl]                                    ; $2e38: $5e
    inc hl                                        ; $2e39: $23
    ld d, [hl]                                    ; $2e3a: $56

jr_000_2e3b:
    ld a, [de]                                    ; $2e3b: $1a
    inc de                                        ; $2e3c: $13

Jump_000_2e3d:
    cp $ff                                        ; $2e3d: $fe $ff
    jr z, jr_000_2e76                             ; $2e3f: $28 $35

    cp $fe                                        ; $2e41: $fe $fe

Jump_000_2e43:
    jr z, jr_000_2e6b                             ; $2e43: $28 $26

Call_000_2e45:
    cp $fd                                        ; $2e45: $fe $fd
    jr z, jr_000_2e64                             ; $2e47: $28 $1b

Jump_000_2e49:
    cp $fc                                        ; $2e49: $fe $fc
    jr z, jr_000_2e5c                             ; $2e4b: $28 $0f

    push af                                       ; $2e4d: $f5
    ld a, [de]                                    ; $2e4e: $1a

Jump_000_2e4f:
    inc de                                        ; $2e4f: $13

Call_000_2e50:
Jump_000_2e50:
    ld hl, $0025                                  ; $2e50: $21 $25 $00
    add hl, bc                                    ; $2e53: $09
    ld [hl-], a                                   ; $2e54: $32

Jump_000_2e55:
    ld [hl], d                                    ; $2e55: $72

Jump_000_2e56:
    dec hl                                        ; $2e56: $2b
    ld [hl], e                                    ; $2e57: $73
    pop af                                        ; $2e58: $f1
    jp Jump_000_08ec                              ; $2e59: $c3 $ec $08


jr_000_2e5c:
    ld a, $20                                     ; $2e5c: $3e $20
    call Call_000_08ce                            ; $2e5e: $cd $ce $08

Jump_000_2e61:
    inc de                                        ; $2e61: $13

Call_000_2e62:
Jump_000_2e62:
    jr jr_000_2e3b                                ; $2e62: $18 $d7

jr_000_2e64:
    ld a, [de]                                    ; $2e64: $1a
    inc de                                        ; $2e65: $13
    call Call_000_393e                            ; $2e66: $cd $3e $39
    jr jr_000_2e3b                                ; $2e69: $18 $d0

jr_000_2e6b:
    ld a, [de]                                    ; $2e6b: $1a
    ld l, a                                       ; $2e6c: $6f
    inc de                                        ; $2e6d: $13
    ld a, [de]                                    ; $2e6e: $1a

Call_000_2e6f:
    ld h, a                                       ; $2e6f: $67
    dec de                                        ; $2e70: $1b
    add hl, de                                    ; $2e71: $19
    ld e, l                                       ; $2e72: $5d
    ld d, h                                       ; $2e73: $54

Call_000_2e74:
Jump_000_2e74:
    jr jr_000_2e3b                                ; $2e74: $18 $c5

jr_000_2e76:
    ld a, [de]                                    ; $2e76: $1a
    inc a                                         ; $2e77: $3c
    ld l, a                                       ; $2e78: $6f

Call_000_2e79:
Jump_000_2e79:
    ld a, e                                       ; $2e79: $7b
    sub l                                         ; $2e7a: $95

Call_000_2e7b:
    ld e, a                                       ; $2e7b: $5f

Jump_000_2e7c:
    ld a, d                                       ; $2e7c: $7a
    sbc $00                                       ; $2e7d: $de $00

Jump_000_2e7f:
    ld d, a                                       ; $2e7f: $57

Jump_000_2e80:
    jr jr_000_2e3b                                ; $2e80: $18 $b9

Call_000_2e82:
Jump_000_2e82:
    push hl                                       ; $2e82: $e5
    ld hl, $0001                                  ; $2e83: $21 $01 $00
    add hl, bc                                    ; $2e86: $09

Call_000_2e87:
Jump_000_2e87:
    ld a, [hl]                                    ; $2e87: $7e
    pop hl                                        ; $2e88: $e1
    ret                                           ; $2e89: $c9


Call_000_2e8a:
Jump_000_2e8a:
    push hl                                       ; $2e8a: $e5
    ld hl, $0002                                  ; $2e8b: $21 $02 $00
    add hl, bc                                    ; $2e8e: $09
    ld a, [hl]                                    ; $2e8f: $7e
    pop hl                                        ; $2e90: $e1
    ret                                           ; $2e91: $c9


Call_000_2e92:
    ld hl, $0003                                  ; $2e92: $21 $03 $00
    add hl, bc                                    ; $2e95: $09
    ld a, [hl+]                                   ; $2e96: $2a
    ld h, [hl]                                    ; $2e97: $66
    ld l, a                                       ; $2e98: $6f
    ret                                           ; $2e99: $c9


Call_000_2e9a:
Jump_000_2e9a:
    inc bc                                        ; $2e9a: $03
    ld [bc], a                                    ; $2e9b: $02

Jump_000_2e9c:
    dec bc                                        ; $2e9c: $0b
    ret                                           ; $2e9d: $c9


Call_000_2e9e:
Jump_000_2e9e:
    ld hl, $0002                                  ; $2e9e: $21 $02 $00
    add hl, bc                                    ; $2ea1: $09

Jump_000_2ea2:
    ld [hl], a                                    ; $2ea2: $77
    ret                                           ; $2ea3: $c9


Call_000_2ea4:
Jump_000_2ea4:
    push hl                                       ; $2ea4: $e5
    ld hl, $0003                                  ; $2ea5: $21 $03 $00
    add hl, bc                                    ; $2ea8: $09
    ld [hl], e                                    ; $2ea9: $73
    inc hl                                        ; $2eaa: $23
    ld [hl], d                                    ; $2eab: $72
    pop hl                                        ; $2eac: $e1

Jump_000_2ead:
    ret                                           ; $2ead: $c9


Jump_000_2eae:
    ld hl, $0001                                  ; $2eae: $21 $01 $00

Call_000_2eb1:
Jump_000_2eb1:
    add hl, bc                                    ; $2eb1: $09
    dec [hl]                                      ; $2eb2: $35
    jp Jump_000_0039                              ; $2eb3: $c3 $39 $00


Jump_000_2eb6:
    ld a, [$4000]                                 ; $2eb6: $fa $00 $40
    push af                                       ; $2eb9: $f5
    ldh a, [rSVBK]                                ; $2eba: $f0 $70
    push af                                       ; $2ebc: $f5

Call_000_2ebd:
    ld a, $03                                     ; $2ebd: $3e $03
    ldh [rSVBK], a                                ; $2ebf: $e0 $70
    push hl                                       ; $2ec1: $e5
    call Call_000_2f58                            ; $2ec2: $cd $58 $2f

Call_000_2ec5:
Jump_000_2ec5:
    call Call_000_2f9b                            ; $2ec5: $cd $9b $2f

Call_000_2ec8:
    call Call_000_2fa6                            ; $2ec8: $cd $a6 $2f

Jump_000_2ecb:
    ld a, [$cce7]                                 ; $2ecb: $fa $e7 $cc

Call_000_2ece:
    ld [$2000], a                                 ; $2ece: $ea $00 $20

Jump_000_2ed1:
    call Call_000_2fb0                            ; $2ed1: $cd $b0 $2f

Call_000_2ed4:
    ld d, $08                                     ; $2ed4: $16 $08

jr_000_2ed6:
    ld e, $08                                     ; $2ed6: $1e $08

Call_000_2ed8:
jr_000_2ed8:
    push de                                       ; $2ed8: $d5

Jump_000_2ed9:
    push bc                                       ; $2ed9: $c5
    push hl                                       ; $2eda: $e5
    ld a, [$ccea]                                 ; $2edb: $fa $ea $cc
    ld e, a                                       ; $2ede: $5f
    ld a, [$cceb]                                 ; $2edf: $fa $eb $cc

Call_000_2ee2:
    ld d, a                                       ; $2ee2: $57

Call_000_2ee3:
    ld a, [hl+]                                   ; $2ee3: $2a
    ld h, [hl]                                    ; $2ee4: $66
    ld l, a                                       ; $2ee5: $6f

Call_000_2ee6:
    add hl, hl                                    ; $2ee6: $29
    add hl, hl                                    ; $2ee7: $29

Jump_000_2ee8:
    add hl, hl                                    ; $2ee8: $29

Jump_000_2ee9:
    add hl, hl                                    ; $2ee9: $29

Jump_000_2eea:
    add hl, hl                                    ; $2eea: $29
    add hl, de                                    ; $2eeb: $19
    ld e, l                                       ; $2eec: $5d
    ld d, h                                       ; $2eed: $54

Jump_000_2eee:
    ld a, b                                       ; $2eee: $78
    and $07                                       ; $2eef: $e6 $07
    ld h, a                                       ; $2ef1: $67

Jump_000_2ef2:
    ld l, $00                                     ; $2ef2: $2e $00
    srl h                                         ; $2ef4: $cb $3c
    rr l                                          ; $2ef6: $cb $1d
    ld a, c                                       ; $2ef8: $79

Call_000_2ef9:
Jump_000_2ef9:
    ld bc, $d700                                  ; $2ef9: $01 $00 $d7
    add hl, bc                                    ; $2efc: $09
    and $07                                       ; $2efd: $e6 $07

Call_000_2eff:
    add a                                         ; $2eff: $87

Call_000_2f00:
Jump_000_2f00:
    add a                                         ; $2f00: $87

Call_000_2f01:
Jump_000_2f01:
    ld c, a                                       ; $2f01: $4f

Call_000_2f02:
    ld b, $00                                     ; $2f02: $06 $00

Jump_000_2f04:
    add hl, bc                                    ; $2f04: $09
    ld a, $03                                     ; $2f05: $3e $03

Call_000_2f07:
    ldh [rSVBK], a                                ; $2f07: $e0 $70

Call_000_2f09:
Jump_000_2f09:
    call Call_000_2fca                            ; $2f09: $cd $ca $2f
    ld bc, $039c                                  ; $2f0c: $01 $9c $03

Call_000_2f0f:
Jump_000_2f0f:
    add hl, bc                                    ; $2f0f: $09

Call_000_2f10:
    call Call_000_2fca                            ; $2f10: $cd $ca $2f

Call_000_2f13:
    ld a, $03                                     ; $2f13: $3e $03
    ldh [rSVBK], a                                ; $2f15: $e0 $70

Jump_000_2f17:
    pop hl                                        ; $2f17: $e1
    inc hl                                        ; $2f18: $23
    inc hl                                        ; $2f19: $23
    pop bc                                        ; $2f1a: $c1

Call_000_2f1b:
    pop de                                        ; $2f1b: $d1
    inc c                                         ; $2f1c: $0c
    dec e                                         ; $2f1d: $1d
    jr nz, jr_000_2ed8                            ; $2f1e: $20 $b8

Jump_000_2f20:
    push bc                                       ; $2f20: $c5
    ld a, [$cd3a]                                 ; $2f21: $fa $3a $cd

Call_000_2f24:
    sub $08                                       ; $2f24: $d6 $08
    ld c, a                                       ; $2f26: $4f
    ld a, [$cd3b]                                 ; $2f27: $fa $3b $cd
    sbc e                                         ; $2f2a: $9b
    ld b, a                                       ; $2f2b: $47
    add hl, bc                                    ; $2f2c: $09

Jump_000_2f2d:
    add hl, bc                                    ; $2f2d: $09
    pop bc                                        ; $2f2e: $c1

Call_000_2f2f:
    ld a, c                                       ; $2f2f: $79
    sub $08                                       ; $2f30: $d6 $08
    ld c, a                                       ; $2f32: $4f

Call_000_2f33:
Jump_000_2f33:
    inc b                                         ; $2f33: $04
    dec d                                         ; $2f34: $15
    jr nz, jr_000_2ed6                            ; $2f35: $20 $9f

    pop hl                                        ; $2f37: $e1
    ld a, [$cd28]                                 ; $2f38: $fa $28 $cd
    cp $02                                        ; $2f3b: $fe $02

Call_000_2f3d:
    jr z, jr_000_2f49                             ; $2f3d: $28 $0a

Jump_000_2f3f:
    ld de, $002f                                  ; $2f3f: $11 $2f $00
    rst $10                                       ; $2f42: $d7
    ld a, $01                                     ; $2f43: $3e $01
    jr nc, jr_000_2f49                            ; $2f45: $30 $02

    ld a, $02                                     ; $2f47: $3e $02

jr_000_2f49:
    ld [$cd28], a                                 ; $2f49: $ea $28 $cd
    xor a                                         ; $2f4c: $af
    ld [$cd2f], a                                 ; $2f4d: $ea $2f $cd
    pop af                                        ; $2f50: $f1

Jump_000_2f51:
    ldh [rSVBK], a                                ; $2f51: $e0 $70
    pop af                                        ; $2f53: $f1

Jump_000_2f54:
    ld [$2000], a                                 ; $2f54: $ea $00 $20
    ret                                           ; $2f57: $c9


Call_000_2f58:
    ld hl, $cd45                                  ; $2f58: $21 $45 $cd

Jump_000_2f5b:
    ld a, [hl+]                                   ; $2f5b: $2a

Jump_000_2f5c:
    ld h, [hl]                                    ; $2f5c: $66
    ld l, a                                       ; $2f5d: $6f

Jump_000_2f5e:
    ld a, $e0                                     ; $2f5e: $3e $e0
    and l                                         ; $2f60: $a5
    ld l, a                                       ; $2f61: $6f
    ld de, $ffd0                                  ; $2f62: $11 $d0 $ff
    add hl, de                                    ; $2f65: $19
    bit 7, h                                      ; $2f66: $cb $7c

Jump_000_2f68:
    jr z, jr_000_2f6d                             ; $2f68: $28 $03

    ld hl, $0000                                  ; $2f6a: $21 $00 $00

Call_000_2f6d:
jr_000_2f6d:
    ld a, [$cd29]                                 ; $2f6d: $fa $29 $cd
    ld e, a                                       ; $2f70: $5f
    ld a, [$cd2a]                                 ; $2f71: $fa $2a $cd

Jump_000_2f74:
    ld d, a                                       ; $2f74: $57

Jump_000_2f75:
    call Call_000_323b                            ; $2f75: $cd $3b $32

Call_000_2f78:
Jump_000_2f78:
    push hl                                       ; $2f78: $e5

Jump_000_2f79:
    ld hl, $cd47                                  ; $2f79: $21 $47 $cd

Call_000_2f7c:
    ld a, [hl+]                                   ; $2f7c: $2a
    ld h, [hl]                                    ; $2f7d: $66
    ld l, a                                       ; $2f7e: $6f

Call_000_2f7f:
    ld a, $e0                                     ; $2f7f: $3e $e0
    and l                                         ; $2f81: $a5
    ld l, a                                       ; $2f82: $6f
    ld de, $ffd0                                  ; $2f83: $11 $d0 $ff
    add hl, de                                    ; $2f86: $19

Call_000_2f87:
    bit 7, h                                      ; $2f87: $cb $7c

Jump_000_2f89:
    jr z, jr_000_2f8e                             ; $2f89: $28 $03

Jump_000_2f8b:
    ld hl, $0000                                  ; $2f8b: $21 $00 $00

jr_000_2f8e:
    ld a, [$cd2b]                                 ; $2f8e: $fa $2b $cd
    ld e, a                                       ; $2f91: $5f

Call_000_2f92:
    ld a, [$cd2c]                                 ; $2f92: $fa $2c $cd

Call_000_2f95:
    ld d, a                                       ; $2f95: $57

Jump_000_2f96:
    call Call_000_323b                            ; $2f96: $cd $3b $32

Jump_000_2f99:
    pop de                                        ; $2f99: $d1
    ret                                           ; $2f9a: $c9


Call_000_2f9b:
    add hl, hl                                    ; $2f9b: $29
    add hl, hl                                    ; $2f9c: $29

Call_000_2f9d:
Jump_000_2f9d:
    add hl, hl                                    ; $2f9d: $29
    ld b, h                                       ; $2f9e: $44

Jump_000_2f9f:
    ld l, e                                       ; $2f9f: $6b
    ld h, d                                       ; $2fa0: $62
    add hl, hl                                    ; $2fa1: $29

Jump_000_2fa2:
    add hl, hl                                    ; $2fa2: $29
    add hl, hl                                    ; $2fa3: $29
    ld c, h                                       ; $2fa4: $4c

Jump_000_2fa5:
    ret                                           ; $2fa5: $c9


Call_000_2fa6:
    xor a                                         ; $2fa6: $af
    or b                                          ; $2fa7: $b0
    jr z, jr_000_2fab                             ; $2fa8: $28 $01

Call_000_2faa:
    dec b                                         ; $2faa: $05

jr_000_2fab:
    xor a                                         ; $2fab: $af

Jump_000_2fac:
    or c                                          ; $2fac: $b1

Jump_000_2fad:
    ret z                                         ; $2fad: $c8

    dec c                                         ; $2fae: $0d
    ret                                           ; $2faf: $c9


Call_000_2fb0:
    ld hl, $cd3a                                  ; $2fb0: $21 $3a $cd
    ld e, [hl]                                    ; $2fb3: $5e
    inc hl                                        ; $2fb4: $23

Jump_000_2fb5:
    ld d, [hl]                                    ; $2fb5: $56
    ld hl, $0000                                  ; $2fb6: $21 $00 $00
    ld a, b                                       ; $2fb9: $78
    or a                                          ; $2fba: $b7

Jump_000_2fbb:
    jr z, jr_000_2fc1                             ; $2fbb: $28 $04

jr_000_2fbd:
    add hl, de                                    ; $2fbd: $19
    dec a                                         ; $2fbe: $3d
    jr nz, jr_000_2fbd                            ; $2fbf: $20 $fc

Call_000_2fc1:
Jump_000_2fc1:
jr_000_2fc1:
    ld e, c                                       ; $2fc1: $59
    ld d, a                                       ; $2fc2: $57
    add hl, de                                    ; $2fc3: $19

Jump_000_2fc4:
    add hl, hl                                    ; $2fc4: $29

Jump_000_2fc5:
    ld de, $d000                                  ; $2fc5: $11 $00 $d0

Call_000_2fc8:
Jump_000_2fc8:
    add hl, de                                    ; $2fc8: $19
    ret                                           ; $2fc9: $c9


Call_000_2fca:
Jump_000_2fca:
    ld bc, $001c                                  ; $2fca: $01 $1c $00
    ld a, [de]                                    ; $2fcd: $1a

Call_000_2fce:
    ld [hl+], a                                   ; $2fce: $22

Jump_000_2fcf:
    inc de                                        ; $2fcf: $13

Call_000_2fd0:
    ld a, [de]                                    ; $2fd0: $1a

Jump_000_2fd1:
    ld [hl+], a                                   ; $2fd1: $22

Jump_000_2fd2:
    inc de                                        ; $2fd2: $13

Jump_000_2fd3:
    ld a, [de]                                    ; $2fd3: $1a
    ld [hl+], a                                   ; $2fd4: $22
    inc de                                        ; $2fd5: $13

Call_000_2fd6:
    ld a, [de]                                    ; $2fd6: $1a
    ld [hl+], a                                   ; $2fd7: $22
    inc de                                        ; $2fd8: $13

Call_000_2fd9:
Jump_000_2fd9:
    add hl, bc                                    ; $2fd9: $09
    ld a, [de]                                    ; $2fda: $1a
    ld [hl+], a                                   ; $2fdb: $22

Call_000_2fdc:
    inc de                                        ; $2fdc: $13
    ld a, [de]                                    ; $2fdd: $1a
    ld [hl+], a                                   ; $2fde: $22
    inc de                                        ; $2fdf: $13

Call_000_2fe0:
Jump_000_2fe0:
    ld a, [de]                                    ; $2fe0: $1a

Call_000_2fe1:
    ld [hl+], a                                   ; $2fe1: $22
    inc de                                        ; $2fe2: $13
    ld a, [de]                                    ; $2fe3: $1a

Call_000_2fe4:
Jump_000_2fe4:
    ld [hl+], a                                   ; $2fe4: $22
    inc de                                        ; $2fe5: $13
    add hl, bc                                    ; $2fe6: $09
    ld a, [de]                                    ; $2fe7: $1a

Call_000_2fe8:
Jump_000_2fe8:
    ld [hl+], a                                   ; $2fe8: $22
    inc de                                        ; $2fe9: $13

Call_000_2fea:
Jump_000_2fea:
    ld a, [de]                                    ; $2fea: $1a
    ld [hl+], a                                   ; $2feb: $22

Call_000_2fec:
Jump_000_2fec:
    inc de                                        ; $2fec: $13

Call_000_2fed:
    ld a, [de]                                    ; $2fed: $1a
    ld [hl+], a                                   ; $2fee: $22
    inc de                                        ; $2fef: $13

Call_000_2ff0:
    ld a, [de]                                    ; $2ff0: $1a

Call_000_2ff1:
    ld [hl+], a                                   ; $2ff1: $22
    inc de                                        ; $2ff2: $13

Call_000_2ff3:
    add hl, bc                                    ; $2ff3: $09
    ld a, [de]                                    ; $2ff4: $1a

Call_000_2ff5:
    ld [hl+], a                                   ; $2ff5: $22
    inc de                                        ; $2ff6: $13

Call_000_2ff7:
Jump_000_2ff7:
    ld a, [de]                                    ; $2ff7: $1a
    ld [hl+], a                                   ; $2ff8: $22

Call_000_2ff9:
    inc de                                        ; $2ff9: $13

Jump_000_2ffa:
    ld a, [de]                                    ; $2ffa: $1a
    ld [hl+], a                                   ; $2ffb: $22

Jump_000_2ffc:
    inc de                                        ; $2ffc: $13
    ld a, [de]                                    ; $2ffd: $1a
    ld [hl+], a                                   ; $2ffe: $22

Call_000_2fff:
    inc de                                        ; $2fff: $13

Call_000_3000:
Jump_000_3000:
    ret                                           ; $3000: $c9


Call_000_3001:
    ld a, $c0                                     ; $3001: $3e $c0

Call_000_3003:
Jump_000_3003:
    and h                                         ; $3003: $a4

Jump_000_3004:
    cp $c0                                        ; $3004: $fe $c0
    ret z                                         ; $3006: $c8

    cp $d0                                        ; $3007: $fe $d0

Call_000_3009:
    ret z                                         ; $3009: $c8

Call_000_300a:
    ld a, [$cddc]                                 ; $300a: $fa $dc $cd
    ld [$2000], a                                 ; $300d: $ea $00 $20

Call_000_3010:
    set 6, h                                      ; $3010: $cb $f4
    add [hl]                                      ; $3012: $86
    push af                                       ; $3013: $f5

Jump_000_3014:
    inc hl                                        ; $3014: $23
    ld a, [hl+]                                   ; $3015: $2a
    ld h, [hl]                                    ; $3016: $66
    ld l, a                                       ; $3017: $6f
    set 6, h                                      ; $3018: $cb $f4

Call_000_301a:
    pop af                                        ; $301a: $f1

Jump_000_301b:
    ld [$2000], a                                 ; $301b: $ea $00 $20
    ret                                           ; $301e: $c9


Call_000_301f:
    push af                                       ; $301f: $f5

Call_000_3020:
Jump_000_3020:
    push bc                                       ; $3020: $c5
    push de                                       ; $3021: $d5
    ld de, $c1ec                                  ; $3022: $11 $ec $c1
    ld bc, $0007                                  ; $3025: $01 $07 $00
    call Call_000_114a                            ; $3028: $cd $4a $11
    ld hl, $c1f0                                  ; $302b: $21 $f0 $c1
    ld a, [hl+]                                   ; $302e: $2a

Call_000_302f:
Jump_000_302f:
    ld h, [hl]                                    ; $302f: $66
    ld l, a                                       ; $3030: $6f

Jump_000_3031:
    ldh [$b8], a                                  ; $3031: $e0 $b8

Jump_000_3033:
    ld a, h                                       ; $3033: $7c
    ldh [$b9], a                                  ; $3034: $e0 $b9
    ld hl, $c1ee                                  ; $3036: $21 $ee $c1
    ld a, [hl+]                                   ; $3039: $2a
    ld h, [hl]                                    ; $303a: $66

Jump_000_303b:
    ld l, a                                       ; $303b: $6f

Call_000_303c:
Jump_000_303c:
    call Call_000_3043                            ; $303c: $cd $43 $30
    pop de                                        ; $303f: $d1

Call_000_3040:
Jump_000_3040:
    pop bc                                        ; $3040: $c1

Jump_000_3041:
    pop af                                        ; $3041: $f1
    ret                                           ; $3042: $c9


Call_000_3043:
    push af                                       ; $3043: $f5
    push bc                                       ; $3044: $c5
    push de                                       ; $3045: $d5
    bit 7, h                                      ; $3046: $cb $7c
    jr nz, jr_000_3056                            ; $3048: $20 $0c

    ld de, $c1f3                                  ; $304a: $11 $f3 $c1
    ld bc, $0040                                  ; $304d: $01 $40 $00
    call Call_000_114a                            ; $3050: $cd $4a $11
    ld hl, $c1f3                                  ; $3053: $21 $f3 $c1

jr_000_3056:
    ld a, l                                       ; $3056: $7d

Jump_000_3057:
    ld [$c1ee], a                                 ; $3057: $ea $ee $c1
    ld a, h                                       ; $305a: $7c
    ld [$c1ef], a                                 ; $305b: $ea $ef $c1

Call_000_305e:
Jump_000_305e:
    pop de                                        ; $305e: $d1

Call_000_305f:
    pop bc                                        ; $305f: $c1
    pop af                                        ; $3060: $f1
    ret                                           ; $3061: $c9


Call_000_3062:
jr_000_3062:
    ld a, [de]                                    ; $3062: $1a
    bit 7, a                                      ; $3063: $cb $7f

Call_000_3065:
    ret nz                                        ; $3065: $c0

    inc de                                        ; $3066: $13

Call_000_3067:
Jump_000_3067:
    jr jr_000_3062                                ; $3067: $18 $f9

Call_000_3069:
jr_000_3069:
    ld a, [hl+]                                   ; $3069: $2a
    ld [de], a                                    ; $306a: $12

Call_000_306b:
    bit 7, a                                      ; $306b: $cb $7f
    ret nz                                        ; $306d: $c0

    inc de                                        ; $306e: $13
    jr jr_000_3069                                ; $306f: $18 $f8

    ld a, [$4000]                                 ; $3071: $fa $00 $40
    push af                                       ; $3074: $f5
    ldh a, [rSVBK]                                ; $3075: $f0 $70

Call_000_3077:
    push af                                       ; $3077: $f5
    ld a, $07                                     ; $3078: $3e $07
    ldh [rSVBK], a                                ; $307a: $e0 $70

Call_000_307c:
    call Call_000_3001                            ; $307c: $cd $01 $30
    ld de, $d800                                  ; $307f: $11 $00 $d8
    call Call_000_3633                            ; $3082: $cd $33 $36
    ld de, $d400                                  ; $3085: $11 $00 $d4

Call_000_3088:
Jump_000_3088:
    ld hl, $d800                                  ; $3088: $21 $00 $d8

jr_000_308b:
    ld a, [hl+]                                   ; $308b: $2a

Call_000_308c:
    cp $40                                        ; $308c: $fe $40

Jump_000_308e:
    jr z, jr_000_30a2                             ; $308e: $28 $12

    ld [de], a                                    ; $3090: $12

Call_000_3091:
    rla                                           ; $3091: $17
    jr c, jr_000_3097                             ; $3092: $38 $03

    inc de                                        ; $3094: $13
    jr jr_000_308b                                ; $3095: $18 $f4

Call_000_3097:
Jump_000_3097:
jr_000_3097:
    ld hl, $d400                                  ; $3097: $21 $00 $d4

Jump_000_309a:
    pop af                                        ; $309a: $f1
    ldh [rSVBK], a                                ; $309b: $e0 $70

Call_000_309d:
    pop af                                        ; $309d: $f1
    ld [$2000], a                                 ; $309e: $ea $00 $20

Jump_000_30a1:
    ret                                           ; $30a1: $c9


jr_000_30a2:
    ld a, [hl+]                                   ; $30a2: $2a
    sub $31                                       ; $30a3: $d6 $31

Call_000_30a5:
    push hl                                       ; $30a5: $e5
    swap a                                        ; $30a6: $cb $37

Call_000_30a8:
Jump_000_30a8:
    ld hl, $c23a                                  ; $30a8: $21 $3a $c2

Call_000_30ab:
    rst $08                                       ; $30ab: $cf
    call Call_000_3069                            ; $30ac: $cd $69 $30

Jump_000_30af:
    and $7f                                       ; $30af: $e6 $7f
    ld [de], a                                    ; $30b1: $12
    inc de                                        ; $30b2: $13
    pop hl                                        ; $30b3: $e1

Jump_000_30b4:
    jr jr_000_308b                                ; $30b4: $18 $d5

Call_000_30b6:
    ld a, [$4000]                                 ; $30b6: $fa $00 $40
    push af                                       ; $30b9: $f5
    ldh a, [rSVBK]                                ; $30ba: $f0 $70
    push af                                       ; $30bc: $f5

Call_000_30bd:
    ld a, $07                                     ; $30bd: $3e $07
    ldh [rSVBK], a                                ; $30bf: $e0 $70

Call_000_30c1:
    push de                                       ; $30c1: $d5

Call_000_30c2:
Jump_000_30c2:
    call Call_000_300a                            ; $30c2: $cd $0a $30

Call_000_30c5:
Jump_000_30c5:
    ld de, $d400                                  ; $30c5: $11 $00 $d4

Call_000_30c8:
    call Call_000_3633                            ; $30c8: $cd $33 $36
    pop hl                                        ; $30cb: $e1

Call_000_30cc:
    add hl, de                                    ; $30cc: $19
    pop af                                        ; $30cd: $f1
    ldh [rSVBK], a                                ; $30ce: $e0 $70

Call_000_30d0:
    pop af                                        ; $30d0: $f1
    ld [$2000], a                                 ; $30d1: $ea $00 $20
    ret                                           ; $30d4: $c9


Call_000_30d5:
    xor a                                         ; $30d5: $af
    ld hl, $ffc3                                  ; $30d6: $21 $c3 $ff

Call_000_30d9:
    ld [hl], $3c                                  ; $30d9: $36 $3c
    inc hl                                        ; $30db: $23

Call_000_30dc:
    ld [hl+], a                                   ; $30dc: $22

Jump_000_30dd:
    ld [hl+], a                                   ; $30dd: $22
    ld [hl+], a                                   ; $30de: $22
    ld [hl+], a                                   ; $30df: $22
    ret                                           ; $30e0: $c9


Call_000_30e1:
    ld a, e                                       ; $30e1: $7b
    ld [$cd12], a                                 ; $30e2: $ea $12 $cd

Jump_000_30e5:
    ld a, d                                       ; $30e5: $7a

Jump_000_30e6:
    ld [$cd13], a                                 ; $30e6: $ea $13 $cd
    ret                                           ; $30e9: $c9


Call_000_30ea:
Jump_000_30ea:
    ld a, e                                       ; $30ea: $7b

Call_000_30eb:
Jump_000_30eb:
    ld [$cd14], a                                 ; $30eb: $ea $14 $cd
    ld a, d                                       ; $30ee: $7a

Jump_000_30ef:
    ld [$cd15], a                                 ; $30ef: $ea $15 $cd

Call_000_30f2:
    ret                                           ; $30f2: $c9


Call_000_30f3:
    push hl                                       ; $30f3: $e5
    ld hl, $cd12                                  ; $30f4: $21 $12 $cd
    call Call_000_3105                            ; $30f7: $cd $05 $31

Call_000_30fa:
    pop hl                                        ; $30fa: $e1

Call_000_30fb:
    ret                                           ; $30fb: $c9


Call_000_30fc:
    push hl                                       ; $30fc: $e5
    ld hl, $cd14                                  ; $30fd: $21 $14 $cd

Call_000_3100:
Jump_000_3100:
    call Call_000_3105                            ; $3100: $cd $05 $31
    pop hl                                        ; $3103: $e1

Call_000_3104:
    ret                                           ; $3104: $c9


Call_000_3105:
Jump_000_3105:
    push de                                       ; $3105: $d5
    ld a, [hl+]                                   ; $3106: $2a
    ld e, a                                       ; $3107: $5f

Jump_000_3108:
    ld d, [hl]                                    ; $3108: $56
    or d                                          ; $3109: $b2
    jr z, jr_000_3116                             ; $310a: $28 $0a

    ld a, e                                       ; $310c: $7b
    sub $01                                       ; $310d: $d6 $01
    ld e, a                                       ; $310f: $5f
    ld a, d                                       ; $3110: $7a
    sbc $00                                       ; $3111: $de $00

Jump_000_3113:
    ld [hl-], a                                   ; $3113: $32

Jump_000_3114:
    ld [hl], e                                    ; $3114: $73
    or e                                          ; $3115: $b3

jr_000_3116:
    pop de                                        ; $3116: $d1
    ret                                           ; $3117: $c9


Call_000_3118:
    ld a, b                                       ; $3118: $78
    cp h                                          ; $3119: $bc

Jump_000_311a:
    ret nz                                        ; $311a: $c0

    ld a, c                                       ; $311b: $79

Jump_000_311c:
    cp l                                          ; $311c: $bd
    ret                                           ; $311d: $c9


Jump_000_311e:
    call Call_000_38e8                            ; $311e: $cd $e8 $38
    call LCDOn                                    ; $3121: $cd $cc $11

Jump_000_3124:
    call Call_000_3807                            ; $3124: $cd $07 $38

Jump_000_3127:
    jp $0163                                      ; $3127: $c3 $63 $01


Jump_000_312a:
    jr z, jr_000_312e                             ; $312a: $28 $02

    xor a                                         ; $312c: $af

Call_000_312d:
Jump_000_312d:
    ret                                           ; $312d: $c9


Jump_000_312e:
jr_000_312e:
    ld a, $01                                     ; $312e: $3e $01

Call_000_3130:
Jump_000_3130:
    or a                                          ; $3130: $b7
    ret                                           ; $3131: $c9


Call_000_3132:
Jump_000_3132:
    ld a, e                                       ; $3132: $7b

Call_000_3133:
    sub l                                         ; $3133: $95
    ld e, a                                       ; $3134: $5f
    ld a, d                                       ; $3135: $7a

Call_000_3136:
    sbc h                                         ; $3136: $9c
    ld d, a                                       ; $3137: $57

Call_000_3138:
    ret                                           ; $3138: $c9


Call_000_3139:
    push bc                                       ; $3139: $c5

Call_000_313a:
    ld a, e                                       ; $313a: $7b
    sub l                                         ; $313b: $95
    ld c, a                                       ; $313c: $4f

Call_000_313d:
    ld a, d                                       ; $313d: $7a
    sbc h                                         ; $313e: $9c

Jump_000_313f:
    ld b, a                                       ; $313f: $47
    bit 7, b                                      ; $3140: $cb $78
    jr nz, jr_000_3147                            ; $3142: $20 $03

    or c                                          ; $3144: $b1

jr_000_3145:
    pop bc                                        ; $3145: $c1
    ret                                           ; $3146: $c9


Jump_000_3147:
jr_000_3147:
    scf                                           ; $3147: $37
    jr jr_000_3145                                ; $3148: $18 $fb

Call_000_314a:
Jump_000_314a:
    add hl, hl                                    ; $314a: $29

Call_000_314b:
    add hl, hl                                    ; $314b: $29

Call_000_314c:
    add hl, hl                                    ; $314c: $29
    add hl, hl                                    ; $314d: $29

Call_000_314e:
    add hl, hl                                    ; $314e: $29
    ret                                           ; $314f: $c9


Call_000_3150:
    sla e                                         ; $3150: $cb $23
    rl d                                          ; $3152: $cb $12

Call_000_3154:
    sla e                                         ; $3154: $cb $23
    rl d                                          ; $3156: $cb $12
    sla e                                         ; $3158: $cb $23
    rl d                                          ; $315a: $cb $12
    sla e                                         ; $315c: $cb $23
    rl d                                          ; $315e: $cb $12

Jump_000_3160:
    sla e                                         ; $3160: $cb $23

Call_000_3162:
    rl d                                          ; $3162: $cb $12
    ret                                           ; $3164: $c9


Call_000_3165:
Jump_000_3165:
    push de                                       ; $3165: $d5
    push hl                                       ; $3166: $e5
    ld l, a                                       ; $3167: $6f
    ld h, $00                                     ; $3168: $26 $00
    add hl, hl                                    ; $316a: $29
    add hl, hl                                    ; $316b: $29
    add hl, hl                                    ; $316c: $29
    pop de                                        ; $316d: $d1

Jump_000_316e:
    add hl, de                                    ; $316e: $19
    pop de                                        ; $316f: $d1

Call_000_3170:
    ret                                           ; $3170: $c9


Call_000_3171:
    push de                                       ; $3171: $d5
    push hl                                       ; $3172: $e5

Call_000_3173:
Jump_000_3173:
    ld l, a                                       ; $3173: $6f
    ld h, $00                                     ; $3174: $26 $00
    add hl, hl                                    ; $3176: $29
    ld e, l                                       ; $3177: $5d

Call_000_3178:
    ld d, h                                       ; $3178: $54
    pop hl                                        ; $3179: $e1
    add hl, de                                    ; $317a: $19

Call_000_317b:
    jr jr_000_3190                                ; $317b: $18 $13

Call_000_317d:
    push de                                       ; $317d: $d5
    ld e, a                                       ; $317e: $5f

Call_000_317f:
    ld d, $00                                     ; $317f: $16 $00
    add hl, de                                    ; $3181: $19
    add hl, de                                    ; $3182: $19

Call_000_3183:
    jr jr_000_3190                                ; $3183: $18 $0b

Call_000_3185:
Jump_000_3185:
    push de                                       ; $3185: $d5

Jump_000_3186:
    ld e, a                                       ; $3186: $5f
    ld d, $00                                     ; $3187: $16 $00
    add hl, de                                    ; $3189: $19
    jr jr_000_3190                                ; $318a: $18 $04

Call_000_318c:
Jump_000_318c:
    push de                                       ; $318c: $d5

Jump_000_318d:
    ld e, a                                       ; $318d: $5f
    ld d, $00                                     ; $318e: $16 $00

jr_000_3190:
    add hl, de                                    ; $3190: $19
    add hl, de                                    ; $3191: $19
    pop de                                        ; $3192: $d1
    ret                                           ; $3193: $c9


Call_000_3194:
Jump_000_3194:
    ld e, a                                       ; $3194: $5f

Call_000_3195:
    ld d, $00                                     ; $3195: $16 $00

Call_000_3197:
    add hl, de                                    ; $3197: $19
    add hl, de                                    ; $3198: $19
    ld a, [hl+]                                   ; $3199: $2a

Call_000_319a:
    ld d, [hl]                                    ; $319a: $56
    ld e, a                                       ; $319b: $5f
    ret                                           ; $319c: $c9


Call_000_319d:
Jump_000_319d:
    push de                                       ; $319d: $d5
    ld e, a                                       ; $319e: $5f
    ld d, $00                                     ; $319f: $16 $00
    add hl, de                                    ; $31a1: $19
    add hl, de                                    ; $31a2: $19
    ld a, [hl+]                                   ; $31a3: $2a
    ld h, [hl]                                    ; $31a4: $66

Call_000_31a5:
    ld l, a                                       ; $31a5: $6f

Call_000_31a6:
    pop de                                        ; $31a6: $d1

Jump_000_31a7:
    ret                                           ; $31a7: $c9


Call_000_31a8:
Jump_000_31a8:
    bit 7, a                                      ; $31a8: $cb $7f
    jp z, RST_08                                  ; $31aa: $ca $08 $00

    add l                                         ; $31ad: $85
    ld l, a                                       ; $31ae: $6f
    ld a, $ff                                     ; $31af: $3e $ff
    adc h                                         ; $31b1: $8c
    ld h, a                                       ; $31b2: $67
    ret                                           ; $31b3: $c9


Call_000_31b4:
    ld a, e                                       ; $31b4: $7b
    or d                                          ; $31b5: $b2
    jr nz, jr_000_31bf                            ; $31b6: $20 $07

    ld hl, $0000                                  ; $31b8: $21 $00 $00
    ld d, h                                       ; $31bb: $54
    ld e, l                                       ; $31bc: $5d
    scf                                           ; $31bd: $37

Jump_000_31be:
    ret                                           ; $31be: $c9


jr_000_31bf:
    push bc                                       ; $31bf: $c5
    ld c, l                                       ; $31c0: $4d
    ld a, h                                       ; $31c1: $7c
    ld hl, $0000                                  ; $31c2: $21 $00 $00
    ld b, $10                                     ; $31c5: $06 $10
    or a                                          ; $31c7: $b7

jr_000_31c8:
    rl c                                          ; $31c8: $cb $11
    rla                                           ; $31ca: $17
    rl l                                          ; $31cb: $cb $15

Jump_000_31cd:
    rl h                                          ; $31cd: $cb $14

Jump_000_31cf:
    push de                                       ; $31cf: $d5

Call_000_31d0:
Jump_000_31d0:
    push hl                                       ; $31d0: $e5
    ldh [$b7], a                                  ; $31d1: $e0 $b7
    ld a, l                                       ; $31d3: $7d
    sub e                                         ; $31d4: $93

Jump_000_31d5:
    ld l, a                                       ; $31d5: $6f
    ld a, h                                       ; $31d6: $7c
    sbc d                                         ; $31d7: $9a
    ld h, a                                       ; $31d8: $67

Call_000_31d9:
    ccf                                           ; $31d9: $3f
    jr c, jr_000_31e0                             ; $31da: $38 $04

    pop de                                        ; $31dc: $d1

Call_000_31dd:
Jump_000_31dd:
    push hl                                       ; $31dd: $e5

Jump_000_31de:
    ld l, e                                       ; $31de: $6b
    ld h, d                                       ; $31df: $62

jr_000_31e0:
    inc sp                                        ; $31e0: $33
    inc sp                                        ; $31e1: $33

Call_000_31e2:
    pop de                                        ; $31e2: $d1

Call_000_31e3:
    ldh a, [$b7]                                  ; $31e3: $f0 $b7
    dec b                                         ; $31e5: $05
    jr nz, jr_000_31c8                            ; $31e6: $20 $e0

Jump_000_31e8:
    push de                                       ; $31e8: $d5
    ld d, h                                       ; $31e9: $54

Jump_000_31ea:
    ld e, l                                       ; $31ea: $5d
    pop hl                                        ; $31eb: $e1

Jump_000_31ec:
    rl c                                          ; $31ec: $cb $11
    ld l, c                                       ; $31ee: $69
    rla                                           ; $31ef: $17
    ld h, a                                       ; $31f0: $67
    or a                                          ; $31f1: $b7
    pop bc                                        ; $31f2: $c1
    ret                                           ; $31f3: $c9


Call_000_31f4:
    ld [$c1ac], a                                 ; $31f4: $ea $ac $c1
    ld a, e                                       ; $31f7: $7b

Jump_000_31f8:
    or d                                          ; $31f8: $b2

Call_000_31f9:
    jr nz, jr_000_3202                            ; $31f9: $20 $07

Call_000_31fb:
    ld hl, $0000                                  ; $31fb: $21 $00 $00
    ld d, h                                       ; $31fe: $54

Call_000_31ff:
    ld e, l                                       ; $31ff: $5d

Call_000_3200:
    scf                                           ; $3200: $37

Call_000_3201:
Jump_000_3201:
    ret                                           ; $3201: $c9


jr_000_3202:
    push bc                                       ; $3202: $c5
    ld a, [$c1ac]                                 ; $3203: $fa $ac $c1
    ld b, a                                       ; $3206: $47
    ld c, l                                       ; $3207: $4d
    ld a, h                                       ; $3208: $7c

Jump_000_3209:
    ld l, b                                       ; $3209: $68

Jump_000_320a:
    ld h, $00                                     ; $320a: $26 $00

Jump_000_320c:
    ld b, $10                                     ; $320c: $06 $10
    or a                                          ; $320e: $b7

jr_000_320f:
    rl c                                          ; $320f: $cb $11
    rla                                           ; $3211: $17

Call_000_3212:
    rl l                                          ; $3212: $cb $15
    rl h                                          ; $3214: $cb $14

Jump_000_3216:
    push de                                       ; $3216: $d5

Jump_000_3217:
    push hl                                       ; $3217: $e5

Call_000_3218:
    ldh [$b7], a                                  ; $3218: $e0 $b7
    ld a, l                                       ; $321a: $7d
    sub e                                         ; $321b: $93
    ld l, a                                       ; $321c: $6f
    ld a, h                                       ; $321d: $7c
    sbc d                                         ; $321e: $9a
    ld h, a                                       ; $321f: $67
    ccf                                           ; $3220: $3f
    jr c, jr_000_3227                             ; $3221: $38 $04

Jump_000_3223:
    pop de                                        ; $3223: $d1
    push hl                                       ; $3224: $e5
    ld l, e                                       ; $3225: $6b

Call_000_3226:
    ld h, d                                       ; $3226: $62

jr_000_3227:
    inc sp                                        ; $3227: $33

Call_000_3228:
Jump_000_3228:
    inc sp                                        ; $3228: $33

Jump_000_3229:
    pop de                                        ; $3229: $d1
    ldh a, [$b7]                                  ; $322a: $f0 $b7
    dec b                                         ; $322c: $05
    jr nz, jr_000_320f                            ; $322d: $20 $e0

    push de                                       ; $322f: $d5
    ld d, h                                       ; $3230: $54

Call_000_3231:
Jump_000_3231:
    ld e, l                                       ; $3231: $5d
    pop hl                                        ; $3232: $e1
    rl c                                          ; $3233: $cb $11

Call_000_3235:
    ld l, c                                       ; $3235: $69

Call_000_3236:
Jump_000_3236:
    rla                                           ; $3236: $17
    ld h, a                                       ; $3237: $67
    or a                                          ; $3238: $b7
    pop bc                                        ; $3239: $c1
    ret                                           ; $323a: $c9


Call_000_323b:
Jump_000_323b:
    rst $10                                       ; $323b: $d7

Jump_000_323c:
    ret nc                                        ; $323c: $d0

Jump_000_323d:
    ld l, e                                       ; $323d: $6b

Call_000_323e:
    ld h, d                                       ; $323e: $62
    ret                                           ; $323f: $c9


Call_000_3240:
    rst $10                                       ; $3240: $d7
    ret c                                         ; $3241: $d8

    ld l, e                                       ; $3242: $6b
    ld h, d                                       ; $3243: $62
    ret                                           ; $3244: $c9


Call_000_3245:
    push hl                                       ; $3245: $e5
    call Call_000_3269                            ; $3246: $cd $69 $32

Call_000_3249:
    or [hl]                                       ; $3249: $b6
    ld [hl], a                                    ; $324a: $77
    pop hl                                        ; $324b: $e1
    ret                                           ; $324c: $c9


    push hl                                       ; $324d: $e5
    call Call_000_3269                            ; $324e: $cd $69 $32
    cpl                                           ; $3251: $2f
    and [hl]                                      ; $3252: $a6

Jump_000_3253:
    ld [hl], a                                    ; $3253: $77

Call_000_3254:
    pop hl                                        ; $3254: $e1
    ret                                           ; $3255: $c9


Call_000_3256:
Jump_000_3256:
    push hl                                       ; $3256: $e5
    ldh [$b2], a                                  ; $3257: $e0 $b2

Call_000_3259:
    call Call_000_3269                            ; $3259: $cd $69 $32
    and [hl]                                      ; $325c: $a6
    pop hl                                        ; $325d: $e1

Jump_000_325e:
    ldh a, [$b2]                                  ; $325e: $f0 $b2
    ret                                           ; $3260: $c9


    db $01, $02, $04, $08, $10, $20, $40, $80

Call_000_3269:
Jump_000_3269:
    push af                                       ; $3269: $f5
    and $f8                                       ; $326a: $e6 $f8

Jump_000_326c:
    rra                                           ; $326c: $1f
    rra                                           ; $326d: $1f
    rra                                           ; $326e: $1f
    rst $08                                       ; $326f: $cf
    pop af                                        ; $3270: $f1
    and $07                                       ; $3271: $e6 $07

Call_000_3273:
    push hl                                       ; $3273: $e5

Jump_000_3274:
    ld hl, $3261                                  ; $3274: $21 $61 $32
    rst $08                                       ; $3277: $cf
    pop hl                                        ; $3278: $e1

Call_000_3279:
Jump_000_3279:
    ret                                           ; $3279: $c9


Call_000_327a:
Jump_000_327a:
    push bc                                       ; $327a: $c5
    ld b, $00                                     ; $327b: $06 $00
    bit 7, h                                      ; $327d: $cb $7c
    jr z, jr_000_3286                             ; $327f: $28 $05

    call Call_000_007b                            ; $3281: $cd $7b $00
    set 0, b                                      ; $3284: $cb $c0

Call_000_3286:
jr_000_3286:
    bit 7, d                                      ; $3286: $cb $7a
    jr z, jr_000_328f                             ; $3288: $28 $05

    call Call_000_0098                            ; $328a: $cd $98 $00
    set 1, b                                      ; $328d: $cb $c8

jr_000_328f:
    sla e                                         ; $328f: $cb $23
    rl d                                          ; $3291: $cb $12

Jump_000_3293:
    rst $10                                       ; $3293: $d7
    jr nc, jr_000_3298                            ; $3294: $30 $02

Call_000_3296:
Jump_000_3296:
    set 2, b                                      ; $3296: $cb $d0

Call_000_3298:
jr_000_3298:
    sra d                                         ; $3298: $cb $2a
    rr e                                          ; $329a: $cb $1b

Jump_000_329c:
    add hl, hl                                    ; $329c: $29
    rst $10                                       ; $329d: $d7
    jr c, jr_000_32a2                             ; $329e: $38 $02

    set 3, b                                      ; $32a0: $cb $d8

jr_000_32a2:
    ld a, b                                       ; $32a2: $78
    ld hl, $32a9                                  ; $32a3: $21 $a9 $32

Call_000_32a6:
    rst $08                                       ; $32a6: $cf

Call_000_32a7:
    pop bc                                        ; $32a7: $c1
    ret                                           ; $32a8: $c9


    db $03

    dec b                                         ; $32aa: $05

Call_000_32ab:
    db $01                                        ; $32ab: $01

    db $07

    ld [bc], a                                    ; $32ad: $02
    ld b, $02                                     ; $32ae: $06 $02
    ld b, $04                                     ; $32b0: $06 $04
    inc b                                         ; $32b2: $04

Call_000_32b3:
    nop                                           ; $32b3: $00

Call_000_32b4:
Jump_000_32b4:
    nop                                           ; $32b4: $00
    inc bc                                        ; $32b5: $03
    dec b                                         ; $32b6: $05

Call_000_32b7:
Jump_000_32b7:
    db $01                                        ; $32b7: $01
    rlca                                          ; $32b8: $07


Call_000_32b9:
    ld c, a                                       ; $32b9: $4f

    ;; hl=hl+3(c)
    ld b, $00                                     ; $32ba: $06 $00
    add hl, bc                                    ; $32bc: $09
    add hl, bc                                    ; $32bd: $09

Call_000_32be:
    add hl, bc                                    ; $32be: $09

Call_000_32bf:
    ld a, $07
    ld [rROMB0], a              ; load bank 7

    ;; lookup table at hl has [bank, l, h]
    ld a, [hl+]
    ld c, [hl]
    inc hl
    ld h, [hl]
    ld l, c
    ld [rROMB0], a              ; load dynamic bank
    ret


Call_000_32cd:
    ld c, a                                       ; $32cd: $4f
    ld b, $00                                     ; $32ce: $06 $00
    add hl, bc                                    ; $32d0: $09

Jump_000_32d1:
    add hl, bc                                    ; $32d1: $09
    add hl, bc                                    ; $32d2: $09

Call_000_32d3:
Jump_000_32d3:
    ld a, $08                                     ; $32d3: $3e $08
    ld [$2000], a                                 ; $32d5: $ea $00 $20
    ld a, [hl+]                                   ; $32d8: $2a
    ld c, [hl]                                    ; $32d9: $4e
    inc hl                                        ; $32da: $23
    ld h, [hl]                                    ; $32db: $66
    ld l, c                                       ; $32dc: $69

Jump_000_32dd:
    ld [$2000], a                                 ; $32dd: $ea $00 $20

Jump_000_32e0:
    ret                                           ; $32e0: $c9


Call_000_32e1:
    ldh a, [rSVBK]                                ; $32e1: $f0 $70
    push af                                       ; $32e3: $f5
    ld a, $07                                     ; $32e4: $3e $07

Jump_000_32e6:
    ldh [rSVBK], a                                ; $32e6: $e0 $70

Jump_000_32e8:
    call Call_000_3356                            ; $32e8: $cd $56 $33

Jump_000_32eb:
    call Call_000_13ff                            ; $32eb: $cd $ff $13
    call Call_000_32be                            ; $32ee: $cd $be $32
    push de                                       ; $32f1: $d5

Jump_000_32f2:
    ld de, $d000                                  ; $32f2: $11 $00 $d0
    ld bc, $0400                                  ; $32f5: $01 $00 $04

Call_000_32f8:
    call Call_000_1140                            ; $32f8: $cd $40 $11
    pop de                                        ; $32fb: $d1

Jump_000_32fc:
    ld hl, $d000                                  ; $32fc: $21 $00 $d0

Call_000_32ff:
    pop af                                        ; $32ff: $f1

Call_000_3300:
Jump_000_3300:
    ldh [rSVBK], a                                ; $3300: $e0 $70

Jump_000_3302:
    ld a, $01                                     ; $3302: $3e $01
    ld [$2000], a                                 ; $3304: $ea $00 $20
    ret                                           ; $3307: $c9


Call_000_3308:
Jump_000_3308:
    ldh a, [rLCDC]                                ; $3308: $f0 $40

Jump_000_330a:
    bit 7, a                                      ; $330a: $cb $7f
    ret z                                         ; $330c: $c8

jr_000_330d:
    ldh a, [$a8]                                  ; $330d: $f0 $a8
    or a                                          ; $330f: $b7

Call_000_3310:
    jr nz, jr_000_330d                            ; $3310: $20 $fb

Call_000_3312:
    ret                                           ; $3312: $c9


Call_000_3313:
Jump_000_3313:
    ld a, $03                                     ; $3313: $3e $03

Jump_000_3315:
    ldh [$a8], a                                  ; $3315: $e0 $a8

Call_000_3317:
Jump_000_3317:
    xor a                                         ; $3317: $af
    ldh [$a6], a                                  ; $3318: $e0 $a6
    ret                                           ; $331a: $c9


Call_000_331b:
Jump_000_331b:
    ld l, e                                       ; $331b: $6b
    ld h, $00                                     ; $331c: $26 $00
    call Call_000_314a                            ; $331e: $cd $4a $31
    ld a, d                                       ; $3321: $7a
    rst $08                                       ; $3322: $cf

Call_000_3323:
    ld de, $d800                                  ; $3323: $11 $00 $d8

Call_000_3326:
    add hl, de                                    ; $3326: $19
    ld d, h                                       ; $3327: $54
    ld e, l                                       ; $3328: $5d

Call_000_3329:
Jump_000_3329:
    ret                                           ; $3329: $c9


    push bc                                       ; $332a: $c5

Call_000_332b:
    call Call_000_2987                            ; $332b: $cd $87 $29
    pop bc                                        ; $332e: $c1
    jp Jump_000_12e5                              ; $332f: $c3 $e5 $12


Jump_000_3332:
    push bc                                       ; $3332: $c5
    call Call_000_2996                            ; $3333: $cd $96 $29
    pop bc                                        ; $3336: $c1
    jp Jump_000_12e5                              ; $3337: $c3 $e5 $12


Call_000_333a:
    push bc                                       ; $333a: $c5
    call Call_000_2996                            ; $333b: $cd $96 $29
    pop bc                                        ; $333e: $c1
    ld a, [$ccf1]                                 ; $333f: $fa $f1 $cc

Call_000_3342:
Jump_000_3342:
    ldh [$f2], a                                  ; $3342: $e0 $f2
    ld a, [$ccf3]                                 ; $3344: $fa $f3 $cc

Jump_000_3347:
    ldh [$f3], a                                  ; $3347: $e0 $f3

Call_000_3349:
Jump_000_3349:
    jp Jump_000_12e5                              ; $3349: $c3 $e5 $12


    push hl                                       ; $334c: $e5
    call Call_000_3194                            ; $334d: $cd $94 $31
    pop hl                                        ; $3350: $e1
    ld a, e                                       ; $3351: $7b
    or d                                          ; $3352: $b2
    ret z                                         ; $3353: $c8

Jump_000_3354:
    push de                                       ; $3354: $d5
    ret                                           ; $3355: $c9


Call_000_3356:
Jump_000_3356:
    ld a, [$cddd]                                 ; $3356: $fa $dd $cd
    cp $ff                                        ; $3359: $fe $ff

Call_000_335b:
    ret nz                                        ; $335b: $c0

    xor a                                         ; $335c: $af
    ret                                           ; $335d: $c9


Jump_000_335e:
    ld a, $02                                     ; $335e: $3e $02
    ld [$2000], a                                 ; $3360: $ea $00 $20

Jump_000_3363:
    jr jr_000_3386                                ; $3363: $18 $21

Call_000_3365:
Jump_000_3365:
    ld a, $03                                     ; $3365: $3e $03
    ld [$2000], a                                 ; $3367: $ea $00 $20

Jump_000_336a:
    jr jr_000_3386                                ; $336a: $18 $1a

Call_000_336c:
    ld a, $04                                     ; $336c: $3e $04
    ld [$2000], a                                 ; $336e: $ea $00 $20
    jr jr_000_3386                                ; $3371: $18 $13

Call_000_3373:
Jump_000_3373:
    ld a, $05                                     ; $3373: $3e $05

Call_000_3375:
    ld [$2000], a                                 ; $3375: $ea $00 $20
    jr jr_000_3386                                ; $3378: $18 $0c

Call_000_337a:
    ld a, $06                                     ; $337a: $3e $06
    ld [$2000], a                                 ; $337c: $ea $00 $20
    jr jr_000_3386                                ; $337f: $18 $05

Call_000_3381:
    ld a, $07                                     ; $3381: $3e $07
    ld [$2000], a                                 ; $3383: $ea $00 $20

Call_000_3386:
jr_000_3386:
    call Call_000_34c5                            ; $3386: $cd $c5 $34
    push af                                       ; $3389: $f5
    ld a, $01                                     ; $338a: $3e $01
    ld [$2000], a                                 ; $338c: $ea $00 $20
    pop af                                        ; $338f: $f1
    ret                                           ; $3390: $c9


    ld a, $01                                     ; $3391: $3e $01

Call_000_3393:
    ld [$2000], a                                 ; $3393: $ea $00 $20

Call_000_3396:
    jr jr_000_33b9                                ; $3396: $18 $21

Call_000_3398:
    ld a, $03                                     ; $3398: $3e $03
    ld [$2000], a                                 ; $339a: $ea $00 $20
    jr jr_000_33b9                                ; $339d: $18 $1a

    ld a, $04                                     ; $339f: $3e $04

Call_000_33a1:
    ld [$2000], a                                 ; $33a1: $ea $00 $20
    jr jr_000_33b9                                ; $33a4: $18 $13

Call_000_33a6:
    ld a, $05                                     ; $33a6: $3e $05
    ld [$2000], a                                 ; $33a8: $ea $00 $20
    jr jr_000_33b9                                ; $33ab: $18 $0c

    ld a, $06                                     ; $33ad: $3e $06
    ld [$2000], a                                 ; $33af: $ea $00 $20

Jump_000_33b2:
    jr jr_000_33b9                                ; $33b2: $18 $05

    ld a, $07                                     ; $33b4: $3e $07
    ld [$2000], a                                 ; $33b6: $ea $00 $20

jr_000_33b9:
    call Call_000_34c5                            ; $33b9: $cd $c5 $34
    push af                                       ; $33bc: $f5
    ld a, $02                                     ; $33bd: $3e $02
    ld [$2000], a                                 ; $33bf: $ea $00 $20
    pop af                                        ; $33c2: $f1
    ret                                           ; $33c3: $c9


Call_000_33c4:
Jump_000_33c4:
    ld a, $01                                     ; $33c4: $3e $01
    ld [$2000], a                                 ; $33c6: $ea $00 $20
    jr jr_000_33ec                                ; $33c9: $18 $21

Jump_000_33cb:
    ld a, $02                                     ; $33cb: $3e $02
    ld [$2000], a                                 ; $33cd: $ea $00 $20
    jr jr_000_33ec                                ; $33d0: $18 $1a

Call_000_33d2:
    ld a, $04                                     ; $33d2: $3e $04

Call_000_33d4:
    ld [$2000], a                                 ; $33d4: $ea $00 $20
    jr jr_000_33ec                                ; $33d7: $18 $13

Call_000_33d9:
Jump_000_33d9:
    ld a, $05                                     ; $33d9: $3e $05

Jump_000_33db:
    ld [$2000], a                                 ; $33db: $ea $00 $20
    jr jr_000_33ec                                ; $33de: $18 $0c

Call_000_33e0:
Jump_000_33e0:
    ld a, $06                                     ; $33e0: $3e $06

Call_000_33e2:
    ld [$2000], a                                 ; $33e2: $ea $00 $20

Jump_000_33e5:
    jr jr_000_33ec                                ; $33e5: $18 $05

Call_000_33e7:
Jump_000_33e7:
    ld a, $07                                     ; $33e7: $3e $07
    ld [$2000], a                                 ; $33e9: $ea $00 $20

Call_000_33ec:
Jump_000_33ec:
jr_000_33ec:
    call Call_000_34c5                            ; $33ec: $cd $c5 $34
    push af                                       ; $33ef: $f5

Call_000_33f0:
    ld a, $03                                     ; $33f0: $3e $03

Call_000_33f2:
    ld [$2000], a                                 ; $33f2: $ea $00 $20

Call_000_33f5:
Jump_000_33f5:
    pop af                                        ; $33f5: $f1
    ret                                           ; $33f6: $c9


    ld a, $07                                     ; $33f7: $3e $07
    ld [$2000], a                                 ; $33f9: $ea $00 $20
    jr jr_000_3421                                ; $33fc: $18 $23

Call_000_33fe:
Jump_000_33fe:
    ld a, $06                                     ; $33fe: $3e $06

Call_000_3400:
Jump_000_3400:
    ld [$2000], a                                 ; $3400: $ea $00 $20

Call_000_3403:
    jr jr_000_3421                                ; $3403: $18 $1c

Call_000_3405:
Jump_000_3405:
    ld a, $05                                     ; $3405: $3e $05

Call_000_3407:
    ld [$2000], a                                 ; $3407: $ea $00 $20
    jr jr_000_3421                                ; $340a: $18 $15

Call_000_340c:
Jump_000_340c:
    ld a, $03                                     ; $340c: $3e $03
    ld [$2000], a                                 ; $340e: $ea $00 $20
    jr jr_000_3421                                ; $3411: $18 $0e

Call_000_3413:
    ld a, $02                                     ; $3413: $3e $02
    ld [$2000], a                                 ; $3415: $ea $00 $20
    jr jr_000_3421                                ; $3418: $18 $07

Call_000_341a:
Jump_000_341a:
    ld a, $01                                     ; $341a: $3e $01

Call_000_341c:
    ld [$2000], a                                 ; $341c: $ea $00 $20
    jr jr_000_3421                                ; $341f: $18 $00

Call_000_3421:
Jump_000_3421:
jr_000_3421:
    call Call_000_34c5                            ; $3421: $cd $c5 $34
    push af                                       ; $3424: $f5

Call_000_3425:
    ld a, $04                                     ; $3425: $3e $04

Call_000_3427:
Jump_000_3427:
    ld [$2000], a                                 ; $3427: $ea $00 $20
    pop af                                        ; $342a: $f1

Call_000_342b:
    ret                                           ; $342b: $c9


Call_000_342c:
Jump_000_342c:
    ld a, $01                                     ; $342c: $3e $01
    ld [$2000], a                                 ; $342e: $ea $00 $20
    jr jr_000_3454                                ; $3431: $18 $21

Call_000_3433:
Jump_000_3433:
    ld a, $02                                     ; $3433: $3e $02

Jump_000_3435:
    ld [$2000], a                                 ; $3435: $ea $00 $20
    jr jr_000_3454                                ; $3438: $18 $1a

Call_000_343a:
Jump_000_343a:
    ld a, $03                                     ; $343a: $3e $03

Call_000_343c:
    ld [$2000], a                                 ; $343c: $ea $00 $20

Jump_000_343f:
    jr jr_000_3454                                ; $343f: $18 $13

Call_000_3441:
Jump_000_3441:
    ld a, $04                                     ; $3441: $3e $04

Call_000_3443:
Jump_000_3443:
    ld [$2000], a                                 ; $3443: $ea $00 $20

Call_000_3446:
    jr jr_000_3454                                ; $3446: $18 $0c

Call_000_3448:
Jump_000_3448:
    ld a, $06                                     ; $3448: $3e $06
    ld [$2000], a                                 ; $344a: $ea $00 $20
    jr jr_000_3454                                ; $344d: $18 $05

Call_000_344f:
    ld a, $07                                     ; $344f: $3e $07
    ld [$2000], a                                 ; $3451: $ea $00 $20

Call_000_3454:
Jump_000_3454:
jr_000_3454:
    call Call_000_34c5                            ; $3454: $cd $c5 $34

Call_000_3457:
    push af                                       ; $3457: $f5

Call_000_3458:
    ld a, $05                                     ; $3458: $3e $05
    ld [$2000], a                                 ; $345a: $ea $00 $20
    pop af                                        ; $345d: $f1
    ret                                           ; $345e: $c9


Call_000_345f:
Jump_000_345f:
    ld a, $01                                     ; $345f: $3e $01
    ld [$2000], a                                 ; $3461: $ea $00 $20
    jr jr_000_3487                                ; $3464: $18 $21

Call_000_3466:
Jump_000_3466:
    ld a, $02                                     ; $3466: $3e $02
    ld [$2000], a                                 ; $3468: $ea $00 $20

Jump_000_346b:
    jr jr_000_3487                                ; $346b: $18 $1a

Call_000_346d:
Jump_000_346d:
    ld a, $03                                     ; $346d: $3e $03
    ld [$2000], a                                 ; $346f: $ea $00 $20

Jump_000_3472:
    jr jr_000_3487                                ; $3472: $18 $13

Call_000_3474:
Jump_000_3474:
    ld a, $04                                     ; $3474: $3e $04

Jump_000_3476:
    ld [$2000], a                                 ; $3476: $ea $00 $20

Jump_000_3479:
    jr jr_000_3487                                ; $3479: $18 $0c

Call_000_347b:
Jump_000_347b:
    ld a, $05                                     ; $347b: $3e $05
    ld [$2000], a                                 ; $347d: $ea $00 $20
    jr jr_000_3487                                ; $3480: $18 $05

Call_000_3482:
    ld a, $07                                     ; $3482: $3e $07
    ld [$2000], a                                 ; $3484: $ea $00 $20

Call_000_3487:
Jump_000_3487:
jr_000_3487:
    call Call_000_34c5                            ; $3487: $cd $c5 $34
    push af                                       ; $348a: $f5
    ld a, $06                                     ; $348b: $3e $06

Jump_000_348d:
    ld [$2000], a                                 ; $348d: $ea $00 $20

Call_000_3490:
Jump_000_3490:
    pop af                                        ; $3490: $f1
    ret                                           ; $3491: $c9


Call_000_3492:
Jump_000_3492:
    ld a, $01                                     ; $3492: $3e $01
    ld [$2000], a                                 ; $3494: $ea $00 $20
    jr jr_000_34ba                                ; $3497: $18 $21

Call_000_3499:
    ld a, $02                                     ; $3499: $3e $02

Jump_000_349b:
    ld [$2000], a                                 ; $349b: $ea $00 $20
    jr jr_000_34ba                                ; $349e: $18 $1a

Call_000_34a0:
Jump_000_34a0:
    ld a, $03                                     ; $34a0: $3e $03
    ld [$2000], a                                 ; $34a2: $ea $00 $20

Call_000_34a5:
    jr jr_000_34ba                                ; $34a5: $18 $13

Call_000_34a7:
    ld a, $04                                     ; $34a7: $3e $04

Jump_000_34a9:
    ld [$2000], a                                 ; $34a9: $ea $00 $20
    jr jr_000_34ba                                ; $34ac: $18 $0c

Call_000_34ae:
    ld a, $05                                     ; $34ae: $3e $05
    ld [$2000], a                                 ; $34b0: $ea $00 $20
    jr jr_000_34ba                                ; $34b3: $18 $05

Call_000_34b5:
Jump_000_34b5:
    ld a, $06                                     ; $34b5: $3e $06
    ld [$2000], a                                 ; $34b7: $ea $00 $20

Call_000_34ba:
jr_000_34ba:
    call Call_000_34c5                            ; $34ba: $cd $c5 $34
    push af                                       ; $34bd: $f5

Jump_000_34be:
    ld a, $07                                     ; $34be: $3e $07
    ld [$2000], a                                 ; $34c0: $ea $00 $20
    pop af                                        ; $34c3: $f1

Jump_000_34c4:
    ret                                           ; $34c4: $c9


Call_000_34c5:
    ld a, l                                       ; $34c5: $7d

Call_000_34c6:
    ldh [$bf], a                                  ; $34c6: $e0 $bf

Jump_000_34c8:
    ld a, h                                       ; $34c8: $7c

Call_000_34c9:
    ldh [$c0], a                                  ; $34c9: $e0 $c0

Jump_000_34cb:
    ld hl, $ffbd                                  ; $34cb: $21 $bd $ff

Call_000_34ce:
    ld a, [hl+]                                   ; $34ce: $2a
    ld h, [hl]                                    ; $34cf: $66
    ld l, a                                       ; $34d0: $6f

Call_000_34d1:
    push hl                                       ; $34d1: $e5
    ld hl, $ffbf                                  ; $34d2: $21 $bf $ff
    ld a, [hl+]                                   ; $34d5: $2a

Jump_000_34d6:
    ld h, [hl]                                    ; $34d6: $66
    ld l, a                                       ; $34d7: $6f
    ldh a, [$c1]                                  ; $34d8: $f0 $c1
    ret                                           ; $34da: $c9


Call_000_34db:
    ld [$2000], a                                 ; $34db: $ea $00 $20

Call_000_34de:
    ld de, $34e3                                  ; $34de: $11 $e3 $34
    push de                                       ; $34e1: $d5

Call_000_34e2:
Jump_000_34e2:
    jp hl                                         ; $34e2: $e9


Call_000_34e3:
    ld a, $02                                     ; $34e3: $3e $02
    ld [$2000], a                                 ; $34e5: $ea $00 $20

Jump_000_34e8:
    ret                                           ; $34e8: $c9


Call_000_34e9:
Jump_000_34e9:
    push de                                       ; $34e9: $d5
    ld hl, $4001                                  ; $34ea: $21 $01 $40
    call Call_000_3185                            ; $34ed: $cd $85 $31
    ld a, $09                                     ; $34f0: $3e $09
    ld [$2000], a                                 ; $34f2: $ea $00 $20
    ld a, [hl+]                                   ; $34f5: $2a
    push af                                       ; $34f6: $f5
    ld a, [hl+]                                   ; $34f7: $2a
    ld h, [hl]                                    ; $34f8: $66
    ld l, a                                       ; $34f9: $6f

Call_000_34fa:
Jump_000_34fa:
    set 6, h                                      ; $34fa: $cb $f4
    pop af                                        ; $34fc: $f1

Jump_000_34fd:
    ld [$2000], a                                 ; $34fd: $ea $00 $20

Call_000_3500:
Jump_000_3500:
    pop de                                        ; $3500: $d1

Call_000_3501:
    ret                                           ; $3501: $c9


Call_000_3502:
    push af                                       ; $3502: $f5
    call Call_000_34e9                            ; $3503: $cd $e9 $34

Jump_000_3506:
    inc hl                                        ; $3506: $23
    ld d, $00                                     ; $3507: $16 $00

Call_000_3509:
    sla e                                         ; $3509: $cb $23
    rl d                                          ; $350b: $cb $12
    ld [$2000], a                                 ; $350d: $ea $00 $20
    add hl, de                                    ; $3510: $19
    ld a, [hl+]                                   ; $3511: $2a
    ld h, [hl]                                    ; $3512: $66
    ld l, a                                       ; $3513: $6f
    ld d, l                                       ; $3514: $55

Call_000_3515:
    ld e, h                                       ; $3515: $5c

Jump_000_3516:
    pop af                                        ; $3516: $f1

Jump_000_3517:
    call Call_000_351c                            ; $3517: $cd $1c $35
    add hl, de                                    ; $351a: $19
    ret                                           ; $351b: $c9


Call_000_351c:
Jump_000_351c:
    call Call_000_34e9                            ; $351c: $cd $e9 $34

Call_000_351f:
Jump_000_351f:
    ld l, [hl]                                    ; $351f: $6e

Call_000_3520:
    ld h, $00                                     ; $3520: $26 $00
    add hl, hl                                    ; $3522: $29
    inc hl                                        ; $3523: $23

Call_000_3524:
Jump_000_3524:
    ret                                           ; $3524: $c9


Call_000_3525:
    ld a, [$4000]                                 ; $3525: $fa $00 $40
    push af                                       ; $3528: $f5
    ld a, c                                       ; $3529: $79

Call_000_352a:
Jump_000_352a:
    call Call_000_34e9                            ; $352a: $cd $e9 $34

Call_000_352d:
Jump_000_352d:
    ld de, $cb18                                  ; $352d: $11 $18 $cb

Call_000_3530:
Jump_000_3530:
    ld a, [de]                                    ; $3530: $1a

Call_000_3531:
    ld c, a                                       ; $3531: $4f

Call_000_3532:
Jump_000_3532:
    inc de                                        ; $3532: $13

Call_000_3533:
    ld a, [de]                                    ; $3533: $1a

Jump_000_3534:
    ld b, a                                       ; $3534: $47

Jump_000_3535:
    add hl, bc                                    ; $3535: $09

Jump_000_3536:
    dec de                                        ; $3536: $1b
    inc bc                                        ; $3537: $03

Call_000_3538:
Jump_000_3538:
    inc bc                                        ; $3538: $03
    inc bc                                        ; $3539: $03
    ld a, c                                       ; $353a: $79

Call_000_353b:
    ld [de], a                                    ; $353b: $12

Jump_000_353c:
    inc de                                        ; $353c: $13

Jump_000_353d:
    ld a, b                                       ; $353d: $78
    ld [de], a                                    ; $353e: $12
    ld a, [hl+]                                   ; $353f: $2a
    ld c, a                                       ; $3540: $4f

Jump_000_3541:
    ld d, [hl]                                    ; $3541: $56
    inc hl                                        ; $3542: $23
    ld e, [hl]                                    ; $3543: $5e
    pop af                                        ; $3544: $f1
    ld [$2000], a                                 ; $3545: $ea $00 $20
    ld a, c                                       ; $3548: $79
    ret                                           ; $3549: $c9


Call_000_354a:
Jump_000_354a:
    push hl                                       ; $354a: $e5
    ld hl, $cb18                                  ; $354b: $21 $18 $cb

Call_000_354e:
Jump_000_354e:
    ld a, [hl+]                                   ; $354e: $2a

Jump_000_354f:
    ld h, [hl]                                    ; $354f: $66
    ld l, a                                       ; $3550: $6f
    dec hl                                        ; $3551: $2b
    dec hl                                        ; $3552: $2b
    dec hl                                        ; $3553: $2b
    ld a, l                                       ; $3554: $7d

Call_000_3555:
    ld [$cb18], a                                 ; $3555: $ea $18 $cb

Call_000_3558:
    ld a, h                                       ; $3558: $7c
    ld [$cb19], a                                 ; $3559: $ea $19 $cb
    pop hl                                        ; $355c: $e1
    ret                                           ; $355d: $c9


Call_000_355e:
    ldh a, [$d8]                                  ; $355e: $f0 $d8
    cp $0a                                        ; $3560: $fe $0a
    jr nz, jr_000_3584                            ; $3562: $20 $20

    push bc                                       ; $3564: $c5

Jump_000_3565:
    push hl                                       ; $3565: $e5
    ld hl, $cbf3                                  ; $3566: $21 $f3 $cb

Call_000_3569:
Jump_000_3569:
    ld c, [hl]                                    ; $3569: $4e
    inc hl                                        ; $356a: $23

Jump_000_356b:
    ld b, [hl]                                    ; $356b: $46

Call_000_356c:
    ld hl, $0006                                  ; $356c: $21 $06 $00
    add hl, bc                                    ; $356f: $09
    ld a, [hl+]                                   ; $3570: $2a

Jump_000_3571:
    ld [$cbee], a                                 ; $3571: $ea $ee $cb

Call_000_3574:
    ld a, [hl+]                                   ; $3574: $2a
    ld [$cbef], a                                 ; $3575: $ea $ef $cb
    inc hl                                        ; $3578: $23
    ld a, [hl+]                                   ; $3579: $2a
    ld [$cbf0], a                                 ; $357a: $ea $f0 $cb

Call_000_357d:
Jump_000_357d:
    ld a, [hl]                                    ; $357d: $7e
    ld [$cbf1], a                                 ; $357e: $ea $f1 $cb

Jump_000_3581:
    pop hl                                        ; $3581: $e1
    pop bc                                        ; $3582: $c1
    ret                                           ; $3583: $c9


Call_000_3584:
jr_000_3584:
    push hl                                       ; $3584: $e5
    ld a, [$cae1]                                 ; $3585: $fa $e1 $ca
    ld [$cbf2], a                                 ; $3588: $ea $f2 $cb

Call_000_358b:
    ld hl, $c326                                  ; $358b: $21 $26 $c3

Jump_000_358e:
    ld a, [hl+]                                   ; $358e: $2a
    ld [$cbee], a                                 ; $358f: $ea $ee $cb
    ld a, [hl+]                                   ; $3592: $2a
    ld [$cbef], a                                 ; $3593: $ea $ef $cb

Call_000_3596:
    inc hl                                        ; $3596: $23

Call_000_3597:
    ld a, [hl+]                                   ; $3597: $2a
    ld [$cbf0], a                                 ; $3598: $ea $f0 $cb
    ld a, [hl]                                    ; $359b: $7e
    ld [$cbf1], a                                 ; $359c: $ea $f1 $cb
    pop hl                                        ; $359f: $e1
    ret                                           ; $35a0: $c9


Call_000_35a1:
    ld a, [$4000]                                 ; $35a1: $fa $00 $40
    push af                                       ; $35a4: $f5

Call_000_35a5:
    ld a, e                                       ; $35a5: $7b

Call_000_35a6:
    ld [$2000], a                                 ; $35a6: $ea $00 $20
    ld a, d                                       ; $35a9: $7a
    call Call_000_319d                            ; $35aa: $cd $9d $31

Call_000_35ad:
    pop af                                        ; $35ad: $f1

Jump_000_35ae:
    ld [$2000], a                                 ; $35ae: $ea $00 $20
    ret                                           ; $35b1: $c9


Call_000_35b2:
    ld a, [$4000]                                 ; $35b2: $fa $00 $40
    push af                                       ; $35b5: $f5
    ld a, e                                       ; $35b6: $7b

Call_000_35b7:
    ld [$2000], a                                 ; $35b7: $ea $00 $20

Call_000_35ba:
    ld a, d                                       ; $35ba: $7a
    rst $08                                       ; $35bb: $cf
    ld d, a                                       ; $35bc: $57

Jump_000_35bd:
    pop af                                        ; $35bd: $f1

Call_000_35be:
Jump_000_35be:
    ld [$2000], a                                 ; $35be: $ea $00 $20
    ld a, d                                       ; $35c1: $7a
    ret                                           ; $35c2: $c9


Jump_000_35c3:
jr_000_35c3:
    ld a, [$c30e]                                 ; $35c3: $fa $0e $c3

Call_000_35c6:
    or a                                          ; $35c6: $b7

Jump_000_35c7:
    jr nz, jr_000_35c3                            ; $35c7: $20 $fa

    ld hl, $c304                                  ; $35c9: $21 $04 $c3
    ld a, [hl+]                                   ; $35cc: $2a

Call_000_35cd:
    ld h, [hl]                                    ; $35cd: $66

Jump_000_35ce:
    ld l, a                                       ; $35ce: $6f
    ld a, [$c309]                                 ; $35cf: $fa $09 $c3

Call_000_35d2:
    call Call_000_32b9                            ; $35d2: $cd $b9 $32

Jump_000_35d5:
    ld [$c30f], a                                 ; $35d5: $ea $0f $c3

Call_000_35d8:
    ld a, l                                       ; $35d8: $7d
    ld [$c30c], a                                 ; $35d9: $ea $0c $c3
    ld a, h                                       ; $35dc: $7c

Call_000_35dd:
    ld [$c30d], a                                 ; $35dd: $ea $0d $c3
    ld a, [$c308]                                 ; $35e0: $fa $08 $c3
    ld [$c30e], a                                 ; $35e3: $ea $0e $c3

Jump_000_35e6:
    ret                                           ; $35e6: $c9


Call_000_35e7:
    call Call_000_32b9                            ; $35e7: $cd $b9 $32

Jump_000_35ea:
    ldh a, [rSVBK]                                ; $35ea: $f0 $70
    push af                                       ; $35ec: $f5
    ld a, $02                                     ; $35ed: $3e $02
    ldh [rSVBK], a                                ; $35ef: $e0 $70
    ld de, $d000                                  ; $35f1: $11 $00 $d0

Jump_000_35f4:
    call Call_000_11ee                            ; $35f4: $cd $ee $11
    pop af                                        ; $35f7: $f1
    ldh [rSVBK], a                                ; $35f8: $e0 $70

Jump_000_35fa:
    ret                                           ; $35fa: $c9


Call_000_35fb:
    call Call_000_32b9                            ; $35fb: $cd $b9 $32

Jump_000_35fe:
    ldh a, [rSVBK]                                ; $35fe: $f0 $70

Jump_000_3600:
    push af                                       ; $3600: $f5
    ld a, $02                                     ; $3601: $3e $02

Call_000_3603:
    ldh [rSVBK], a                                ; $3603: $e0 $70
    ld de, $d000                                  ; $3605: $11 $00 $d0
    call Call_000_11f4                            ; $3608: $cd $f4 $11
    pop af                                        ; $360b: $f1
    ldh [rSVBK], a                                ; $360c: $e0 $70
    ret                                           ; $360e: $c9


    ldh a, [rSVBK]                                ; $360f: $f0 $70

Call_000_3611:
    push af                                       ; $3611: $f5
    ld a, $07                                     ; $3612: $3e $07

Call_000_3614:
    ldh [rSVBK], a                                ; $3614: $e0 $70
    ld a, [$cddc]                                 ; $3616: $fa $dc $cd
    ld [$2000], a                                 ; $3619: $ea $00 $20
    ld hl, $63e6                                  ; $361c: $21 $e6 $63
    ld a, [hl+]                                   ; $361f: $2a

Call_000_3620:
    add a                                         ; $3620: $87

Jump_000_3621:
    ld c, a                                       ; $3621: $4f
    ld b, $00                                     ; $3622: $06 $00

Jump_000_3624:
    rl b                                          ; $3624: $cb $10
    ld de, $dc00                                  ; $3626: $11 $00 $dc

Call_000_3629:
    call Call_000_1140                            ; $3629: $cd $40 $11
    pop af                                        ; $362c: $f1
    ldh [rSVBK], a                                ; $362d: $e0 $70

Call_000_362f:
    ret                                           ; $362f: $c9


Jump_000_3630:
    call Call_000_300a                            ; $3630: $cd $0a $30

Call_000_3633:
Jump_000_3633:
    push bc                                       ; $3633: $c5
    push de                                       ; $3634: $d5

Call_000_3635:
Jump_000_3635:
    push hl                                       ; $3635: $e5
    push de                                       ; $3636: $d5
    ld e, l                                       ; $3637: $5d
    ld d, h                                       ; $3638: $54
    ld c, $01                                     ; $3639: $0e $01

jr_000_363b:
    ld b, $00                                     ; $363b: $06 $00
    ld h, $dc                                     ; $363d: $26 $dc

Call_000_363f:
jr_000_363f:
    ld a, [de]                                    ; $363f: $1a

Call_000_3640:
    and c                                         ; $3640: $a1

Call_000_3641:
    add $ff                                       ; $3641: $c6 $ff

Jump_000_3643:
    ld a, b                                       ; $3643: $78

Jump_000_3644:
    adc a                                         ; $3644: $8f
    ld l, a                                       ; $3645: $6f

Jump_000_3646:
    ld b, [hl]                                    ; $3646: $46

Jump_000_3647:
    rlc c                                         ; $3647: $cb $01
    jr nc, jr_000_364c                            ; $3649: $30 $01

    inc de                                        ; $364b: $13

jr_000_364c:
    ld a, b                                       ; $364c: $78
    rlca                                          ; $364d: $07

Jump_000_364e:
    jr nc, jr_000_363f                            ; $364e: $30 $ef

    or a                                          ; $3650: $b7
    rra                                           ; $3651: $1f
    pop hl                                        ; $3652: $e1

Jump_000_3653:
    cp $7f                                        ; $3653: $fe $7f
    jr z, jr_000_365b                             ; $3655: $28 $04

    ld [hl+], a                                   ; $3657: $22
    push hl                                       ; $3658: $e5
    jr jr_000_363b                                ; $3659: $18 $e0

jr_000_365b:
    dec hl                                        ; $365b: $2b
    set 7, [hl]                                   ; $365c: $cb $fe
    pop hl                                        ; $365e: $e1
    pop de                                        ; $365f: $d1
    pop bc                                        ; $3660: $c1
    ret                                           ; $3661: $c9


    push hl                                       ; $3662: $e5

Call_000_3663:
Jump_000_3663:
    ld hl, $61f1                                  ; $3663: $21 $f1 $61
    call Call_000_32be                            ; $3666: $cd $be $32
    ld a, e                                       ; $3669: $7b
    call Call_000_0005                            ; $366a: $cd $05 $00
    inc hl                                        ; $366d: $23
    inc hl                                        ; $366e: $23
    pop de                                        ; $366f: $d1
    call Call_000_1245                            ; $3670: $cd $45 $12
    ret                                           ; $3673: $c9


Call_000_3674:
    pop hl                                        ; $3674: $e1
    ld b, $04                                     ; $3675: $06 $04
    ld c, $f0                                     ; $3677: $0e $f0

jr_000_3679:
    ld a, [hl+]                                   ; $3679: $2a

Call_000_367a:
Jump_000_367a:
    ld [c], a                                     ; $367a: $e2
    inc c                                         ; $367b: $0c
    dec b                                         ; $367c: $05

Jump_000_367d:
    jr nz, jr_000_3679                            ; $367d: $20 $fa

    jp hl                                         ; $367f: $e9


Jump_000_3680:
    push af                                       ; $3680: $f5

Jump_000_3681:
    push bc                                       ; $3681: $c5
    push de                                       ; $3682: $d5
    push hl                                       ; $3683: $e5
    ldh a, [rSVBK]                                ; $3684: $f0 $70

Jump_000_3686:
    push af                                       ; $3686: $f5
    ld a, $01                                     ; $3687: $3e $01
    ldh [rSVBK], a                                ; $3689: $e0 $70

Call_000_368b:
    ld hl, $c0ba                                  ; $368b: $21 $ba $c0

Call_000_368e:
Jump_000_368e:
    bit 7, [hl]                                   ; $368e: $cb $7e

Call_000_3690:
    jp z, Jump_000_3780                           ; $3690: $ca $80 $37

    ldh a, [$8c]                                  ; $3693: $f0 $8c
    or a                                          ; $3695: $b7
    ld a, [$4000]                                 ; $3696: $fa $00 $40
    jr z, jr_000_369d                             ; $3699: $28 $02

Call_000_369b:
Jump_000_369b:
    ldh a, [$8a]                                  ; $369b: $f0 $8a

jr_000_369d:
    ld [hl], a                                    ; $369d: $77
    ld a, [$c113]                                 ; $369e: $fa $13 $c1
    cp $02                                        ; $36a1: $fe $02

Jump_000_36a3:
    jr nz, jr_000_36b3                            ; $36a3: $20 $0e

    ld hl, $c114                                  ; $36a5: $21 $14 $c1
    ld a, [hl+]                                   ; $36a8: $2a
    ld h, [hl]                                    ; $36a9: $66
    ld l, a                                       ; $36aa: $6f
    ld a, $03                                     ; $36ab: $3e $03

Call_000_36ad:
Jump_000_36ad:
    ld [$2000], a                                 ; $36ad: $ea $00 $20
    call $7c8a                                    ; $36b0: $cd $8a $7c

Jump_000_36b3:
jr_000_36b3:
    ld hl, $c0c4                                  ; $36b3: $21 $c4 $c0
    bit 3, [hl]                                   ; $36b6: $cb $5e
    jr nz, jr_000_36cf                            ; $36b8: $20 $15

    bit 1, [hl]                                   ; $36ba: $cb $4e
    ld hl, $ff40                                  ; $36bc: $21 $40 $ff

Call_000_36bf:
Jump_000_36bf:
    jr z, jr_000_36d6                             ; $36bf: $28 $15

    ld a, [$c0cd]                                 ; $36c1: $fa $cd $c0

Jump_000_36c4:
    xor $01                                       ; $36c4: $ee $01
    ld [$c0cd], a                                 ; $36c6: $ea $cd $c0

Call_000_36c9:
    jr z, jr_000_36d6                             ; $36c9: $28 $0b

    set 3, [hl]                                   ; $36cb: $cb $de

Jump_000_36cd:
    jr jr_000_36d8                                ; $36cd: $18 $09

jr_000_36cf:
    ld hl, $ff40                                  ; $36cf: $21 $40 $ff

Call_000_36d2:
    set 3, [hl]                                   ; $36d2: $cb $de
    jr jr_000_36d8                                ; $36d4: $18 $02

jr_000_36d6:
    res 3, [hl]                                   ; $36d6: $cb $9e

Jump_000_36d8:
jr_000_36d8:
    ld hl, $c0c4                                  ; $36d8: $21 $c4 $c0

Jump_000_36db:
    bit 0, [hl]                                   ; $36db: $cb $46
    jr z, jr_000_3702                             ; $36dd: $28 $23

    res 0, [hl]                                   ; $36df: $cb $86
    ld hl, $ff40                                  ; $36e1: $21 $40 $ff
    ldh a, [$ba]                                  ; $36e4: $f0 $ba
    dec a                                         ; $36e6: $3d
    jr nz, jr_000_36ed                            ; $36e7: $20 $04

    res 2, [hl]                                   ; $36e9: $cb $96

Jump_000_36eb:
    jr jr_000_36ef                                ; $36eb: $18 $02

jr_000_36ed:
    set 2, [hl]                                   ; $36ed: $cb $d6

jr_000_36ef:
    ld a, [$cd19]                                 ; $36ef: $fa $19 $cd
    cp $ff                                        ; $36f2: $fe $ff
    call nz, Call_000_0fcd                        ; $36f4: $c4 $cd $0f

Call_000_36f7:
    call $ff80                                    ; $36f7: $cd $80 $ff

Jump_000_36fa:
    ld a, $01                                     ; $36fa: $3e $01

Call_000_36fc:
    ld [$2000], a                                 ; $36fc: $ea $00 $20
    call $5e59                                    ; $36ff: $cd $59 $5e

jr_000_3702:
    call LCDScroll                                ; $3702: $cd $bd $11
    ld a, [$c0cc]                                 ; $3705: $fa $cc $c0

Call_000_3708:
    or a                                          ; $3708: $b7

Call_000_3709:
    jr z, jr_000_3717                             ; $3709: $28 $0c

    xor a                                         ; $370b: $af

Jump_000_370c:
    ld [$c0cc], a                                 ; $370c: $ea $cc $c0

Call_000_370f:
    ld a, $03                                     ; $370f: $3e $03
    ld [$2000], a                                 ; $3711: $ea $00 $20
    call $785e                                    ; $3714: $cd $5e $78

Call_000_3717:
Jump_000_3717:
jr_000_3717:
    ld a, [$c310]                                 ; $3717: $fa $10 $c3
    or a                                          ; $371a: $b7
    jr z, jr_000_3736                             ; $371b: $28 $19

Jump_000_371d:
    swap a                                        ; $371d: $cb $37
    and $0f                                       ; $371f: $e6 $0f
    sub $97                                       ; $3721: $d6 $97
    cpl                                           ; $3723: $2f

Call_000_3724:
    inc a                                         ; $3724: $3c
    ld c, a                                       ; $3725: $4f
    ldh a, [rLY]                                  ; $3726: $f0 $44
    jr nc, jr_000_3736                            ; $3728: $30 $0c

Jump_000_372a:
    cp $90                                        ; $372a: $fe $90

Call_000_372c:
    jr c, jr_000_3736                             ; $372c: $38 $08

    ld a, $01                                     ; $372e: $3e $01
    ld [$2000], a                                 ; $3730: $ea $00 $20
    call $4160                                    ; $3733: $cd $60 $41

Call_000_3736:
Jump_000_3736:
jr_000_3736:
    ld a, [$c316]                                 ; $3736: $fa $16 $c3
    or a                                          ; $3739: $b7
    jr z, jr_000_3744                             ; $373a: $28 $08

Jump_000_373c:
    ld a, $01                                     ; $373c: $3e $01
    ld [$2000], a                                 ; $373e: $ea $00 $20
    call $40d7                                    ; $3741: $cd $d7 $40

jr_000_3744:
    ld a, [$c30e]                                 ; $3744: $fa $0e $c3
    or a                                          ; $3747: $b7

Jump_000_3748:
    jr z, jr_000_3762                             ; $3748: $28 $18

    ld c, a                                       ; $374a: $4f
    ld a, [$c30f]                                 ; $374b: $fa $0f $c3
    ld [$2000], a                                 ; $374e: $ea $00 $20
    ld hl, $c306                                  ; $3751: $21 $06 $c3
    ld e, [hl]                                    ; $3754: $5e

Call_000_3755:
    inc hl                                        ; $3755: $23
    ld d, [hl]                                    ; $3756: $56

Jump_000_3757:
    ld hl, $c30c                                  ; $3757: $21 $0c $c3
    ld a, [hl+]                                   ; $375a: $2a
    ld h, [hl]                                    ; $375b: $66
    ld l, a                                       ; $375c: $6f
    rst $28                                       ; $375d: $ef
    xor a                                         ; $375e: $af
    ld [$c30e], a                                 ; $375f: $ea $0e $c3

Call_000_3762:
jr_000_3762:
    ld a, [$cd28]                                 ; $3762: $fa $28 $cd
    cp $02                                        ; $3765: $fe $02
    jr nz, jr_000_3775                            ; $3767: $20 $0c

    ldh a, [rLY]                                  ; $3769: $f0 $44
    cp $90                                        ; $376b: $fe $90
    jr nz, jr_000_3775                            ; $376d: $20 $06

    call Call_000_37be                            ; $376f: $cd $be $37

Call_000_3772:
    jp Jump_000_3780                              ; $3772: $c3 $80 $37


jr_000_3775:
    ld a, $06                                     ; $3775: $3e $06
    ld [$2000], a                                 ; $3777: $ea $00 $20
    ldh a, [$a6]                                  ; $377a: $f0 $a6
    or a                                          ; $377c: $b7
    call z, $6ad3                                 ; $377d: $cc $d3 $6a

Call_000_3780:
Jump_000_3780:
    ld hl, $ff40                                  ; $3780: $21 $40 $ff
    set 1, [hl]                                   ; $3783: $cb $ce
    set 5, [hl]                                   ; $3785: $cb $ee
    ld hl, $c0ba                                  ; $3787: $21 $ba $c0
    ld a, [hl]                                    ; $378a: $7e
    ld [$2000], a                                 ; $378b: $ea $00 $20

Jump_000_378e:
    ld [hl], $ff                                  ; $378e: $36 $ff
    ld hl, $c0c6                                  ; $3790: $21 $c6 $c0
    inc [hl]                                      ; $3793: $34
    ldh a, [$bb]                                  ; $3794: $f0 $bb
    or a                                          ; $3796: $b7
    jr nz, jr_000_37b6                            ; $3797: $20 $1d

    ld e, a                                       ; $3799: $5f
    ld hl, $ffc3                                  ; $379a: $21 $c3 $ff
    dec [hl]                                      ; $379d: $35
    jr nz, jr_000_37b6                            ; $379e: $20 $16

Call_000_37a0:
    ld a, $3c                                     ; $37a0: $3e $3c
    ld [hl], a                                    ; $37a2: $77

Call_000_37a3:
    inc hl                                        ; $37a3: $23
    inc [hl]                                      ; $37a4: $34
    cp [hl]                                       ; $37a5: $be
    jr nz, jr_000_37b6                            ; $37a6: $20 $0e

    ld [hl], e                                    ; $37a8: $73

Jump_000_37a9:
    inc hl                                        ; $37a9: $23

Call_000_37aa:
    inc [hl]                                      ; $37aa: $34
    cp [hl]                                       ; $37ab: $be

Call_000_37ac:
    jr nz, jr_000_37b6                            ; $37ac: $20 $08

    ld [hl], e                                    ; $37ae: $73
    inc hl                                        ; $37af: $23

Call_000_37b0:
    inc [hl]                                      ; $37b0: $34

Call_000_37b1:
    jr nz, jr_000_37b6                            ; $37b1: $20 $03

Call_000_37b3:
    ld [hl], e                                    ; $37b3: $73
    inc hl                                        ; $37b4: $23
    inc [hl]                                      ; $37b5: $34

Call_000_37b6:
jr_000_37b6:
    pop af                                        ; $37b6: $f1
    ldh [rSVBK], a                                ; $37b7: $e0 $70
    pop hl                                        ; $37b9: $e1
    pop de                                        ; $37ba: $d1

Call_000_37bb:
    pop bc                                        ; $37bb: $c1
    pop af                                        ; $37bc: $f1
    reti                                          ; $37bd: $d9


Call_000_37be:
Jump_000_37be:
    ldh a, [rSVBK]                                ; $37be: $f0 $70
    push af                                       ; $37c0: $f5

Call_000_37c1:
    ld a, $03                                     ; $37c1: $3e $03
    ldh [rSVBK], a                                ; $37c3: $e0 $70
    ld de, $9800                                  ; $37c5: $11 $00 $98
    ld hl, $d700                                  ; $37c8: $21 $00 $d7

Call_000_37cb:
    ld c, $3f                                     ; $37cb: $0e $3f
    rst $28                                       ; $37cd: $ef

Call_000_37ce:
    ld a, $01                                     ; $37ce: $3e $01
    ldh [rVBK], a                                 ; $37d0: $e0 $4f
    ld hl, $db00                                  ; $37d2: $21 $00 $db
    rst $28                                       ; $37d5: $ef
    xor a                                         ; $37d6: $af
    ldh [rVBK], a                                 ; $37d7: $e0 $4f

Call_000_37d9:
    ld [$cd28], a                                 ; $37d9: $ea $28 $cd

Call_000_37dc:
Jump_000_37dc:
    pop af                                        ; $37dc: $f1
    ldh [rSVBK], a                                ; $37dd: $e0 $70
    ret                                           ; $37df: $c9


Call_000_37e0:
Jump_000_37e0:
    push hl                                       ; $37e0: $e5

jr_000_37e1:
    ld hl, $c0c5                                  ; $37e1: $21 $c5 $c0
    ld a, [$c0c6]                                 ; $37e4: $fa $c6 $c0
    cp [hl]                                       ; $37e7: $be
    jr nc, jr_000_37fb                            ; $37e8: $30 $11

    ld hl, $c0c8                                  ; $37ea: $21 $c8 $c0
    ld a, [hl+]                                   ; $37ed: $2a
    ld h, [hl]                                    ; $37ee: $66
    ld l, a                                       ; $37ef: $6f
    inc hl                                        ; $37f0: $23
    ld a, l                                       ; $37f1: $7d

Call_000_37f2:
    ld [$c0c8], a                                 ; $37f2: $ea $c8 $c0
    ld a, h                                       ; $37f5: $7c
    ld [$c0c9], a                                 ; $37f6: $ea $c9 $c0
    jr jr_000_37e1                                ; $37f9: $18 $e6

jr_000_37fb:
    xor a                                         ; $37fb: $af
    ld [$c0c6], a                                 ; $37fc: $ea $c6 $c0
    ld [$c0c8], a                                 ; $37ff: $ea $c8 $c0

Call_000_3802:
Jump_000_3802:
    ld [$c0c9], a                                 ; $3802: $ea $c9 $c0

Call_000_3805:
    pop hl                                        ; $3805: $e1
    ret                                           ; $3806: $c9


Call_000_3807:
Jump_000_3807:
    ld a, [$4000]                                 ; $3807: $fa $00 $40
    push af                                       ; $380a: $f5
    ld a, $05                                     ; $380b: $3e $05
    ld [$2000], a                                 ; $380d: $ea $00 $20

Jump_000_3810:
    call $7bc1                                    ; $3810: $cd $c1 $7b

Jump_000_3813:
    pop af                                        ; $3813: $f1
    ld [$2000], a                                 ; $3814: $ea $00 $20
    pop hl                                        ; $3817: $e1
    ld a, l                                       ; $3818: $7d

Jump_000_3819:
    ld [$cd59], a                                 ; $3819: $ea $59 $cd
    ld a, h                                       ; $381c: $7c
    ld [$cd5a], a                                 ; $381d: $ea $5a $cd

Jump_000_3820:
jr_000_3820:
    ld a, [$4000]                                 ; $3820: $fa $00 $40
    push af                                       ; $3823: $f5
    ld hl, $ffc2                                  ; $3824: $21 $c2 $ff
    inc [hl]                                      ; $3827: $34
    call Call_000_37e0                            ; $3828: $cd $e0 $37

Call_000_382b:
    call Call_000_3850                            ; $382b: $cd $50 $38
    ld a, [$c300]                                 ; $382e: $fa $00 $c3
    or a                                          ; $3831: $b7
    jr nz, jr_000_383c                            ; $3832: $20 $08

Jump_000_3834:
    ld a, $01                                     ; $3834: $3e $01
    ld [$2000], a                                 ; $3836: $ea $00 $20

Call_000_3839:
    call $5be0                                    ; $3839: $cd $e0 $5b

jr_000_383c:
    call Call_000_0211                            ; $383c: $cd $11 $02

Jump_000_383f:
    pop af                                        ; $383f: $f1

Jump_000_3840:
    ld [$2000], a                                 ; $3840: $ea $00 $20
    ld a, [$cd57]                                 ; $3843: $fa $57 $cd
    or a                                          ; $3846: $b7
    jr nz, jr_000_3820                            ; $3847: $20 $d7

    ld hl, $cd59                                  ; $3849: $21 $59 $cd
    ld a, [hl+]                                   ; $384c: $2a
    ld h, [hl]                                    ; $384d: $66

Call_000_384e:
    ld l, a                                       ; $384e: $6f
    jp hl                                         ; $384f: $e9


Call_000_3850:
    ld hl, $cd57                                  ; $3850: $21 $57 $cd
    ld a, [hl]                                    ; $3853: $7e
    or a                                          ; $3854: $b7
    ret z                                         ; $3855: $c8

    dec [hl]                                      ; $3856: $35
    ret nz                                        ; $3857: $c0

Jump_000_3858:
    ld a, [$4000]                                 ; $3858: $fa $00 $40
    push af                                       ; $385b: $f5

Call_000_385c:
    ld a, [$cd56]                                 ; $385c: $fa $56 $cd
    ld [hl], a                                    ; $385f: $77

Call_000_3860:
    ld a, [$cbdc]                                 ; $3860: $fa $dc $cb

Call_000_3863:
    or a                                          ; $3863: $b7
    jr z, jr_000_3871                             ; $3864: $28 $0b

    cp $05                                        ; $3866: $fe $05
    jr z, jr_000_3871                             ; $3868: $28 $07

Jump_000_386a:
    ld a, $05                                     ; $386a: $3e $05

Jump_000_386c:
    ld [$2000], a                                 ; $386c: $ea $00 $20
    jr jr_000_387a                                ; $386f: $18 $09

jr_000_3871:
    ld a, $03                                     ; $3871: $3e $03
    ld [$2000], a                                 ; $3873: $ea $00 $20
    xor a                                         ; $3876: $af
    call $77ea                                    ; $3877: $cd $ea $77

jr_000_387a:
    pop af                                        ; $387a: $f1
    ld [$2000], a                                 ; $387b: $ea $00 $20

Jump_000_387e:
    ld hl, $cd58                                  ; $387e: $21 $58 $cd
    dec [hl]                                      ; $3881: $35
    ret nz                                        ; $3882: $c0

    xor a                                         ; $3883: $af

Call_000_3884:
    ld [$cd57], a                                 ; $3884: $ea $57 $cd
    ld a, [$cb17]                                 ; $3887: $fa $17 $cb
    cp $08                                        ; $388a: $fe $08

Jump_000_388c:
    ret nz                                        ; $388c: $c0

    ld a, $01                                     ; $388d: $3e $01

Jump_000_388f:
    ld [$cb17], a                                 ; $388f: $ea $17 $cb
    ret                                           ; $3892: $c9


Call_000_3893:
    ld a, [$c0b2]                                 ; $3893: $fa $b2 $c0
    or a                                          ; $3896: $b7
    ret z                                         ; $3897: $c8

    ld a, [$c0b0]                                 ; $3898: $fa $b0 $c0
    cp $01                                        ; $389b: $fe $01
    ret z                                         ; $389d: $c8

    ld a, $81                                     ; $389e: $3e $81

Call_000_38a0:
    ldh [rSC], a                                  ; $38a0: $e0 $02
    ret                                           ; $38a2: $c9


Jump_000_38a3:
    push af                                       ; $38a3: $f5
    push bc                                       ; $38a4: $c5
    push de                                       ; $38a5: $d5
    push hl                                       ; $38a6: $e5
    ldh a, [$8c]                                  ; $38a7: $f0 $8c
    or a                                          ; $38a9: $b7

Call_000_38aa:
    ld a, [$4000]                                 ; $38aa: $fa $00 $40

Call_000_38ad:
    jr z, jr_000_38b1                             ; $38ad: $28 $02

    ldh a, [$8a]                                  ; $38af: $f0 $8a

Call_000_38b1:
jr_000_38b1:
    push af                                       ; $38b1: $f5

Call_000_38b2:
    ld a, $06                                     ; $38b2: $3e $06

Call_000_38b4:
    ld [$2000], a                                 ; $38b4: $ea $00 $20
    call $7f69                                    ; $38b7: $cd $69 $7f

Call_000_38ba:
    pop af                                        ; $38ba: $f1
    ld [$2000], a                                 ; $38bb: $ea $00 $20
    pop hl                                        ; $38be: $e1
    pop de                                        ; $38bf: $d1

Call_000_38c0:
    pop bc                                        ; $38c0: $c1
    pop af                                        ; $38c1: $f1
    reti                                          ; $38c2: $d9


Call_000_38c3:
    push bc                                       ; $38c3: $c5

Call_000_38c4:
    push de                                       ; $38c4: $d5
    push hl                                       ; $38c5: $e5

Jump_000_38c6:
    ld a, [$4000]                                 ; $38c6: $fa $00 $40
    push af                                       ; $38c9: $f5

Jump_000_38ca:
    ld a, $0f                                     ; $38ca: $3e $0f

Jump_000_38cc:
    ld [$2000], a                                 ; $38cc: $ea $00 $20
    ldh a, [rSVBK]                                ; $38cf: $f0 $70

Jump_000_38d1:
    push af                                       ; $38d1: $f5

Call_000_38d2:
Jump_000_38d2:
    ld a, $03                                     ; $38d2: $3e $03

Call_000_38d4:
    ldh [rSVBK], a                                ; $38d4: $e0 $70
    ld a, $81                                     ; $38d6: $3e $81

Call_000_38d8:
    ld c, $8a                                     ; $38d8: $0e $8a

Call_000_38da:
    call $44f1                                    ; $38da: $cd $f1 $44

Call_000_38dd:
Jump_000_38dd:
    pop af                                        ; $38dd: $f1

Jump_000_38de:
    ldh [rSVBK], a                                ; $38de: $e0 $70

Call_000_38e0:
    pop af                                        ; $38e0: $f1
    ld [$2000], a                                 ; $38e1: $ea $00 $20

Call_000_38e4:
    pop hl                                        ; $38e4: $e1
    pop de                                        ; $38e5: $d1
    pop bc                                        ; $38e6: $c1

Call_000_38e7:
Jump_000_38e7:
    ret                                           ; $38e7: $c9


Call_000_38e8:
    ld hl, $4212                                  ; $38e8: $21 $12 $42

Call_000_38eb:
Jump_000_38eb:
    jp Jump_000_3a2b                              ; $38eb: $c3 $2b $3a


Call_000_38ee:
    push bc                                       ; $38ee: $c5

Jump_000_38ef:
    push de                                       ; $38ef: $d5
    push hl                                       ; $38f0: $e5

Jump_000_38f1:
    ld hl, $41e8                                  ; $38f1: $21 $e8 $41

Call_000_38f4:
    call Call_000_3a2b                            ; $38f4: $cd $2b $3a
    pop hl                                        ; $38f7: $e1
    pop de                                        ; $38f8: $d1
    pop bc                                        ; $38f9: $c1
    ret                                           ; $38fa: $c9


Call_000_38fb:
    ld a, [$cdda]                                 ; $38fb: $fa $da $cd

Call_000_38fe:
    or a                                          ; $38fe: $b7

Jump_000_38ff:
    ret z                                         ; $38ff: $c8

Call_000_3900:
Jump_000_3900:
    ldh a, [rSVBK]                                ; $3900: $f0 $70
    push af                                       ; $3902: $f5

Call_000_3903:
Jump_000_3903:
    ld a, $03                                     ; $3903: $3e $03
    ldh [rSVBK], a                                ; $3905: $e0 $70

Jump_000_3907:
    ld hl, $dfaa                                  ; $3907: $21 $aa $df

Call_000_390a:
    ld a, [hl+]                                   ; $390a: $2a
    ld h, [hl]                                    ; $390b: $66
    ld l, a                                       ; $390c: $6f

Jump_000_390d:
    pop af                                        ; $390d: $f1

Call_000_390e:
    ldh [rSVBK], a                                ; $390e: $e0 $70

Call_000_3910:
    ret                                           ; $3910: $c9


Call_000_3911:
    ld a, [$cdda]                                 ; $3911: $fa $da $cd

Jump_000_3914:
    or a                                          ; $3914: $b7

Jump_000_3915:
    ret z                                         ; $3915: $c8

    ldh a, [rSVBK]                                ; $3916: $f0 $70
    push af                                       ; $3918: $f5

Call_000_3919:
    ld a, $03                                     ; $3919: $3e $03

Call_000_391b:
    ldh [rSVBK], a                                ; $391b: $e0 $70
    ld a, l                                       ; $391d: $7d
    ld [$dfaa], a                                 ; $391e: $ea $aa $df
    ld a, h                                       ; $3921: $7c
    ld [$dfab], a                                 ; $3922: $ea $ab $df

Jump_000_3925:
    pop af                                        ; $3925: $f1
    ldh [rSVBK], a                                ; $3926: $e0 $70

Call_000_3928:
    ret                                           ; $3928: $c9


Call_000_3929:
Jump_000_3929:
    push bc                                       ; $3929: $c5
    push de                                       ; $392a: $d5
    push hl                                       ; $392b: $e5
    ld a, [$cdda]                                 ; $392c: $fa $da $cd
    or a                                          ; $392f: $b7

Call_000_3930:
    jr z, jr_000_393a                             ; $3930: $28 $08

    ld c, l                                       ; $3932: $4d

Call_000_3933:
Jump_000_3933:
    ld b, h                                       ; $3933: $44
    ld hl, $5779                                  ; $3934: $21 $79 $57
    call Call_000_3a2b                            ; $3937: $cd $2b $3a

Call_000_393a:
jr_000_393a:
    pop hl                                        ; $393a: $e1
    pop de                                        ; $393b: $d1
    pop bc                                        ; $393c: $c1

Call_000_393d:
Jump_000_393d:
    ret                                           ; $393d: $c9


Call_000_393e:
Jump_000_393e:
    push bc                                       ; $393e: $c5

Jump_000_393f:
    push de                                       ; $393f: $d5
    push hl                                       ; $3940: $e5
    ld hl, $4f42                                  ; $3941: $21 $42 $4f
    ld e, a                                       ; $3944: $5f
    ld a, [$cddb]                                 ; $3945: $fa $db $cd

Call_000_3948:
    or a                                          ; $3948: $b7

Jump_000_3949:
    jr z, jr_000_395a                             ; $3949: $28 $0f

    ld bc, $ff01                                  ; $394b: $01 $01 $ff

Call_000_394e:
    call Call_000_3a2b                            ; $394e: $cd $2b $3a

Jump_000_3951:
    ldh a, [rIE]                                  ; $3951: $f0 $ff

Call_000_3953:
    and $04                                       ; $3953: $e6 $04
    jr nz, jr_000_395a                            ; $3955: $20 $03

    call Call_000_3a66                            ; $3957: $cd $66 $3a

jr_000_395a:
    pop hl                                        ; $395a: $e1
    pop de                                        ; $395b: $d1
    pop bc                                        ; $395c: $c1
    ret                                           ; $395d: $c9


Call_000_395e:
Jump_000_395e:
    push bc                                       ; $395e: $c5
    push de                                       ; $395f: $d5
    push hl                                       ; $3960: $e5

Jump_000_3961:
    ld e, a                                       ; $3961: $5f
    ld a, [$cdda]                                 ; $3962: $fa $da $cd

Call_000_3965:
    or a                                          ; $3965: $b7

Call_000_3966:
    jr z, jr_000_3987                             ; $3966: $28 $1f

    ld hl, $5767                                  ; $3968: $21 $67 $57
    call Call_000_3a2b                            ; $396b: $cd $2b $3a
    or a                                          ; $396e: $b7

Jump_000_396f:
    jr z, jr_000_397d                             ; $396f: $28 $0c

    ld a, [$cc11]                                 ; $3971: $fa $11 $cc
    cp e                                          ; $3974: $bb
    jr z, jr_000_3987                             ; $3975: $28 $10

    ld hl, $57ae                                  ; $3977: $21 $ae $57
    call Call_000_3a2b                            ; $397a: $cd $2b $3a

Jump_000_397d:
jr_000_397d:
    ld a, e                                       ; $397d: $7b
    ld [$cc11], a                                 ; $397e: $ea $11 $cc

Call_000_3981:
Jump_000_3981:
    ld hl, $5710                                  ; $3981: $21 $10 $57

Call_000_3984:
    call Call_000_3a2b                            ; $3984: $cd $2b $3a

Jump_000_3987:
jr_000_3987:
    pop hl                                        ; $3987: $e1

Call_000_3988:
    pop de                                        ; $3988: $d1
    pop bc                                        ; $3989: $c1
    ret                                           ; $398a: $c9


Call_000_398b:
Jump_000_398b:
    push bc                                       ; $398b: $c5

Call_000_398c:
Jump_000_398c:
    push de                                       ; $398c: $d5
    push hl                                       ; $398d: $e5
    ld a, [$cdda]                                 ; $398e: $fa $da $cd
    or a                                          ; $3991: $b7
    jr z, jr_000_39a8                             ; $3992: $28 $14

Jump_000_3994:
    ld hl, $5767                                  ; $3994: $21 $67 $57

Jump_000_3997:
    call Call_000_3a2b                            ; $3997: $cd $2b $3a

Call_000_399a:
    or a                                          ; $399a: $b7
    jr z, jr_000_39a8                             ; $399b: $28 $0b

Jump_000_399d:
    ld a, $ff                                     ; $399d: $3e $ff

Jump_000_399f:
    ld [$cc11], a                                 ; $399f: $ea $11 $cc
    ld hl, $57ae                                  ; $39a2: $21 $ae $57
    call Call_000_3a2b                            ; $39a5: $cd $2b $3a

jr_000_39a8:
    pop hl                                        ; $39a8: $e1
    pop de                                        ; $39a9: $d1

Jump_000_39aa:
    pop bc                                        ; $39aa: $c1
    ret                                           ; $39ab: $c9


Jump_000_39ac:
    push af                                       ; $39ac: $f5
    push hl                                       ; $39ad: $e5
    ldh a, [rSVBK]                                ; $39ae: $f0 $70
    push af                                       ; $39b0: $f5
    ld a, $03                                     ; $39b1: $3e $03
    ldh [rSVBK], a                                ; $39b3: $e0 $70

Call_000_39b5:
    ld hl, $ff8e                                  ; $39b5: $21 $8e $ff

Call_000_39b8:
Jump_000_39b8:
    dec [hl]                                      ; $39b8: $35

Jump_000_39b9:
    jr nz, jr_000_39c9                            ; $39b9: $20 $0e

    ld a, [$df74]                                 ; $39bb: $fa $74 $df
    bit 6, a                                      ; $39be: $cb $77

Jump_000_39c0:
    jr z, jr_000_39c5                             ; $39c0: $28 $03

    call Call_000_3a1c                            ; $39c2: $cd $1c $3a

Call_000_39c5:
Jump_000_39c5:
jr_000_39c5:
    ld a, $03                                     ; $39c5: $3e $03

Jump_000_39c7:
    ldh [$8e], a                                  ; $39c7: $e0 $8e

jr_000_39c9:
    ld hl, $ff8f                                  ; $39c9: $21 $8f $ff
    dec [hl]                                      ; $39cc: $35
    jr nz, jr_000_39fb                            ; $39cd: $20 $2c

    ld a, [$df74]                                 ; $39cf: $fa $74 $df

Jump_000_39d2:
    bit 6, a                                      ; $39d2: $cb $77
    jr z, jr_000_39db                             ; $39d4: $28 $05

    call Call_000_3a22                            ; $39d6: $cd $22 $3a
    jr jr_000_39ee                                ; $39d9: $18 $13

Jump_000_39db:
jr_000_39db:
    ld hl, $ffff                                  ; $39db: $21 $ff $ff

Call_000_39de:
    res 2, [hl]                                   ; $39de: $cb $96

Jump_000_39e0:
    call Call_000_3a22                            ; $39e0: $cd $22 $3a

Jump_000_39e3:
    ld a, [$df74]                                 ; $39e3: $fa $74 $df
    bit 6, a                                      ; $39e6: $cb $77
    jr z, jr_000_39ee                             ; $39e8: $28 $04

    ld a, $03                                     ; $39ea: $3e $03

Call_000_39ec:
    ldh [$8e], a                                  ; $39ec: $e0 $8e

jr_000_39ee:
    ld hl, $ff8f                                  ; $39ee: $21 $8f $ff
    ld a, $0d                                     ; $39f1: $3e $0d
    add [hl]                                      ; $39f3: $86

Jump_000_39f4:
    cp $0e                                        ; $39f4: $fe $0e
    jr c, jr_000_39fa                             ; $39f6: $38 $02

    ld a, $01                                     ; $39f8: $3e $01

jr_000_39fa:
    ld [hl], a                                    ; $39fa: $77

jr_000_39fb:
    ld hl, $ffff                                  ; $39fb: $21 $ff $ff
    set 2, [hl]                                   ; $39fe: $cb $d6

Call_000_3a00:
Jump_000_3a00:
    ldh a, [rTIMA]                                ; $3a00: $f0 $05
    cp $d6                                        ; $3a02: $fe $d6
    jr nc, jr_000_3a0e                            ; $3a04: $30 $08

    add $52                                       ; $3a06: $c6 $52
    jr nc, jr_000_3a0c                            ; $3a08: $30 $02

    ld a, $fe                                     ; $3a0a: $3e $fe

Call_000_3a0c:
Jump_000_3a0c:
jr_000_3a0c:
    ldh [rTIMA], a                                ; $3a0c: $e0 $05

jr_000_3a0e:
    ld a, $d6                                     ; $3a0e: $3e $d6
    ldh [rTMA], a                                 ; $3a10: $e0 $06
    ld a, $ff                                     ; $3a12: $3e $ff
    ldh [rTAC], a                                 ; $3a14: $e0 $07

Jump_000_3a16:
    pop af                                        ; $3a16: $f1

Jump_000_3a17:
    ldh [rSVBK], a                                ; $3a17: $e0 $70

Call_000_3a19:
    pop hl                                        ; $3a19: $e1
    pop af                                        ; $3a1a: $f1
    reti                                          ; $3a1b: $d9


Call_000_3a1c:
Jump_000_3a1c:
    ld hl, $3ad0                                  ; $3a1c: $21 $d0 $3a

Jump_000_3a1f:
    jp Jump_000_3a2b                              ; $3a1f: $c3 $2b $3a


Call_000_3a22:
    call Call_000_3893                            ; $3a22: $cd $93 $38
    ld hl, $4356                                  ; $3a25: $21 $56 $43

Jump_000_3a28:
    jp Jump_000_3a2b                              ; $3a28: $c3 $2b $3a


Call_000_3a2b:
Jump_000_3a2b:
    ldh a, [$8c]                                  ; $3a2b: $f0 $8c
    or a                                          ; $3a2d: $b7
    ret nz                                        ; $3a2e: $c0

Call_000_3a2f:
    ldh a, [rSVBK]                                ; $3a2f: $f0 $70
    push af                                       ; $3a31: $f5

Call_000_3a32:
Jump_000_3a32:
    ld a, $03                                     ; $3a32: $3e $03
    ldh [rSVBK], a                                ; $3a34: $e0 $70
    push bc                                       ; $3a36: $c5
    push de                                       ; $3a37: $d5
    push hl                                       ; $3a38: $e5

Call_000_3a39:
Jump_000_3a39:
    ld a, [$4000]                                 ; $3a39: $fa $00 $40

Call_000_3a3c:
    push af                                       ; $3a3c: $f5
    ld a, $0f                                     ; $3a3d: $3e $0f
    ldh [$8a], a                                  ; $3a3f: $e0 $8a
    ldh a, [$8c]                                  ; $3a41: $f0 $8c
    inc a                                         ; $3a43: $3c
    ldh [$8c], a                                  ; $3a44: $e0 $8c
    ld a, $0f                                     ; $3a46: $3e $0f

Jump_000_3a48:
    ld [$2000], a                                 ; $3a48: $ea $00 $20
    ld a, e                                       ; $3a4b: $7b
    ld de, $3a51                                  ; $3a4c: $11 $51 $3a
    push de                                       ; $3a4f: $d5

Call_000_3a50:
    jp hl                                         ; $3a50: $e9


    ldh [$8d], a                                  ; $3a51: $e0 $8d

Call_000_3a53:
Jump_000_3a53:
    pop af                                        ; $3a53: $f1
    ldh [$8a], a                                  ; $3a54: $e0 $8a
    ld [$2000], a                                 ; $3a56: $ea $00 $20
    ld hl, $ff8c                                  ; $3a59: $21 $8c $ff

Call_000_3a5c:
    dec [hl]                                      ; $3a5c: $35
    pop hl                                        ; $3a5d: $e1
    pop de                                        ; $3a5e: $d1
    pop bc                                        ; $3a5f: $c1
    pop af                                        ; $3a60: $f1
    ldh [rSVBK], a                                ; $3a61: $e0 $70

Call_000_3a63:
    ldh a, [$8d]                                  ; $3a63: $f0 $8d
    ret                                           ; $3a65: $c9


Call_000_3a66:
Jump_000_3a66:
    ld c, $05                                     ; $3a66: $0e $05
    ld a, $d6                                     ; $3a68: $3e $d6
    ld [c], a                                     ; $3a6a: $e2
    inc c                                         ; $3a6b: $0c
    ld [c], a                                     ; $3a6c: $e2
    inc c                                         ; $3a6d: $0c
    ld a, $ff                                     ; $3a6e: $3e $ff
    ld [c], a                                     ; $3a70: $e2

Call_000_3a71:
    ldh a, [rIE]                                  ; $3a71: $f0 $ff

Jump_000_3a73:
    or $04                                        ; $3a73: $f6 $04
    ldh [rIE], a                                  ; $3a75: $e0 $ff
    ret                                           ; $3a77: $c9


Call_000_3a78:
    rst $38                                       ; $3a78: $ff
    rst $38                                       ; $3a79: $ff
    rst $38                                       ; $3a7a: $ff
    rst $38                                       ; $3a7b: $ff
    rst $38                                       ; $3a7c: $ff
    rst $38                                       ; $3a7d: $ff

Call_000_3a7e:
Jump_000_3a7e:
    rst $38                                       ; $3a7e: $ff
    rst $38                                       ; $3a7f: $ff

Call_000_3a80:
Jump_000_3a80:
    rst $38                                       ; $3a80: $ff
    rst $38                                       ; $3a81: $ff
    rst $38                                       ; $3a82: $ff
    rst $38                                       ; $3a83: $ff
    rst $38                                       ; $3a84: $ff
    rst $38                                       ; $3a85: $ff
    rst $38                                       ; $3a86: $ff
    rst $38                                       ; $3a87: $ff
    rst $38                                       ; $3a88: $ff
    rst $38                                       ; $3a89: $ff

Jump_000_3a8a:
    rst $38                                       ; $3a8a: $ff
    rst $38                                       ; $3a8b: $ff
    rst $38                                       ; $3a8c: $ff
    rst $38                                       ; $3a8d: $ff
    rst $38                                       ; $3a8e: $ff

Call_000_3a8f:
Jump_000_3a8f:
    rst $38                                       ; $3a8f: $ff
    rst $38                                       ; $3a90: $ff
    rst $38                                       ; $3a91: $ff
    rst $38                                       ; $3a92: $ff
    rst $38                                       ; $3a93: $ff

Jump_000_3a94:
    rst $38                                       ; $3a94: $ff
    rst $38                                       ; $3a95: $ff
    rst $38                                       ; $3a96: $ff
    rst $38                                       ; $3a97: $ff

Jump_000_3a98:
    rst $38                                       ; $3a98: $ff
    rst $38                                       ; $3a99: $ff
    rst $38                                       ; $3a9a: $ff
    rst $38                                       ; $3a9b: $ff
    rst $38                                       ; $3a9c: $ff

Call_000_3a9d:
    rst $38                                       ; $3a9d: $ff
    rst $38                                       ; $3a9e: $ff

Call_000_3a9f:
    rst $38                                       ; $3a9f: $ff
    rst $38                                       ; $3aa0: $ff
    rst $38                                       ; $3aa1: $ff
    rst $38                                       ; $3aa2: $ff

Call_000_3aa3:
    rst $38                                       ; $3aa3: $ff

Call_000_3aa4:
    rst $38                                       ; $3aa4: $ff
    rst $38                                       ; $3aa5: $ff
    rst $38                                       ; $3aa6: $ff
    rst $38                                       ; $3aa7: $ff

Call_000_3aa8:
Jump_000_3aa8:
    rst $38                                       ; $3aa8: $ff

Jump_000_3aa9:
    rst $38                                       ; $3aa9: $ff
    rst $38                                       ; $3aaa: $ff
    rst $38                                       ; $3aab: $ff
    rst $38                                       ; $3aac: $ff
    rst $38                                       ; $3aad: $ff
    rst $38                                       ; $3aae: $ff

Jump_000_3aaf:
    rst $38                                       ; $3aaf: $ff

Call_000_3ab0:
Jump_000_3ab0:
    push af                                       ; $3ab0: $f5

Call_000_3ab1:
Jump_000_3ab1:
    ld a, [$df01]                                 ; $3ab1: $fa $01 $df

Call_000_3ab4:
Jump_000_3ab4:
    ld c, a                                       ; $3ab4: $4f

Call_000_3ab5:
    pop af                                        ; $3ab5: $f1
    ld [c], a                                     ; $3ab6: $e2
    ld [$2100], a                                 ; $3ab7: $ea $00 $21
    ret                                           ; $3aba: $c9


Call_000_3abb:
    ldh a, [rNR51]                                ; $3abb: $f0 $25

Call_000_3abd:
Jump_000_3abd:
    and $bb                                       ; $3abd: $e6 $bb
    ldh [rNR51], a                                ; $3abf: $e0 $25

Jump_000_3ac1:
    xor a                                         ; $3ac1: $af
    ldh [rNR30], a                                ; $3ac2: $e0 $1a

Call_000_3ac4:
    ret                                           ; $3ac4: $c9


Call_000_3ac5:
Jump_000_3ac5:
    ld a, [$df11]                                 ; $3ac5: $fa $11 $df
    ldh [rNR51], a                                ; $3ac8: $e0 $25

Jump_000_3aca:
    ret                                           ; $3aca: $c9


Jump_000_3acb:
jr_000_3acb:
    dec a                                         ; $3acb: $3d
    ld [$df7d], a                                 ; $3acc: $ea $7d $df

Jump_000_3acf:
    ret                                           ; $3acf: $c9


    ld a, [$df74]                                 ; $3ad0: $fa $74 $df

Jump_000_3ad3:
    bit 6, a                                      ; $3ad3: $cb $77
    ret z                                         ; $3ad5: $c8

    ld a, [$df08]                                 ; $3ad6: $fa $08 $df
    ldh [rTIMA], a                                ; $3ad9: $e0 $05
    ldh [rTMA], a                                 ; $3adb: $e0 $06
    ld a, [$df7d]                                 ; $3add: $fa $7d $df
    and a                                         ; $3ae0: $a7
    jr nz, jr_000_3acb                            ; $3ae1: $20 $e8

Call_000_3ae3:
    ld hl, $df78                                  ; $3ae3: $21 $78 $df
    ld a, [hl]                                    ; $3ae6: $7e
    sub $01                                       ; $3ae7: $d6 $01
    ld [hl+], a                                   ; $3ae9: $22
    ld c, a                                       ; $3aea: $4f

Jump_000_3aeb:
    ld a, [hl]                                    ; $3aeb: $7e
    sbc $00                                       ; $3aec: $de $00
    ld [hl], a                                    ; $3aee: $77

Call_000_3aef:
    or c                                          ; $3aef: $b1

Jump_000_3af0:
    jr z, jr_000_3b5e                             ; $3af0: $28 $6c

    ld a, [$df75]                                 ; $3af2: $fa $75 $df

Jump_000_3af5:
    call Call_000_3ab0                            ; $3af5: $cd $b0 $3a
    ld hl, $df76                                  ; $3af8: $21 $76 $df

Call_000_3afb:
    ld a, [hl+]                                   ; $3afb: $2a

Call_000_3afc:
    ld h, [hl]                                    ; $3afc: $66
    ld l, a                                       ; $3afd: $6f
    ld c, $30                                     ; $3afe: $0e $30

Call_000_3b00:
    call Call_000_3abb                            ; $3b00: $cd $bb $3a

Call_000_3b03:
    ld a, [hl+]                                   ; $3b03: $2a

Call_000_3b04:
    ld b, a                                       ; $3b04: $47

Call_000_3b05:
Jump_000_3b05:
    and $f0                                       ; $3b05: $e6 $f0

Call_000_3b07:
Jump_000_3b07:
    cp $70                                        ; $3b07: $fe $70
    jr z, jr_000_3b6c                             ; $3b09: $28 $61

Call_000_3b0b:
    ld a, b                                       ; $3b0b: $78
    ld [c], a                                     ; $3b0c: $e2
    inc c                                         ; $3b0d: $0c

Jump_000_3b0e:
    ld a, [hl+]                                   ; $3b0e: $2a
    ld [c], a                                     ; $3b0f: $e2

Call_000_3b10:
    inc c                                         ; $3b10: $0c

Call_000_3b11:
    ld a, [hl+]                                   ; $3b11: $2a
    ld [c], a                                     ; $3b12: $e2
    inc c                                         ; $3b13: $0c

Call_000_3b14:
    ld a, [hl+]                                   ; $3b14: $2a
    ld [c], a                                     ; $3b15: $e2
    inc c                                         ; $3b16: $0c

Call_000_3b17:
Jump_000_3b17:
    ld a, [hl+]                                   ; $3b17: $2a

Jump_000_3b18:
    ld [c], a                                     ; $3b18: $e2

Jump_000_3b19:
    inc c                                         ; $3b19: $0c

Call_000_3b1a:
    ld a, [hl+]                                   ; $3b1a: $2a

Jump_000_3b1b:
    ld [c], a                                     ; $3b1b: $e2

Jump_000_3b1c:
    inc c                                         ; $3b1c: $0c

Call_000_3b1d:
    ld a, [hl+]                                   ; $3b1d: $2a

Jump_000_3b1e:
    ld [c], a                                     ; $3b1e: $e2

Call_000_3b1f:
    inc c                                         ; $3b1f: $0c

Call_000_3b20:
    ld a, [hl+]                                   ; $3b20: $2a

Call_000_3b21:
    ld [c], a                                     ; $3b21: $e2
    inc c                                         ; $3b22: $0c
    ld a, [hl+]                                   ; $3b23: $2a
    ld [c], a                                     ; $3b24: $e2

Jump_000_3b25:
    inc c                                         ; $3b25: $0c

Call_000_3b26:
    ld a, [hl+]                                   ; $3b26: $2a
    ld [c], a                                     ; $3b27: $e2
    inc c                                         ; $3b28: $0c
    ld a, [hl+]                                   ; $3b29: $2a
    ld [c], a                                     ; $3b2a: $e2

Call_000_3b2b:
    inc c                                         ; $3b2b: $0c

Call_000_3b2c:
    ld a, [hl+]                                   ; $3b2c: $2a
    ld [c], a                                     ; $3b2d: $e2

Jump_000_3b2e:
    inc c                                         ; $3b2e: $0c
    ld a, [hl+]                                   ; $3b2f: $2a
    ld [c], a                                     ; $3b30: $e2
    inc c                                         ; $3b31: $0c
    ld a, [hl+]                                   ; $3b32: $2a

Jump_000_3b33:
    ld [c], a                                     ; $3b33: $e2
    inc c                                         ; $3b34: $0c
    ld a, [hl+]                                   ; $3b35: $2a

Call_000_3b36:
    ld [c], a                                     ; $3b36: $e2
    inc c                                         ; $3b37: $0c
    ld a, [hl+]                                   ; $3b38: $2a

Call_000_3b39:
    ld [c], a                                     ; $3b39: $e2

Jump_000_3b3a:
jr_000_3b3a:
    ld a, $80                                     ; $3b3a: $3e $80
    ldh [rNR30], a                                ; $3b3c: $e0 $1a
    ld a, [$df14]                                 ; $3b3e: $fa $14 $df

Jump_000_3b41:
    or $80                                        ; $3b41: $f6 $80
    ldh [rNR34], a                                ; $3b43: $e0 $1e
    and $7f                                       ; $3b45: $e6 $7f
    ldh [rNR34], a                                ; $3b47: $e0 $1e

Call_000_3b49:
    call Call_000_3ac5                            ; $3b49: $cd $c5 $3a
    ld a, l                                       ; $3b4c: $7d
    ld b, h                                       ; $3b4d: $44
    ld hl, $df76                                  ; $3b4e: $21 $76 $df

Jump_000_3b51:
    ld [hl+], a                                   ; $3b51: $22

Jump_000_3b52:
    ld [hl], b                                    ; $3b52: $70
    bit 7, b                                      ; $3b53: $cb $78

Call_000_3b55:
    jr z, jr_000_3b5d                             ; $3b55: $28 $06

    ld [hl], $40                                  ; $3b57: $36 $40
    ld hl, $df75                                  ; $3b59: $21 $75 $df
    inc [hl]                                      ; $3b5c: $34

jr_000_3b5d:
    ret                                           ; $3b5d: $c9


Jump_000_3b5e:
jr_000_3b5e:
    call Call_000_3b8f                            ; $3b5e: $cd $8f $3b

Call_000_3b61:
Jump_000_3b61:
    ld a, [$df7b]                                 ; $3b61: $fa $7b $df
    ld l, a                                       ; $3b64: $6f
    ld a, [$df7c]                                 ; $3b65: $fa $7c $df
    ld h, a                                       ; $3b68: $67
    or l                                          ; $3b69: $b5
    ret z                                         ; $3b6a: $c8

Jump_000_3b6b:
    jp hl                                         ; $3b6b: $e9


jr_000_3b6c:
    ld a, [hl+]                                   ; $3b6c: $2a
    ld [$df7d], a                                 ; $3b6d: $ea $7d $df
    ld bc, $000e                                  ; $3b70: $01 $0e $00
    add hl, bc                                    ; $3b73: $09
    ld c, l                                       ; $3b74: $4d

Call_000_3b75:
    ld b, h                                       ; $3b75: $44
    ld hl, $ff30                                  ; $3b76: $21 $30 $ff
    ld a, $88                                     ; $3b79: $3e $88

Jump_000_3b7b:
    ld [hl+], a                                   ; $3b7b: $22

Jump_000_3b7c:
    ld [hl+], a                                   ; $3b7c: $22
    ld [hl+], a                                   ; $3b7d: $22
    ld [hl+], a                                   ; $3b7e: $22

Call_000_3b7f:
    ld [hl+], a                                   ; $3b7f: $22

Jump_000_3b80:
    ld [hl+], a                                   ; $3b80: $22
    ld [hl+], a                                   ; $3b81: $22

Call_000_3b82:
    ld [hl+], a                                   ; $3b82: $22

Jump_000_3b83:
    ld [hl+], a                                   ; $3b83: $22
    ld [hl+], a                                   ; $3b84: $22
    ld [hl+], a                                   ; $3b85: $22
    ld [hl+], a                                   ; $3b86: $22
    ld [hl+], a                                   ; $3b87: $22
    ld [hl+], a                                   ; $3b88: $22
    ld [hl+], a                                   ; $3b89: $22
    ld [hl], a                                    ; $3b8a: $77

Jump_000_3b8b:
    ld l, c                                       ; $3b8b: $69
    ld h, b                                       ; $3b8c: $60
    jr jr_000_3b3a                                ; $3b8d: $18 $ab

Call_000_3b8f:
Jump_000_3b8f:
    ld hl, $df74                                  ; $3b8f: $21 $74 $df

Call_000_3b92:
    res 6, [hl]                                   ; $3b92: $cb $b6

Call_000_3b94:
    xor a                                         ; $3b94: $af
    ld [$df9f], a                                 ; $3b95: $ea $9f $df

Jump_000_3b98:
    ldh a, [rIE]                                  ; $3b98: $f0 $ff

Jump_000_3b9a:
    and $1b                                       ; $3b9a: $e6 $1b
    ldh [rIE], a                                  ; $3b9c: $e0 $ff
    ldh a, [rIF]                                  ; $3b9e: $f0 $0f
    and $1b                                       ; $3ba0: $e6 $1b
    ldh [rIF], a                                  ; $3ba2: $e0 $0f
    call Call_000_3abb                            ; $3ba4: $cd $bb $3a
    ldh [rTAC], a                                 ; $3ba7: $e0 $07

Call_000_3ba9:
Jump_000_3ba9:
    ret                                           ; $3ba9: $c9


Call_000_3baa:
    push bc                                       ; $3baa: $c5
    ld a, [$df75]                                 ; $3bab: $fa $75 $df

Jump_000_3bae:
    call Call_000_3ab0                            ; $3bae: $cd $b0 $3a
    call Call_000_3c3a                            ; $3bb1: $cd $3a $3c
    ld a, [$df00]                                 ; $3bb4: $fa $00 $df
    call Call_000_3ab0                            ; $3bb7: $cd $b0 $3a
    pop bc                                        ; $3bba: $c1

Jump_000_3bbb:
    ret                                           ; $3bbb: $c9


Call_000_3bbc:
    push bc                                       ; $3bbc: $c5

Call_000_3bbd:
Jump_000_3bbd:
    ld a, [$df75]                                 ; $3bbd: $fa $75 $df
    call Call_000_3ab0                            ; $3bc0: $cd $b0 $3a
    ld a, [hl]                                    ; $3bc3: $7e
    and $f0                                       ; $3bc4: $e6 $f0
    cp $70                                        ; $3bc6: $fe $70
    jr nz, jr_000_3be5                            ; $3bc8: $20 $1b

    inc hl                                        ; $3bca: $23
    ld a, [hl+]                                   ; $3bcb: $2a
    ld [$df7d], a                                 ; $3bcc: $ea $7d $df

Jump_000_3bcf:
    call Call_000_3abb                            ; $3bcf: $cd $bb $3a
    ld a, $88                                     ; $3bd2: $3e $88

Call_000_3bd4:
    ld c, $10                                     ; $3bd4: $0e $10
    push hl                                       ; $3bd6: $e5

Jump_000_3bd7:
    ld hl, $ff30                                  ; $3bd7: $21 $30 $ff

jr_000_3bda:
    ld [hl+], a                                   ; $3bda: $22

Jump_000_3bdb:
    dec c                                         ; $3bdb: $0d

Call_000_3bdc:
    jr nz, jr_000_3bda                            ; $3bdc: $20 $fc

    ld bc, $000e                                  ; $3bde: $01 $0e $00
    pop hl                                        ; $3be1: $e1
    add hl, bc                                    ; $3be2: $09
    jr jr_000_3bec                                ; $3be3: $18 $07

jr_000_3be5:
    xor a                                         ; $3be5: $af

Jump_000_3be6:
    ld [$df7d], a                                 ; $3be6: $ea $7d $df
    call Call_000_3c3a                            ; $3be9: $cd $3a $3c

jr_000_3bec:
    ld a, [$df00]                                 ; $3bec: $fa $00 $df

Jump_000_3bef:
    call Call_000_3ab0                            ; $3bef: $cd $b0 $3a
    pop bc                                        ; $3bf2: $c1
    ret                                           ; $3bf3: $c9


Call_000_3bf4:
Jump_000_3bf4:
    push bc                                       ; $3bf4: $c5
    ld a, [$df75]                                 ; $3bf5: $fa $75 $df

Call_000_3bf8:
    call Call_000_3ab0                            ; $3bf8: $cd $b0 $3a

Jump_000_3bfb:
    ld a, [hl]                                    ; $3bfb: $7e

Jump_000_3bfc:
    and $f0                                       ; $3bfc: $e6 $f0

Call_000_3bfe:
    cp $70                                        ; $3bfe: $fe $70

Call_000_3c00:
Jump_000_3c00:
    jr nz, jr_000_3c21                            ; $3c00: $20 $1f

Call_000_3c02:
Jump_000_3c02:
    inc hl                                        ; $3c02: $23

Call_000_3c03:
    ld a, [hl+]                                   ; $3c03: $2a

Call_000_3c04:
Jump_000_3c04:
    ld [$df7d], a                                 ; $3c04: $ea $7d $df

Jump_000_3c07:
    call Call_000_3abb                            ; $3c07: $cd $bb $3a

Call_000_3c0a:
    ld a, $88                                     ; $3c0a: $3e $88
    ld c, $10                                     ; $3c0c: $0e $10
    push hl                                       ; $3c0e: $e5

Call_000_3c0f:
Jump_000_3c0f:
    ld hl, $ff30                                  ; $3c0f: $21 $30 $ff

jr_000_3c12:
    ld [hl+], a                                   ; $3c12: $22
    dec c                                         ; $3c13: $0d

Jump_000_3c14:
    jr nz, jr_000_3c12                            ; $3c14: $20 $fc

    ld a, $80                                     ; $3c16: $3e $80
    ldh [rNR30], a                                ; $3c18: $e0 $1a
    ld bc, $000e                                  ; $3c1a: $01 $0e $00

Jump_000_3c1d:
    pop hl                                        ; $3c1d: $e1
    add hl, bc                                    ; $3c1e: $09
    jr jr_000_3c24                                ; $3c1f: $18 $03

jr_000_3c21:
    call Call_000_3c3a                            ; $3c21: $cd $3a $3c

Call_000_3c24:
jr_000_3c24:
    ld a, [$df14]                                 ; $3c24: $fa $14 $df
    or $80                                        ; $3c27: $f6 $80
    ldh [rNR34], a                                ; $3c29: $e0 $1e
    and $7f                                       ; $3c2b: $e6 $7f
    ldh [rNR34], a                                ; $3c2d: $e0 $1e

Call_000_3c2f:
Jump_000_3c2f:
    call Call_000_3ac5                            ; $3c2f: $cd $c5 $3a
    ld a, [$df00]                                 ; $3c32: $fa $00 $df

Jump_000_3c35:
    call Call_000_3ab0                            ; $3c35: $cd $b0 $3a

Jump_000_3c38:
    pop bc                                        ; $3c38: $c1
    ret                                           ; $3c39: $c9


Call_000_3c3a:
    ld c, $30                                     ; $3c3a: $0e $30

Jump_000_3c3c:
    call Call_000_3abb                            ; $3c3c: $cd $bb $3a

Jump_000_3c3f:
    ld a, [hl+]                                   ; $3c3f: $2a

Jump_000_3c40:
    ld [c], a                                     ; $3c40: $e2
    inc c                                         ; $3c41: $0c
    ld a, [hl+]                                   ; $3c42: $2a
    ld [c], a                                     ; $3c43: $e2
    inc c                                         ; $3c44: $0c

Call_000_3c45:
Jump_000_3c45:
    ld a, [hl+]                                   ; $3c45: $2a
    ld [c], a                                     ; $3c46: $e2
    inc c                                         ; $3c47: $0c

Call_000_3c48:
Jump_000_3c48:
    ld a, [hl+]                                   ; $3c48: $2a
    ld [c], a                                     ; $3c49: $e2
    inc c                                         ; $3c4a: $0c
    ld a, [hl+]                                   ; $3c4b: $2a
    ld [c], a                                     ; $3c4c: $e2

Jump_000_3c4d:
    inc c                                         ; $3c4d: $0c

Jump_000_3c4e:
    ld a, [hl+]                                   ; $3c4e: $2a
    ld [c], a                                     ; $3c4f: $e2

Jump_000_3c50:
    inc c                                         ; $3c50: $0c
    ld a, [hl+]                                   ; $3c51: $2a
    ld [c], a                                     ; $3c52: $e2
    inc c                                         ; $3c53: $0c
    ld a, [hl+]                                   ; $3c54: $2a
    ld [c], a                                     ; $3c55: $e2

Jump_000_3c56:
    inc c                                         ; $3c56: $0c
    ld a, [hl+]                                   ; $3c57: $2a
    ld [c], a                                     ; $3c58: $e2
    inc c                                         ; $3c59: $0c
    ld a, [hl+]                                   ; $3c5a: $2a
    ld [c], a                                     ; $3c5b: $e2

Call_000_3c5c:
    inc c                                         ; $3c5c: $0c

Jump_000_3c5d:
    ld a, [hl+]                                   ; $3c5d: $2a
    ld [c], a                                     ; $3c5e: $e2
    inc c                                         ; $3c5f: $0c
    ld a, [hl+]                                   ; $3c60: $2a
    ld [c], a                                     ; $3c61: $e2
    inc c                                         ; $3c62: $0c
    ld a, [hl+]                                   ; $3c63: $2a
    ld [c], a                                     ; $3c64: $e2
    inc c                                         ; $3c65: $0c
    ld a, [hl+]                                   ; $3c66: $2a
    ld [c], a                                     ; $3c67: $e2
    inc c                                         ; $3c68: $0c
    ld a, [hl+]                                   ; $3c69: $2a
    ld [c], a                                     ; $3c6a: $e2
    inc c                                         ; $3c6b: $0c
    ld a, [hl+]                                   ; $3c6c: $2a
    ld [c], a                                     ; $3c6d: $e2
    ld a, $80                                     ; $3c6e: $3e $80

Jump_000_3c70:
    ldh [rNR30], a                                ; $3c70: $e0 $1a
    ret                                           ; $3c72: $c9


Call_000_3c73:
    call Call_000_3c7d                            ; $3c73: $cd $7d $3c
    ld a, [$df00]                                 ; $3c76: $fa $00 $df
    ld [$2100], a                                 ; $3c79: $ea $00 $21
    ret                                           ; $3c7c: $c9


Call_000_3c7d:
Jump_000_3c7d:
    ld a, [$df75]                                 ; $3c7d: $fa $75 $df

Jump_000_3c80:
    ld [$2100], a                                 ; $3c80: $ea $00 $21
    ld e, $00                                     ; $3c83: $1e $00

Call_000_3c85:
    ld hl, $df76                                  ; $3c85: $21 $76 $df
    ld a, [hl+]                                   ; $3c88: $2a
    ld h, [hl]                                    ; $3c89: $66
    ld l, a                                       ; $3c8a: $6f

Call_000_3c8b:
jr_000_3c8b:
    ld a, [hl]                                    ; $3c8b: $7e
    ld d, a                                       ; $3c8c: $57
    and $f0                                       ; $3c8d: $e6 $f0

Jump_000_3c8f:
    cp $70                                        ; $3c8f: $fe $70
    ld a, d                                       ; $3c91: $7a
    jr z, jr_000_3ce8                             ; $3c92: $28 $54

    ld d, $20                                     ; $3c94: $16 $20

jr_000_3c96:
    bit 0, d                                      ; $3c96: $cb $42

Call_000_3c98:
    jr nz, jr_000_3c9e                            ; $3c98: $20 $04

    nop                                           ; $3c9a: $00

Jump_000_3c9b:
    nop                                           ; $3c9b: $00
    jr jr_000_3ca1                                ; $3c9c: $18 $03

Call_000_3c9e:
jr_000_3c9e:
    inc hl                                        ; $3c9e: $23

Jump_000_3c9f:
    swap a                                        ; $3c9f: $cb $37

jr_000_3ca1:
    and $f0                                       ; $3ca1: $e6 $f0
    cp e                                          ; $3ca3: $bb
    ld e, a                                       ; $3ca4: $5f
    jr z, jr_000_3cb3                             ; $3ca5: $28 $0c

Call_000_3ca7:
Jump_000_3ca7:
    ldh [rNR12], a                                ; $3ca7: $e0 $12
    ldh [rNR22], a                                ; $3ca9: $e0 $17
    ld a, $87                                     ; $3cab: $3e $87
    ldh [rNR14], a                                ; $3cad: $e0 $14

Jump_000_3caf:
    ldh [rNR24], a                                ; $3caf: $e0 $19

Jump_000_3cb1:
    jr jr_000_3cbf                                ; $3cb1: $18 $0c

Call_000_3cb3:
jr_000_3cb3:
    nop                                           ; $3cb3: $00
    nop                                           ; $3cb4: $00
    nop                                           ; $3cb5: $00
    nop                                           ; $3cb6: $00
    nop                                           ; $3cb7: $00

Jump_000_3cb8:
    nop                                           ; $3cb8: $00
    nop                                           ; $3cb9: $00
    nop                                           ; $3cba: $00
    nop                                           ; $3cbb: $00

Jump_000_3cbc:
    nop                                           ; $3cbc: $00

Jump_000_3cbd:
    nop                                           ; $3cbd: $00

Jump_000_3cbe:
    nop                                           ; $3cbe: $00

Jump_000_3cbf:
jr_000_3cbf:
    ld a, $14                                     ; $3cbf: $3e $14

Jump_000_3cc1:
jr_000_3cc1:
    dec a                                         ; $3cc1: $3d
    jr nz, jr_000_3cc1                            ; $3cc2: $20 $fd

    dec d                                         ; $3cc4: $15
    ld a, [hl]                                    ; $3cc5: $7e
    jr nz, jr_000_3c96                            ; $3cc6: $20 $ce

Call_000_3cc8:
Jump_000_3cc8:
jr_000_3cc8:
    bit 7, h                                      ; $3cc8: $cb $7c
    jr z, jr_000_3cd8                             ; $3cca: $28 $0c

Call_000_3ccc:
    ld h, $40                                     ; $3ccc: $26 $40
    ld a, [$df75]                                 ; $3cce: $fa $75 $df

Jump_000_3cd1:
    inc a                                         ; $3cd1: $3c
    ld [$df75], a                                 ; $3cd2: $ea $75 $df

Call_000_3cd5:
    ld [$2100], a                                 ; $3cd5: $ea $00 $21

jr_000_3cd8:
    push bc                                       ; $3cd8: $c5
    call Call_000_3d32                            ; $3cd9: $cd $32 $3d

Call_000_3cdc:
Jump_000_3cdc:
    ld a, [$dffe]                                 ; $3cdc: $fa $fe $df
    and b                                         ; $3cdf: $a0

Jump_000_3ce0:
    pop bc                                        ; $3ce0: $c1
    ret nz                                        ; $3ce1: $c0

    dec bc                                        ; $3ce2: $0b
    ld a, b                                       ; $3ce3: $78

Call_000_3ce4:
    or c                                          ; $3ce4: $b1
    jr nz, jr_000_3c8b                            ; $3ce5: $20 $a4

Call_000_3ce7:
    ret                                           ; $3ce7: $c9


jr_000_3ce8:
    inc hl                                        ; $3ce8: $23

Jump_000_3ce9:
    ld a, [hl+]                                   ; $3ce9: $2a
    ld [$df7d], a                                 ; $3cea: $ea $7d $df
    push bc                                       ; $3ced: $c5
    ld bc, $000e                                  ; $3cee: $01 $0e $00
    add hl, bc                                    ; $3cf1: $09

Call_000_3cf2:
    pop bc                                        ; $3cf2: $c1

jr_000_3cf3:
    ld a, $77                                     ; $3cf3: $3e $77

Jump_000_3cf5:
    ld d, $20                                     ; $3cf5: $16 $20

jr_000_3cf7:
    bit 0, d                                      ; $3cf7: $cb $42
    jr nz, jr_000_3cfd                            ; $3cf9: $20 $02

Call_000_3cfb:
    jr jr_000_3cff                                ; $3cfb: $18 $02

Jump_000_3cfd:
jr_000_3cfd:
    swap a                                        ; $3cfd: $cb $37

Call_000_3cff:
jr_000_3cff:
    and $f0                                       ; $3cff: $e6 $f0

Jump_000_3d01:
    cp e                                          ; $3d01: $bb

Jump_000_3d02:
    ld e, a                                       ; $3d02: $5f

Jump_000_3d03:
    jr z, jr_000_3d11                             ; $3d03: $28 $0c

    ldh [rNR12], a                                ; $3d05: $e0 $12
    ldh [rNR22], a                                ; $3d07: $e0 $17

Call_000_3d09:
    ld a, $87                                     ; $3d09: $3e $87

Jump_000_3d0b:
    ldh [rNR14], a                                ; $3d0b: $e0 $14

Call_000_3d0d:
    ldh [rNR24], a                                ; $3d0d: $e0 $19

Call_000_3d0f:
    jr jr_000_3d1d                                ; $3d0f: $18 $0c

Call_000_3d11:
jr_000_3d11:
    nop                                           ; $3d11: $00

Jump_000_3d12:
    nop                                           ; $3d12: $00

Call_000_3d13:
Jump_000_3d13:
    nop                                           ; $3d13: $00
    nop                                           ; $3d14: $00
    nop                                           ; $3d15: $00
    nop                                           ; $3d16: $00
    nop                                           ; $3d17: $00

Jump_000_3d18:
    nop                                           ; $3d18: $00
    nop                                           ; $3d19: $00
    nop                                           ; $3d1a: $00
    nop                                           ; $3d1b: $00
    nop                                           ; $3d1c: $00

jr_000_3d1d:
    ld a, $14                                     ; $3d1d: $3e $14

Jump_000_3d1f:
jr_000_3d1f:
    dec a                                         ; $3d1f: $3d
    jr nz, jr_000_3d1f                            ; $3d20: $20 $fd

    dec d                                         ; $3d22: $15
    ld a, $77                                     ; $3d23: $3e $77
    jr nz, jr_000_3cf7                            ; $3d25: $20 $d0

    ld a, [$df7d]                                 ; $3d27: $fa $7d $df

Call_000_3d2a:
    dec a                                         ; $3d2a: $3d
    ld [$df7d], a                                 ; $3d2b: $ea $7d $df
    jr nz, jr_000_3cf3                            ; $3d2e: $20 $c3

    jr jr_000_3cc8                                ; $3d30: $18 $96

Call_000_3d32:
    ld c, $00                                     ; $3d32: $0e $00

Call_000_3d34:
    ld a, $10                                     ; $3d34: $3e $10
    ld [c], a                                     ; $3d36: $e2

Call_000_3d37:
    nop                                           ; $3d37: $00
    nop                                           ; $3d38: $00

Call_000_3d39:
    nop                                           ; $3d39: $00
    nop                                           ; $3d3a: $00

Jump_000_3d3b:
    nop                                           ; $3d3b: $00

Call_000_3d3c:
Jump_000_3d3c:
    ld a, [c]                                     ; $3d3c: $f2
    ld a, [c]                                     ; $3d3d: $f2

Jump_000_3d3e:
    ld a, [c]                                     ; $3d3e: $f2

Call_000_3d3f:
    ld a, [c]                                     ; $3d3f: $f2

Jump_000_3d40:
    ld a, [c]                                     ; $3d40: $f2
    ld a, [c]                                     ; $3d41: $f2
    ld a, [c]                                     ; $3d42: $f2
    ld a, [c]                                     ; $3d43: $f2
    ld a, [c]                                     ; $3d44: $f2

Jump_000_3d45:
    ld a, [c]                                     ; $3d45: $f2
    ld a, [c]                                     ; $3d46: $f2
    ld a, [c]                                     ; $3d47: $f2

Jump_000_3d48:
    ld a, [c]                                     ; $3d48: $f2
    ld a, [c]                                     ; $3d49: $f2

Call_000_3d4a:
    and $0f                                       ; $3d4a: $e6 $0f
    cpl                                           ; $3d4c: $2f
    ld b, a                                       ; $3d4d: $47
    ld a, $30                                     ; $3d4e: $3e $30
    ld [c], a                                     ; $3d50: $e2
    ret                                           ; $3d51: $c9


Call_000_3d52:
    ld a, [$dfa9]                                 ; $3d52: $fa $a9 $df

Jump_000_3d55:
    call Call_000_3ab0                            ; $3d55: $cd $b0 $3a
    ld a, [$dfa7]                                 ; $3d58: $fa $a7 $df

Jump_000_3d5b:
    ld l, a                                       ; $3d5b: $6f
    ld a, [$dfa8]                                 ; $3d5c: $fa $a8 $df

Call_000_3d5f:
Jump_000_3d5f:
    ld h, a                                       ; $3d5f: $67

Jump_000_3d60:
    ld bc, $0004                                  ; $3d60: $01 $04 $00
    add hl, bc                                    ; $3d63: $09
    ld a, [hl+]                                   ; $3d64: $2a
    ld l, [hl]                                    ; $3d65: $6e
    ld h, a                                       ; $3d66: $67
    ld a, [$df00]                                 ; $3d67: $fa $00 $df
    jp Jump_000_3ab0                              ; $3d6a: $c3 $b0 $3a


Call_000_3d6d:
Jump_000_3d6d:
    ld a, [$dfa9]                                 ; $3d6d: $fa $a9 $df

Call_000_3d70:
Jump_000_3d70:
    call Call_000_3ab0                            ; $3d70: $cd $b0 $3a
    ld a, [$dfa7]                                 ; $3d73: $fa $a7 $df
    ld l, a                                       ; $3d76: $6f
    ld a, [$dfa8]                                 ; $3d77: $fa $a8 $df
    ld h, a                                       ; $3d7a: $67
    push hl                                       ; $3d7b: $e5
    ld bc, $ff7c                                  ; $3d7c: $01 $7c $ff
    add hl, bc                                    ; $3d7f: $09
    ld a, [hl+]                                   ; $3d80: $2a
    ld [$dfad], a                                 ; $3d81: $ea $ad $df
    ld a, [hl+]                                   ; $3d84: $2a

Jump_000_3d85:
    ld [$dfae], a                                 ; $3d85: $ea $ae $df
    ld a, [hl+]                                   ; $3d88: $2a
    ld [$dfaf], a                                 ; $3d89: $ea $af $df
    ld a, [hl+]                                   ; $3d8c: $2a
    ld [$dfb0], a                                 ; $3d8d: $ea $b0 $df
    ld a, l                                       ; $3d90: $7d
    ld [$dfb1], a                                 ; $3d91: $ea $b1 $df
    ld a, h                                       ; $3d94: $7c
    ld [$dfb2], a                                 ; $3d95: $ea $b2 $df
    pop hl                                        ; $3d98: $e1

Jump_000_3d99:
    ld a, [hl+]                                   ; $3d99: $2a

Call_000_3d9a:
    ld b, a                                       ; $3d9a: $47
    ld a, [hl-]                                   ; $3d9b: $3a
    ld c, a                                       ; $3d9c: $4f
    ld e, l                                       ; $3d9d: $5d
    ld d, h                                       ; $3d9e: $54
    add hl, bc                                    ; $3d9f: $09
    ld a, [hl+]                                   ; $3da0: $2a
    ld b, a                                       ; $3da1: $47
    ld a, [hl+]                                   ; $3da2: $2a
    ld c, a                                       ; $3da3: $4f

Jump_000_3da4:
    or b                                          ; $3da4: $b0
    jr z, jr_000_3db9                             ; $3da5: $28 $12

Call_000_3da7:
    push hl                                       ; $3da7: $e5
    ld l, e                                       ; $3da8: $6b

Jump_000_3da9:
    ld h, d                                       ; $3da9: $62
    add hl, bc                                    ; $3daa: $09
    ld a, l                                       ; $3dab: $7d
    ld [$dfb3], a                                 ; $3dac: $ea $b3 $df

Call_000_3daf:
    ld a, h                                       ; $3daf: $7c
    ld [$dfb4], a                                 ; $3db0: $ea $b4 $df

Call_000_3db3:
    ld hl, $dfa6                                  ; $3db3: $21 $a6 $df
    set 0, [hl]                                   ; $3db6: $cb $c6
    pop hl                                        ; $3db8: $e1

Call_000_3db9:
jr_000_3db9:
    ld a, [hl+]                                   ; $3db9: $2a
    ld b, a                                       ; $3dba: $47
    ld a, [hl+]                                   ; $3dbb: $2a

Jump_000_3dbc:
    ld c, a                                       ; $3dbc: $4f
    or b                                          ; $3dbd: $b0
    jr z, jr_000_3dd2                             ; $3dbe: $28 $12

    push hl                                       ; $3dc0: $e5
    ld l, e                                       ; $3dc1: $6b
    ld h, d                                       ; $3dc2: $62

Call_000_3dc3:
    add hl, bc                                    ; $3dc3: $09
    ld a, l                                       ; $3dc4: $7d
    ld [$dfb5], a                                 ; $3dc5: $ea $b5 $df
    ld a, h                                       ; $3dc8: $7c

Call_000_3dc9:
    ld [$dfb6], a                                 ; $3dc9: $ea $b6 $df
    ld hl, $dfa6                                  ; $3dcc: $21 $a6 $df

Call_000_3dcf:
    set 1, [hl]                                   ; $3dcf: $cb $ce

Jump_000_3dd1:
    pop hl                                        ; $3dd1: $e1

Jump_000_3dd2:
jr_000_3dd2:
    ld a, [hl+]                                   ; $3dd2: $2a
    ld b, a                                       ; $3dd3: $47
    ld a, [hl+]                                   ; $3dd4: $2a
    ld c, a                                       ; $3dd5: $4f

Call_000_3dd6:
    or b                                          ; $3dd6: $b0
    jr z, jr_000_3deb                             ; $3dd7: $28 $12

Call_000_3dd9:
Jump_000_3dd9:
    push hl                                       ; $3dd9: $e5

Jump_000_3dda:
    ld l, e                                       ; $3dda: $6b

Jump_000_3ddb:
    ld h, d                                       ; $3ddb: $62

Jump_000_3ddc:
    add hl, bc                                    ; $3ddc: $09
    ld a, l                                       ; $3ddd: $7d

Call_000_3dde:
    ld [$dfb7], a                                 ; $3dde: $ea $b7 $df
    ld a, h                                       ; $3de1: $7c
    ld [$dfb8], a                                 ; $3de2: $ea $b8 $df
    ld hl, $dfa6                                  ; $3de5: $21 $a6 $df

Call_000_3de8:
    set 2, [hl]                                   ; $3de8: $cb $d6

Jump_000_3dea:
    pop hl                                        ; $3dea: $e1

jr_000_3deb:
    ld a, [hl+]                                   ; $3deb: $2a
    ld b, a                                       ; $3dec: $47
    ld a, [hl+]                                   ; $3ded: $2a

Jump_000_3dee:
    ld c, a                                       ; $3dee: $4f

Jump_000_3def:
    or b                                          ; $3def: $b0
    jr z, jr_000_3e04                             ; $3df0: $28 $12

    push hl                                       ; $3df2: $e5
    ld l, e                                       ; $3df3: $6b

Jump_000_3df4:
    ld h, d                                       ; $3df4: $62
    add hl, bc                                    ; $3df5: $09
    ld a, l                                       ; $3df6: $7d
    ld [$dfb9], a                                 ; $3df7: $ea $b9 $df
    ld a, h                                       ; $3dfa: $7c
    ld [$dfba], a                                 ; $3dfb: $ea $ba $df

Jump_000_3dfe:
    pop hl                                        ; $3dfe: $e1
    ld hl, $dfa6                                  ; $3dff: $21 $a6 $df
    set 3, [hl]                                   ; $3e02: $cb $de

jr_000_3e04:
    ld hl, $dfb3                                  ; $3e04: $21 $b3 $df
    ld de, $dfc1                                  ; $3e07: $11 $c1 $df

Call_000_3e0a:
    xor a                                         ; $3e0a: $af

jr_000_3e0b:
    ld [$dff9], a                                 ; $3e0b: $ea $f9 $df
    ld a, [hl+]                                   ; $3e0e: $2a
    ld c, a                                       ; $3e0f: $4f
    ld a, [hl+]                                   ; $3e10: $2a
    ld b, a                                       ; $3e11: $47

Jump_000_3e12:
    or c                                          ; $3e12: $b1

Jump_000_3e13:
    jr z, jr_000_3e31                             ; $3e13: $28 $1c

    ld a, [bc]                                    ; $3e15: $0a
    inc bc                                        ; $3e16: $03

Call_000_3e17:
    ld [de], a                                    ; $3e17: $12

Jump_000_3e18:
    dec de                                        ; $3e18: $1b
    ld a, [bc]                                    ; $3e19: $0a
    ld [de], a                                    ; $3e1a: $12
    inc de                                        ; $3e1b: $13
    inc bc                                        ; $3e1c: $03
    ld a, [bc]                                    ; $3e1d: $0a
    ld [$dffa], a                                 ; $3e1e: $ea $fa $df
    ld bc, $dfbb                                  ; $3e21: $01 $bb $df
    ld a, [$dff9]                                 ; $3e24: $fa $f9 $df

Call_000_3e27:
    add c                                         ; $3e27: $81

Call_000_3e28:
    ld c, a                                       ; $3e28: $4f
    ld a, b                                       ; $3e29: $78
    adc $00                                       ; $3e2a: $ce $00

Call_000_3e2c:
    ld b, a                                       ; $3e2c: $47

Call_000_3e2d:
    ld a, [$dffa]                                 ; $3e2d: $fa $fa $df
    ld [bc], a                                    ; $3e30: $02

jr_000_3e31:
    inc de                                        ; $3e31: $13

Call_000_3e32:
    inc de                                        ; $3e32: $13

Call_000_3e33:
Jump_000_3e33:
    inc de                                        ; $3e33: $13

Call_000_3e34:
    ld a, [$dff9]                                 ; $3e34: $fa $f9 $df

Call_000_3e37:
Jump_000_3e37:
    inc a                                         ; $3e37: $3c

Jump_000_3e38:
    cp $04                                        ; $3e38: $fe $04

Call_000_3e3a:
    jr nz, jr_000_3e0b                            ; $3e3a: $20 $cf

    ld a, [$df00]                                 ; $3e3c: $fa $00 $df
    jp Jump_000_3ab0                              ; $3e3f: $c3 $b0 $3a


Call_000_3e42:
Jump_000_3e42:
    sla a                                         ; $3e42: $cb $27

Jump_000_3e44:
    ld e, a                                       ; $3e44: $5f
    ld d, $00                                     ; $3e45: $16 $00
    ld a, [$dfa9]                                 ; $3e47: $fa $a9 $df
    call Call_000_3ab0                            ; $3e4a: $cd $b0 $3a
    ld hl, $dfb3                                  ; $3e4d: $21 $b3 $df

Call_000_3e50:
    add hl, de                                    ; $3e50: $19
    push hl                                       ; $3e51: $e5

Jump_000_3e52:
    ld a, [hl+]                                   ; $3e52: $2a
    ld h, [hl]                                    ; $3e53: $66
    ld l, a                                       ; $3e54: $6f
    ld bc, $0003                                  ; $3e55: $01 $03 $00
    add hl, bc                                    ; $3e58: $09
    pop bc                                        ; $3e59: $c1

Jump_000_3e5a:
    ld a, l                                       ; $3e5a: $7d
    ld [bc], a                                    ; $3e5b: $02
    inc bc                                        ; $3e5c: $03

Jump_000_3e5d:
    ld a, h                                       ; $3e5d: $7c

Call_000_3e5e:
    ld [bc], a                                    ; $3e5e: $02
    ld a, [hl+]                                   ; $3e5f: $2a
    ld b, a                                       ; $3e60: $47
    ld a, [hl+]                                   ; $3e61: $2a
    ld c, a                                       ; $3e62: $4f
    ld a, [hl]                                    ; $3e63: $7e
    ld hl, $dfbb                                  ; $3e64: $21 $bb $df
    srl e                                         ; $3e67: $cb $3b
    add hl, de                                    ; $3e69: $19
    ld [hl], a                                    ; $3e6a: $77

Call_000_3e6b:
    ld a, e                                       ; $3e6b: $7b
    sla e                                         ; $3e6c: $cb $23
    add e                                         ; $3e6e: $83

Call_000_3e6f:
    ld e, a                                       ; $3e6f: $5f
    ld hl, $dfc0                                  ; $3e70: $21 $c0 $df
    add hl, de                                    ; $3e73: $19
    ld a, [hl]                                    ; $3e74: $7e
    add c                                         ; $3e75: $81
    ld [hl+], a                                   ; $3e76: $22
    ld a, [hl]                                    ; $3e77: $7e
    adc b                                         ; $3e78: $88
    ld [hl], a                                    ; $3e79: $77
    ld a, [$df00]                                 ; $3e7a: $fa $00 $df

Call_000_3e7d:
    jp Jump_000_3ab0                              ; $3e7d: $c3 $b0 $3a


Call_000_3e80:
Jump_000_3e80:
    sla a                                         ; $3e80: $cb $27
    ld e, a                                       ; $3e82: $5f
    ld d, $00                                     ; $3e83: $16 $00
    ld a, [$dfa9]                                 ; $3e85: $fa $a9 $df

Call_000_3e88:
Jump_000_3e88:
    call Call_000_3ab0                            ; $3e88: $cd $b0 $3a
    ld hl, $dfb3                                  ; $3e8b: $21 $b3 $df
    add hl, de                                    ; $3e8e: $19

Call_000_3e8f:
    push hl                                       ; $3e8f: $e5
    ld a, [hl+]                                   ; $3e90: $2a
    ld h, [hl]                                    ; $3e91: $66
    ld l, a                                       ; $3e92: $6f

Jump_000_3e93:
    ld bc, $0003                                  ; $3e93: $01 $03 $00
    add hl, bc                                    ; $3e96: $09

Jump_000_3e97:
    ld a, [hl+]                                   ; $3e97: $2a
    ld b, a                                       ; $3e98: $47
    ld a, [hl+]                                   ; $3e99: $2a
    ld c, a                                       ; $3e9a: $4f
    push bc                                       ; $3e9b: $c5
    ld a, [hl+]                                   ; $3e9c: $2a

Call_000_3e9d:
    ld b, a                                       ; $3e9d: $47

Jump_000_3e9e:
    ld c, [hl]                                    ; $3e9e: $4e
    push de                                       ; $3e9f: $d5
    ld a, e                                       ; $3ea0: $7b

Call_000_3ea1:
Jump_000_3ea1:
    srl a                                         ; $3ea1: $cb $3f
    add e                                         ; $3ea3: $83
    ld e, a                                       ; $3ea4: $5f
    ld hl, $dfc0                                  ; $3ea5: $21 $c0 $df
    add hl, de                                    ; $3ea8: $19
    ld a, [hl]                                    ; $3ea9: $7e

Call_000_3eaa:
    add c                                         ; $3eaa: $81

Call_000_3eab:
    ld [hl+], a                                   ; $3eab: $22
    ld a, [hl]                                    ; $3eac: $7e
    adc b                                         ; $3ead: $88

Jump_000_3eae:
    ld [hl], a                                    ; $3eae: $77
    pop de                                        ; $3eaf: $d1

Call_000_3eb0:
Jump_000_3eb0:
    ld a, [$dfa7]                                 ; $3eb0: $fa $a7 $df
    ld l, a                                       ; $3eb3: $6f
    ld a, [$dfa8]                                 ; $3eb4: $fa $a8 $df
    ld h, a                                       ; $3eb7: $67
    ld a, [hl+]                                   ; $3eb8: $2a

Call_000_3eb9:
Jump_000_3eb9:
    ld b, a                                       ; $3eb9: $47
    ld a, [hl-]                                   ; $3eba: $3a
    ld c, a                                       ; $3ebb: $4f
    push hl                                       ; $3ebc: $e5
    add hl, bc                                    ; $3ebd: $09
    add hl, de                                    ; $3ebe: $19
    ld a, [hl+]                                   ; $3ebf: $2a
    ld b, a                                       ; $3ec0: $47

Call_000_3ec1:
    ld c, [hl]                                    ; $3ec1: $4e

Call_000_3ec2:
    pop hl                                        ; $3ec2: $e1

Jump_000_3ec3:
    add hl, bc                                    ; $3ec3: $09
    pop bc                                        ; $3ec4: $c1
    add hl, bc                                    ; $3ec5: $09

Call_000_3ec6:
    pop bc                                        ; $3ec6: $c1
    ld a, l                                       ; $3ec7: $7d
    ld [bc], a                                    ; $3ec8: $02

Jump_000_3ec9:
    inc bc                                        ; $3ec9: $03

Call_000_3eca:
    ld a, h                                       ; $3eca: $7c
    ld [bc], a                                    ; $3ecb: $02
    inc hl                                        ; $3ecc: $23

Call_000_3ecd:
    inc hl                                        ; $3ecd: $23

Call_000_3ece:
    ld a, [hl]                                    ; $3ece: $7e
    ld hl, $dfbb                                  ; $3ecf: $21 $bb $df

Jump_000_3ed2:
    srl e                                         ; $3ed2: $cb $3b

Call_000_3ed4:
Jump_000_3ed4:
    add hl, de                                    ; $3ed4: $19

Call_000_3ed5:
Jump_000_3ed5:
    ld [hl], a                                    ; $3ed5: $77
    ld a, [$df00]                                 ; $3ed6: $fa $00 $df

Call_000_3ed9:
    jp Jump_000_3ab0                              ; $3ed9: $c3 $b0 $3a


Call_000_3edc:
    sla a                                         ; $3edc: $cb $27
    ld e, a                                       ; $3ede: $5f

Call_000_3edf:
    ld d, $00                                     ; $3edf: $16 $00
    push de                                       ; $3ee1: $d5
    ld b, $00                                     ; $3ee2: $06 $00
    sla c                                         ; $3ee4: $cb $21

Call_000_3ee6:
    ld a, [$dfa9]                                 ; $3ee6: $fa $a9 $df
    push bc                                       ; $3ee9: $c5

Call_000_3eea:
    call Call_000_3ab0                            ; $3eea: $cd $b0 $3a
    pop bc                                        ; $3eed: $c1
    ld a, [$dfa7]                                 ; $3eee: $fa $a7 $df
    ld l, a                                       ; $3ef1: $6f

Call_000_3ef2:
    ld a, [$dfa8]                                 ; $3ef2: $fa $a8 $df

Jump_000_3ef5:
    ld h, a                                       ; $3ef5: $67

Call_000_3ef6:
Jump_000_3ef6:
    inc hl                                        ; $3ef6: $23
    inc hl                                        ; $3ef7: $23

Call_000_3ef8:
Jump_000_3ef8:
    ld a, [hl+]                                   ; $3ef8: $2a
    ld d, a                                       ; $3ef9: $57
    ld a, [hl-]                                   ; $3efa: $3a
    ld e, a                                       ; $3efb: $5f

Jump_000_3efc:
    dec hl                                        ; $3efc: $2b

Call_000_3efd:
    dec hl                                        ; $3efd: $2b
    push hl                                       ; $3efe: $e5

Jump_000_3eff:
    add hl, de                                    ; $3eff: $19

Call_000_3f00:
Jump_000_3f00:
    add hl, bc                                    ; $3f00: $09

Jump_000_3f01:
    ld a, [hl+]                                   ; $3f01: $2a

Call_000_3f02:
Jump_000_3f02:
    ld l, [hl]                                    ; $3f02: $6e
    ld h, a                                       ; $3f03: $67

Jump_000_3f04:
    pop bc                                        ; $3f04: $c1
    add hl, bc                                    ; $3f05: $09
    ld c, l                                       ; $3f06: $4d

Call_000_3f07:
    ld b, h                                       ; $3f07: $44

Call_000_3f08:
Jump_000_3f08:
    pop de                                        ; $3f08: $d1

Call_000_3f09:
    ld hl, $dfcb                                  ; $3f09: $21 $cb $df
    add hl, de                                    ; $3f0c: $19
    ld a, c                                       ; $3f0d: $79

Call_000_3f0e:
    ld [hl+], a                                   ; $3f0e: $22

Jump_000_3f0f:
    ld [hl], b                                    ; $3f0f: $70

Call_000_3f10:
Jump_000_3f10:
    ld a, [$df00]                                 ; $3f10: $fa $00 $df

Jump_000_3f13:
    jp Jump_000_3ab0                              ; $3f13: $c3 $b0 $3a


Call_000_3f16:
    sla a                                         ; $3f16: $cb $27
    ld e, a                                       ; $3f18: $5f
    ld d, $00                                     ; $3f19: $16 $00
    ld a, [$dfa9]                                 ; $3f1b: $fa $a9 $df
    call Call_000_3ab0                            ; $3f1e: $cd $b0 $3a
    xor a                                         ; $3f21: $af

Call_000_3f22:
    ld [$dffa], a                                 ; $3f22: $ea $fa $df

Call_000_3f25:
Jump_000_3f25:
    ld hl, $dfcb                                  ; $3f25: $21 $cb $df

Call_000_3f28:
Jump_000_3f28:
    add hl, de                                    ; $3f28: $19
    push hl                                       ; $3f29: $e5
    ld a, [hl+]                                   ; $3f2a: $2a

Jump_000_3f2b:
    ld h, [hl]                                    ; $3f2b: $66
    ld l, a                                       ; $3f2c: $6f

Call_000_3f2d:
    ld a, [hl+]                                   ; $3f2d: $2a
    inc hl                                        ; $3f2e: $23
    swap a                                        ; $3f2f: $cb $37
    and $0f                                       ; $3f31: $e6 $0f

Jump_000_3f33:
    ld e, a                                       ; $3f33: $5f
    ld a, [hl+]                                   ; $3f34: $2a

Call_000_3f35:
Jump_000_3f35:
    ld d, a                                       ; $3f35: $57

Call_000_3f36:
    bit 7, a                                      ; $3f36: $cb $7f
    jr z, jr_000_3f5f                             ; $3f38: $28 $25

Jump_000_3f3a:
    cp $ff                                        ; $3f3a: $fe $ff

Jump_000_3f3c:
    jr z, jr_000_3f4d                             ; $3f3c: $28 $0f

Jump_000_3f3e:
jr_000_3f3e:
    and $7f                                       ; $3f3e: $e6 $7f

Jump_000_3f40:
    ld d, a                                       ; $3f40: $57
    ld a, e                                       ; $3f41: $7b
    and a                                         ; $3f42: $a7

Jump_000_3f43:
    jr z, jr_000_3f56                             ; $3f43: $28 $11

Call_000_3f45:
    ld a, [hl+]                                   ; $3f45: $2a

Call_000_3f46:
    or $80                                        ; $3f46: $f6 $80
    ld [$dffa], a                                 ; $3f48: $ea $fa $df
    jr jr_000_3f5f                                ; $3f4b: $18 $12

jr_000_3f4d:
    ld d, a                                       ; $3f4d: $57
    ld a, e                                       ; $3f4e: $7b

Call_000_3f4f:
    cp $0f                                        ; $3f4f: $fe $0f

Call_000_3f51:
Jump_000_3f51:
    ld a, d                                       ; $3f51: $7a

Call_000_3f52:
Jump_000_3f52:
    jr nz, jr_000_3f3e                            ; $3f52: $20 $ea

Jump_000_3f54:
    jr jr_000_3f6e                                ; $3f54: $18 $18

jr_000_3f56:
    ld a, d                                       ; $3f56: $7a

Jump_000_3f57:
    or $80                                        ; $3f57: $f6 $80
    ld d, a                                       ; $3f59: $57
    ld [$dffa], a                                 ; $3f5a: $ea $fa $df
    jr jr_000_3f6e                                ; $3f5d: $18 $0f

jr_000_3f5f:
    ld a, [hl+]                                   ; $3f5f: $2a

Call_000_3f60:
    bit 7, a                                      ; $3f60: $cb $7f

Call_000_3f62:
Jump_000_3f62:
    jr z, jr_000_3f6b                             ; $3f62: $28 $07

    and $7f                                       ; $3f64: $e6 $7f
    ld b, a                                       ; $3f66: $47
    ld a, [hl+]                                   ; $3f67: $2a
    ld c, a                                       ; $3f68: $4f
    jr jr_000_3f6e                                ; $3f69: $18 $03

Jump_000_3f6b:
jr_000_3f6b:
    ld c, a                                       ; $3f6b: $4f
    ld b, $00                                     ; $3f6c: $06 $00

jr_000_3f6e:
    ld a, h                                       ; $3f6e: $7c
    ld [$dffc], a                                 ; $3f6f: $ea $fc $df

Jump_000_3f72:
    ld a, l                                       ; $3f72: $7d

Jump_000_3f73:
    pop hl                                        ; $3f73: $e1
    ld [hl+], a                                   ; $3f74: $22
    ld a, [$dffc]                                 ; $3f75: $fa $fc $df

Call_000_3f78:
Jump_000_3f78:
    ld [hl], a                                    ; $3f78: $77
    ld a, [$df00]                                 ; $3f79: $fa $00 $df
    push bc                                       ; $3f7c: $c5

Jump_000_3f7d:
    call Call_000_3ab0                            ; $3f7d: $cd $b0 $3a
    pop bc                                        ; $3f80: $c1
    ld a, [$dffa]                                 ; $3f81: $fa $fa $df
    ret                                           ; $3f84: $c9


Call_000_3f85:
    sla a                                         ; $3f85: $cb $27
    ld e, a                                       ; $3f87: $5f

Call_000_3f88:
    ld d, $00                                     ; $3f88: $16 $00
    ld a, [$dfa9]                                 ; $3f8a: $fa $a9 $df
    call Call_000_3ab0                            ; $3f8d: $cd $b0 $3a
    ld hl, $dfcb                                  ; $3f90: $21 $cb $df
    add hl, de                                    ; $3f93: $19
    ld a, [hl+]                                   ; $3f94: $2a
    ld h, [hl]                                    ; $3f95: $66
    ld l, a                                       ; $3f96: $6f
    ld a, [hl+]                                   ; $3f97: $2a
    ld b, a                                       ; $3f98: $47
    ld a, [hl+]                                   ; $3f99: $2a
    ld c, a                                       ; $3f9a: $4f
    ld hl, $dfd5                                  ; $3f9b: $21 $d5 $df
    push de                                       ; $3f9e: $d5

Call_000_3f9f:
    ld a, e                                       ; $3f9f: $7b
    srl a                                         ; $3fa0: $cb $3f
    add e                                         ; $3fa2: $83

Jump_000_3fa3:
    ld e, a                                       ; $3fa3: $5f
    add hl, de                                    ; $3fa4: $19
    pop de                                        ; $3fa5: $d1
    ld a, [hl]                                    ; $3fa6: $7e
    add c                                         ; $3fa7: $81

Call_000_3fa8:
    ld [hl+], a                                   ; $3fa8: $22

Jump_000_3fa9:
    push af                                       ; $3fa9: $f5
    ld a, b                                       ; $3faa: $78
    and $0f                                       ; $3fab: $e6 $0f

Jump_000_3fad:
    ld c, a                                       ; $3fad: $4f
    pop af                                        ; $3fae: $f1

Call_000_3faf:
Jump_000_3faf:
    ld a, [hl]                                    ; $3faf: $7e
    adc c                                         ; $3fb0: $89
    ld [hl], a                                    ; $3fb1: $77

Call_000_3fb2:
    ld a, [$df00]                                 ; $3fb2: $fa $00 $df

Call_000_3fb5:
    jp Jump_000_3ab0                              ; $3fb5: $c3 $b0 $3a


Call_000_3fb8:
    push de                                       ; $3fb8: $d5

Jump_000_3fb9:
    push hl                                       ; $3fb9: $e5
    push bc                                       ; $3fba: $c5

Call_000_3fbb:
Jump_000_3fbb:
    ld e, a                                       ; $3fbb: $5f

Jump_000_3fbc:
    ld d, $00                                     ; $3fbc: $16 $00
    ld hl, $dfb1                                  ; $3fbe: $21 $b1 $df
    ld a, [hl+]                                   ; $3fc1: $2a

Jump_000_3fc2:
    ld h, [hl]                                    ; $3fc2: $66

Jump_000_3fc3:
    ld l, a                                       ; $3fc3: $6f

Jump_000_3fc4:
    add hl, de                                    ; $3fc4: $19
    ld a, [$dfa9]                                 ; $3fc5: $fa $a9 $df
    call Call_000_3ab0                            ; $3fc8: $cd $b0 $3a
    ld e, [hl]                                    ; $3fcb: $5e

Call_000_3fcc:
    ld a, [$df00]                                 ; $3fcc: $fa $00 $df
    call Call_000_3ab0                            ; $3fcf: $cd $b0 $3a

Call_000_3fd2:
    ld a, e                                       ; $3fd2: $7b

Call_000_3fd3:
    pop bc                                        ; $3fd3: $c1
    pop hl                                        ; $3fd4: $e1

Call_000_3fd5:
    pop de                                        ; $3fd5: $d1
    ret                                           ; $3fd6: $c9


Call_000_3fd7:
    rst $38                                       ; $3fd7: $ff

Call_000_3fd8:
    rst $38                                       ; $3fd8: $ff

Call_000_3fd9:
    rst $38                                       ; $3fd9: $ff

Jump_000_3fda:
    rst $38                                       ; $3fda: $ff

Call_000_3fdb:
    rst $38                                       ; $3fdb: $ff

Call_000_3fdc:
Jump_000_3fdc:
    rst $38                                       ; $3fdc: $ff
    rst $38                                       ; $3fdd: $ff
    rst $38                                       ; $3fde: $ff
    rst $38                                       ; $3fdf: $ff
    rst $38                                       ; $3fe0: $ff
    rst $38                                       ; $3fe1: $ff
    rst $38                                       ; $3fe2: $ff

Jump_000_3fe3:
    rst $38                                       ; $3fe3: $ff
    rst $38                                       ; $3fe4: $ff
    rst $38                                       ; $3fe5: $ff

Call_000_3fe6:
    rst $38                                       ; $3fe6: $ff
    rst $38                                       ; $3fe7: $ff

Call_000_3fe8:
    rst $38                                       ; $3fe8: $ff

Jump_000_3fe9:
    rst $38                                       ; $3fe9: $ff
    rst $38                                       ; $3fea: $ff

Call_000_3feb:
    rst $38                                       ; $3feb: $ff
    rst $38                                       ; $3fec: $ff
    rst $38                                       ; $3fed: $ff
    rst $38                                       ; $3fee: $ff
    rst $38                                       ; $3fef: $ff
    rst $38                                       ; $3ff0: $ff

Call_000_3ff1:
    rst $38                                       ; $3ff1: $ff
    rst $38                                       ; $3ff2: $ff
    rst $38                                       ; $3ff3: $ff

Call_000_3ff4:
    rst $38                                       ; $3ff4: $ff

Jump_000_3ff5:
    rst $38                                       ; $3ff5: $ff
    rst $38                                       ; $3ff6: $ff

Call_000_3ff7:
Jump_000_3ff7:
    rst $38                                       ; $3ff7: $ff
    rst $38                                       ; $3ff8: $ff

Call_000_3ff9:
    rst $38                                       ; $3ff9: $ff
    rst $38                                       ; $3ffa: $ff

Call_000_3ffb:
    rst $38                                       ; $3ffb: $ff
    rst $38                                       ; $3ffc: $ff

Jump_000_3ffd:
    rst $38                                       ; $3ffd: $ff

Jump_000_3ffe:
    rst $38                                       ; $3ffe: $ff

Call_000_3fff:
Jump_000_3fff:
    rst $38                                       ; $3fff: $ff
