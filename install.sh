#!/bin/bash
mkdir -p ~/.config

cp ~/devshell/.zshrc ~/.zshrc
cp -r ~/devshell/nvim ~/.config/nvim
cp -r ~/devshell/tmux ~/.config/tmux
cp ~/devshell/starship.toml ~/.config/starship.toml
