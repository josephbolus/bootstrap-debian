echo "Bootstraping Debian 7 workstation"
echo "The process will need your sudo password"

# Install packages
lib/packages.sh

# Install Ruby
lib/ruby.sh

# Install Rails
lib/rails.sh

# Configuring VIM
lib/vim.sh

# Configuring i3
lib/i3.sh

# Configuring RXVT
lib/rxvt.sh
