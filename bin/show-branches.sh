#!/usr/bin/env bash
#
# Shows Git branches for projects in current folder

for dir in ./*; do (
    if [ -d $dir ]; then
        cd "$dir" &&
        if [ -d '.git' ]; then
            branch=`git branch`
            echo -e "\e[4m\e[1m$dir\e[0m"
            echo -e "$branch \t $dir";
        fi
    fi
) done
