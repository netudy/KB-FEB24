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
Enter new UNIX username: "serge"
New password: "7777"
Retype new password: "7777"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage

# This message is shown once a day. To disable it please create the
# /home/serge/.hushlogin file.
# serge@Dell:~$

# - Open WSL
sudo apt update
[sudo] password for serge: "7777"
# Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# [...]
# Fetched 9498 kB in 2s (3828 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 5 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following packages have been kept back:
#   python3-update-manager update-manager-core
# The following packages will be upgraded:
# The following NEW packages will be installed:
# [...]
Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ubuntu-minimal amd64 1.481.3 [2742 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ubuntu-standard amd64 1.481.3 [2764 B]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ubuntu-wsl amd64 1.481.3 [2586 B]
# [...]

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config
#   fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base javascript-common
#   libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl
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
#   pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (154 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# Ahpei8DaLe5keewaap1eem7xo1ohrah@chazaed8
# neib2aiphoo3Uu7za2hoh8goh~ch5So9eish>u5x
# foo7thei9eethae;rait1Aer6mie5fa9Bee[voh2
# Ahtoo~coo3eeSuYoh&x6aiYoongaoPh[ee0eeng&
# Cei3eet]e6Meemai)L5ahh<ohch3eingoo5thoz:
# ietai7te7jae{t1eikei9Aeth.ie,C3quufi3sho
# Ahph0eivo_i,l4ieFaimohghae7woGamahnahB}u
# aequasulohs2Aethae6enoo6Mosh9eef3aeThu>i
# Ahthaen6OV7fie3shith0quah2seiM1noh6oht/e
# lu)Dai!f3OoThoh3moo^r6Ri1ohGh0ei!bieth5a
# oof_i8pie5ahlei2bei&Haeph9iec3ah4pis$ie^
# aisuaw8Ohgh5aim9hooBu6lig0aesh"ee4geen3u
# quee6Hue8maxesaiSh9oo1Ohxa5Se2er$aepo.Qu
# osoo7Eep0Eighohphoo7fah,m&ae4kida:Ghoopu
# meiphong`ohzi*u1ohSah6faivei9aijiaNuo1ji
# Sohhae4Fahha6nahl3zee\rae"B7soo)sho5inga
# fu7VaiReih*eethohj5ov-aaph0pohy7Uph6xaek
# ahbaexoeV3xie=v2aY4ChapuisiGae5quei1io'z
# quaiD:ait0xeid1eem7am)eekie8oux_e7eitho4
# Iaf`aih|ahiej8ezaech8Voh~Z0sie@X1quau8ae

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
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/dell
Enter passphrase (empty for no passphrase): "Ahpei8DaLe5keewaap1eem7xo1ohrah@chazaed8"
Enter same passphrase again: "Ahpei8DaLe5keewaap1eem7xo1ohrah@chazaed8"
# Your identification has been saved in /home/serge/.ssh/dell
# Your public key has been saved in /home/serge/.ssh/dell.pub
# The key fingerprint is:
# SHA256:if49c5T1EsPZXn337nRmxeIWarceq1bSUQCKdTV1NBg serge@Dell
# The key's randomart image is:
# +---[RSA 4096]----+
# |          . oE*=+|
# |         o o . .+|
# |        . .  . +.|
# |       . .    B.*|
# |      . S    +o*B|
# |     .      +o+o=|
# |      .    .oo=o=|
# |       . .o.oo Bo|
# |        . .=.o+..|
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start
[sudo] password for serge: "7777"

# - allow ssh in firewall (Do not allow)
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
cat .ssh/dell.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC3aZs65fx/uNzUOYddmO9X1x4G9mSb/pr8tu1+6d8aCRc9aJ1pT0S5dgXtrjOo7ydgbLvgOC1bmNrYg3fQ9DNMyYcEaQoC0ug+9rnMCrb2fIfoV9rYAbxrSJlSWRNz16ScYBgRMoeu1bkEyLHgUZtp07GnsSjPPHvNRkoyd2zVbvD3q8Y6RTCL/thszmsiyU75+SSN5ujjWNXjBW43SZ7cNldg1U0pmy2hkDVx1X9IQROqhhx+70xiXMAlsE7zRfq3sOXZ+KTSv+UZrRL5EEsSScOzIdtsIcr16Q7uH5/9WKTZ4fe8ahG2HWFCjKbfAy6M7THZDcHHbQ/BLqtzZLGZXYelW4VK2I3wlvEfy1njEgraM7Id84XqfKq76dmwOGLqJ7jN9P52dhh9YQTY7WBZJkFS++VGlPnpqRdewKsnEzvjL336s+9OSOcihc4Kj2nRT4EdrprhDXp+vA/qW8ywC2nmHBxSMVWkvT10jaCnCS72OoHmg1juP+1nc8fZI171pZfvyZ8lUHAG4PsUf/lXZ/WYbXyWK/Q57vGgoEbxDSdAfyzrCa56TvM+GPMbDMfDcEFbApHTGph8f2JU2HGFS+3xcUyw13qjgFpSygSt6jJ8YSeIkJOkRUSIor8I97WBXcnb74gNKa/pKVRydhZngmBhLpinNWDsQUrFE5hJQQ== serge@Dell

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"dell"

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
  IdentityFile ~/.ssh/dell
EOF

# - verify
cat ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/dell

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-SEP23'...
Enter passphrase for key '/home/serge/.ssh/dell': "******"
# remote: Enumerating objects: 20, done.
# remote: Counting objects: 100% (20/20), done.
# remote: Compressing objects: 100% (13/13), done.
# remote: Total 20 (delta 5), reused 18 (delta 3), pack-reused 0
# Receiving objects: 100% (20/20), 11.29 KiB | 2.26 MiB/s, done.
# Resolving deltas: 100% (5/5), done.

# - Push changes to remote repository
cd KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

git checkout -b "serge_doc_verification"
mkdir serge
cd serge

# - IMPORTANT:
# - COPY AND PASTE ABOVE IN A NEW FILE, USE TEXT EDITOR OF CHOICE

##########################################################
# push to remote branch
##########################################################

git add github.ssh.access.winx.2024.08.13.sh 
git status
# On branch serge_doc_verification
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   github.ssh.access.winx.2024.08.13.sh

git config --global user.name "serge kar"
git config --global user.email no@email.com
git commit -am "correct missing info, remove useless shit"

git push --set-upstream origin serge_doc_verification
Enter passphrase for key '/home/serge/.ssh/dell': "**********"
# Enumerating objects: 5, done.
# Counting objects: 100% (5/5), done.
# Delta compression using up to 4 threads
# Compressing objects: 100% (4/4), done.
# Writing objects: 100% (4/4), 4.41 KiB | 1.10 MiB/s, done.
# Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
# remote: Resolving deltas: 100% (1/1), completed with 1 local object.
# remote:
# remote: Create a pull request for 'serge_doc_verification' on GitHub by visiting:
# remote:      https://github.com/JensenEducationKista/KB-FEB24/pull/new/serge_doc_verification
# remote:
# To github.com:JensenEducationKista/KB-FEB24.git
#  * [new branch]      serge_doc_verification -> serge_doc_verification
# Branch 'serge_doc_verification' set up to track remote branch 'serge_doc_verification' from 'origin'.
