#!/usr/bin/env bash

echo "Installing dotfiles..."

mkdir -p ~/dotfiles
cp -r tmux ~/dotfiles/
cp -r shell ~/dotfiles/

chmod +x ~/dotfiles/tmux/profile-switcher.sh
chmod +x ~/dotfiles/tmux/toggle-help.sh

ln -sf ~/dotfiles/tmux/pro/tmux-pro.conf ~/.tmux.conf

echo "Installation complete."
echo "Use ~/dotfiles/tmux/profile-switcher.sh to switch profiles."
echo "Use ~/dotfiles/tmux/toggle-help.sh to toggle floating help."
