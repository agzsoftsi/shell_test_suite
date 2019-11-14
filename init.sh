#!/bin/bash

echo "write your Github username"

read -n 20 -p "user: " USER

find . -name "simple_shell" -exec rm -rf {} \;

git clone "https://github.com/$USER/simple_shell.git"

cd simple_shell

#verify if gcc is the version 4.8.4

gcc -Wall -Werror -Wextra -pedantic *.c -o hsh
if [ $? == 1 ]
then
	echo "Compilation Error!"
fi

echo "Final revision successful!"
