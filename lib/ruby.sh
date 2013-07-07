# Install RVM
echo "Installing RVM"
\curl -L https://get.rvm.io | bash

# Install Ruby 1.9.3-p327 with falcon patch
echo "Installing Ruby 1.9.3-p327 with falcon patch"
rvm install 1.9.3-p327 --patch falcon --force-autoconf -j 5
rvm use 1.9.3-p327 --default
