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

useradd -m goose
usermod -G wheel goose
chsh -s /usr/local/bin/bash goose
fwa# ssh-keygen -t rsa -b 4096 -f ~/.ssh/goose
# Generating public/private rsa key pair.
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:
# Your identification has been saved in /root/.ssh/goose
# Your public key has been saved in /root/.ssh/goose.pub
# The key fingerprint is:
# SHA256:4ZB2hQXJAD5vSrzIcUtLURJ0aQjrbQ33ECJEt9Zbsus root@fwa.admin.jenseneducation.se
# The key's randomart image is:
# +---[RSA 4096]----+
# | o=oB+=+.=o      |
# |   =.Boo+.       |
# |  . B.O +        |
# | . + O @ .       |
# |  o O * S        |
# | . O * .         |
# |  o = .          |
# |     .           |
# |      E          |
# +----[SHA256]-----+
cat .ssh/goose.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDnsP+swk46r7nXyI0uW4mKWEXCPaFgxSugd2WkY681aA7G/cxp2sAxRcAXX55c6xEW/IGWAoR0Ga8K7Eg/uAuAzhoVXUGirkvM0ZHvcVOSqK25jZwYh+49UZoulPJcxRq4ZKuvZpRvMVKUrGVaABZpD7cLm5S/W7moKsgPf8Uk9xaiSBDzwNXPHDLjlpkO4/M52iKr5osrYqbhne9+00fMYSvKpXBWfc1KAfyK+hwTshsX4QreuCIzkQl4ySylO7qAkAP6UJPlo5UaCSBevZ+Ay6sIdq/j5Zyq83dq+CkF5SHZnhZAEtelILtd+lfv+Z/HWZkxKeXcR+I0lsxlx7+0CeOzxm5DZaNk2hCl9FbSfEnuAHZTQeCn70Dr0achLkobEk1DqiQn07JQHlXpUJyHojxX3tUo5Q3KAdImk2FpNIE0JIjtaz1cYWP+qsBauTDPPYs4liunMUaEcTvbWTORk7wrOeDqeT6xo2bALrVjrT7YYmuD4xKS9Z0dwDkzYNWCtWNy6OU+Th/zkclHVJJFcB2VaYPyy+a0pgpSzIMy4jKBvX+iYKaxM3sleD1pBjEBVzS12Q5rGPh8WuQaT3bYNkJdaumNsCzj7TBJxRl5J93xTKewu7yi279jnFrCTRwCnkHcKwzXwUUIcDKP3ZYAcyxcKy+Y7c7Y4NNWWb85w== root@fwa.admin.jenseneducation.se
cat <<"EOF" > /home/goose/.ssh/authorized_keys
cat .ssh/goose.pub
Y4NNWWb85w== root@fwa.admin.jenseneducation.se                <
EOF
usage: at [-bm] [-f file] [-l [job ...]] [-q queue] -t time_arg | timespec
       at -c | -r job ...
chmod 750 /home/goose/
sha256 /home/goose/.ssh/authorized_keys
# SHA256 (/home/goose/.ssh/authorized_keys) = e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# fwa#
