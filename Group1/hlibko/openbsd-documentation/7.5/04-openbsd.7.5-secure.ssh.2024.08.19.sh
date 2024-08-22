#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Secure SSH
##########################################################

# Link the RCS directory for version control
ln -s /root/RCS /etc/ssh/RCS

# Change to the SSH configuration directory
cd /etc/ssh/

# Initialize the sshd_config file under version control
ci -t- -u /etc/ssh/sshd_config
# /etc/ssh/sshd_config,v  <--  /etc/ssh/sshd_config
# initial revision: 1.1
# done

# Check out the sshd_config file for editing
co -l /etc/ssh/sshd_config
# /etc/ssh/sshd_config,v  -->  /etc/ssh/sshd_config
# revision 1.1 (locked)
# done

# Apply the patch to secure SSH
cat <<EOF | patch -p0
===================================================================
RCS file: /etc/ssh/RCS/sshd_config,v
retrieving revision 1.1
diff -u -r1.1 /etc/ssh/sshd_config
--- /etc/ssh/sshd_config        2021/07/02 05:11:21     1.1
+++ /etc/ssh/sshd_config        2024/08/20 01:51:13
@@ -1,4 +1,4 @@
-#      $OpenBSD: sshd_config,v 1.104 2021/07/02 05:11:21 dtucker Exp $
+#      $OpenBSD: sshd_config,v 1.104 2021/07/02 05:11:21 dtucker Exp $

 # This is the sshd server system-wide configuration file.  See
 # sshd_config(5) for more information.
@@ -35,7 +35,7 @@
 # Authentication:

 #LoginGraceTime 2m
-PermitRootLogin yes
+PermitRootLogin no
 #StrictModes yes
 #MaxAuthTries 6
 #MaxSessions 10
@@ -63,7 +63,7 @@
 #IgnoreRhosts yes

 # To disable tunneled clear text passwords, change to no here!
-#PasswordAuthentication yes
+PasswordAuthentication no
 #PermitEmptyPasswords no

 # Change to no to disable s/key passwords
EOF

# Hmm...  Looks like a unified diff to me...
# The text leading up to this was:
# --------------------------
# |===================================================================
# |RCS file: /etc/ssh/RCS/sshd_config,v
# |retrieving revision 1.1
# |diff -u -r1.1 /etc/ssh/sshd_config
# |--- /etc/ssh/sshd_config        2021/07/02 05:11:21     1.1
# |+++ /etc/ssh/sshd_config        2024/08/20 01:51:13
# --------------------------
# Patching file /etc/ssh/sshd_config using Plan A...
# Hunk #1 succeeded at 1 with fuzz 1.
# Hunk #2 succeeded at 27 (offset -8 lines).
# Hunk #3 succeeded at 60 (offset -3 lines).
# done

# Check in the sshd_config file with the appropriate message
ci -t- -m"Securing SSH" -u /etc/ssh/sshd_config
# /etc/ssh/RCS/sshd_config,v  <--  /etc/ssh/sshd_config
# revision 1.2 (unlocked)
# done

# Reload SSH service to apply changes
kill -HUP `cat /var/run/sshd.pid`

ssh hlibko@172.20.10.12
# Enter passphrase for key '/home/hlibko/.ssh/DESKTOP-R272VD1':
# OpenBSD 7.5 (GENERIC) #79: Wed Mar 20 15:33:49 MDT 2024

# Welcome to OpenBSD: The proactively secure Unix-like operating system.

# Please use the sendbug(1) utility to report bugs in the system.
# Before reporting a bug, please try to reproduce it with the latest
# version of the code.  With bug reports, please try to ensure that
# enough information to reproduce the problem is enclosed, and if a
# known fix for it exists, include that as well.

# -bash-5.2$
