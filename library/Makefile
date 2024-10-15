
CROSSPREFIX=/opt/cross-mint/bin/m68k-atari-mint-
PATH = /opt/cross-mint/m68k-atari-mint/bin:/opt/cross-mint/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
LD_LIBRARY_PATH=/opt/cross-mint/lib:/opt/cross-mint/m68k-atari-mint/lib:$LD_LIBRARY_PATH
DESTDIR=/opt/cross-mint/m68k-atari-mint

CC = $(CROSSPREFIX)gcc
AS = $(CC)
AR = $(CROSSPREFIX)ar
RANLIB = $(CROSSPREFIX)ranlib
STRIP = $(CROSSPREFIX)strip
FLAGS = $(CROSSPREFIX)flags

CFLAGS = -I../include -W -Wno-array-parameter -Wno-stringop-overflow

OFLAGS = -Wall -O2 -fomit-frame-pointer

PSA_OBJS = aes.c aesni.c aesce.c aria.c asn1parse.c asn1write.c base64.c bignum.c bignum_core.c bignum_mod.c bignum_mod_raw.c block_cipher.c \
           camellia.c ccm.c chacha20.c chachapoly.c cipher.c cipher_wrap.c constant_time.c cmac.c ctr_drbg.c des.c dhm.c \
           ecdh.c ecdsa.c ecjpake.c ecp.c ecp_curves.c ecp_curves_new.c entropy.c entropy_poll.c error.c gcm.c hkdf.c hmac_drbg.c \
           lmots.c lms.c md.c md5.c memory_buffer_alloc.c nist_kw.c oid.c padlock.c pem.c pk.c pk_ecc.c pk_wrap.c pkcs12.c pkcs5.c pkparse.c pkwrite.c \
           platform.c platform_util.c poly1305.c psa_crypto.c psa_crypto_aead.c psa_crypto_cipher.c psa_crypto_client.c psa_crypto_driver_wrappers_no_static.c \
           psa_crypto_ecp.c psa_crypto_ffdh.c psa_crypto_hash.c psa_crypto_mac.c psa_crypto_pake.c psa_crypto_rsa.c psa_crypto_se.c \
           psa_crypto_slot_management.c psa_crypto_storage.c psa_its_file.c psa_util.c ripemd160.c \
           rsa.c rsa_alt_helpers.c sha1.c sha256.c sha512.c sha3.c threading.c timing.c timing_alt.c version.c version_features.c

X509_OBJS = pkcs7.c x509.c x509_create.c x509_crl.c x509_crt.c x509_csr.c x509write.c x509write_crt.c x509write_csr.c

TLS_OBJS = debug.c mps_reader.c mps_trace.c net_sockets.c ssl_cache.c ssl_ciphersuites.c ssl_client.c ssl_cookie.c ssl_debug_helpers_generated.c \
           ssl_msg.c ssl_ticket.c ssl_tls.c ssl_tls12_client.c ssl_tls12_server.c ssl_tls13_keys.c ssl_tls13_server.c ssl_tls13_client.c ssl_tls13_generic.c


libmbedcrypto.a:
	$(CC) $(CFLAGS) -m68000 $(OFLAGS) -c $(PSA_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedcrypto.a $(DESTDIR)/lib/libmbedcrypto.a
	rm -f *.o libmbedcrypto.a
	$(CC) $(CFLAGS) -m68020-60 $(OFLAGS) -c $(PSA_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedcrypto.a $(DESTDIR)/lib/m68020-60/libmbedcrypto.a
	rm -f *.o libmbedcrypto.a
	$(CC) $(CFLAGS) -mcpu=5475 $(OFLAGS) -c $(PSA_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedcrypto.a $(DESTDIR)/lib/m5475/libmbedcrypto.a
	rm -f *.o libmbedcrypto.a
	$(CC) $(CFLAGS) -m68040 $(OFLAGS) -c $(PSA_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedcrypto.a $(DESTDIR)/lib/m68040/libmbedcrypto.a
	rm -f *.o libmbedcrypto.a

libmbedx509.a:
	$(CC) $(CFLAGS) -m68000 $(OFLAGS) -c $(X509_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedx509.a $(DESTDIR)/lib/libmbedx509.a
	rm -f *.o libmbedx509.a
	$(CC) $(CFLAGS) -m68020-60 $(OFLAGS) -c $(X509_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedx509.a $(DESTDIR)/lib/m68020-60/libmbedx509.a
	rm -f *.o libmbedx509.a
	$(CC) $(CFLAGS) -mcpu=5475 $(OFLAGS) -c $(X509_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedx509.a $(DESTDIR)/lib/m5475/libmbedx509.a
	rm -f *.o libmbedx509.a
	$(CC) $(CFLAGS) -m68040 $(OFLAGS) -c $(X509_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedx509.a $(DESTDIR)/lib/m68040/libmbedx509.a
	rm -f *.o libmbedx509.a

libmbedtls.a:
	$(CC) $(CFLAGS) -m68000 $(OFLAGS) -c $(TLS_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedtls.a $(DESTDIR)/lib/libmbedtls.a
	rm -f *.o libmbedtls.a
	$(CC) $(CFLAGS) -m68020-60 $(OFLAGS) -c $(TLS_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedtls.a $(DESTDIR)/lib/m68020-60/libmbedtls.a
	rm -f *.o libmbedtls.a
	$(CC) $(CFLAGS) -mcpu=5475 $(OFLAGS) -c $(TLS_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedtls.a $(DESTDIR)/lib/m5475/libmbedtls.a
	rm -f *.o libmbedtls.a
	$(CC) $(CFLAGS) -m68040 $(OFLAGS) -c $(TLS_OBJS)
	$(AR) -rcs $@ *.o
	$(AR) s $@
	cp libmbedtls.a $(DESTDIR)/lib/m68040/libmbedtls.a
	rm -f *.o libmbedtls.a

clean:
	rm -f *.o libmbedtls.a
