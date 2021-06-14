#!/bin/bash
# ./set_header.sh

# Set variables

echo "ENTER 42 INTRA ID : "
read INTRAID
if [[ -n "$INTRAID" ]]; then
	echo "let g:hdr42user='$INTRAID'" >> ~/.vimrc
else
    echo "You didn't enter 42 INTRA ID."
fi

echo "ENTER 42 INTRA MAIL : "
read INTRAMAIL
if [[ -n "$INTRAMAIL" ]]; then
    echo "let g:hdr42mail='$INTRAMAIL'" >> ~/.vimrc
else
    echo "You didn't enter 42 INTRA MAIL."
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp vim/stdheader.vim ~/.vim/plugin/

echo "If you didn't enter proper values, correct that inside ~/.vimrc"
echo "let g:hdr42user='intra user name'"
echo "let g:hdr42mail='email address which can find out at a intra profile page'"
echo "Press ENTER to finish"

read
