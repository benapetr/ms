#!/bin/bash

# Check if ~/.bashrc exists
if [ ! -f ~/.bashrc ]; then
    echo "~/.bashrc does not exist. Creating it..."
    touch ~/.bashrc
fi

# The Fancy PS1 configuration to add
PS1_CONFIG="PS1='\\[\\e[1;38;5;23m\\]\\D{%H:%M} \\[\\033[01;32m\\]\\u@\\h:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ '"

# Check if the PS1 configuration is already in ~/.bashrc
if grep -qF "$PS1_CONFIG" ~/.bashrc; then
    echo "PS1 configuration already exists in ~/.bashrc"
else
    echo "Adding PS1 configuration to ~/.bashrc..."
    echo "" >> ~/.bashrc
    echo "# PS1 prompt" >> ~/.bashrc
    echo "$PS1_CONFIG" >> ~/.bashrc
    echo "PS1 configuration added successfully!"
    echo "Run 'source ~/.bashrc' to apply the changes."
fi
