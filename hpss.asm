SECTION "bank0", ROM0
INCBIN "baserom.gbc",$0,$100
    nop
    jp Start

    ds $150 - $104

Start:
INCBIN "baserom.gbc",$150,$4000-$150

SECTION "bank1", ROMX, BANK[$1]
INCBIN "baserom.gbc",$4000,$4000

SECTION "bank2", ROMX, BANK[$2]
INCBIN "baserom.gbc",$8000,$4000

SECTION "bank3", ROMX, BANK[$3]
INCBIN "baserom.gbc",$C000,$4000

SECTION "bank4", ROMX, BANK[$4]
INCBIN "baserom.gbc",$10000,$4000

SECTION "bank5", ROMX, BANK[$5]
INCBIN "baserom.gbc",$14000,$4000

SECTION "bank6", ROMX, BANK[$6]
INCBIN "baserom.gbc",$18000,$4000

SECTION "bank7", ROMX, BANK[$7]
INCBIN "baserom.gbc",$1C000,$4000

SECTION "bank8", ROMX, BANK[$8]
INCBIN "baserom.gbc",$20000,$4000

SECTION "bank9", ROMX, BANK[$9]
INCBIN "baserom.gbc",$24000,$4000

SECTION "bankA", ROMX, BANK[$A]
INCBIN "baserom.gbc",$28000,$4000

SECTION "bankB", ROMX, BANK[$B]
INCBIN "baserom.gbc",$2C000,$4000

SECTION "bankC", ROMX, BANK[$C]
INCBIN "baserom.gbc",$30000,$4000

SECTION "bankD", ROMX, BANK[$D]
INCBIN "baserom.gbc",$34000,$4000

SECTION "bankE", ROMX, BANK[$E]
INCBIN "baserom.gbc",$38000,$4000

SECTION "bankF", ROMX, BANK[$F]
INCBIN "baserom.gbc",$3C000,$4000

SECTION "bank10", ROMX, BANK[$10]
INCBIN "baserom.gbc",$40000,$4000

SECTION "bank11", ROMX, BANK[$11]
INCBIN "baserom.gbc",$44000,$4000

SECTION "bank12", ROMX, BANK[$12]
INCBIN "baserom.gbc",$48000,$4000

SECTION "bank13", ROMX, BANK[$13]
INCBIN "baserom.gbc",$4C000,$4000

SECTION "bank14", ROMX, BANK[$14]
INCBIN "baserom.gbc",$50000,$4000

SECTION "bank15", ROMX, BANK[$15]
INCBIN "baserom.gbc",$54000,$4000

SECTION "bank16", ROMX, BANK[$16]
INCBIN "baserom.gbc",$58000,$4000

SECTION "bank17", ROMX, BANK[$17]
INCBIN "baserom.gbc",$5C000,$4000

SECTION "bank18", ROMX, BANK[$18]
INCBIN "baserom.gbc",$60000,$4000

SECTION "bank19", ROMX, BANK[$19]
INCBIN "baserom.gbc",$64000,$4000

SECTION "bank1A", ROMX, BANK[$1A]
INCBIN "baserom.gbc",$68000,$4000

SECTION "bank1B", ROMX, BANK[$1B]
INCBIN "baserom.gbc",$6C000,$4000

SECTION "bank1C", ROMX, BANK[$1C]
INCBIN "baserom.gbc",$70000,$4000

SECTION "bank1D", ROMX, BANK[$1D]
INCBIN "baserom.gbc",$74000,$4000

SECTION "bank1E", ROMX, BANK[$1E]
INCBIN "baserom.gbc",$78000,$4000

SECTION "bank1F", ROMX, BANK[$1F]
INCBIN "baserom.gbc",$7C000,$4000

SECTION "bank20", ROMX, BANK[$20]
INCBIN "baserom.gbc",$80000,$4000

SECTION "bank21", ROMX, BANK[$21]
INCBIN "baserom.gbc",$84000,$4000

SECTION "bank22", ROMX, BANK[$22]
INCBIN "baserom.gbc",$88000,$4000

SECTION "bank23", ROMX, BANK[$23]
INCBIN "baserom.gbc",$8C000,$4000

SECTION "bank24", ROMX, BANK[$24]
INCBIN "baserom.gbc",$90000,$4000

SECTION "bank25", ROMX, BANK[$25]
INCBIN "baserom.gbc",$94000,$4000

SECTION "bank26", ROMX, BANK[$26]
INCBIN "baserom.gbc",$98000,$4000

SECTION "bank27", ROMX, BANK[$27]
INCBIN "baserom.gbc",$9C000,$4000

SECTION "bank28", ROMX, BANK[$28]
INCBIN "baserom.gbc",$A0000,$4000

SECTION "bank29", ROMX, BANK[$29]
INCBIN "baserom.gbc",$A4000,$4000

SECTION "bank2A", ROMX, BANK[$2A]
INCBIN "baserom.gbc",$A8000,$4000

SECTION "bank2B", ROMX, BANK[$2B]
INCBIN "baserom.gbc",$AC000,$4000

SECTION "bank2C", ROMX, BANK[$2C]
INCBIN "baserom.gbc",$B0000,$4000

SECTION "bank2D", ROMX, BANK[$2D]
INCBIN "baserom.gbc",$B4000,$4000

SECTION "bank2E", ROMX, BANK[$2E]
INCBIN "baserom.gbc",$B8000,$4000

SECTION "bank2F", ROMX, BANK[$2F]
INCBIN "baserom.gbc",$BC000,$4000

SECTION "bank30", ROMX, BANK[$30]
INCBIN "baserom.gbc",$C0000,$4000

SECTION "bank31", ROMX, BANK[$31]
INCBIN "baserom.gbc",$C4000,$4000

SECTION "bank32", ROMX, BANK[$32]
INCBIN "baserom.gbc",$C8000,$4000

SECTION "bank33", ROMX, BANK[$33]
INCBIN "baserom.gbc",$CC000,$4000

SECTION "bank34", ROMX, BANK[$34]
INCBIN "baserom.gbc",$D0000,$4000

SECTION "bank35", ROMX, BANK[$35]
INCBIN "baserom.gbc",$D4000,$4000

SECTION "bank36", ROMX, BANK[$36]
INCBIN "baserom.gbc",$D8000,$4000

SECTION "bank37", ROMX, BANK[$37]
INCBIN "baserom.gbc",$DC000,$4000

SECTION "bank38", ROMX, BANK[$38]
INCBIN "baserom.gbc",$E0000,$4000

SECTION "bank39", ROMX, BANK[$39]
INCBIN "baserom.gbc",$E4000,$4000

SECTION "bank3A", ROMX, BANK[$3A]
INCBIN "baserom.gbc",$E8000,$4000

SECTION "bank3B", ROMX, BANK[$3B]
INCBIN "baserom.gbc",$EC000,$4000

SECTION "bank3C", ROMX, BANK[$3C]
INCBIN "baserom.gbc",$F0000,$4000

SECTION "bank3D", ROMX, BANK[$3D]
INCBIN "baserom.gbc",$F4000,$4000

SECTION "bank3E", ROMX, BANK[$3E]
INCBIN "baserom.gbc",$F8000,$4000

SECTION "bank3F", ROMX, BANK[$3F]
INCBIN "baserom.gbc",$FC000,$4000

SECTION "bank40", ROMX, BANK[$40]
INCBIN "baserom.gbc",$100000,$4000

SECTION "bank41", ROMX, BANK[$41]
INCBIN "baserom.gbc",$104000,$4000

SECTION "bank42", ROMX, BANK[$42]
INCBIN "baserom.gbc",$108000,$4000

SECTION "bank43", ROMX, BANK[$43]
INCBIN "baserom.gbc",$10C000,$4000

SECTION "bank44", ROMX, BANK[$44]
INCBIN "baserom.gbc",$110000,$4000

SECTION "bank45", ROMX, BANK[$45]
INCBIN "baserom.gbc",$114000,$4000

SECTION "bank46", ROMX, BANK[$46]
INCBIN "baserom.gbc",$118000,$4000

SECTION "bank47", ROMX, BANK[$47]
INCBIN "baserom.gbc",$11C000,$4000

SECTION "bank48", ROMX, BANK[$48]
INCBIN "baserom.gbc",$120000,$4000

SECTION "bank49", ROMX, BANK[$49]
INCBIN "baserom.gbc",$124000,$4000

SECTION "bank4A", ROMX, BANK[$4A]
INCBIN "baserom.gbc",$128000,$4000

SECTION "bank4B", ROMX, BANK[$4B]
INCBIN "baserom.gbc",$12C000,$4000

SECTION "bank4C", ROMX, BANK[$4C]
INCBIN "baserom.gbc",$130000,$4000

SECTION "bank4D", ROMX, BANK[$4D]
INCBIN "baserom.gbc",$134000,$4000

SECTION "bank4E", ROMX, BANK[$4E]
INCBIN "baserom.gbc",$138000,$4000

SECTION "bank4F", ROMX, BANK[$4F]
INCBIN "baserom.gbc",$13C000,$4000

SECTION "bank50", ROMX, BANK[$50]
INCBIN "baserom.gbc",$140000,$4000

SECTION "bank51", ROMX, BANK[$51]
INCBIN "baserom.gbc",$144000,$4000

SECTION "bank52", ROMX, BANK[$52]
INCBIN "baserom.gbc",$148000,$4000

SECTION "bank53", ROMX, BANK[$53]
INCBIN "baserom.gbc",$14C000,$4000

SECTION "bank54", ROMX, BANK[$54]
INCBIN "baserom.gbc",$150000,$4000

SECTION "bank55", ROMX, BANK[$55]
INCBIN "baserom.gbc",$154000,$4000

SECTION "bank56", ROMX, BANK[$56]
INCBIN "baserom.gbc",$158000,$4000

SECTION "bank57", ROMX, BANK[$57]
INCBIN "baserom.gbc",$15C000,$4000

SECTION "bank58", ROMX, BANK[$58]
INCBIN "baserom.gbc",$160000,$4000

SECTION "bank59", ROMX, BANK[$59]
INCBIN "baserom.gbc",$164000,$4000

SECTION "bank5A", ROMX, BANK[$5A]
INCBIN "baserom.gbc",$168000,$4000

SECTION "bank5B", ROMX, BANK[$5B]
INCBIN "baserom.gbc",$16C000,$4000

SECTION "bank5C", ROMX, BANK[$5C]
INCBIN "baserom.gbc",$170000,$4000

SECTION "bank5D", ROMX, BANK[$5D]
INCBIN "baserom.gbc",$174000,$4000

SECTION "bank5E", ROMX, BANK[$5E]
INCBIN "baserom.gbc",$178000,$4000

SECTION "bank5F", ROMX, BANK[$5F]
INCBIN "baserom.gbc",$17C000,$4000

SECTION "bank60", ROMX, BANK[$60]
INCBIN "baserom.gbc",$180000,$4000

SECTION "bank61", ROMX, BANK[$61]
INCBIN "baserom.gbc",$184000,$4000

SECTION "bank62", ROMX, BANK[$62]
INCBIN "baserom.gbc",$188000,$4000

SECTION "bank63", ROMX, BANK[$63]
INCBIN "baserom.gbc",$18C000,$4000

SECTION "bank64", ROMX, BANK[$64]
INCBIN "baserom.gbc",$190000,$4000

SECTION "bank65", ROMX, BANK[$65]
INCBIN "baserom.gbc",$194000,$4000

SECTION "bank66", ROMX, BANK[$66]
INCBIN "baserom.gbc",$198000,$4000

SECTION "bank67", ROMX, BANK[$67]
INCBIN "baserom.gbc",$19C000,$4000

SECTION "bank68", ROMX, BANK[$68]
INCBIN "baserom.gbc",$1A0000,$4000

SECTION "bank69", ROMX, BANK[$69]
INCBIN "baserom.gbc",$1A4000,$4000

SECTION "bank6A", ROMX, BANK[$6A]
INCBIN "baserom.gbc",$1A8000,$4000

SECTION "bank6B", ROMX, BANK[$6B]
INCBIN "baserom.gbc",$1AC000,$4000

SECTION "bank6C", ROMX, BANK[$6C]
INCBIN "baserom.gbc",$1B0000,$4000

SECTION "bank6D", ROMX, BANK[$6D]
INCBIN "baserom.gbc",$1B4000,$4000

SECTION "bank6E", ROMX, BANK[$6E]
INCBIN "baserom.gbc",$1B8000,$4000

SECTION "bank6F", ROMX, BANK[$6F]
INCBIN "baserom.gbc",$1BC000,$4000

SECTION "bank70", ROMX, BANK[$70]
INCBIN "baserom.gbc",$1C0000,$4000

SECTION "bank71", ROMX, BANK[$71]
INCBIN "baserom.gbc",$1C4000,$4000

SECTION "bank72", ROMX, BANK[$72]
INCBIN "baserom.gbc",$1C8000,$4000

SECTION "bank73", ROMX, BANK[$73]
INCBIN "baserom.gbc",$1CC000,$4000

SECTION "bank74", ROMX, BANK[$74]
INCBIN "baserom.gbc",$1D0000,$4000

SECTION "bank75", ROMX, BANK[$75]
INCBIN "baserom.gbc",$1D4000,$4000

SECTION "bank76", ROMX, BANK[$76]
INCBIN "baserom.gbc",$1D8000,$4000

SECTION "bank77", ROMX, BANK[$77]
INCBIN "baserom.gbc",$1DC000,$4000

SECTION "bank78", ROMX, BANK[$78]
INCBIN "baserom.gbc",$1E0000,$4000

SECTION "bank79", ROMX, BANK[$79]
INCBIN "baserom.gbc",$1E4000,$4000

SECTION "bank7A", ROMX, BANK[$7A]
INCBIN "baserom.gbc",$1E8000,$4000

SECTION "bank7B", ROMX, BANK[$7B]
INCBIN "baserom.gbc",$1EC000,$4000

SECTION "bank7C", ROMX, BANK[$7C]
INCBIN "baserom.gbc",$1F0000,$4000

SECTION "bank7D", ROMX, BANK[$7D]
INCBIN "baserom.gbc",$1F4000,$4000

SECTION "bank7E", ROMX, BANK[$7E]
INCBIN "baserom.gbc",$1F8000,$4000

SECTION "bank7F", ROMX, BANK[$7F]
INCBIN "baserom.gbc",$1FC000,$4000

SECTION "bank80", ROMX, BANK[$80]
INCBIN "baserom.gbc",$200000,$4000

SECTION "bank81", ROMX, BANK[$81]
INCBIN "baserom.gbc",$204000,$4000

SECTION "bank82", ROMX, BANK[$82]
INCBIN "baserom.gbc",$208000,$4000

SECTION "bank83", ROMX, BANK[$83]
INCBIN "baserom.gbc",$20C000,$4000

SECTION "bank84", ROMX, BANK[$84]
INCBIN "baserom.gbc",$210000,$4000

SECTION "bank85", ROMX, BANK[$85]
INCBIN "baserom.gbc",$214000,$4000

SECTION "bank86", ROMX, BANK[$86]
INCBIN "baserom.gbc",$218000,$4000

SECTION "bank87", ROMX, BANK[$87]
INCBIN "baserom.gbc",$21C000,$4000

SECTION "bank88", ROMX, BANK[$88]
INCBIN "baserom.gbc",$220000,$4000

SECTION "bank89", ROMX, BANK[$89]
INCBIN "baserom.gbc",$224000,$4000

SECTION "bank8A", ROMX, BANK[$8A]
INCBIN "baserom.gbc",$228000,$4000

SECTION "bank8B", ROMX, BANK[$8B]
INCBIN "baserom.gbc",$22C000,$4000

SECTION "bank8C", ROMX, BANK[$8C]
INCBIN "baserom.gbc",$230000,$4000

SECTION "bank8D", ROMX, BANK[$8D]
INCBIN "baserom.gbc",$234000,$4000

SECTION "bank8E", ROMX, BANK[$8E]
INCBIN "baserom.gbc",$238000,$4000

SECTION "bank8F", ROMX, BANK[$8F]
INCBIN "baserom.gbc",$23C000,$4000

SECTION "bank90", ROMX, BANK[$90]
INCBIN "baserom.gbc",$240000,$4000

SECTION "bank91", ROMX, BANK[$91]
INCBIN "baserom.gbc",$244000,$4000

SECTION "bank92", ROMX, BANK[$92]
INCBIN "baserom.gbc",$248000,$4000

SECTION "bank93", ROMX, BANK[$93]
INCBIN "baserom.gbc",$24C000,$4000

SECTION "bank94", ROMX, BANK[$94]
INCBIN "baserom.gbc",$250000,$4000

SECTION "bank95", ROMX, BANK[$95]
INCBIN "baserom.gbc",$254000,$4000

SECTION "bank96", ROMX, BANK[$96]
INCBIN "baserom.gbc",$258000,$4000

SECTION "bank97", ROMX, BANK[$97]
INCBIN "baserom.gbc",$25C000,$4000

SECTION "bank98", ROMX, BANK[$98]
INCBIN "baserom.gbc",$260000,$4000

SECTION "bank99", ROMX, BANK[$99]
INCBIN "baserom.gbc",$264000,$4000

SECTION "bank9A", ROMX, BANK[$9A]
INCBIN "baserom.gbc",$268000,$4000

SECTION "bank9B", ROMX, BANK[$9B]
INCBIN "baserom.gbc",$26C000,$4000

SECTION "bank9C", ROMX, BANK[$9C]
INCBIN "baserom.gbc",$270000,$4000

SECTION "bank9D", ROMX, BANK[$9D]
INCBIN "baserom.gbc",$274000,$4000

SECTION "bank9E", ROMX, BANK[$9E]
INCBIN "baserom.gbc",$278000,$4000

SECTION "bank9F", ROMX, BANK[$9F]
INCBIN "baserom.gbc",$27C000,$4000

SECTION "bankA0", ROMX, BANK[$A0]
INCBIN "baserom.gbc",$280000,$4000

SECTION "bankA1", ROMX, BANK[$A1]
INCBIN "baserom.gbc",$284000,$4000

SECTION "bankA2", ROMX, BANK[$A2]
INCBIN "baserom.gbc",$288000,$4000

SECTION "bankA3", ROMX, BANK[$A3]
INCBIN "baserom.gbc",$28C000,$4000

SECTION "bankA4", ROMX, BANK[$A4]
INCBIN "baserom.gbc",$290000,$4000

SECTION "bankA5", ROMX, BANK[$A5]
INCBIN "baserom.gbc",$294000,$4000

SECTION "bankA6", ROMX, BANK[$A6]
INCBIN "baserom.gbc",$298000,$4000

SECTION "bankA7", ROMX, BANK[$A7]
INCBIN "baserom.gbc",$29C000,$4000

SECTION "bankA8", ROMX, BANK[$A8]
INCBIN "baserom.gbc",$2A0000,$4000

SECTION "bankA9", ROMX, BANK[$A9]
INCBIN "baserom.gbc",$2A4000,$4000

SECTION "bankAA", ROMX, BANK[$AA]
INCBIN "baserom.gbc",$2A8000,$4000

SECTION "bankAB", ROMX, BANK[$AB]
INCBIN "baserom.gbc",$2AC000,$4000

SECTION "bankAC", ROMX, BANK[$AC]
INCBIN "baserom.gbc",$2B0000,$4000

SECTION "bankAD", ROMX, BANK[$AD]
INCBIN "baserom.gbc",$2B4000,$4000

SECTION "bankAE", ROMX, BANK[$AE]
INCBIN "baserom.gbc",$2B8000,$4000

SECTION "bankAF", ROMX, BANK[$AF]
INCBIN "baserom.gbc",$2BC000,$4000

SECTION "bankB0", ROMX, BANK[$B0]
INCBIN "baserom.gbc",$2C0000,$4000

SECTION "bankB1", ROMX, BANK[$B1]
INCBIN "baserom.gbc",$2C4000,$4000

SECTION "bankB2", ROMX, BANK[$B2]
INCBIN "baserom.gbc",$2C8000,$4000

SECTION "bankB3", ROMX, BANK[$B3]
INCBIN "baserom.gbc",$2CC000,$4000

SECTION "bankB4", ROMX, BANK[$B4]
INCBIN "baserom.gbc",$2D0000,$4000

SECTION "bankB5", ROMX, BANK[$B5]
INCBIN "baserom.gbc",$2D4000,$4000

SECTION "bankB6", ROMX, BANK[$B6]
INCBIN "baserom.gbc",$2D8000,$4000

SECTION "bankB7", ROMX, BANK[$B7]
INCBIN "baserom.gbc",$2DC000,$4000

SECTION "bankB8", ROMX, BANK[$B8]
INCBIN "baserom.gbc",$2E0000,$4000

SECTION "bankB9", ROMX, BANK[$B9]
INCBIN "baserom.gbc",$2E4000,$4000

SECTION "bankBA", ROMX, BANK[$BA]
INCBIN "baserom.gbc",$2E8000,$4000

SECTION "bankBB", ROMX, BANK[$BB]
INCBIN "baserom.gbc",$2EC000,$4000

SECTION "bankBC", ROMX, BANK[$BC]
INCBIN "baserom.gbc",$2F0000,$4000

SECTION "bankBD", ROMX, BANK[$BD]
INCBIN "baserom.gbc",$2F4000,$4000

SECTION "bankBE", ROMX, BANK[$BE]
INCBIN "baserom.gbc",$2F8000,$4000

SECTION "bankBF", ROMX, BANK[$BF]
INCBIN "baserom.gbc",$2FC000,$4000

SECTION "bankC0", ROMX, BANK[$C0]
INCBIN "baserom.gbc",$300000,$4000

SECTION "bankC1", ROMX, BANK[$C1]
INCBIN "baserom.gbc",$304000,$4000

SECTION "bankC2", ROMX, BANK[$C2]
INCBIN "baserom.gbc",$308000,$4000

SECTION "bankC3", ROMX, BANK[$C3]
INCBIN "baserom.gbc",$30C000,$4000

SECTION "bankC4", ROMX, BANK[$C4]
INCBIN "baserom.gbc",$310000,$4000

SECTION "bankC5", ROMX, BANK[$C5]
INCBIN "baserom.gbc",$314000,$4000

SECTION "bankC6", ROMX, BANK[$C6]
INCBIN "baserom.gbc",$318000,$4000

SECTION "bankC7", ROMX, BANK[$C7]
INCBIN "baserom.gbc",$31C000,$4000

SECTION "bankC8", ROMX, BANK[$C8]
INCBIN "baserom.gbc",$320000,$4000

SECTION "bankC9", ROMX, BANK[$C9]
INCBIN "baserom.gbc",$324000,$4000

SECTION "bankCA", ROMX, BANK[$CA]
INCBIN "baserom.gbc",$328000,$4000

SECTION "bankCB", ROMX, BANK[$CB]
INCBIN "baserom.gbc",$32C000,$4000

SECTION "bankCC", ROMX, BANK[$CC]
INCBIN "baserom.gbc",$330000,$4000

SECTION "bankCD", ROMX, BANK[$CD]
INCBIN "baserom.gbc",$334000,$4000

SECTION "bankCE", ROMX, BANK[$CE]
INCBIN "baserom.gbc",$338000,$4000

SECTION "bankCF", ROMX, BANK[$CF]
INCBIN "baserom.gbc",$33C000,$4000

SECTION "bankD0", ROMX, BANK[$D0]
INCBIN "baserom.gbc",$340000,$4000

SECTION "bankD1", ROMX, BANK[$D1]
INCBIN "baserom.gbc",$344000,$4000

SECTION "bankD2", ROMX, BANK[$D2]
INCBIN "baserom.gbc",$348000,$4000

SECTION "bankD3", ROMX, BANK[$D3]
INCBIN "baserom.gbc",$34C000,$4000

SECTION "bankD4", ROMX, BANK[$D4]
INCBIN "baserom.gbc",$350000,$4000

SECTION "bankD5", ROMX, BANK[$D5]
INCBIN "baserom.gbc",$354000,$4000

SECTION "bankD6", ROMX, BANK[$D6]
INCBIN "baserom.gbc",$358000,$4000

SECTION "bankD7", ROMX, BANK[$D7]
INCBIN "baserom.gbc",$35C000,$4000

SECTION "bankD8", ROMX, BANK[$D8]
INCBIN "baserom.gbc",$360000,$4000

SECTION "bankD9", ROMX, BANK[$D9]
INCBIN "baserom.gbc",$364000,$4000

SECTION "bankDA", ROMX, BANK[$DA]
INCBIN "baserom.gbc",$368000,$4000

SECTION "bankDB", ROMX, BANK[$DB]
INCBIN "baserom.gbc",$36C000,$4000

SECTION "bankDC", ROMX, BANK[$DC]
INCBIN "baserom.gbc",$370000,$4000

SECTION "bankDD", ROMX, BANK[$DD]
INCBIN "baserom.gbc",$374000,$4000

SECTION "bankDE", ROMX, BANK[$DE]
INCBIN "baserom.gbc",$378000,$4000

SECTION "bankDF", ROMX, BANK[$DF]
INCBIN "baserom.gbc",$37C000,$4000

SECTION "bankE0", ROMX, BANK[$E0]
INCBIN "baserom.gbc",$380000,$4000

SECTION "bankE1", ROMX, BANK[$E1]
INCBIN "baserom.gbc",$384000,$4000

SECTION "bankE2", ROMX, BANK[$E2]
INCBIN "baserom.gbc",$388000,$4000

SECTION "bankE3", ROMX, BANK[$E3]
INCBIN "baserom.gbc",$38C000,$4000

SECTION "bankE4", ROMX, BANK[$E4]
INCBIN "baserom.gbc",$390000,$4000

SECTION "bankE5", ROMX, BANK[$E5]
INCBIN "baserom.gbc",$394000,$4000

SECTION "bankE6", ROMX, BANK[$E6]
INCBIN "baserom.gbc",$398000,$4000

SECTION "bankE7", ROMX, BANK[$E7]
INCBIN "baserom.gbc",$39C000,$4000

SECTION "bankE8", ROMX, BANK[$E8]
INCBIN "baserom.gbc",$3A0000,$4000

SECTION "bankE9", ROMX, BANK[$E9]
INCBIN "baserom.gbc",$3A4000,$4000

SECTION "bankEA", ROMX, BANK[$EA]
INCBIN "baserom.gbc",$3A8000,$4000

SECTION "bankEB", ROMX, BANK[$EB]
INCBIN "baserom.gbc",$3AC000,$4000

SECTION "bankEC", ROMX, BANK[$EC]
INCBIN "baserom.gbc",$3B0000,$4000

SECTION "bankED", ROMX, BANK[$ED]
INCBIN "baserom.gbc",$3B4000,$4000

SECTION "bankEE", ROMX, BANK[$EE]
INCBIN "baserom.gbc",$3B8000,$4000

SECTION "bankEF", ROMX, BANK[$EF]
INCBIN "baserom.gbc",$3BC000,$4000

SECTION "bankF0", ROMX, BANK[$F0]
INCBIN "baserom.gbc",$3C0000,$4000

SECTION "bankF1", ROMX, BANK[$F1]
INCBIN "baserom.gbc",$3C4000,$4000

SECTION "bankF2", ROMX, BANK[$F2]
INCBIN "baserom.gbc",$3C8000,$4000

SECTION "bankF3", ROMX, BANK[$F3]
INCBIN "baserom.gbc",$3CC000,$4000

SECTION "bankF4", ROMX, BANK[$F4]
INCBIN "baserom.gbc",$3D0000,$4000

SECTION "bankF5", ROMX, BANK[$F5]
INCBIN "baserom.gbc",$3D4000,$4000

SECTION "bankF6", ROMX, BANK[$F6]
INCBIN "baserom.gbc",$3D8000,$4000

SECTION "bankF7", ROMX, BANK[$F7]
INCBIN "baserom.gbc",$3DC000,$4000

SECTION "bankF8", ROMX, BANK[$F8]
INCBIN "baserom.gbc",$3E0000,$4000

SECTION "bankF9", ROMX, BANK[$F9]
INCBIN "baserom.gbc",$3E4000,$4000

SECTION "bankFA", ROMX, BANK[$FA]
INCBIN "baserom.gbc",$3E8000,$4000

SECTION "bankFB", ROMX, BANK[$FB]
INCBIN "baserom.gbc",$3EC000,$4000

SECTION "bankFC", ROMX, BANK[$FC]
INCBIN "baserom.gbc",$3F0000,$4000

SECTION "bankFD", ROMX, BANK[$FD]
INCBIN "baserom.gbc",$3F4000,$4000

SECTION "bankFE", ROMX, BANK[$FE]
INCBIN "baserom.gbc",$3F8000,$4000

SECTION "bankFF", ROMX, BANK[$FF]
INCBIN "baserom.gbc",$3FC000,$4000
