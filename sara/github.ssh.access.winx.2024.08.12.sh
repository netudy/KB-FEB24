#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
 Ubuntu har redan installerats.
Startar Ubuntu ...
Installing, this may take a few minutes...
Please create a default UNIX user account. The username does not need to match your Windows username.
For more information visit: https://aka.ms/wslusers
Enter new UNIX username: sara
New password:
Retype new password:
passwd: password updated successfully
# Åtgärden har slutförts.
# Installation successful!



# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "sara"
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
# saraPRO:~$

# - Open WSL
sudo apt update
[sudo] password for sara: "0000"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# [...]
# Fetched 33.1 MB in 6s (5177 kB/s)
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
#   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl
#   update-manager-core
# The following packages will be upgraded:
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
# Fetched 17.4 kB in 0s (79.4 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 31447 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# Looch1theequupiese{gahkee4Oyuzeeraiyiefe
# Tah7ohnga;arie7aeGheenoh_P%aiW9niek2Airu
# kohd}ee+f1Eng&ec7Poi{ph}ai)Bee3zoo<tuGhe
# GiG6oopeuB4eemohfoophooju@ngoo3Unohzem]u
# jahKaoy0Aon<i7nee1ethae7waing8ohsh2jaiy9
# iev3phieYe7ooZ;oh9aekeis0faengaezuf2ogij
# lei0hee6feCh9kohgh6Iepee%r7iexafooNae;tu
# ohghae<choh&Chus9nohci8peam8IdaiCh0we9co
# boh1Eewe8xaiSee4oot\ie1se1eixee6aeThoh/X
# Tae5LaY7ohng0aengahgae]th$aa2nie^phei2ed
# aik3thaiNei6eihoefad3zeechie:tha8aeYie3N
# eek+ahumathiig2que|ree6eiph0boovae7IT7at
# sae~thei8thiem5uipo3fo0Ha5Phaibu\X1uu9fe
# phai8oiHoo1ietu5eesh4kef4uHee8Ou|de9lee{
# shao1aemeemahTh{ah(b6eQu8das1je4ei0aesh{
# INae(phe/lie.su5ki7AhgaY6Jail2ag>ei3Imae
# Ahth,ahx]ai2Ho9Shitee9aib5lohthei(d4Poo0
# eeGu4ieTua0mao9volieyur8quie?n3aeMee<Coo
# aequaep1eexeigh1roo3seeGhai=h7ooThuach2s
# ahoa8AikahNie{n5OV;aen%ingoo9ohgae4phui6

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
# [...]

# - create keypair
cd 
mkdir  .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/zbook
Enter passphrase (empty for no passphrase): "ahoa8AikahNie{n5OV;aen%ingoo9ohgae4phui6"

Enter same passphrase again: "ahoa8AikahNie{n5OV;aen%ingoo9ohgae4phui6"
# mkdir: cannot create directory ‘.ssh’: File exists
# Generating public/private rsa key pair.
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:
# Your identification has been saved in /home/sara/.ssh/zbook
# Your public key has been saved in /home/sara/.ssh/zbook.pub
# The key fingerprint is:
# SHA256:eBTS6vjTWeBoij8aI7NlFMFRqgm0NoxTr6FFct93LKE sara@PRO
# The key's randomart image is:
# +---[RSA 4096]----+
# |.o*o. ..o        |
# |+=o= . o.+       |
# |+== o E.+ o      |
# |o*.+  .+.o       |
# |+ o  o.oS.       |
# | .  . +.. .      |
# |o =. + . o       |
# | *.oo o o        |
# |. .o.. .         |
# +----[SHA256]-----+

# - start ssh service
sudo service ssh start

# - allow ssh in firewall (inte behövs)
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
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
cat .ssh/zbook.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDLNeR3WHavUJMGD8fVx1fBUnu7TbtB2lEnjTfpblei0QXdpE8QfHBdaUiRlQTAnd/Zf94qOw1g8mlfvhRTF3/beJc2jq99Qf/fyjTsuNOo/gX/U45IetO5ZsGeGXs0SsEHc7Pi1TzNhIHicE2Ry+109/giR/rM1btglUvC2wzBF1bLLPaRhx+2WkizN41RCIypLOg5ZMIp/lHhS2KNBwHViZfKhHSH1pCsH+U1jSIp1Waa78yjwx9UvX9eQQ/OlUZNWpqotn+hZTK0qGkun2dz6n/Pu3rVPAKMOGmBvn87GdgZ2VFOshfTTxSVIXcZC+tmGXpZsqcY/NBwbjuaP+2CFBBed+q2R+xySt6uKqXrbEfjWzHU8cZ653ptrM+rtXSn5h5rYFTfX71Sb0rZh60VFWSCvP5yZGETaM7lWq3mROpv8YwPmAJ9yhQJcuiYyS8EibNWQ6Kyo3cKBQhaN4O7MltbAxSO3zZDYiee9mw1XaByrFfKG5XHnYWsOhOlxe0AE5wR82yhG5lPAI3IvVi/1USanHk92SCNRva5tjY9t/zEGDBmhhMh67ZNquwFRRwD3IyYZf/Gc+6+gSMX27snyvntSXDN2CYm/H0ZlCFKCgDKMGl4RgFM7xPAGyxirEVoPI7Hxftrz1HDilJ5OQZAlEeWeU8HhNH2Asi2ozZzTQ== sara@PRO
# - upload to github
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"zbook"

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
  IdentityFile ~/.ssh/zbook
EOF

# - verify
cat ~/.ssh/config

# - Create source directory
cd
mkdir src
cd src

##########################################################
# clone and push to github
##########################################################

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-FEB24.git
Cloning into 'KB-FEB24'...
Enter passphrase for key '/home/sara/.ssh/zbook':
remote: Enumerating objects: 49, done.
remote: Counting objects: 100% (49/49), done.
remote: Compressing objects: 100% (42/42), done.
remote: Total 49 (delta 19), reused 21 (delta 3), pack-reused 0 (from 0)
Receiving objects: 100% (49/49), 29.27 KiB | 1.63 MiB/s, done.
Resolving deltas: 100% (19/19), done.
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
# - Push changes to remote repository
cd KB-FEB24
mkdir sara
cd sara
cd
cd src/KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

cd sara
git checkout -b "sara_doc_verification"
# Switched to a new branch 'francisco_doc_verification'

# - IMPORTANT:
# - Create a file with "nano" or "vi", paste this documentation there

