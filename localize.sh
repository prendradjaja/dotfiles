#!/bin/sh
echo "Enter environment name from one of the following:"
echo "Or type a new name and then manually create before.sh and after.sh."

cd ~/dotfiles/bashrc/local
ls */ -d | sed s,/,, | sed "s,^,  - ,"
read -p "> " whereami
echo "WHEREAMI=$whereami" > whereami.sh
