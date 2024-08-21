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

# Insert the key created in 1 lab (Ubuntu)
cat <<"EOF" > /home/hlibko/.ssh/authorized_keys
ssh-rsa AAA****
EOF

chmod 750 /home/hlibko/
sha256 /home/hlibko/.ssh/authorized_keys
# SHA256 (/home/hlibko/.ssh/authorized_keys) = af6ba092fd04ff4ca61fb9c1fac628b437cab48eca2182230b588cfd2fc1b99f
