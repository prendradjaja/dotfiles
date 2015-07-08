#!/bin/sh
echo "Enter environment name from one of the following:"
cd ~/dotfiles/bashrc/local
ls */ -d | sed s,/,, | sed "s,^,  - ,"
read -p "> " whereami
echo "WHEREAMI=$whereami" > whereami.sh
