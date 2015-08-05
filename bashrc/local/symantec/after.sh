# No shortening, newline
PS1='\n\j \[\033[1m\]\w\[\033[0m\]\n> '

unalias rm
unset -f gvim

pf() { cd /build/Perforce/$1 && l; }
source ~/dotfiles/bashrc/local/symantec/_pf.sh

# lynx-curl
lcurl() { curl --silent $1 | lynx -stdin -dump; }

# protoc
alias protoc='LD_LIBRARY_PATH=/home/vagrant/tools/proto/lib/ /home/vagrant/tools/proto/protoc'

# mts-console
alias mts='/build/Perforce/Pandu_Rendradjaja_vm_mts/dev/dist/tools/mts-client/bin/mts-client -m localhost -a https://login-int2.norton.com/sso -l "foobar@foo.com" -p "htns&8" --console'
