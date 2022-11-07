PREFIX ?= /usr
MANDIR = $(PREFIX)/share/man

all:
	@echo RUN \'make install\' to install brem

install:
	@install -Dm755 brem $(DESTDIR)$(PREFIX)/bin/brem
	@mkdir -p $(DESTDIR)$(MANDIR)/man1
	@cp -p man/brem.1 $(DESTDIR)$(MANDIR)/man1

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/brem
	@rm -rf $(DESTDIR)$(MANDIR)/man1/brem.1*
