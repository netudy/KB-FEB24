#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Secure SSH
##########################################################

cat <<"EOF" > /etc/ssh/sshd_config
Port 10037
PermitRootLogin no
PubkeyAuthentication yes
AuthorizedKeysFile  .ssh/authorized_keys
PasswordAuthentication no
Subsystem   sftp    /usr/libexec/sftp-server
EOF

kill -HUP `cat /var/run/sshd.pid`

# - open new terminal tab
ssh -p 10037 hlibko@172.20.10.10
