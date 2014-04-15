    git clone https://github.com/prendradjaja/dotfiles.git ~/dotfiles
    ln -s ~/dotfiles/bashrc ~/.bashrc || echo Failed to link .bashrc
    ln -s ~/dotfiles/gitconfig ~/.gitconfig || echo Failed to link .gitconfig
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf || echo Failed to link .tmux.conf
    ln -s ~/dotfiles/vimperatorrc ~/.vimperatorrc || echo Failed to link .vimperatorrc
