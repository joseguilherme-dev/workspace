####################################################################################
#                                                                                  #
# This shell script downloads the latest stable version of Pyenv on LINUX MINT.   #
#                                                                                  #
# ##################################################################################

# Install pyenv and python dependencies
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libreadline-dev libbz2-dev libsqlite3-dev wget curl llvm libncurses5-dev

# Download official pyenv installation script and execute it
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

# You must restart your terminal in order to use pyenv, and install any python version with `pyenv install --list`
# You can restart by running `exec $SHELL`
#
# If pyenv won't work after installation, make sure the following lines are present in the ~/.bashrc file:

#   export PATH="$HOME/.pyenv/bin:$PATH"
#   eval "$(pyenv init --path)"
#   eval "$(pyenv virtualenv-init -)"
#

# Now, run `exec $SHELL` again and everything should be working just fine.
