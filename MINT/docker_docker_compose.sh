#######################################################################################################
#                                                                                                     #
# This shell script downloads the latest stable version of Docker / Docker-compose on LINUX MINT.     #
#                                                                                                     #
# #####################################################################################################

# Import docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add docker repository to APT
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"

# Update APT package list 
sudo apt-get update

# Install docker and docker-compose
sudo apt-get -y install docker-ce docker-compose

# Add user to docker group (so it's needed to use `sudo` everytime you use docker)
sudo usermod -aG docker $USER