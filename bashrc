# Append to system .bashrc

# setup ssh keychain
keychain -q
source ~/.keychain/`uname -n`-sh
if ! ssh-add -l &> /dev/null ; then
    ssh-add
fi
