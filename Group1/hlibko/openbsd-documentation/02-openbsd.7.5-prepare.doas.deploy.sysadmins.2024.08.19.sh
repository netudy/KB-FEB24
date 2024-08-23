#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Prepare doas
##########################################################

# Create the RCS directory for version control
# mkdir -p `pwd`/RCS
# ln -s `pwd`/RCS /etc/RCS
mkdir /root/RCS
ln -s /root/RCS /etc/RCS

# Create default doas.conf configuration file
cp /etc/examples/doas.conf /etc/

# Initialize the doas.conf file under version control
ci -t- -u /etc/doas.conf
# /etc/RCS/doas.conf,v  <--  /etc/doas.conf
# initial revision: 1.1
# done

# Check out the doas.conf file for editing
co -l /etc/doas.conf
# /etc/RCS/doas.conf,v  -->  /etc/doas.conf
# revision 1.1 (locked)
# done

# Edit doas.conf configuration file.
# Allow wheel by default and DO NOT ask for password 
# every time 'doas' command is executed
cat <<"EOF" > /etc/doas.conf
permit nopass keepenv :wheel
EOF

# Check in the doas.conf file with the appropriate message
ci -t- -m"Allow wheel by default" -u /etc/doas.conf
# /etc/RCS/doas.conf,v  <--  /etc/doas.conf
# revision 1.2 (unlocked)
# done

# View commit logs
rcsdiff doas.conf
# ===================================================================
# RCS file: RCS/doas.conf,v
# retrieving revision 1.2
# diff -r1.2 doas.conf
# fwa# rlog doas.conf

# RCS file: RCS/doas.conf,v
# Working file: doas.conf
# head: 1.2
# branch:
# locks: strict
# access list:
# symbolic names:
# keyword substitution: kv
# total revisions: 2;     selected revisions: 2
# description:
# ----------------------------
# revision 1.2
# date: 2024/08/21 22:26:25;  author: root;  state: Exp;  lines: +1 -14;
# Allow wheel by default
# ----------------------------
# revision 1.1
# date: 2024/08/21 22:22:18;  author: root;  state: Exp;
# Initial revision
# =============================================================================

# View the differences between the current (working) version
# and the last one saved in RCS
rcsdiff /root/RCS/doas.conf,v
# ===================================================================
# RCS file: doas.conf,v
# retrieving revision 1.2
# diff -r1.2 doas.conf,v
# 1c1,53
# < permit nopass keepenv :wheel
# ---
# > head  1.2;
# > access;
# > symbols;
# > locks; strict;
# > comment       @# @;
# >
# >
# > 1.2
# > date  2024.08.21.22.26.25;    author root;    state Exp;
# > branches;
# > next  1.1;
# >
# > 1.1
# > date  2024.08.21.22.22.18;    author root;    state Exp;
# > branches;
# > next  ;
# >
# >
# > desc
# > @@
# >
# >
# > 1.2
# > log
# > @Allow wheel by default
# > @
# > text
# > @permit nopass keepenv :wheel
# > @
# >
# >
# > 1.1
# > log
# > @Initial revision
# > @
# > text
# > @d1 1
# > a1 14
# > # $OpenBSD: doas.conf,v 1.1 2024/08/21 22:22:18 root Exp root $
# > # Configuration sample file for doas(1).
# > # See doas.conf(5) for syntax and examples.
# >
# > # Non-exhaustive list of variables needed to build release(8) and ports(7)
# > #permit nopass setenv { \
# > #    FTPMODE PKG_CACHE PKG_PATH SM_PATH SSH_AUTH_SOCK \
# > #    DESTDIR DISTDIR FETCH_CMD FLAVOR GROUP MAKE MAKECONF \
# > #    MULTI_PACKAGES NOMAN OKAY_FILES OWNER PKG_DBDIR \
# > #    PKG_DESTDIR PKG_TMPDIR PORTSDIR RELEASEDIR SHARED_ONLY \
# > #    SUBPACKAGE WRKOBJDIR SUDO_PORT_V1 } :wsrc
# >
# > # Allow wheel by default
# > permit keepenv :wheel
# > @

##########################################################
# Deploy sysadmins
##########################################################

# Create the user 'hlibko'
useradd -m hlibko

# Add 'hlibko' to the 'wheel' group
usermod -G wheel hlibko

# Check that the 'hlibko' user has been added
vipw
# root:$2b$10$NRcVWk3ICnFKjHVeiEEBfubLiMh2.3XfKw94peIjcKJkQD/uBY91y:0:0:daemon:0:0:Charlie &:/root:/bin/ksh
# daemon:*:1:1::0:0:The devil himself:/root:/sbin/nologin
# [...]
# nobody:*:32767:32767::0:0:Unprivileged user:/nonexistent:/sbin/nologin
# hlibko:*:1000:1000::0:0::/home/hlibko:/bin/ksh
getent group | grep wheel
# wheel:*:0:root,hlibko

# Set the shell for 'hlibko' from 'ksh' to 'bash'
chsh -s /usr/local/bin/bash hlibko
# Run 'vipw' for check
# hlibko:*:1000:1000::0:0::/home/hlibko:/usr/local/bin/bash


##########################################################
# Create the authorized_keys file for SSH
##########################################################

# Method 1 (Copying the public key manually).
# Copy the public key from the file '.ssh/<key_name>.pub' in Ubuntu
# and paste the below
cat <<"EOF" > /home/hlibko/.ssh/authorized_keys
# Your public key is here... uncomment the line and replace this text 
EOF

# Method 2 (Copying the public key using SSH).
# First, replace the 'IP address', 'public key' and 'user' name with your own.
# Then run the command in Ubuntu
# cat ~/.ssh/DESKTOP-R272VD1.pub | ssh root@172.20.10.12 "mkdir -p /home/hlibko/.ssh && touch /home/hlibko/.ssh/authorized_keys && chmod -R go= /home/hlibko/.ssh && cat >> /home/hlibko/.ssh/authorized_keys"

# Verify the SHA256 checksum of the authorized_keys file
sha256 /home/hlibko/.ssh/authorized_keys
# SHA256 (/home/hlibko/.ssh/authorized_keys) = af6ba092fd04ff4ca61fb9c1fac628b437cab48eca2182230b588cfd2fc1b99f

# Compare checksum with pubkey in Ubuntu
sha256sum ~/.ssh/DESKTOP-R272VD1.pub
# af6ba092fd04ff4ca61fb9c1fac628b437cab48eca2182230b588cfd2fc1b99f  /home/hlibko/.ssh/DESKTOP-R272VD1.pub

# Create ssh config (only for linux/windows environments, OSX won't need)
# Change the IP address and path to the private key to your own
cat <<"EOF" >> ~/.ssh/config
# OpenBSD
Host 172.20.10.12
  HostName 172.20.10.12
  IdentityFile ~/.ssh/DESKTOP-R272VD1
EOF

# Set the correct permissions for the user's home directory and SSH keys
chmod 750 /home/hlibko/
chmod 600 /home/hlibko/.ssh/authorized_keys
