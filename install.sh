#!/bin/bash
# Script to install Terminal Philosopher

if [[ -f ~/.questions && -f ~/.bash_philosopher ]]; then
	echo "Terminal Philosopher already installed!"
	exit 1
fi

# Add files to home directory
cp $(pwd)/bash_philosopher ~/.bash_philosopher
cp $(pwd)/questions ~/.questions

# Add entry to .bashrc
echo "" >>~/.bashrc
echo "# The following code summons the Terminal Philosopher" >>~/.bashrc
echo "if [[ -f ~/.questions && -f ~/.bash_philosopher ]]; then" >>~/.bashrc
echo "  . ~/.bash_philosopher" >>~/.bashrc
echo "fi" >>~/.bashrc
echo "" >>~/.bashrc

# Great success!
echo "Terminal Philosopher successfully installed!"
