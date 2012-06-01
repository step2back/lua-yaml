PREFIX = /usr/local
LIBDIR = $(PREFIX)/lib/lua/5.1

CC = gcc
CFLAGS = -O2 -Wall -shared -fPIC
LDFLAGS = -shared -fPIC -lyaml

yaml.so: lyaml.o b64.o
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

install: yaml.so
	install -Dpm0755 $< $(DESTDIR)$(LIBDIR)/$<

uninstall:
	$(RM) $(DESTDIR)$(LIBDIR)/yaml.so

clean:
	$(RM) *.o yaml.so


.PHONY: install uninstall clean
