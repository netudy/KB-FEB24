#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
 wsl --install -d ubuntu
# The requested operation requires elevation.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# The requested operation is successful. Changes will not be effective until the system is rebooted.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "banoo"
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
# /home/banoo/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for banoo: "0000"
# Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# [...]
# Fetched 31.8 MB in 24s (1305 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 105 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
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
# [...]
Do you want to continue? [Y/n] "y"

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
# Fetched 17.4 kB in 0s (45.4 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31448 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# pooWail}o8oobie1Oogh2aej0phueP*ohjoob1fi
# uaGhoh5shi.ph9Wu4ohtoph-iep!eev'aeCa+n2s
# quook6It^aevaihah'y{ie0ieh1Toodeiqu1oiqu
# chair6aiD[ae7eThiGh"aepheutes4sooR9xiv4a
# Quohquahth"oh0oog9ue]p3eisheij4eVaeJaing
# oD4leemoo6meidae6dohgh`oe8hulohph0aiNg}a
# eenaif1die?s6phoosh8Okeiweekohx6noo&h|ei
# mi`f5phei,Goo>g7tiemah~ch8aey7oi2oecoNg0
# buu:Ghah=Yohshohch5xohkooPay4quohsahRuof
# ai\thohS7eeGh5ieB1reigh1ohgeneataeN4ieTh
# zu2tais8iezaiphu5ahgio7Ahshio+foo1eequ1k
# ohTie8Ieh2Ahn6eef7eul.aecie4ia7mee4tei6A
# poaw7thaifai5au5bo^dohPai+Ci7oovae6queih
# la5ueghaikai0neif7am1quei8yoe:n4aiNgah3a
# eep6phae2phohcoo7oofeiPh<oh>g#ah2thi'o4n
# raes+ah4shuaTh2quo$i0oghii"botei5aiz6jos
# chi0tah|hieshe3wieghi1eoRahshei6oozangae
# ahghiexaefeaRad8shac1eeP2laegh:e@o{caeTh
# coDoe9mahmoomoo[x&eez(ai0fei3kae0eque7oo
# woh{Joo4xaa5il)ahs6thee|l9Quahyaefoh3ota

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
# Need to get 800 kB of archives.
# After this operation, 6161 kB of additional disk space will be used.
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.7 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.7 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/hp.envy
Enter passphrase (empty for no passphrase): "zu2tais8iezaiphu5ahgio7Ahshio+foo1eequ1k"
Enter same passphrase again: "zu2tais8iezaiphu5ahgio7Ahshio+foo1eequ1k"

# Your identification has been saved in /home/banoo/.ssh/hp.envy
# Your public key has been saved in /home/banoo/.ssh/hp.envy.pub
# The key fingerprint is:
# SHA256:uRpApATMjrifWFLCS/qFHGHf/kA7XldMhXGeN+MtQEM banoo@DESKTOP-71CAJH6
# The key's randomart image is:
# +---[RSA 4096]----+
# |+.. .      .E+o  |
# | +oo       .o+ . |
# |=..o..     o. oo.|
# |++o.. o  .  o...+|
# |o=.o.o .S  .  ...|
# |+.+ ..= ...    . |
# | * o ..=..       |
# |. +   .o.        |
# |      .          |
# +----[SHA256]-----+

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
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.

# - fetch pubkey
cat .ssh/hp.envy.pub
# ****************

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"hp.envy"

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
  IdentityFile ~/.ssh/hp.envy
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-FEB24'...
Enter passphrase for key '/home/banoo/.ssh/hp.envy': "******"
# remote: Enumerating objects: 20, done.
# remote: Counting objects: 100% (20/20), done.
# remote: Compressing objects: 100% (13/13), done.
# remote: Total 20 (delta 5), reused 18 (delta 3), pack-reused 0
# Receiving objects: 100% (20/20), 11.29 KiB | 2.26 MiB/s, done.
# Resolving deltas: 100% (5/5), done.

# - Push changes to remote repository
cd KB-FEB24/Group1
mkdir banoo
cd banoo
cd src/KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# Untracked files:
#   (use "git add <file>..." to include in what will be committed)

# nothing added to commit but untracked files present (use "git add" to track)
git checkout -b "banoo-doc-verification"
git add *
git status
# On branch banoo_doc_verification
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   github.ssh.access.winx.2024.08.20.sh

git config --global user.name "Banoo"
git config --global user.email "banoowafasayedkhadem@email.com"
git commit -am "verify previous documentation"
# On branch main
# Your branch is ahead of 'origin/main' by 1 commit.
#   (use "git push" to publish your local commits)

# nothing to commit, working tree clean
git push --set-upstream origin banoo-doc-verification
