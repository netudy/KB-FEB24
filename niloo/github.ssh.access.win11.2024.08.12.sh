#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
# Enter new UNIX username: 0000
# adduser: Please enter a username matching the regular expression configured
# via the NAME_REGEX[_SYSTEM] configuration variable.  Use the `--force-badname'
# option to relax this check or reconfigure NAME_REGEX.
# Enter new UNIX username: niloo
# New password:
# Retype new password:
# passwd: password updated successfully
# The operation completed successfully.
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/niloo/.hushlogin file.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "niloo"
New password: "0000"
Retype new password: "0000"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/aliz/.hushlogin file.
# aliz@AliZ:~$

# - Open WSL
sudo apt update
# [sudo] password for niloo:
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# # [...]
# Fetched 33.1 MB in 18s (1810 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
#   ubuntu-pro-client
# The following packages have been kept back:
#   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl update-manager-core
# The following packages will be upgraded:
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]
# [...]

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc-dev-bin amd64 2.35-0ubuntu3.8 [20.3 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-libc-dev amd64 5.15.0-118.128 [1342 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libcrypt-dev amd64 1:4.4.27-1 [112 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 rpcsvc-proto amd64 1.4.2-0ubuntu6 [68.5 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libtirpc-dev amd64 1.3.2-2ubuntu0.1 [192 kB]
# [...]
##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following NEW packages will be installed:
#   pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 10s (1709 B/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# aav]ei6GiPh8paeh:aes6faiphaesh)ouQuoh6be
# goefoomaiY6amuak2yipai8aew6ga:ugeo4rie7t
# sijuoxaephe6ieyaiquaexeing6liiShai%r"ieS
# jah5theiphohshah"tiexeech3ohghie>s4tee1E
# ahs"eu%s1don.ee,Ng0lei7chooth[ithe9leesa
# ohDei|v0Bee3peesh7ooWee3eisuuMae7eij3oi:
# yei5Adee2haiJ"ee0eequ3aJu4ZieY}ah^i2Suum
# eech*equo8Suiha7co6agh0oovar=ohs3ohf5eir
# eetheiGaip1xi0Ohsh_aish6ueShi<sh#uneipho
# ahK7Thol*ol8duof7QuooShiewoo7kie}B0ohY|u
# nuBeiN1Eid5quo3ooNu3iep=ul6iaz7Iech1aete
# Jo0aeph:eas!iet6quoh*xesh-ish9phiepohKi&
# iej1phieJahshai)fe9yu7aoBae6iech1ahD8oak
# xubu0eu6uy6eeL!ooyae?sh1pa[agohlaetae~sh
# phoo=ghiofae;la5Aechoocoh"l6ANg7phaech3o
# kee"t<ieDaiN5oopie8Quae+W8Che7ogooshohs2
# Ge0hiaGi[H6Yoosh4ahmae4Eech0Iezaebai]poh
# mah]deG8uuxit6Zaiy/eequuph9ahteexai0Ooso
# tha3phah5equeC3caequie2vaoghebai#lu0Ahy4
# Lieveing8Och!ie3quefaeS%ahwaewua0mo5euwe

# - check if ssh service is running
sudo service ssh status
# Unit ssh.service could not be found.

# - in wsl install openssh
sudo apt install openssh-server
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   libwrap0 ncurses-term openssh-sftp-server ssh-import-id
# Suggested packages:
#   molly-guard monkeysphere ssh-askpass
# The following NEW packages will be installed:
#   libwrap0 ncurses-term openssh-server openssh-sftp-server ssh-import-id
# 0 upgraded, 5 newly installed, 0 to remove and 5 not upgraded.
# Need to get 799 kB of archives.
# After this operation, 6157 kB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.10 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.10 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy/main amd64 ssh-import-id all 5.11-0ubuntu1 [10.1 kB]
# Fetched 799 kB in 11s (72.2 kB/s)
# Preconfiguring packages ...
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/microsoft
Enter passphrase (empty for no passphrase): "ohDei|v0Bee3peesh7ooWee3eisuuMae7eij3oi:"
Enter same passphrase again: "ohDei|v0Bee3peesh7ooWee3eisuuMae7eij3oi:"
# Your identification has been saved in /home/niloo/.ssh/microsoft
# Your public key has been saved in /home/niloo/.ssh/microsoft.pub
# The key fingerprint is:
# SHA256:pFHlgmQiNPS5GR0wqCxXEJAnOdGKtBpw975nY7Rl8oU niloo@Niloo
# The key's randomart image is:
# +---[RSA 4096]----+
# |oOB++.+ ...      |
# |*.=+oB + .       |
# |=B.o+.+ o .      |
# |*o.  +.+ .       |
# |oo  o.. S  .     |
# |.     . o E .    |
# |       o * .     |
# |      . * .      |
# |       + .       |
# +----[SHA256]-----+


# - start ssh service
sudo service ssh start

systemctl status ssh
# ● ssh.service - OpenBSD Secure Shell server
#      Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor prese>
#      Active: active (running) since Tue 2024-08-13 10:26:40 CEST; 23h ago
#        Docs: man:sshd(8)
#              man:sshd_config(5)
#    Main PID: 6549 (sshd)
#       Tasks: 1 (limit: 4526)
#      Memory: 1.7M
#      CGroup: /system.slice/ssh.service
#              └─6549 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startup>
# Aug 13 10:26:40 Niloo systemd[1]: Starting OpenBSD Secure Shell server...
# Aug 13 10:26:40 Niloo sshd[6549]: Server listening on 0.0.0.0 port 22.
# Aug 13 10:26:40 Niloo sshd[6549]: Server listening on :: port 22.
# Aug 13 10:26:40 Niloo systemd[1]: Started OpenBSD Secure Shell server.

# - allow ssh in firewall
sudo ufw allow ssh
[sudo] password for niloo: "0000"
# Rules updated
# Rules updated (v6)

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
# - fetch pubkey

cat ~/.ssh/microsoft.pub
# **************

# - upload to github via web broweser
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"microsoft"

# Key type
"[Authentication Key↕]"

# Key
"****************"

"Add SSH key"

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/microsoft
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-FEB24'...
# The authenticity of host 'github.com (140.82.121.3)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/niloo/.ssh/microsoft': "*****"
# remote: Enumerating objects: 49, done.
# remote: Counting objects: 100% (49/49), done.
# remote: Compressing objects: 100% (42/42), done.
# remote: Total 49 (delta 19), reused 21 (delta 3), pack-reused 0 (from 0)
# Receiving objects: 100% (49/49), 29.27 KiB | 810.00 KiB/s, done.
# Resolving deltas: 100% (19/19), done.

# - Push changes to remote repository
cd KB-FEB24
mkdir niloo
cd niloo
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean
