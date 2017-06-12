#!/bin/bash
# Script to uninstall Terminal Philosopher

# Delete files
rm ~/.bash_philosopher
rm ~/.questions

# Delete .bashrc entries
# Delete line by line the entries from installation
toDelete=$(grep -n '# The following code summons the Terminal Philosopher' ~/.bashrc | awk -F  ":" '{print $1}')

# Check if line exists. If modified or deleted, exit.
if [[ -z "${toDelete}"  ]]; then
	echo "Something is wrong. Please manually delete from your ~/.bashrc file the following:"
	echo "# The following code summons the Terminal Philosopher"
	echo "if [[ -f ~/.questions && -f ~/.bash_philosopher ]]; then . ~/.bash_philosopher; fi"
	exit 1
fi
# If line exists, delete this and the next line. These were the only entries.
sed -i "${toDelete},$((toDelete+1))d" ~/.bashrc

# Great success! :(
echo "Terminal Philosopher successfully uninstalled! :("

