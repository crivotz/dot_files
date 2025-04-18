#!/bin/zsh

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
ln -sf ~/.dot_files/core/wezterm ~/.config/wezterm
ln -sf ~/.dot_files/core/fastfetch ~/.config/fastfetch
ln -sf ~/.dot_files/core/eza ~/.config/eza
ln -sf ~/.dot_files/core/p10k.zsh ~/.p10k.zsh
ln -sf ~/.dot_files/core/wezterm/wezterm.lua ~/.wezterm.lua
# OS
ln -sf ~/.dot_files/linux/gtkrc-2.0.mine ~/.gtkrc-2.0.mine
ln -sf ~/.dot_files/linux/i3 ~/.i3
ln -sf ~/.dot_files/linux/screenlayout ~/.screenlayout
ln -sf ~/.dot_files/linux/Xmodmap ~/.Xmodmap
ln -sf ~/.dot_files/linux/zinit/zshrc ~/.zshrc
ln -sf ~/.dot_files/linux/picom ~/.config/picom
ln -sf ~/.dot_files/linux/polybar ~/.config/polybar
ln -sf ~/.dot_files/linux/rofi ~/.config/rofi
# CONFIGURATION
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
