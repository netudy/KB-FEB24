#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Prepare doas
##########################################################

mkdir -p /local`pwd`/RCS
ln -s /local`pwd`/RCS RCS
mkdir /etc/doas

ci -t- -u /etc/doas
# /etc/doas,v  <--  /etc/doas

co -l /etc/doas
# /etc/doas,v  -->  /etc/doas
# no revisions present; generating empty revision 0.0
writable /etc/doas exists; remove it? [ny](n): "y"
# no revisions, so nothing can be locked
# co: /etc/doas: Is a directory
co -l /etc/doas
# /etc/doas,v  -->  /etc/doas
# no revisions present; generating empty revision 0.0
writable /etc/doas exists; remove it? [ny](n): "n"
# co: writable /etc/doas exists; checkout aborted

cat <<"EOF" > /etc/doas.conf
permit nopass keepenv :wheel
EOF

ci -t- -m"Enabled doas for wheel users. //$doas_USER" -u /etc/doas
# /etc/doas,v  <--  /etc/doas
chmod 440 /etc/doas

##########################################################
# Deploy sysadmins
##########################################################

useradd -m hlibko
usermod -G wheel hlibko
chsh -s /usr/local/bin/bash hlibko

ssh-keygen -t rsa -b 4096 -f ~/.ssh/authorized_keys -C `hostname`
# Your identification has been saved in /root/.ssh/authorized_keys
# Your public key has been saved in /root/.ssh/authorized_keys.pub
# The key fingerprint is:
# SHA256:S0TlHh07aPXkhMlLSQ1Uj4ZOaI/+9ClpBckEVKbczaM fwa.my.domain
# The key's randomart image is:
# +---[RSA 4096]----+
# |        .o+*OB+  |
# |       . o OB@.o |
# |        . X+BoO .|
# |       . + *=+ . |
# |        S o E.   |
# |       . o    .  |
# |        . . .o   |
# |           o+. . |
# |           ...o  |
# +----[SHA256]-----+
cat authorized_keys.pub
# ssh-rsa AAAAB3********
chmod 750 /home/hlibko/
sha256 /home/hlibko/.ssh/authorized_keys
# SHA256 (/home/hlibko/.ssh/authorized_keys) = e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
