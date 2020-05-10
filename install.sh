#!/bin/bash

# Print tag
printf "\nRunning install script..."

# Get current working, where the 
CWD=$(pwd)
printf "\nCurrent working dir: $CWD"

FILES=".vimrc .tmux.conf .gitconfig"

for file in $FILES; do
    if [ -f $CWD/.vimrc ]; then
        printf "\n$CWD/$file exists, Override?(y/n)"
        read override
        if [ $override = "y" ]; then
            rm -rf ~/$file
            ln -s $CWD/$file ~/$file
            printf "\nOverriding $file: $?"
        fi
    fi
done

printf "\nDone.. install script completed..\n"
