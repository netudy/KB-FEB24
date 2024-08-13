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
# aliz@AliZ:~$

# - Open WSL
sudo apt update
[sudo] password for francisco: "0000"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# [...]
# Fetched 10.8 MB in 2s (5141 kB/s)
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
#   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl update-manager-core
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# python3-pip is already the newest version (22.0.2+dfsg-1ubuntu0.4).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# pwgen is already the newest version (2.08-2build1).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# cazau4tai7ji]phe/e4eiF4eeshohf}a5jah1Moo
# eiziew:a[meefoe1Eiv0ool6Je2sei9Pixai{ke^
# Jai6ooV3eevuP?oo4boo<Ch0ohBahc8doh@quee9
# yi6xaiVah{mie,l1ahs6eiKitaiFoh<wiephee0e
# aegh!aicei-qu7Ohril0Shau7ooba3ahb5Goh9oo
# foo9zee}b2ieh>oh1cah8ooxe4dahQuai9tieh8i
# wa@c9oot9wae6xahphah;Zohshaekoo1shahriez
# OShu\vie!j8hei0aeH1iesh3tae1ahsheeFe9ien
# phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa
# quooje=Boohei6ahTei6coiGh1uo9phaB9aeloh4
# xoh0ko#uj^iech7aeL#eepacha1shee{du3Dei2y
# hae1ieQuee9deiJae4ceh\oh.ngiiB9ooPh5aj$o
# ooxei)Quee6pos3ahs6Goochohphie4rie>goovo
# Jaex:a0ci:Lo2uaweis6ohfaiqu9la0eibacoo]m
# ees7gevoh$kooph6teiTh~i<loba6rameesoh8ae
# doo\f0jee'L9poonoop7rahg3EeDaehee%z7zai4
# uyaig4lequ5aiCieg1cek5aef$ej0ixii^H3Ju2A
# Eed6ooL!aiquenu?e2ahGh4aixeiP<oo9uK7ahM9
# di;m7saeRainee7eechoo3che1EiMo5Ohpa1aefe
# Pheto0diey5eun+aesh9JeeMoovieL2oowaing2a

##########################################################
# Get ready to setup github access with ssh
##########################################################

# - check if ssh service is running
sudo service ssh status
# Unit ssh.service could not be found.

# - in wsl install openssh
sudo apt install openssh-server
[sudo] password for francisco: "0000"
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# openssh-server is already the newest version (1:8.9p1-3ubuntu0.10).
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
# [...]

# - create keypair
cd
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/lenovo
Enter passphrase (empty for no passphrase): "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
Enter same passphrase again: "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
# Your identification has been saved in /home/francisco/.ssh/lenovo
# Your public key has been saved in /home/francisco/.ssh/lenovo.pub
# The key fingerprint is:
# SHA256:v5+/3S6Jc+vM8FK4rq3BgBaDiFbGmcmWqcFjgp+1I00 francisco@GTZ
# The key's randomart image is:
# +---[RSA 4096]----+
# |o oo*            |
# |o*o@E.           |
# |+o*=..o          |
# |..+ +  +         |
# |   . .o S    .   |
# |     .   +  . .  |
# |          + .+ . |
# |           +=*+..|
# |          +==*O=+|
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
# 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
# - fetch pubkey
cat .ssh/lenovo.pub
# ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwhy+mQnmVIi2voW0f4sUyJKsousjdMJv9eragAcM/1P8E4ZSeHq8pv7HcmQBo1z9GO/54j9yKAPrBIwdB5drGpBRIk7EFJ3HY0c/PlMLLCn9XmE9nyGIXBRdm9CFUAzuVwd0r8AQqrZNs47pskn+LsrDXlid1PSrQVgtdFBggzXaxbGWlqMvnAStwYsYSN5fIou20JyDqg36xAfBqVcQXpx4EurgGT9Li/ACWuB77qtFIdIsG83GEoWqlDnDZnDKd7r4n3CsTu4U4wtVfcyl5Xu0k4fAeW+IXJwbic69NNXjytDhVJ33vXWTM7p8z9kWgWYZgJx+tXaxs3+h23eJpzUaMDMiOdAXMKDx8eGu7IgrcrAxJ9TsvEkhe1RBikCOGEAPkqXpaSE7YF+x1Tl3hAJZllmooH1tTh6zgLBRb8sLNV6KMshr6Ol5r6hNM3HEMrBbKwuMik/zft4VPmUPwWIFrbL2+smdzsA/Algw1fOA9+ERyM5Aw/EgvFhlWGoPx2MR/sRERUzC6iUVakbgqsgOVAHL9DwtvcRbUvt7AqkLuybm+nSbuDwAzZNo0141Za49qrxRkk4+7e72docrCKjQpJrVi6W2E4C6d/ArutfNmn54jdOK5wDr1q60ES9ML4dVwAYzyNWI/upk+uQOYf7rAxblwk2Bno2XtZq83PQ== francisco@GTZ

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
# The authenticity of host 'github.com (140.82.121.3)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.

# - Push changes to remote repository
cd KB-FEB24
mkdir francisco
cd francisco
cd
cd src/KB-FEB24/
git status
# On branch main
# Your branch is up to date with 'origin/main'.

# nothing to commit, working tree clean

cd francisco
git checkout -b "francisco_doc_verification"
# Switched to a new branch 'francisco_doc_verification'

# - IMPORTANT:
# - Create a file with "nano" or "vi", paste this documentation there

# - then add newly created file

# - verify file
cat github.ssh.access.winx.2024.08.13.sh
# #!/bin/sh
# echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
# exit 1

# ##########################################################
# # Windows Subsystem for Linux Installation
# ##########################################################

# # - Open Windows PowerShell
# wsl --install -d ubuntu
# # The requested operation requires elevation.
# # Installing: Virtual Machine Platform
# # Virtual Machine Platform has been installed.
# # Installing: Windows Subsystem for Linux
# # Windows Subsystem for Linux has been installed.
# # Installing: Ubuntu
# # Ubuntu has been installed.
# # The requested operation is successful. Changes will not be effective until the system is rebooted.

# # - reboot computer
# # - after reboot Ubuntu cmd will pop up:

# # Ubuntu is already installed.
# # Launching Ubuntu...
# # Installing, this may take a few minutes...
# # Please create a default UNIX user account. The username does not need to match your Windows username.
# # For more information visit: https://aka.ms/wslusers
# Enter new UNIX username: "francisco"
# New password: "0000"
# Retype new password: "0000"
# # passwd: password updated successfully
# # Installation successful!
# # To run a command as administrator (user "root"), use "sudo <command>".
# # See "man sudo_root" for details.

# # Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

# #  * Documentation:  https://help.ubuntu.com
# #  * Management:     https://landscape.canonical.com
# #  * Support:        https://ubuntu.com/advantage


# # This message is shown once a day. To disable it please create the
# # /home/aliz/.hushlogin file.
# # aliz@AliZ:~$

# # - Open WSL
# sudo apt update
# [sudo] password for francisco: "0000"
# # Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# # [...]
# # Fetched 10.8 MB in 2s (5141 kB/s)
# # Reading package lists... Done
# # Building dependency tree... Done
# # Reading state information... Done
# # 5 packages can be upgraded. Run 'apt list --upgradable' to see them.

# sudo apt upgrade
# # Reading package lists... Done
# # Building dependency tree... Done
# # Reading state information... Done
# # Calculating upgrade... Done
# # The following packages have been kept back:
# #   python3-update-manager ubuntu-minimal ubuntu-standard ubuntu-wsl update-manager-core
# # 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# # - install python
# sudo apt install python3-pip
# # Reading package lists... Done
# # Building dependency tree... Done
# # Reading state information... Done
# # python3-pip is already the newest version (22.0.2+dfsg-1ubuntu0.4).
# # 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# ##########################################################
# # install password generator and ssh
# ##########################################################

# # - install password generator
# sudo apt install pwgen
# # Reading package lists... Done
# # Building dependency tree... Done
# # Reading state information... Done
# # pwgen is already the newest version (2.08-2build1).
# # 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.

# # - create a password 40 chars, numbers and symbols
# pwgen -y -n 40
# # cazau4tai7ji]phe/e4eiF4eeshohf}a5jah1Moo
# # eiziew:a[meefoe1Eiv0ool6Je2sei9Pixai{ke^
# # Jai6ooV3eevuP?oo4boo<Ch0ohBahc8doh@quee9
# # yi6xaiVah{mie,l1ahs6eiKitaiFoh<wiephee0e
# # aegh!aicei-qu7Ohril0Shau7ooba3ahb5Goh9oo
# # foo9zee}b2ieh>oh1cah8ooxe4dahQuai9tieh8i
# # wa@c9oot9wae6xahphah;Zohshaekoo1shahriez
# # OShu\vie!j8hei0aeH1iesh3tae1ahsheeFe9ien
# # phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa
# # quooje=Boohei6ahTei6coiGh1uo9phaB9aeloh4
# # xoh0ko#uj^iech7aeL#eepacha1shee{du3Dei2y
# # hae1ieQuee9deiJae4ceh\oh.ngiiB9ooPh5aj$o
# # ooxei)Quee6pos3ahs6Goochohphie4rie>goovo
# # Jaex:a0ci:Lo2uaweis6ohfaiqu9la0eibacoo]m
# # ees7gevoh$kooph6teiTh~i<loba6rameesoh8ae
# # doo\f0jee'L9poonoop7rahg3EeDaehee%z7zai4
# # uyaig4lequ5aiCieg1cek5aef$ej0ixii^H3Ju2A
# # Eed6ooL!aiquenu?e2ahGh4aixeiP<oo9uK7ahM9
# # di;m7saeRainee7eechoo3che1EiMo5Ohpa1aefe
# # Pheto0diey5eun+aesh9JeeMoovieL2oowaing2a

# ##########################################################
# # Get ready to setup github access with ssh
# ##########################################################

# # - check if ssh service is running
# sudo service ssh status
# # Unit ssh.service could not be found.

# # - in wsl install openssh
# sudo apt install openssh-server
# [sudo] password for francisco: "0000"
# # Reading package lists... Done
# # Building dependency tree... Done
# # Reading state information... Done
# # openssh-server is already the newest version (1:8.9p1-3ubuntu0.10).
# # 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
# # [...]

# # - create keypair
# cd
# mkdir .ssh
# chmod 740 .ssh/
# ssh-keygen -t rsa -b 4096 -f ~/.ssh/lenovo
# Enter passphrase (empty for no passphrase): "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
# Enter same passphrase again: "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
# # Your identification has been saved in /home/francisco/.ssh/lenovo
# # Your public key has been saved in /home/francisco/.ssh/lenovo.pub
# # The key fingerprint is:
# # SHA256:v5+/3S6Jc+vM8FK4rq3BgBaDiFbGmcmWqcFjgp+1I00 francisco@GTZ
# # The key's randomart image is:
# # +---[RSA 4096]----+
# # |o oo*            |
# # |o*o@E.           |
# # |+o*=..o          |
# # |..+ +  +         |
# # |   . .o S    .   |
# # |     .   +  . .  |
# # |          + .+ . |
# # |           +=*+..|
# # |          +==*O=+|
# # +----[SHA256]-----+

# # - start ssh service
# sudo service ssh start

# # - allow ssh in firewall (inte behövs)
# sudo ufw allow ssh
# # Rules updated
# # Rules updated (v6)

# ##########################################################
# # upload public keypair to github
# ##########################################################

# # - install git
# sudo apt install git
# # Reading package lists... Done
# # Building dependency tree... Done
# # Reading state information... Done
# # git is already the newest version (1:2.34.1-1ubuntu1.11).
# # 0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
# # - fetch pubkey
# cat .ssh/lenovo.pub
# # ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwhy+mQnmVIi2voW0f4sUyJKsousjdMJv9eragAcM/1P8E4ZSeHq8pv7HcmQBo1z9GO/54j9yKAPrBIwdB5drGpBRIk7EFJ3HY0c/PlMLLCn9XmE9nyGIXBRdm9CFUAzuVwd0r8AQqrZNs47pskn+LsrDXlid1PSrQVgtdFBggzXaxbGWlqMvnAStwYsYSN5fIou20JyDqg36xAfBqVcQXpx4EurgGT9Li/ACWuB77qtFIdIsG83GEoWqlDnDZnDKd7r4n3CsTu4U4wtVfcyl5Xu0k4fAeW+IXJwbic69NNXjytDhVJ33vXWTM7p8z9kWgWYZgJx+tXaxs3+h23eJpzUaMDMiOdAXMKDx8eGu7IgrcrAxJ9TsvEkhe1RBikCOGEAPkqXpaSE7YF+x1Tl3hAJZllmooH1tTh6zgLBRb8sLNV6KMshr6Ol5r6hNM3HEMrBbKwuMik/zft4VPmUPwWIFrbL2+smdzsA/Algw1fOA9+ERyM5Aw/EgvFhlWGoPx2MR/sRERUzC6iUVakbgqsgOVAHL9DwtvcRbUvt7AqkLuybm+nSbuDwAzZNo0141Za49qrxRkk4+7e72docrCKjQpJrVi6W2E4C6d/ArutfNmn54jdOK5wDr1q60ES9ML4dVwAYzyNWI/upk+uQOYf7rAxblwk2Bno2XtZq83PQ== francisco@GTZ

# # - upload to github
# "https://github.com/settings/ssh/new"

# # Add new SSH Key
# # Title
# "lenovo"

# # Key type
# "[Authentication Key↕]"

# # Key
# "****************"

# "Add SSH key"

# # - create ssh config file
# cat <<"EOF" > ~/.ssh/config
# Host github.com
#   HostName github.com
#   User git
#   IdentityFile ~/.ssh/lenovo
# EOF

# # - verify
# cat ~/.ssh/config

# # - Create source directory
# cd
# mkdir src
# cd src

# ##########################################################
# # clone and push to github
# ##########################################################

# # - Clone repo
# git clone git@github.com:JensenEducationKista/KB-FEB24.git
# # The authenticity of host 'github.com (140.82.121.3)' can't be established.
# # ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# # This key is not known by any other names
# Are you sure you want to continue connecting (yes/no/[fingerprint])? "yes"
# # Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.

# # - Push changes to remote repository
# cd KB-FEB24
# mkdir francisco
# cd francisco
# cd
# cd src/KB-FEB24/
# git status
# # On branch main
# # Your branch is up to date with 'origin/main'.

# # nothing to commit, working tree clean

# cd francisco
# git checkout -b "francisco_doc_verification"
# # Switched to a new branch 'francisco_doc_verification'

# # - IMPORTANT:
# # - Create a file with "nano" or "vi", paste this documentation there

# # then add newly created file
# git add *
# git status
# # On branch francisco_doc_verification
# # nothing to commit, working tree clean
# git config --global user.name "Francisco gtz"
# git config --global user.email no@email.com
# git commit -am "verify previous documentation"
# # On branch francisco_doc_verification
# # nothing to commit, working tree clean

# # nothing to commit, working tree clean
# git push --set-upstream origin francisco_doc_verification
# Enter passphrase for key '/home/francisco/.ssh/lenovo': "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
# # Branch 'francisco_doc_verification' set up to track remote branch 'francisco_doc_verification' from 'origin'.
# # Everything up-to-date

git add github.ssh.access.winx.2024.08.13.sh
git status
# On branch francisco_doc_verification
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   github.ssh.access.winx.2024.08.13.sh

git config --global user.name "Francisco gtz"
git config --global user.email no@email.com
git commit -am "verify previous documentation"
 # 1 file changed, 253 insertions(+)
  # create mode 100644 francisco/github.ssh.access.winx.2024.08.13.sh

  # nothing to commit, working tree clean
  git push --set-upstream origin francisco_doc_verification
  Enter passphrase for key '/home/francisco/.ssh/lenovo': "phiuxu4phoi6Te8queizo4aec%ee7aezee6xaeVa"
  # Enumerating objects: 5, done.
  # Counting objects: 100% (5/5), done.
  # Delta compression using up to 24 threads
  # Compressing objects: 100% (4/4), done.
  # Writing objects: 100% (4/4), 4.14 KiB | 4.14 MiB/s, done.
  # Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
  # To github.com:JensenEducationKista/KB-FEB24.git
  #    8d07dec..6ef5978  francisco_doc_verification -> francisco_doc_verification
  # Branch 'francisco_doc_verification' set up to track remote branch 'francisco_doc_verification' from 'origin'.

