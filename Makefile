PREFIX ?= /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo RUN \'make install\' to install brem
	@echo RUN \'make uninstall\' to uninstall brem
	@echo RUN \'make manpage\' to generate a man page for brem

manpage:
	@if [ -f "/usr/bin/pandoc" ]; then \
		pandoc -s -t man man/brem.1.md -o man/brem.1; \
		echo "SUCCESS: manpage generated"; \
	else \
		echo "ERROR: could not generate manpage. Pandoc not found."; \
	fi

install:
	@install -Dm755 brem $(DESTDIR)$(PREFIX)/bin/brem
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p man/brem.1 $(DESTDIR)$(MANDIR)/man1

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/brem
	@rm -rf $(DESTDIR)$(MANDIR)/man1/brem.1*
