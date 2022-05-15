.PHONY: all clean

all: hbss.gbc

hbss.gbc:
	+gup -u hpss.gbc

clean:
	gup --clean -f
