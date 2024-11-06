#!/bin/zsh

# CORE
ln -sf ~/.dot_files/core/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dot_files/core/gemrc ~/.gemrc
ln -sf ~/.dot_files/core/irbrc ~/.irbrc
ln -sf ~/.dot_files/core/tool-versions ~/.tool-versions
ln -sf ~/.dot_files/core/asdfrc ~/.asdfrc
ln -sf ~/.dot_files/core/default-npm-packages ~/.nvm/default-packages
ln -sf ~/.dot_files/core/default-gems ~/.default-gems
ln -sf ~/.dot_files/core/lazygit ~/.config/lazygit/
ln -sf ~/.dot_files/core/yazi ~/.config/yazi
ln -sf ~/.dot_files/core/wezterm ~/.config/wezterm
ln -sf ~/.dot_files/core/p10k.zsh ~/.p10k.zsh
ln -sf ~/.dot_files/core/wezterm/wezterm.lua ~/.wezterm.lua
# OS
ln -sf ~/.dot_files/linux/zinit/zshrc ~/.zshrc
# CONFIGURATION
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
