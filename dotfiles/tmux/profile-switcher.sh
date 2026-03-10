#!/usr/bin/env bash

if [ "$1" = "basic" ]; then
    ln -sf ~/dotfiles/tmux/basic/tmux-basic.conf ~/.tmux.conf
    echo "Switched to BASIC tmux config"
elif [ "$1" = "pro" ]; then
    ln -sf ~/dotfiles/tmux/pro/tmux-pro.conf ~/.tmux.conf
    echo "Switched to PRO tmux config"
else
    echo "Usage: ./profile-switcher.sh [basic|pro]"
fi

tmux source-file ~/.tmux.conf
