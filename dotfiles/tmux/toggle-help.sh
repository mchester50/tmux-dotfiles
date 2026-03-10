#!/usr/bin/env bash

HELP_BINDING="bind h display-popup -w 70% -h 70% -B rounded -E \"less ~/dotfiles/tmux/help.md\""
TMUX_CONF=~/.tmux.conf

if grep -q "display-popup" "$TMUX_CONF"; then
    sed -i.bak '/display-popup/d' "$TMUX_CONF"
    echo "Floating help pane disabled."
else
    echo "$HELP_BINDING" >> "$TMUX_CONF"
    echo "Floating help pane enabled."
fi

tmux source-file "$TMUX_CONF"
