.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all compare clean

ifneq (,$(shell which b2sum))
CHKSUM_ALGO := b2
endif

all: hpss.gbc

hpss.o: hpss.asm
	rgbasm -o $@ $<

hpss.gbc: hpss.o
	rgblink -o $@ $<

compare:
ifdef CHKSUM_ALGO
	b2sum --check hpss.b2sum
else
	shasum --check hpss.shasum
endif

clean:
	$(RM) *.o hpss.gbc
