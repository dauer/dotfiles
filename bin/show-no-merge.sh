#!/usr/bin/env bash

# Shows Git branches not merged into master for projects in current folder

for dir in ./*; do (
    if [ -d $dir ]; then
        cd "$dir" &&
        if [ -d '.git' ]; then
            branch=`git branch --no-merge` &&
            echo -e "$branch \t $dir";
        fi
    fi
) done
