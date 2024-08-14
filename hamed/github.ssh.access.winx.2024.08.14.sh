#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# Den begärda åtgärden kräver en privilegiehöjning.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# Den begärda åtgärden lyckades. Ändringarna kommer inte att träda i kraft förrän datorn startats om.
# # - reboot computer
# # - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "hamed"
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
# /home/hamed/.hushlogin file.
# hamed@Hamed:~$

# - Open WSL
sudo apt update
# [sudo] password for hamed:
# Sorry, try again.
# [sudo] password for hamed:
# Hit:1 http://security.ubuntu.com/ubuntu jammy-security InRelease
# Hit:2 http://archive.ubuntu.com/ubuntu jammy InRelease
# Hit:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease
# Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
# [...]
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following packages have been kept back:
#   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl update-manager-core
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bsdutils amd64 1:2.37.2-4ubuntu3.4 [80.9 kB]
# Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 coreutils amd64 8.32-4.1ubuntu1.2 [1437 kB]
# [...]

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config
#   fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base javascript-common
#   libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6
# [...]
#   python3-setuptools python3-wheel python3.10-dev rpcsvc-proto zlib1g-dev
# 0 upgraded, 68 newly installed, 0 to remove and 2 not upgraded.
# Need to get 72.3 MB of archives.
# After this operation, 243 MB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config
#   fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base javascript-common
#   libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6
# [....]

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
# 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 1s (28.5 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# rah9Ahkaobeo@Shuyee3Xoh8aez3ahb2Zei1Ooqu
# oheepieng2ahd#ah0Azi!zai8aiZ&e|ne+epha5c
# ioshaiY^eocheiSh5etai4zeeth3Quohth6eeT8w
# pu=pee'choch7au2yo3OoNg%o4ohPhaeghie9taB
# ael7iexaeQuae7ux8Thooth`u"x+ooyooth|ah0a
# eeng9Vah0oongeeg.ie4mahtie0ieth7ePh"oo6o
# vohngi1ohThei8ohxohdaecaehahpai|Feekietu
# ahpaix3Nae6eteijagahf6hah2lohgie=yeheegi
# AhjooThoo=d5IeteecheS9phae9bae2fie7EipeL
# BaeHaeheege2Aichux4ji5na3agh"iu3ooseij&o
# ya7Ixi1eex5Sae3ieyeiYie+chei6vahleiThug<
# Dae(x8Vaucho_y0Eedooya4aesh.a7angahtaima
# nae2taengeeGh\ooShoo6Bei$z5xoh>cheighiep
# poh6vu5aekai?j@o8yiux}omohr8isoo_r4Eph?u
# Ahw0Ar'oot?aewa1we5eicho8aseib2eengoo<ng
# wath0fe2Ro1li2aiquoo4thahR1me$sib$ooN1xu
# usoh7Quoh0eoy5Kooh<oohoch8Uaph1eod0eeQu2
# Ooc6Quohcai6uuT)egh2AiP%oh5yoo7eo5fiehee
# io$zei3gaich5eishooFo-the3aexo6jeiphu6ph
# pie8quoob0iChiqu1te8Bei0Ahk8Jo"seemu<fai

##########################################################
# Get ready to setup github access with ssh
##########################################################

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
# 0 upgraded, 5 newly installed, 0 to remove and 2 not upgraded.
# Need to get 799 kB of archives.
# After this operation, 6157 kB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.10 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.10 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/lenovo
Enter passphrase (empty for no passphrase): "Ahw0Ar'oot?aewa1we5eicho8aseib2eengoo<ng"
Enter same passphrase again: "Ahw0Ar'oot?aewa1we5eicho8aseib2eengoo<ng"
# Your identification has been saved in /home/hamed/.ssh/lenovo
# Your public key has been saved in /home/hamed/.ssh/lenovo.pub
# The key fingerprint is:
# SHA256:2cj4VEvVfkrNuiS9RVMzM0nkunoAYhWEuw32/QV+ARQ hamed@Hamed
# The key's randomart image is:
# +---[RSA 4096]----+
# |        oo. oE+o.|
# |       . . . .o*.|
# |        o o  ..+*|
# |       O B . .+o=|
# |      + S = .+.=o|
# |       + o o..*o.|
# |        .   o+o+ |
# |            .oo  |
# |           ..    |
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

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
# Building dependency tree... 0%
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.

# - fetch pubkey
cat .ssh/lenovo.pub
# **********

# - upload to github through web browser
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"lenovo.pub"

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
# Cloning into 'KB-FEB24'...
# The authenticity of host 'github.com (140.82.121.4)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/hamed/.ssh/lenovo': "************"
# remote: Enumerating objects: 37, done.
# remote: Counting objects: 100% (37/37), done.
# remote: Compressing objects: 100% (32/32), done.
# remote: Total 37 (delta 13), reused 12 (delta 1), pack-reused 0 (from 0)
# Receiving objects: 100% (37/37), 24.44 KiB | 8.15 MiB/s, done.
# Resolving deltas: 100% (13/13), done.

# - Push changes to remote repository
cd ~/src/KB-FEB24
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

git checkout -b "correct-old-doc"
mkdir hamed
cd hamed

# - IMPORTANT
# - Create new file using text editor of choice, then push it to github


