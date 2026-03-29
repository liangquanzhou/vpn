PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

.PHONY: install uninstall

install:
	install -d $(BINDIR)
	install -m 755 bin/vpn $(BINDIR)

uninstall:
	rm -f $(BINDIR)/vpn
