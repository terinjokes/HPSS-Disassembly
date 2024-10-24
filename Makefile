.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all compare clean

ifneq (,$(shell which b2sum))
CHKSUM_ALGO := b2
endif

all: hpss.gbc

hpss.o: hpss.asm include/hardware.inc
	rgbasm -P include/hardware.inc -o $@ $(filter %.asm, $<)

hpss.gbc: hpss.o
	rgblink -o $@ $<
	rgbfix --color-only \
		   --ram-size 0x02 \
		   --old-license 0x33 \
		   --new-license "69" \
		   --mbc-type 0x1B \
		   --rom-version 0x00 \
		   --non-japanese \
		   --title "HARRYPOTTER" \
		   --game-id "BHVE" \
		   --validate \
		   --pad-value 0xFF $@

compare:
ifdef CHKSUM_ALGO
	b2sum --check hpss.b2sum
else
	shasum --check hpss.shasum
endif

clean:
	$(RM) *.o hpss.gbc
