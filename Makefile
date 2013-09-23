PREFIX=/usr/local/
CURRENTDIR=$(shell pwd)

all:
	@echo "make [intall|uninstall]"

install:
	mkdir -p $(PREFIX)/bin/ $(PREFIX)/share/man/man1/
	cp -af $(CURRENTDIR)/git-catch-up $(PREFIX)/bin/
	cp -af $(CURRENTDIR)/git-catch-up.1 $(PREFIX)/share/man/man1/

uninstall:
	rm -rf $(PREFIX)/share/man/man1/git-catch-up.1
	rm -rf $(PREFIX)/bin/git-catch-up

