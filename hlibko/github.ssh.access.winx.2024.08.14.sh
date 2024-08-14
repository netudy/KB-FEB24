#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# Installing, this may take a few minutes...
Enter new UNIX username: "hlibko"
New password: "123qwe"
Retype new password: "123qwe"
# passwd: password updated successfully
# Installation successful!
# Launching Ubuntu...
# [...]
# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)
# [...]
# This message is shown once a day. To disable it please create the
# /home/hlibko/.hushlogin file.

# - Open WSL
sudo apt update
[sudo] password for hlibko: "123qwe"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:3 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
# Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [1723 kB]
# Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [1947 kB]
# Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [343 kB]
# Get:8 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 c-n-f Metadata [17.8 kB]
# Get:9 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [2322 kB]
# Get:10 http://security.ubuntu.com/ubuntu jammy-security/main amd64 c-n-f Metadata [13.1 kB]
# Get:11 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [888 kB]
# Get:12 http://archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [400 kB]
# Get:13 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1111 kB]
# Get:14 http://archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [259 kB]
# Get:15 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 c-n-f Metadata [25.9 kB]
# Get:16 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [28.8 kB]
# Get:17 http://archive.ubuntu.com/ubuntu jammy-backports/universe Translation-en [16.5 kB]
# Get:18 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 c-n-f Metadata [672 B]
# Fetched 9481 kB in 3s (3756 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade -y
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
#   ubuntu-pro-client
# The following packages have been kept back:
#   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl update-manager-core
# The following packages will be upgraded:
#   apport apt apt-utils base-files bash bind9-dnsutils bind9-host bind9-libs binutils binutils-common
#   binutils-x86-64-linux-gnu bsdextrautils bsdutils coreutils cpio curl distro-info distro-info-data dpkg eject git
#   git-man iptables irqbalance less libapt-pkg6.0 libbinutils libblkid1 libc-bin libc6 libcryptsetup12 libctf-nobfd0
#   libctf0 libcurl3-gnutls libcurl4 libexpat1 libglib2.0-0 libglib2.0-bin libglib2.0-data libgnutls30 libgssapi-krb5-2
#   libip4tc2 libip6tc2 libk5crypto3 libkrb5-3 libkrb5support0 libldap-2.5-0 libldap-common libmount1 libnetplan0
#   libnghttp2-14 libnss-systemd libpam-modules libpam-modules-bin libpam-runtime libpam-systemd libpam0g libperl5.34
#   libpython3.10 libpython3.10-minimal libpython3.10-stdlib libsmartcols1 libsqlite3-0 libssh-4 libssl3 libsystemd0
#   libudev1 libuuid1 libuv1 libxml2 libxtables12 locales login motd-news-config mount netplan.io openssh-client openssl
#   passwd perl perl-base perl-modules-5.34 python-apt-common python3-apport python3-apt python3-cryptography
#   python3-distro-info python3-distupgrade python3-problem-report python3-software-properties python3-zipp python3.10
#   python3.10-minimal snapd software-properties-common systemd systemd-hwe-hwdb systemd-sysv systemd-timesyncd tar
#   tcpdump tzdata ubuntu-advantage-tools ubuntu-pro-client-l10n ubuntu-release-upgrader-core udev util-linux
#   uuid-runtime vim vim-common vim-runtime vim-tiny wget xxd
# 114 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
# 70 standard LTS security updates
# Need to get 99.4 MB of archives.
# After this operation, 1739 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# [...]
# Get:113 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 python3-zipp all 1.0.0-3ubuntu0.1 [6288 B]
# Get:114 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 snapd amd64 2.63+22.04ubuntu0.1 [25.9 MB]
# Get:115 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 systemd-hwe-hwdb all 249.11.5 [3228 B]
# Fetched 99.4 MB in 7s (14.3 MB/s)
# Extracting templates from packages: 100%
# Preconfiguring packages ...
# [...]
# Setting up apport (2.20.11-0ubuntu82.6) ...
# apport-autoreport.service is a disabled or a static unit, not starting it.
# Setting up libpam-systemd:amd64 (249.11-0ubuntu3.12) ...##########################################################..]
# Setting up ubuntu-advantage-tools (32.3.1~22.04) ...
# Setting up bind9-dnsutils (1:9.18.28-0ubuntu0.22.04.1) ...
# Processing triggers for libc-bin (2.35-0ubuntu3.8) ...#############################################################.]
# Processing triggers for man-db (2.10.2-1) ...
# Processing triggers for plymouth-theme-ubuntu-text (0.9.5+git20211018-1ubuntu3) ...
# Processing triggers for dbus (1.12.20-2ubuntu4.1) ...
# Processing triggers for install-info (6.8-4build1) ...

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11
#   gcc-11-base javascript-common libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6
#   libatomic1 libc-dev-bin libc-devtools libc6-dev libcc1-0 libcrypt-dev libdeflate0 libdpkg-perl libexpat1-dev
#   libfakeroot libfile-fcntllock-perl libfontconfig1 libfreetype6 libgcc-11-dev libgd3 libgomp1 libisl23 libitm1
#   libjbig0 libjpeg-turbo8 libjpeg8 libjs-jquery libjs-sphinxdoc libjs-underscore liblsan0 libmpc3 libnsl-dev
#   libpython3-dev libpython3.10-dev libquadmath0 libstdc++-11-dev libtiff5 libtirpc-dev libtsan0 libubsan1 libwebp7
#   libxpm4 linux-libc-dev lto-disabled-list make manpages-dev python3-dev python3-distutils python3-lib2to3
#   python3-setuptools python3-wheel python3.10-dev rpcsvc-proto zlib1g-dev
# Suggested packages:
#   bzip2-doc cpp-doc gcc-11-locales debian-keyring g++-multilib g++-11-multilib gcc-11-doc gcc-multilib autoconf
#   automake libtool flex bison gdb gcc-doc gcc-11-multilib apache2 | lighttpd | httpd glibc-doc bzr libgd-tools
#   libstdc++-11-doc make-doc python-setuptools-doc
# The following NEW packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11
#   gcc-11-base javascript-common libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6
#   libatomic1 libc-dev-bin libc-devtools libc6-dev libcc1-0 libcrypt-dev libdeflate0 libdpkg-perl libexpat1-dev
#   libfakeroot libfile-fcntllock-perl libfontconfig1 libfreetype6 libgcc-11-dev libgd3 libgomp1 libisl23 libitm1
#   libjbig0 libjpeg-turbo8 libjpeg8 libjs-jquery libjs-sphinxdoc libjs-underscore liblsan0 libmpc3 libnsl-dev
#   libpython3-dev libpython3.10-dev libquadmath0 libstdc++-11-dev libtiff5 libtirpc-dev libtsan0 libubsan1 libwebp7
#   libxpm4 linux-libc-dev lto-disabled-list make manpages-dev python3-dev python3-distutils python3-lib2to3 python3-pip
#   python3-setuptools python3-wheel python3.10-dev rpcsvc-proto zlib1g-dev
# 0 upgraded, 68 newly installed, 0 to remove and 5 not upgraded.
# Need to get 72.3 MB of archives.
# After this operation, 243 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc-dev-bin amd64 2.35-0ubuntu3.8 [20.3 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-libc-dev amd64 5.15.0-118.128 [1342 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libcrypt-dev amd64 1:4.4.27-1 [112 kB]
# [...]
# Get:67 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 python3-wheel all 0.37.1-2ubuntu0.22.04.1 [32.0 kB]
# Get:68 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 python3-pip all 22.0.2+dfsg-1ubuntu0.4 [1305 kB]
# Fetched 72.3 MB in 3s (24.9 MB/s)
# Extracting templates from packages: 100%
# Selecting previously unselected package libc-dev-bin.
# (Reading database ... 24242 files and directories currently installed.)
# Preparing to unpack .../00-libc-dev-bin_2.35-0ubuntu3.8_amd64.deb ...
# Unpacking libc-dev-bin (2.35-0ubuntu3.8) ...
# [...]
# update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
# Setting up build-essential (12.9ubuntu3) ...
# Setting up libpython3-dev:amd64 (3.10.6-1~22.04) ...
# Setting up python3-dev (3.10.6-1~22.04) ...
# Processing triggers for man-db (2.10.2-1) ...
# Processing triggers for libc-bin (2.35-0ubuntu3.8) ...

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# eejou)NaGhah+thiet9queeth&aegooPhahg1lut
# ar8oof4johvaeDieshieteime0lu6eiCh\u<awi2
# meiqu{u9au8ahninaing<ahd`eew6quoRiequ2tu
# ooM!aek1Ier8ainge6boXae0Tae0Iequeish5ied
# heed4ogh8ieSh8tahwee9ui9Seejah/nee7yaeWa
# ueng!oeh9IaShaw8eiz7iew6keipahghoh6eiGho
# zee)k7xaeXum3OhY2jahD<iethoh9aex5lay[oo0
# eipo8zahp@ooQueev<ohsh[aidee8esee?li9AeH
# eiqu5uixau@kavobaa3aenie1wa5xi/Hii3Shooh
# vahkae&R*eXi8eash/eeV9ahch5ca5ooch9seith
# xeiR@ahmae4bei9oc{ainu3OT\ooR\i$aqua1ieg
# cheich1Chon`i9xo1eelah=ph0eaxah5Oosh3xee
# ohNgohxie8Zeisiduamo3bu?r4leeth&eiz[ahpu
# bithihah+ngi1pu~foi7iPu5zoh3aNg.ieth6jah
# ooGh(eijooGhae=g0mek1Aas3thoh0uSh2teej4U
# geekei{gie}d&ohDae9Eif7tha%Z&uu0Ti^i7eic
# heiNgie9Jaevoh@Tai0eeYie0giet&oh~Chil1ie
# oohiesaepeeBah7eak9aiNg?ei1fe1UuwieGae4p
# ge#eV0Rie.beejieX7do0ahph@oux7aeto0eevie
# Obi6kooX1eo4Oowu8eil!o8Aepok1ee9Maix9joo

##########################################################
# Get ready to setup github access with ssh
##########################################################

# - check if ssh service is running
sudo service ssh status
# [sudo] password for hlibko:
# Unit ssh.service could not be found.

# - in wsl install openssh
sudo apt install openssh-server
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   libwrap0 ncurses-term openssh-sftp-server ssh-import-id
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/`hostname` -C `hostname`
# Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): "9]:37*QK,O2ko.5#ja5->yJLIa\P"
Enter same passphrase again: "9]:37*QK,O2ko.5#ja5->yJLIa\P"
# Your identification has been saved in /home/hlibko/.ssh/DESKTOP-R272VD1
# Your public key has been saved in /home/hlibko/.ssh/DESKTOP-R272VD1.pub
# The key fingerprint is:
# SHA256:3tjH2jcDhh3JS5dqBNizKxLv+NI43WDH/+7c6ByXP6w DESKTOP-R272VD1
# The key's randomart image is:
# +---[RSA 4096]----+
# |      oo+.. ..o  |
# |     . . =   o ..|
# |      . +   +   E|
# |       . o.o ...o|
# |      . S..... o+|
# |       o.oo+o+.. |
# |      .  ==.=+o .|
# |       .+. o++o.o|
# |        ++.ooo..o|
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# - allow ssh in firewall (inte behövs)
sudo ufw allow ssh
# Rules updated
# Rules updated (v6)

##########################################################
# Upload public keypair to github
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
cat .ssh/DESKTOP-R272VD1.pub
# ssh-rsa AAAAB3NzaC**********jGD8Q== DESKTOP-R272VD1

# - upload to github
"https://github.com/settings/ssh/new"

# - add new SSH Key
# Title
"DESKTOP-R272VD1"

# Key type
"[Authentication Key↕]"

# Key
"ssh-rsa AAAAB3NzaC**********jGD8Q== DESKTOP-R272VD1"

"Add SSH key"

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/DESKTOP-R272VD1
EOF

# - verify
cat ~/.ssh/config
# Host github.com
#   HostName github.com
#   User git
#   IdentityFile ~/.ssh/DESKTOP-R272VD1

# - Create source directory
cd
mkdir src && cd src

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
Enter passphrase for key '/home/hlibko/.ssh/DESKTOP-R272VD1': "9]:37*QK,O2ko.5#ja5->yJLIa\P"
# remote: Enumerating objects: 86, done.
# remote: Counting objects: 100% (86/86), done.
# remote: Compressing objects: 100% (70/70), done.
# remote: Total 86 (delta 40), reused 39 (delta 12), pack-reused 0 (from 0)
# Receiving objects: 100% (86/86), 39.65 KiB | 441.00 KiB/s, done.
# Resolving deltas: 100% (40/40), done.


# - Push changes to remote repository
cd KB-FEB24
mkdir hlibko && cd hlibko
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

git checkout -b "hlibko_doc_verification"
# Switched to a new branch 'hlibko_doc_verification'
# - IMPORTANT:
# - Create a file with "nano" or "vi", paste this documentation there

# - then add newly created file

# - verify file
cat github.ssh.access.winx.2024.08.14.sh
git add *
git status
# On branch hlibko_doc_verification
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   github.ssh.access.winx.2024.08.14.sh

git config --global user.name "Hlib Kochubei"
git config --global user.email "hlib.kochubei@gmail.com"

git commit -am "Make changes to previous documentation"
git status
# On branch hlibko_doc_verification
# nothing to commit, working tree clean

git push --set-upstream origin hlibko_doc_verification
# Enter passphrase for key '/home/hlibko/.ssh/DESKTOP-R272VD1':
# Enumerating objects: 5, done.
# Counting objects: 100% (5/5), done.
# Delta compression using up to 4 threads
# Compressing objects: 100% (4/4), done.
# Writing objects: 100% (4/4), 5.45 KiB | 5.45 MiB/s, done.
# Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
# remote: Resolving deltas: 100% (1/1), completed with 1 local object.
# remote:
# remote: Create a pull request for 'hlibko_doc_verification' on GitHub by visiting:
# remote:      https://github.com/JensenEducationKista/KB-FEB24/pull/new/hlibko_doc_verification
# remote:
# To github.com:JensenEducationKista/KB-FEB24.git
#  * [new branch]      hlibko_doc_verification -> hlibko_doc_verification
# Branch 'hlibko_doc_verification' set up to track remote branch 'hlibko_doc_verification' from 'origin'.

