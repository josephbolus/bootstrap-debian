echo "Bootstraping Debian 7 workstation"
echo "The process will need your sudo password"

echo "Updating repositories"
apt-get -y update
echo "Updating Packages"
apt-get dist-upgrade

# Install Required Packages
echo "Installing sexy stuff"
apt-get install curl build-essential gcc vim i3 rxvt-unicode-256color git htop

# Install RVM
echo "Installing RVM"
\curl -L https://get.rvm.io | bash

# Install Ruby 1.9.3-p327 with falcon patch
echo "Installing Ruby 1.9.3-p327 with falcon patch"
rvm install 1.9.3-p327 --patch falcon --force-autoconf -j 5
rvm use 1.9.3-p327 --default

# Installing Rails 3.2.13
echo "Installing Rails 3.2.13"
gem install rails --version 3.2.13 --no-ri --no-rdoc

# Configuring VIM
echo "Configuring vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
  curl -Sso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

mv /home/`whoami`/.vim/janus/vim/vimrc /home/`whoami`/vimrc.oldz
cp /home/`whoami`/bootstrap/conf/vimrc /home/`whoami`/.vim/janus/vim/vimrc

# Configuring i3
echo "Configuring i3"
cp /home/`whoami`/bootstrap/conf/i3/config /home/`whoami`/.i3/config
cp /home/`whoami`/bootstrap/conf/i3/startup.sh /home/`whoami`/.i3/startup.sh
cp /home/`whoami`/bootstrap/cong/i3/create_next_workspace.rb /home/`whoami`/.i3/create_next_workspace.rb

echo "Adding Xdefaults"
cp /home/`whoami`/bootstrap/conf/Xdefaults /home/`whoami`/.Xdefaults
