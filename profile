# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

function gpr() {
    ORIGIN=$PWD
    while [[ $PWD != '/' && ! -d ".git" ]]
    do
        cd ..
    done
    if [ $PWD == '/' ]; then
        cd $ORIGIN
    fi
}

# set editor and pager
export PAGER="more"
export EDITOR="vim"
export VISUAL="vim"
