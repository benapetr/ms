#!/bin/sh

echo "Setting up..."
if [ -f ~/.vimrc ];then
    echo ".vimrc already exist"
else
    cp .vimrc ~/.vimrc || exit 1
fi

if [ ! -f ~/.bash_profile ]
then
    cp mac/.bash_profile ~/
fi
./setup_git.sh

echo "Done"
