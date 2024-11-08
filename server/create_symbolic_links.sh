#!/bin/zsh

# PRE CONFIGURATION
mkdir ~/.config
# CORE
ln -sf ~/.dot_files/core/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dot_files/core/gemrc ~/.gemrc
ln -sf ~/.dot_files/core/irbrc ~/.irbrc
ln -sf ~/.dot_files/core/tool-versions ~/.tool-versions
ln -sf ~/.dot_files/core/asdfrc ~/.asdfrc
ln -sf ~/.dot_files/core/default-npm-packages ~/.default-npm-packages
ln -sf ~/.dot_files/core/default-gems ~/.default-gems
ln -sf ~/.dot_files/core/lazygit ~/.config/lazygit/
ln -sf ~/.dot_files/core/yazi ~/.config/yazi
ln -sf ~/.dot_files/core/p10k.zsh ~/.p10k.zsh
# OS
ln -sf ~/.dot_files/server/gitconfig ~/.gitconfig
ln -sf ~/.dot_files/server/zsh_aliases ~/.zsh_aliases
ln -sf ~/.dot_files/server/zinit/zshrc ~/.zshrc
# POST CONFIGURATION
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
