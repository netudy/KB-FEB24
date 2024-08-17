#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# # Den begärda åtgärden kräver en privilegiehöjning.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# Den begärda åtgärden lyckades. Ändringarna kommer inte att träda i kraft förrän datorn startats om.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

#Ubuntu har redan installerats.
#Startar Ubuntu ...
#Installing, this may take a few minutes...
#Please create a default UNIX user account. The username does not need to match your Windows username.
#For more information visit: https://aka.ms/wslusers
#Enter new UNIX username: dalmar1111
#New password: 0000
#Retype new password: 0000
#passwd: password updated successfully
#Installation successful!
#To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage


This message is shown once a day. To disable it please create the
/home/dalmar1111/.hushlogin file.
# dalmar1111@DESKTOP-JGKLN0S:~$

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/aliz/.hushlogin file.
# aliz@AliZ:~$

# - Open WSL
sudo apt update
[sudo] password for dalmar1111: "0000"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# [...]
# Fetched 9500 kB in 5s (1835 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# All packages are up to date.

sudo apt upgrade
#[sudo] password for dalmar1111:
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded. Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
# [...]
# Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]# 
# [...]

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# python3-pip is already the newest version (22.0.2+dfsg-1ubuntu0.4).
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.    
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc-dev-bin amd64 2.35-0ubuntu3.8 [20.3 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-libc-dev amd64 5.15.0-118.128 [1342 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libcrypt-dev amd64 1:4.4.27-1 [112 kB]
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
  # pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (93.9 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# ahx9yohNuf0yaetie/bah8ta4Jeigee0Yoh5xo9z
# rein3hoh6aja&paliehoogh4iquei3uo5seeQua2
# ophoh|phu8iy4uc3ohg3Ja8Goo9ahz0to3ietiev
# eel3oo{f\oo*m/ohh^a5vaiVa8oong2Keilailay
# ueh=aiChohph6Siegh7us6Rei(xooth1Id9ughee
# itheeNg9yu.ir4ieph3xoo3ke7eigee:c+iiPhai
# shei6soh6aiB.eexeiSh7oos7ichataT&oaxi1ae
# sha;ngosho<nei2oQuaig0ohn/a%four1Poomoo0
# ok2iaxie4Thu;doo2Thi7mahCh~a2nae8cee4ePh
# ahh9uth3va2ahX&aedooghaer6aevoqu5ohm+ooh
# eew7jae4hoopheiph2to[uNgohph9ruaV9gei1oo
# rei3oiPaib8akeek.eit.aezeloh4YierieT-eet
# ewie{xai_k3vah6doh[Ghie)xu7po5Ni8jaehah2
# aebe3ahtohghe)itho.do4yai4gaeCh5xee6uS(e
# eeb7OC6wah4EeXohvi8hae7oidil0da&ih5Rei^z
# AhThaiSh2viep8kai5aeph0gig2foh6Aec^oenoo
# aePh(e5dohghawaxeis8Yeim6eesho6xe"dahja8
# wo$u`k:ei7deP5Tiequ6ahr1eesh>oongai3phez
# vee1uJ{aiziu+thoti6io>Quio5Thoh:thoh7che
# chuf7quae%m9iru2fi5oos7thim3aeV9zaeT1bie

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
# 0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
# Need to get 799 kB of archives.
# After this operation, 6157 kB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.10 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.10 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
[...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/lenovo
Enter passphrase (empty for no passphrase): "chuf7quae%m9iru2fi5oos7thim3aeV9zaeT1bie"
Enter same passphrase again: "chuf7quae%m9iru2fi5oos7thim3aeV9zaeT1bie"
# Your identification has been saved in /home/dalmar1111/.ssh/lenovo
# Your public key has been saved in /home/dalmar1111/.ssh/lenovo.pub
# The key fingerprint is:
# SHA256:CqV343xrTlSTcR+3JeZx38j9JPSSKGSfWWXy8JgPcbw dalmar1111@DESKTOP-JGKLN0S
# The key's randomart image is:
# +---[RSA 4096]----+
# |    ooo...       |
# | . + +.o.. + .   |
# |  o o + .oE o .  |
# |     = o .o. .   |
# |    o + S o..o.  |
# |     + + = .=  . |
# |      B o    o...|
# |     o +     += o|
# |      .     o++=+|
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start
[sudo] password for dalmar1111: 0000

# - allow ssh in firewall
sudo ufw allow ssh
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
# 0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

# - fetch pubkey
cat .ssh/lenovo.pub
#ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCjMaktAV8KHgVnVfNG6IJQGVl7VFehLCP2C/0ruUbIomm5Zl/sKKzd+hnKM6XI2HmFVBRszQmcCFC/mHYk4u48zq3ENvahQmNx77DrZ9IAQ4yAVs+iqjQ4rHD3gOrq+3G0bzfu+tvunpfivsG7U/IVNR9ALUhdWDkQxoEyGO21dg/BsyawCyN22TOWFc4BWsu7x/GAmJv6sSVXKgFQmv2RmgjEm6VoYh0ItiQrTE5VeomtK9Hp2VhDAz4oy980tCf2oVDJoefVCB+po2aJWSNLZHT2MqbYWKjX1q68FrHTAXBVkW4USytT46hzkM2QohgYAoUUkIUsWXmbkrhq0qxOl5m9yDV6/bkIOjS9m37IlQ71m0aOn3ua3S8i4E1NHzIRU2W11PK2N8o3FeUesNUvcy4FogxwSBtwtxi8L9cU6PMRImbElP2tqxNxmHKwwPWt9DiB3r2PFckUT4veDyuyjCzfg8mIs/ish3H0jeaXYCO9zA+byKg1+cUXOvmgNcfU+at0BklRdEYQsjjTD2qDTcFTGQdFgLaBOmZcfy0JdP40vI2xdMEvG/sEM5wfBoWz5KJmugKtigJfFMGzInGO1cw29u76UxYjTIOn0bOMdc3+HtwmTkrGHbqwHXDZXk6G+diKHW8wc0G2oAO5s8CvNBHz3SDCq11fCZeYmfqKIw== dalmar1111@DESKTOP-JGKLN0S

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"lenovo"

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
  IdentityFile ~/.ssh/lenovo
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-SEP23'...
Enter passphrase for key '/home/dalmar1111/.ssh/lenovo': "******"
# remote: Enumerating objects: 94, done.
# remote: Counting objects: 100% (94/94), done.
# remote: Compressing objects: 100% (81/81), done.
# remote: Total 94 (delta 45), reused 35 (delta 9), pack-reused 0 (from 0)
# Receiving objects: 100% (94/94), 44.22 KiB | 397.00 KiB/s, done.
# Resolving deltas: 100% (45/45), done.
# - Push changes to remote repository
cd KB-FEB24
mkdir dalmar1111
cd dalmar1111
cd src/KB-FEB24
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#         Group3/ali/

# nothing added to commit but untracked files present (use "git add" to track)
git checkout -b "dalmar1111_doc_verification"
