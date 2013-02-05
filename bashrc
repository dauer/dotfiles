# Append to system .bashrc

# We want multi-color terminal
export TERM="xterm-256color"

# setup ssh keychain
keychain -q
source ~/.keychain/`uname -n`-sh
if ! ssh-add -l &> /dev/null ; then
    ssh-add
fi
