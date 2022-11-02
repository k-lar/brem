PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install brem

install:
	@install -Dm755 brem $(DESTDIR)$(PREFIX)/bin/brem

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/brem
