#!/bin/sh

echo "Setting up..."
if [ -f ~/.vimrc ];then
    echo ".vimrc already exist"
else
    cp .vimrc ~/.vimrc || exit 1
fi

echo "Done"
