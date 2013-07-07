echo "Updating repositories"
apt-get -y update
echo "Updating Packages"
apt-get dist-upgrade

# Install Required Packages
echo "Installing sexy stuff"
apt-get install curl build-essential gcc vim i3 rxvt-unicode-256color git htop
