
DESTDIR=/opt/cross-mint/m68k-atari-mint

# /opt/cross-mint/m68k-atari-mint/include/mbedtls has to be created manually
# /opt/cross-mint/m68k-atari-mint/include/psa has to be created manually

all:
	cd library && $(MAKE) libmbedcrypto.a && cd ..
	cd library && $(MAKE) libmbedx509.a && cd ..
	cd library && $(MAKE) libmbedtls.a && cd ..
	cp -r include/mbedtls/*.h $(DESTDIR)/include/mbedtls
	cp -r include/psa/*.h $(DESTDIR)/include/psa

clean:
	cd library && $(MAKE) clean && cd ..
