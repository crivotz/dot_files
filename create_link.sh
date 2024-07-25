#!/bin/zsh

ln -sf ~/.dot_files/linux/gemrc ~/.gemrc
ln -sf ~/.dot_files/linux/gtkrc-2.0.mine ~/.gtkrc-2.0.mine
ln -sf ~/.dot_files/linux/i3 ~/.i3
ln -sf ~/.dot_files/linux/irbrc ~/.irbrc
ln -sf ~/.dot_files/linux/p10k.zsh ~/.p10k.zsh
ln -sf ~/.dot_files/linux/screenlayout ~/.screenlayout
ln -sf ~/.dot_files/linux/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.dot_files/linux/Xmodmap ~/.Xmodmap
ln -sf ~/.dot_files/linux/zinit/zshrc ~/.zshrc
ln -sf ~/.dot_files/linux/gh-packer ~/.gh-packer
ln -sf ~/.dot_files/extras/cava ~/.config/cava
ln -sf ~/.dot_files/linux/compton ~/.config/compton
ln -sf ~/.dot_files/linux/kitty ~/.config/kitty
ln -sf ~/.dot_files/linux/lazygit ~/.config/jesseduffield/
ln -sf ~/.nv-ide ~/.config/nvim
ln -sf ~/.dot_files/linux/polybar ~/.config/polybar
ln -sf ~/.dot_files/linux/ranger ~/.config/ranger
ln -sf ~/.dot_files/linux/yazi ~/.config/yazi
ln -sf ~/.dot_files/linux/rofi ~/.config/rofi
ln -sf ~/.dot_files/linux/wezterm.lua ~/.wezterm.lua
ln -sf ~/.dot_files/linux/tool-versions ~/.tool-versions
ln -sf ~/.dot_files/linux/asdfrc ~/.asdfrc
ln -sf ~/.v-ide ~/.vim
ln -sf ~/.v-ide/vimrc ~/.vimrc
ln -sf ~/.dot_files/linux/nvm_default_packages ~/.nvm/default-packages
mkdir ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git -C ~/.tmux/plugins/tpm pull || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
