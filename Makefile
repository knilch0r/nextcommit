.PHONY: all install uninstall clean

all clean:
	echo "nothing to do."

PREFIX ?= /usr/local

TOOLZ = nextnc nextrc nextbc

install:
	$(foreach tool, $(TOOLZ), install $(tool) $(PREFIX)/bin ;)

uninstall:
	rm -f $(addprefix $(PREFIX)/bin/, $(TOOLZ))

