# libmbedtls.a, libmbedcrypto.a, libmbedx509.a

From mbedtls 3.6.2 to /opt/cross-mint/m68k-atari-mint/lib/

Targets: 68000, 68020-060, ColdFire

# installation for makefiles

- /opt/cross-mint/m68k-atari-mint already installed 

- in an empty folder,  
   ```mkdir ./include/mbedtls```  
   ```mkdir ./include/psa```  
   ```mkdir ./library```  

- get [mbedtls-3.6.2.zip](https://ptonthat.fr/files/polarssl/mbedtls-3.6.2.zip), you'll need only to unpack  
   ```./include/mbedtls/*.h``` and  
   ```./include/psa/*.h``` and  
   ```./library/*.h``` and  
   ```./library/*.c``` to the present folders.  

- create includes folders in target,  
   ```mkdir /opt/cross-mint/m68k-atari-mint/include/mbedtls```  
   ```mkdir /opt/cross-mint/m68k-atari-mint/include/psa```  

- get [libmbedtls.a.r2.zip](https://ptonthat.fr/files/polarssl/sources/libmbedtls.a.r2.zip) and unpack the contents of /libmdbedtls.a/ to  
   ```./README.md```  
   ```./Makefile```  
   ```./include/mbedtls/mbedtls_config.h```  
   ```./include/mbedtls/timing_alt.h```  
   ```./library/Makefile```  
   ```./library/timing_alt.c```  
   ```./libmbedtls.xcodeproj```  

- libmbedtls.xcodeproj is for Xcode 16.0, you may not need it if you use something else.
