echo "Updating repositories"
sudo apt-get -y update
echo "Updating Packages"
sudo apt-get dist-upgrade

# Install Required Packages
echo "Installing sexy stuff"
sudo apt-get install curl build-essential gcc vim i3 rxvt-unicode-256color git htop
