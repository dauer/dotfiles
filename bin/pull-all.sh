#!/usr/bin/env bash

# Git pull in all projects in current folder

for dir in ./*; do (
    if [ -d $dir ]; then
        cd "$dir"
        if [ -d '.git' ]; then
            git pull
        fi
    fi
) done
