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

# set editor and pager
export PAGER="more"
export EDITOR="vim"

# setup ssh keychain
keychain -q
source ~/.keychain/`uname -n`-sh
if ! ssh-add -l &> /dev/null ; then
    ssh-add
fi
