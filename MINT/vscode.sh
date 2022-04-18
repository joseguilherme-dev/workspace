####################################################################################
#                                                                                  #
# This shell script downloads the latest stable version of VSCode on LINUX MINT.   #
#                                                                                  #
# ##################################################################################

# Install transport-https
sudo apt-get install -y apt-transport-https

# Add the gpg key to the repository
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/

# Add the repository to APT
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Update your APT
sudo apt update

# Install Google Chrome
sudo apt install -y code
