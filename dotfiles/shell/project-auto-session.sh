#!/usr/bin/env bash

project=$(basename "$PWD")

if [ -z "$TMUX" ]; then
    tmux has-session -t "$project" 2>/dev/null \
        && tmux attach -t "$project" \
        || tmux new -s "$project"
fi
