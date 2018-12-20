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

read -p "Do you want to disable app guard? [y/n]" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo spctl --master-disable
fi

echo "Done"
