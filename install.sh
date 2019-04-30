#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone --depth=1 https://github.com/ryansch/yadr.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    git checkout ryansch-changes
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
