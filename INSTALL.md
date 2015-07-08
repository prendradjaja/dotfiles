Run the following to set environment for local customizations:

    ~/dotfiles/localize.sh

Ensure that the following symlinks exist:

    ln -s ~/dotfiles/bashrc/main.sh ~/.bashrc
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/inputrc ~/.inputrc
    ln -s ~/dotfiles/vimperatorrc ~/.vimperatorrc

Copy GNOME terminal profile:

    cp -r ~/dotfiles/gnome-terminal/profiles/Profile3/ ~/.gconf/apps/gnome-terminal/profiles/

Then use `gconf-editor` to edit the profile list: /apps/gnome/terminal/global/profile_list

This will require logging out and back in again to take effect.
