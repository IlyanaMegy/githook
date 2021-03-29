#!/bin/bash
#installer git
#https://www.linux.com/training-tutorials/how-run-your-own-git-server/
yum install git-core -y

#on crée l'utilisateur git
useradd git
echo "root" | passwd --stdin git 
usermod -aG wheel git

#on crée le dossier clone contenant les fichiers en sauvegarde
mkdir /home/git/clone
chown git /home/git/clone
chmod 744 /home/git/clone
cd /home/git/clone && git init --bare
read