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
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# Den begärda åtgärden lyckades. Ändringarna kommer inte att träda i kraft förrän datorn startats om.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "Asal"
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
# /home/Asal/.hushlogin file.
# clear@DESKTOP-30IK1FQ:~$

# - Open WSL
sudo apt update
# [sudo] password for clear:
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [127 kB]
# Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [1724 kB]
# Get:6 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [14.1 MB]
# Get:7 http://security.ubuntu.com/ubuntu jammy-security/main Translation-en [285 kB]
# Get:8 http://security.ubuntu.com/ubuntu jammy-security/main amd64 c-n-f Metadata [13.1 kB]
# Get:9 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [2242 kB]
# Get:10 http://security.ubuntu.com/ubuntu jammy-security/restricted Translation-en [386 kB]
# Get:11 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 c-n-f Metadata [572 B]
# Get:12 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [888 kB]
# Get:13 http://security.ubuntu.com/ubuntu jammy-security/universe Translation-en [174 kB]
# Get:14 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 c-n-f Metadata [19.0 kB]
# Get:15 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [37.2 kB]
# Get:16 http://security.ubuntu.com/ubuntu jammy-security/multiverse Translation-en [7588 B]
# Get:17 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 c-n-f Metadata [228 B]
# Get:18 http://archive.ubuntu.com/ubuntu jammy/universe Translation-en [5652 kB]
# Get:19 http://archive.ubuntu.com/ubuntu jammy/universe amd64 c-n-f Metadata [286 kB]
# Get:20 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [217 kB]
# Get:21 http://archive.ubuntu.com/ubuntu jammy/multiverse Translation-en [112 kB]
# Get:22 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 c-n-f Metadata [8372 B]
# Get:23 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [1943 kB]
# Get:24 http://archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [343 kB]
# Get:25 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 c-n-f Metadata [17.7 kB]
# Get:26 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [2318 kB]
# Get:27 http://archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [399 kB]
# Get:28 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 c-n-f Metadata [604 B]
# Get:29 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [1110 kB]
# Get:30 http://archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [259 kB]
# Get:31 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 c-n-f Metadata [25.9 kB]
# Get:32 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [43.3 kB]
# Get:33 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse Translation-en [10.8 kB]
# Get:34 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 c-n-f Metadata [444 B]
# Get:35 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [67.1 kB]
# Get:36 http://archive.ubuntu.com/ubuntu jammy-backports/main Translation-en [11.0 kB]
# Get:37 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 c-n-f Metadata [388 B]
# Get:38 http://archive.ubuntu.com/ubuntu jammy-backports/restricted amd64 c-n-f Metadata [116 B]
# Get:39 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [28.8 kB]
# Get:40 http://archive.ubuntu.com/ubuntu jammy-backports/universe Translation-en [16.5 kB]
# Get:41 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 c-n-f Metadata [672 B]
# Get:42 http://archive.ubuntu.com/ubuntu jammy-backports/multiverse amd64 c-n-f Metadata [116 B]
# Fetched 33.1 MB in 5s (7127 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 119 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# [sudo] password for clear:
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
#   ubuntu-pro-client
# The following packages have been kept back:
#   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl update-manager-core
# [...]

Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bsdutils amd64 1:2.37.2-4ubuntu3.4 [80.9 kB]
# Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 coreutils amd64 8.32-4.1ubuntu1.2 [1437 kB]
# Get:7 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnss-systemd amd64 249.11-0ubuntu3.12 [133 kB]
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
# [sudo] password for clear:
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following NEW packages will be installed:
#   pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 5 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (39.0 kB/s)

pwgen -y -n 40
# aezook2ori7euriePh8ohV0Zi-xubohN7biiw7It
# lei5cho9quee[thoLuife3Pu8ohDooG#eid4chie
# rahpierinun0Iey;is9eeph5geeshie)ghap5zoh
# OoGh5thaeyoh2thoy<ee9nohy~ie4quieJie$th3
# Xaezoo\yei#taeneeG7eijai6vee'Xie2Ahth!ei
# fayu"g$i1ia~faang>ahGh1goh3kiep9aesh6aeh
# xei1leexeewahphoijai?Vi4aiNgeidooc8zaiku
# AiTiezol9oag6xi7ieng6angaeJei,mie|kiegh0
# ieth-oos-i4Queeth5ahm9aem2joh2fiec5uoGh5
# ai0GungaeTh9zeil7Reipheih2ba*th]ee:que6O
# AhPhi6Eev1ahngiesh<ath9IHe)akooQu7ahphee
# roC9du1queiph0oonguv.ae&y{oochoh3bahjie3
# ya5Thoo5aipeeThier9PeeFah#Gh2ieCh1iic3va
# obie8chie]yas^ieza]m0Aos6ta/a5eishom0eig
# iejee0EeQuiKeegah7lahxoo5de?a/th9vohn9oo
# voo3peimar:auNohj)ei7eong9upe8ohx9Vau?R4
# yuc!ei9RiebaideethohthahG2foh0we,e1theja
# xae9phici8ew8waeluuf9Ing=eisee7bita3ka0w
# Ahsae1aimeeNgietheid6eengi8zohdieh~ije0t
# nai,nu4quo9dahwohV;aerit1Yei5xainahpua2k
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
# Fetched 799 kB in 0s (2025 kB/s)
# Preconfiguring packages ...
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/mbp
Enter passphrase (empty for no passphrase): "aezook2ori7euriePh8ohV0Zi-xubohN7biiw7It"
Enter same passphrase again: "aezook2ori7euriePh8ohV0Zi-xubohN7biiw7It"
# Enter same passphrase again:
# Your identification has been saved in /home/clear/.ssh/hp.envy
# Your public key has been saved in /home/clear/.ssh/hp.envy.pub
# The key fingerprint is:
# SHA256:jFWw0HwOPYdQ04wWVx4BL3u6uYPOHJ/OJnOxRA3PdBM clear@DESKTOP-3OIK1FQ
# The key's randomart image is:
# +---[RSA 4096]----+
# |      .oo==*oo+E.|
# |       .+oBo=o.o.|
# |        o= o.*o..|
# |       +  . .o+  |
# |      . S  .. .  |
# |            oo   |
# |          .o.o   |
# |         o++=+   |
# |         .+*Oo   |
# +

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
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDUJuUHRidI7mdGXKSqoULdV4NvR7aBOEDYOO1/5NKnY+0ZWtD5K6/A9u7rMRcxCNNpt+y0wjrirwm6gEvLvtBQLWhMve9rDjZWwEl+2L2PxPaTFQT/EsEA6WDnqGz/GNmlwM1qDItMQ2T7Vis9Gt6rolas2wHnSNAWReVToOfEUEd/St26UHz0AWmzWaT9MhGyc57vYsezQkBMGdG5++J2Ry+koEpXFpSzN42/iMPxOSSeREptKssupvYBZsjaZih7+RcikJ4kH1X9v/VSjUQQMI8E/7zgCjK66WEh5hY46jiP60qQYdECawqrLWf6lUojWWglfWctRhGcuPRrXbv55tBOu29WKAyjIaQ8qnnJpvif3RZ4/xgAGl2mAgP6b5RN8BI4A/yIz0uN7H5AsuK9Omjz4F/sAhphis82MJg1k5UT8MT2VOJo2FjQL7PtB2PdEQ0rjhSnLqD1v7JaCMx8YBux2K59DeEPajp9Za6R6Exi3WS8DKN1rywD0efkhhhNTFWMo0Wta2k6XowMoiQEhhc5jIcp4s3tJyHH8IASdxObvJTzWsjTFe9O0AiSz9Qkt7nO4Xv5q62iTSoEdy/89rn7bSjHoPNCBTKEjavLvracbIGMxXxJu6VzaieJC90EuJt5YcZiyTOPUiSbF8bDqWV20nBF7ZYvRBKF6DWipw== clear@DESKTOP-3OIK1FQ

"https://github.com/settings/ssh/new"

# -bash: https://github.com/settings/ssh/new: No such file or directory
"MacBook Pro"

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
  IdentityFile ~/.ssh/mbp
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
# Cloning into 'KB-FEB24'...
Enter passphrase for key '/home/clear/.ssh/mbp':
# remote: Enumerating objects: 20, done.
# remote: Counting objects: 100% (20/20), done.
# remote: Compressing objects: 100% (13/13), done.
# remote: Total 20 (delta 5), reused 18 (delta 3), pack-reused 0
# Receiving objects: 100% (20/20), 11.29 KiB | 2.26 MiB/s, done.
# Resolving deltas: 100% (5/5), done.

# - Push changes to remote repository
cd KB-FEB24
mkdir asal
cd asal
git status
