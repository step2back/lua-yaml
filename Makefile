PREFIX = /usr/local
LIBDIR = $(PREFIX)/lib/lua/5.1

CC = gcc
CFLAGS = -O2 -Wall -shared -fPIC
LDFLAGS = -shared -fPIC -lyaml

OBJS = lyaml.o b64.o

all: yaml.so

yaml.so: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

install: all
	install -Dpm0755 yaml.so $(DESTDIR)$(LIBDIR)/yaml.so

uninstall:
	$(RM) $(DESTDIR)$(LIBDIR)/yaml.so

clean:
	$(RM) $(OBJS) yaml.so


.PHONY: all install uninstall clean
