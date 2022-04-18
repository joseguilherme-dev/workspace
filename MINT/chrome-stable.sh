####################################################################################
#                                                                                  #
# This shell script downloads the latest stable version of Chrome on LINUX MINT.   #
#                                                                                  #
# ##################################################################################

# Add the Google Chrome Repository to APT
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Set up Google Chrome Repository on your System
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Update your APT
sudo apt update

# Install Google Chrome
sudo apt install -y google-chrome-stable
