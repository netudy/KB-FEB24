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
Enter new UNIX username: "francisco"
New password:"0000"
Retype new password:"0000"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /home/francisco/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for francisco: "0000"
# Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Hit:2 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:4 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [1712 kB]
# [...]
# Fetched 33.1 MB in 4s (8388 kB/s)
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
# Reading package lists... Done95-1ubuntu2.17) ...
# Building dependency tree... Done1:22.04.19) ...
# Reading state information... Done10.12-1~22.04.5) ...
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11
#   gcc-11-base javascript-common libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl
# [...]
Do you want to continue? [Y/n] "y"

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
[sudo] password for francisco: "0000"
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following NEW packages will be installed:
#   pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (149 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# jae5hux+i8eyah5ahShaivu*Nuzoh5bilah~ch[i
# faich5eey1jaethohk2bahGhutha4xae|Gei-ch5
# thevoh{goophae$w`oh9miataeTh4YeecahPh7va
# aighoh0ooh3ouzua6kee"w/oocheiPh%ie4eewei
# ohphu2quo6jee8Saeph4queeXeef@i4quu2chei8
# Ahceeb3ahpei9uxeiLoh3ioch|oh<Vu=teaxahre
# ke9xa=rahphew8ooLoe+xae]naixoi'z7nai5lu"
# heinoom5AeT7EiGahg6zu^beeghaip1Eyaebohg\
# wie9xiu+ceiZahN1phaeB4YieJ$i7Een3uuVo4ki
# ieF7ooQu5aet7eikuxah/Wooteim?aikuNoi1eec
# lae3he9kiey9ihah6paiWagaehei-ghuas<ai6Ee
# puhaik3ohWahqu4oonei9aFohthahNeebah-ghui
# ahm7ahcahN0ihie:Lel"ao7eishamaik7coo9wae
# aivohl1baphoot1iel[oezee3queeghah5Shui8F
# ivooG1eikibae4eedooch=aepho0loocit6ahh2a
# Uv3Ohz9aet4gaecoh0eiGooNgah=m\e+r4deiqu4
# nee;Gh-ooyeef4aiL4phae$haixunoh?godooRei
# leeh\oh5iRoonah3maiD.i5weeD@aiwoociw$oo/
# Ahheup<aiw7eisah}h6aiN3ohr0quoug6Zeuph9p
# hai7aic3is|u6eeBe\thio5quu6aow8uyieth9Ab

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
ssh-keygen -t rsa -b 4096 -f ~/.ssh/hp.envy
# Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase):"ieF7ooQu5aet7eikuxah/Wooteim?aikuNoi1eec"
Enter same passphrase again:"ieF7ooQu5aet7eikuxah/Wooteim?aikuNoi1eec"
# Your identification has been saved in /home/francisco/.ssh/hp.envy
# Your public key has been saved in /home/francisco/.ssh/hp.envy.pub
# The key fingerprint is:
# SHA256:W+XVFckr5xfQjnBs3urMbe7hwp5Gw1hLPhOJmMpoMng francisco@GTZ
# The key's randomart image is:
# +---[RSA 4096]----+
# |            . o.+|
# |           . = =.|
# |          o B B o|
# |         o + X * |
# |  .   o S . B B .|
# | . E o o o . X ..|
# |  . +   .   * =..|
# |             Boo.|
# |            oo=+ |
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
cat .ssh/hp.envy.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOU4MEX3GcusH/yCLPaag4yj212NIrB8Psz2P45noCq5ZOdgGc9+ykbfJIQ/rJ/tbfgICZ9kmVW95PwSrcQaiPEiLe4ekB3+RBO4VuqXsaZwZF6hTGBYZj+E9MUiwhmx4Wtb9+/4l6qGC15hhVW6FdS87vIRyqioo9WbSWUiu6YxQqNWrxjwXxFKG4tpZ1KTiWmbqd0pslDh4IvneRnXOzJq6h4x7F59tucxv+LWVfmvwpWhwBEyfbKiUQq7a8prinxc2pBV7NLRYqvzk9woT6YdrIHIomWOZ1lqJjCin/w42+H3FVX4HffA/MKxMAqTrH1oMKxWCQy545vbB+diEMJ2CDYBvialTtFnI1d93luaAp0mVSg4qoK9RW1LLmnynj1GoNAasZrvSoYSg5TygDgEm/MYIs/0KWlkXDEWcw+u4OXhOanZNwOp7JV2sbCHRZ9pPQqTyNPKX++jIfjcP6gCOJNCuUPc3z8MHcm6uF2MFOVOtG31r1pDmfmxta+OlQlsAKbBGpdiFmmLaIynmu4sSn/L+6DKlrZnVRbogkx8AqncnsLVPXaRzj2h5spbnEt4DdKVnc278KsT03aGKszmGJwtG3iMTeTzumA/R30tHnkvLLc1UZL0JEkDqPfENmWAj+CWX3cGUJBwcZfMqNy6z0EDAF1cYoJyd5WWFkvw== francisco@GTZ

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
Enter passphrase for key '/home/francisco/.ssh/hp.envy': "******"
# remote: Enumerating objects: 9, done.
# remote: Counting objects: 100% (9/9), done.
# remote: Compressing objects: 100% (5/5), done.
# remote: Total 9 (delta 0), reused 6 (delta 0), pack-reused 0
# Receiving objects: 100% (9/9), 4.99 KiB | 4.99 MiB/s, done.

# - Push changes to remote repository
mkdir KB-FEB24/group1
cd KB-FEB24/group1
mkdir francisco
cd francisco
cd
cd src/KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.
# nothing to commit, working tree clean

# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#         group1/francisco/

# nothing added to commit but untracked files present (use "git add" to track)
git checkout -b "francisco_doc_verification"
# Switched to a new branch 'francisco_doc_verification'
git add *
git status
# On branch francisco_doc_verification
# nothing to commit, working tree clean

# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   group1/francisco/github.ssh.access.winx.2024.08.12.sh
git config --global user.name "Francisco gtz"
git config --global user.email no@email.com
git commit -am "verify previous documentation"
# On branch francisco_doc_verification
# nothing to commit, working tree clean

git push --set-upstream origin francisco_doc_verification
Enter passphrase for key '/home/francisco/.ssh/hp.envy': "****"
# Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
# remote:
# remote: Create a pull request for 'francisco_doc_verification' on GitHub by visiting:
# remote:      https://github.com/JensenEducationKista/KB-FEB24/pull/new/francisco_doc_verification
# remote:
# To github.com:JensenEducationKista/KB-FEB24.git
#  * [new branch]      francisco_doc_verification -> francisco_doc_verification
# Branch 'francisco_doc_verification' set up to track remote branch 'francisco_doc_verification' from 'origin'.
