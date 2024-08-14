#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# Den begärda åtgärden kräver en privilegiehöjning.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# Den begärda åtgärden lyckades. Ändringarna kommer inte att träda i kraft förrän datorn startats om.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu har redan installerats.
# Startar Ubuntu ...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "sherzad"
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
# /home/sherzad/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for sherzad: "0000"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# [...]
# Fetched 33.1 MB in 4s (7399 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

sud upgradeo apt
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
#   ubuntu-pro-client
# The following packages have been kept back:
#   python3-update-manager update-manager-core
# The following packages will be upgraded:
# [...]
Do you want to continue? [Y/n] "y"
# [...]

# - install python
 sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base
#   javascript-common libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6 libatomic1 libc-dev-bin
#   libc-devtools libc6-dev libcc1-0 libcrypt-dev libdeflate0 libdpkg-perl libexpat1-dev libfakeroot libfile-fcntllock-perl
#   libfontconfig1 libfreetype6 libgcc-11-dev libgd3 libgomp1 libisl23 libitm1 libjbig0 libjpeg-turbo8 libjpeg8 libjs-jquery
#   libjs-sphinxdoc libjs-underscore liblsan0 libmpc3 libnsl-dev libpython3-dev libpython3.10-dev libquadmath0 libstdc++-11-dev
#   libtiff5 libtirpc-dev libtsan0 libubsan1 libwebp7 libxpm4 linux-libc-dev lto-disabled-list make manpages-dev python3-dev
#   python3-distutils python3-lib2to3 python3-setuptools python3-wheel python3.10-dev rpcsvc-proto zlib1g-dev
# Suggested packages:
#   bzip2-doc cpp-doc gcc-11-locales debian-keyring g++-multilib g++-11-multilib gcc-11-doc gcc-multilib autoconf automake libtool
#   flex bison gdb gcc-doc gcc-11-multilib apache2 | lighttpd | httpd glibc-doc bzr libgd-tools libstdc++-11-doc make-doc
#   python-setuptools-doc
# The following NEW packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base
#   javascript-common libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6 libatomic1 libc-dev-bin
#   libc-devtools libc6-dev libcc1-0 libcrypt-dev libdeflate0 libdpkg-perl libexpat1-dev libfakeroot libfile-fcntllock-perl
#   libfontconfig1 libfreetype6 libgcc-11-dev libgd3 libgomp1 libisl23 libitm1 libjbig0 libjpeg-turbo8 libjpeg8 libjs-jquery
#   libjs-sphinxdoc libjs-underscore liblsan0 libmpc3 libnsl-dev libpython3-dev libpython3.10-dev libquadmath0 libstdc++-11-dev
#   libtiff5 libtirpc-dev libtsan0 libubsan1 libwebp7 libxpm4 linux-libc-dev lto-disabled-list make manpages-dev python3-dev
#   python3-distutils python3-lib2to3 python3-pip python3-setuptools python3-wheel python3.10-dev rpcsvc-proto zlib1g-dev
# 0 upgraded, 68 newly installed, 0 to remove and 2 not upgraded.
# Need to get 72.3 MB of archives.
# After this operation, 243 MB of additional disk space will be used.
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
# Fetched 17.4 kB in 0s (88.1 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# thee!y5rai7ceet8Eiza(yieRahth]ah1pheij\u
# kauQuae`cheeh(oo.ch#ioqu6piQu1haphahr4je
# shoo5ohZae\r2Eruatheey3waete8Quai1noo)Ja
# outh4biereerooy1Ieze5yiep5Ohji|c%eiph1ee
# jed1Faisheig9chaing7eig:u0Kaz7ieYoo4lohm
# Leem+eil1gae&p<iexai;l@a=u3AhmiexeChua7i
# to9tai'K9de8Wo5ohy5eep,aejah@j<id2Phi3ee
# mo]u?ye5ebu\t4Zeesh#a[F2Ohp@e4Eoh5ieB9me
# eengeihieshoo4Aemai7ae<w?e$e5la7Nie7leng
# aejii&ch7eith2Za4ug8ieMe3oathae%hohni6oh
# quee8thaeS9wooxohx[ochie9egheim6Oopoh6la
# kah6ao@boo3Xecei8ac0eewoo8molie3chu\pah9
# ued5go9ungo5queup[o3rie7eir<uW9Li3IeZiex
# ohQu4og8iechipho=thah8Xeiph2Ielai9Yee7ro
# chahz1zarot8eef~aeth8uo1le3ruK4Fah3Ua2Yo
# Shoogh6Aixe8ra6yaevu4OhlejahZae4hah4bud/
# uod8mie5reephah1aedo0ieQuihei1rooYue`Mee
# ee4ahjah6ohShoowo4ue"P8Iec#iecain2aigh1u
# aec1fieD3aeMieSha1eye1xielei9kei\Sh7saib
# zimai7aShohc4xaiD5ai0Loon2iequeixe_aL7ja

# - check if ssh service is running
sudo service ssh status
# Unit ssh.service could not be found.

# - in wsl install openssh
sudo apt install openssh-server
[sudo] password for sherzad: "0000"
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
# Do you want to continue? [Y/n] y
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.10 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.10 [435 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 ncurses-term all 6.3-2ubuntu0.1 [267 kB]
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/thinkpad
Enter passphrase (empty for no passphrase): "aejii&ch7eith2Za4ug8ieMe3oathae%hohni6oh"
Enter same passphrase again: "aejii&ch7eith2Za4ug8ieMe3oathae%hohni6oh"
# Your identification has been saved in /home/sherzad/.ssh/thinkpad
# Your public key has been saved in /home/sherzad/.ssh/thinkpad.pub
# The key fingerprint is:
# SHA256:ZxCLY1+s5VIMbTWzKY54OaOCOoEeNq0FVr+ZI4bDXkU sherzad@SherzadPC
# The key's randomart image is:
# +---[RSA 4096]----+
# |        o. .+    |
# |   . E . *o  =   |
# |  . o + o.B o    |
# | o   + + @ .     |
# |+ + . = S =      |
# |oB B = o *       |
# |+.X o o          |
# |.=   .           |
# |..               |
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
cat .ssh/thinkpad.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCslvvN6rG2Rpj9HOuzXazatToyiwDh/5sr+QtRMkch7lp8rqqOF7o+CzYU3dqKaHsIyspzpiQUTr4fwIEq0T+dhVh6LwuX9nLRcUsNP3m07Nwg8A9O5XALdRmFkVzSutGUtQHXaiPbBvKUB28zJNFfYL2sqNUE934Fwm4Bdob5gZF/uYyp8bV3dHpQryy5vqWUAyK9zAhCG4jd8b6BKT2y1/2KhHKBfxWjDaw51/TOzv0o6tzCUajDpT5K4B1wQ9AMWMUMfgYAsMIogtLTCZUMs64zkZaKxWj0IpuQClLidZSWbBXzTBVl5fKdeVGfJ4+cjm2FcRLMw7aPnFDju/DqkjFUpBkTBl4brOVPYDHBiJBoWWredKIev45RpWIG3SyqhZG+T0OaX7O0V/y2tpl28RouzdHK4tJtIHlQi4wE2J+t/Dr0iIeJ7CB8Qz2B3rZ9cgA1CD7JMZlb170lceiOIxeqeTjJf/2TIsiWEL/zdXnwYinwQfN873FB7U5EjgxTQlVEemBrpJvq4BZNIrATjzeJ1749nmUnzYXbl5JESZZX+QBYISwLSIbYkTPJBUX5ptB7sw7uvHNgFZaU3HwWCOu4JtF1fM4Z3K66kVwPzO9ay3/09t3DEkQqOb5r2/zLVd0/VFJKlEzd/XHX8w6l7mwyzdRMvNJV/fS6Ozy5Tw== sherzad@SherzadPC

# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"thinkpad"

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
  IdentityFile ~/.ssh/thinkpad
EOF

# - verify
cat ~/.ssh/config
# Host github.com
#   HostName github.com
#   User git
#   IdentityFile ~/.ssh/thinkpad

# - Create source directory
cd
mkdir src
cd src

##########################################################
# clone and push to github
##########################################################

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-FEB24'...
# The authenticity of host 'github.com (140.82.121.4)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Enter passphrase for key '/home/sherzad/.ssh/thinkpad': "aejii&ch7eith2Za4ug8ieMe3oathae%hohni6oh"
# remote: Enumerating objects: 21, done.
# remote: Counting objects: 100% (21/21), done.
# remote: Compressing objects: 100% (17/17), done.
# remote: Total 21 (delta 4), reused 10 (delta 0), pack-reused 0
# Receiving objects: 100% (21/21), 13.51 KiB | 1.50 MiB/s, done.
# Resolving deltas: 100% (4/4), done.

# - Push changes to remote repository
cd KB-FEB24
mkdir sherzad
cd sherzad
cd
cd src/KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

cd sherzad
git checkout -b "sherzad_doc_verification"
# Switched to a new branch 'francisco_doc_verification'

# - IMPORTANT:
# - Create a file with "nano" or "vi", paste this documentation there

git add github.ssh.access.winx.2024.08.12.sh
git status
# On branch sherzad_doc_verification
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   github.ssh.access.winx.2024.08.12.sh


