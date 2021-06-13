#!/bin/bash
# ./set_header.sh

# Set variables

if [[ -n "$INTRAID" ]]; then
    echo "$INTAID"
else
    echo "ENTER 42 INTRA ID : "
    read INTRAID
    if [[ -n "$INTRAID" ]]; then
        echo "export INTRAID=$INTRAID" >> ~/.zshrc
    else
        echo "You didn't enter 42 INTRA ID."
    fi
fi

if [[ -n "$INTRAMAIL" ]]; then
    echo "$INTAMAIL"
else
    echo "ENTER 42 INTRA MAIL : "
    read INTRAMAIL
    if [[ -n "$INTRAMAIL" ]]; then
        echo "export INTRAMAIL=$INTRAMAIL" >> ~/.zshrc
    else
        echo "You didn't enter 42 INTRA MAIL."
    fi
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp vim/stdheader.vim ~/.vim/plugin/

source ~/.zshrc
