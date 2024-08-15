#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation by goose
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# [...]
# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)
# [...]
# Enter new UNIX username: "goose"
# New password: "0000"
# Retype new password: "0000"
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
# /home/goose/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for goose:"0000"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# [...]
# Fetched 33.1 MB in 4s (7655 kB/s)
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
# 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (48.6 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 24242 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd6
# 4.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# EeJ1wio{j+ohy1yur8YeePhe7doo6lah6sach7Ph
# boi9uDoe&f8Aephi2Ruf2xi3ciej!ahkoo3pahv8
# Ienoo6aew6tu0keixie1foS6okai<fahz(aoquoo
# Thoom0eez#acu4Aew4ve+ifoht$ie8Fuge4Fea9i
# shei;s9eathie7uu]Pie6toorae2aizuy3zahv|a
# Uk7figae`T^eec8toh2Wuc9Phoe'D7iequ=eab9o
# vood5eegee5wa$pahqu0xu-j7Oof/ae-laishu6E
# oogh)ee9theequ3ge6ot1KishogahYeW3phiS3we
# xeu5thohm>i+liela7ech2aetohk7fo6eedi5juW
# hi]a-ngo;o+x{ai3Kuquahlueguhanae{ghea5bu
# yoosh?a6fulee}ho6ia2reep4Iesheeshaeyai0E
# ohC0Ohjapu3ahng8hie0eePh:ie5eec2EeF:aD]a
# Hoh2ong5joh]o(Sho\mah2ohd7aih4ahgieF3hie
# ohK1vie7shah(ghaoshoocoh|qu8Nei'v,udaith
# Aegh:ie7kaiMa8eep1aes6Ooh0ho<poo7deirah=
# gah.ch"a1ephi3aitie^y7Ahp!ae3xaiva|goa3s
# ohg9tah3foov(oos9ohPhoob8aunaa$wa0eevo2E
# Uxoh2ies6uu3xaeg^uW<u4Eo)tu=e!roo1vu8iew
# xoFohtaipheiwei3fee1eephu3nah7quei"qu_ah
# aeNaechais0xo:uyoh7oex2eish1eec~oo@yei,l

# - check if ssh service is running
sudo service ssh status
# Unit ssh.service could not be found.

# - in wsl install openssh
sudo apt install openssh-server
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   libwrap0 ncurses-term openssh-sftp-server
#   ssh-import-id
# Suggested packages:
#   molly-guard monkeysphere ssh-askpass
# The following NEW packages will be installed:
#   libwrap0 ncurses-term openssh-server
#   openssh-sftp-server ssh-import-id
# 0 upgraded, 5 newly installed, 0 to remove and 5 not upgraded.
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
ssh-keygen -t rsa -b 4096 -f ~/.ssh/goose
# Enter passphrase (empty for no passphrase): "8JC310WD#<p5euihwiudbdwundwind"
# Enter same passphrase again: "8JC310WD#<p5euihwiudbdwundwind"
# Your identification has been saved in /home/goose/.ssh/goose
# Your public key has been saved in /home/goose/.ssh/goose.pub
# The key fingerprint is:
# SHA256:sctnohNVHJoswrrn79r2jpaLxfKS3bebk6NkM/1i4wU goose@LAPTOP-8KN9M0IC
# The key's randomart image is:
# +---[RSA 4096]----+
# |         ...     |
# |   .   . oo      |
# |    o . =.       |
# |   . . ..o       |
# |  .    .S E      |
# |   . ... o .     |
# |  . ooo+O +..    |
# |   oo**=.*O+     |
# |    +BO=+==B.    |
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
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.

# - fetch pubkey
cat .ssh/goose.pub
# ****************

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"goose"

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
  IdentityFile ~/.ssh/goose
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
Enter passphrase for key '/home/goose/.ssh/goose': "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
Enter passphrase for key '/home/goose/.ssh/goose': "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
Enter passphrase for key '/home/goose/.ssh/goose': "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
# git@github.com: Permission denied (publickey).
# fatal: Could not read from remote repository.

# Please make sure you have the correct access rights
# and the repository exists.
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-FEB24'...
Enter passphrase for key '/home/goose/.ssh/goose': "8JC310WD#<p5euihwiudbdwundwind"
# remote: Enumerating objects: 104, done.
# remote: Counting objects: 100% (104/104), done.
# remote: Compressing objects: 100% (84/84), done.
# remote: Total 104 (delta 47), reused 49 (delta 15), pack-reused 0 (from 0)
# Receiving objects: 100% (104/104), 62.19 KiB | 636.00 KiB/s, done.
# Resolving deltas: 100% (47/47), done.

# - Push changes to remote repository
mkdir -p ~/src/KB-FEB24/goose/
cd ~/src/KB-FEB24/goose/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

cd goose
git checkout -b "goose-assignment"
# Switched to a new branch 'goose-assignment'

