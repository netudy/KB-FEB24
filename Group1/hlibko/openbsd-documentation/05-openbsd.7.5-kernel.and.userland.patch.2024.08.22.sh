#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Install src and ports
##########################################################

doas bash

# - fix clock first
rdate ntp1.sp.se
# Fri Aug 23 09:08:00 CEST 2024

# NWE soekris fix for small /usr filespace
mkdir /home/src
rm -rf /usr/src

# If 'Device busy', run the command
# umount /usr/src

ln -s /home/src /usr/src

cd /usr/src && wget http://ftp.eu.openbsd.org/pub/OpenBSD/$(uname -r)/sys.tar.gz
# 2024-08-23 09:09:44 (7.81 MB/s) - 'sys.tar.gz' saved [59838635/59838635]

cd /usr/src && wget http://ftp.eu.openbsd.org/pub/OpenBSD/$(uname -r)/src.tar.gz
# 2024-08-23 09:10:27 (7.83 MB/s) - 'src.tar.gz' saved [204284219/204284219]

time tar xzf sys.tar.gz && time tar xzf src.tar.gz

##########################################################
# Update kernel and userland using latest patches
##########################################################

# cd /usr/src && wget http://ftp.eu.openbsd.org/pub/OpenBSD/$(uname -r)/ports.tar.gz
# ln -s /usr/src/ports /usr/ports

# cd /usr/src && tar xzf ports.tar.gz
# cd /usr/ports/devel/grcs/
# make install
# cd /usr/bin/ && for file in rlog rcsmerge rcsdiff rcsclean rcs merge ident co ci; do mv $file o$file; \
#   ln -s /usr/local/bin/g$file /usr/bin/$file; done

# https://www.openbsd.org/errata75.html

cat <<"EOF" > /etc/do_patch_all.sh
cd /usr/src
rm -f 7.5.tar.gz
wget https://ftp.openbsd.org/pub/OpenBSD/patches/7.5.tar.gz

tar zxf 7.5.tar.gz

cd 7.5/common
# Apply by doing:
signify -Vep /etc/signify/openbsd-75-base.pub -x 001_xserver.patch.sig \
        -m - | (cd /usr/src && patch -p0)

signify -Vep /etc/signify/openbsd-75-base.pub -x 002_miniroot.patch.sig \
        -m - | (cd /usr/src && patch -p0)

signify -Vep /etc/signify/openbsd-75-base.pub -x 003_libcrypto.patch.sig \
        -m - | (cd /usr/src && patch -p0)

signify -Vep /etc/signify/openbsd-75-base.pub -x 004_bgpd.patch.sig \
        -m - | (cd /usr/src && patch -p0)

signify -Vep /etc/signify/openbsd-75-base.pub -x 005_sndiod.patch.sig \
        -m - | (cd /usr/src && patch -p0)

signify -Vep /etc/signify/openbsd-75-base.pub -x 006_cron.patch.sig \
        -m - | (cd /usr/src && patch -p0)

# And then rebuild and install a new kernel:
    KK=`sysctl -n kern.osversion | cut -d# -f1`
    cd /usr/src/sys/arch/`machine`/compile/$KK
    make obj
    make config
    make
    make install

cd /usr/src/lib/libcrypto
    make obj
    make includes
    make
    make install

# And then rebuild and install libexpat:
    cd /usr/src/lib/libexpat
    make obj
    make
    make install
EOF

time sh /etc/do_patch_all.sh