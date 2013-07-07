# Configuring VIM
echo "Configuring vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
  curl -Sso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

mv $HOME/.vim/janus/vim/vimrc $HOME/vimrc.oldz
cp $HOME/bootstrap-debian/conf/vimrc $HOME/.vim/janus/vim/vimrc
