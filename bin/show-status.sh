#!/usr/bin/env bash

# Shows number of none comitted changes for projects in current folder

for dir in ./*; do (
    if [ -d $dir ]; then
        cd "$dir"
        if [ -d '.git' ]; then
            x=`git status --porcelain | wc -l`
            #x=`git stash list | wc -l`
            if [ $x -gt 0 ]; then
                echo -e $x "\t" $dir
            fi
        fi
    fi
) done
