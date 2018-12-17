rm -rf ~/.vim
rm -f ~/.vimrc
git clone https://github.com/dimroc/dotvim.git ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/flazz/vim-colorschemes ~/.vim/vim-colorschemes
ln -s ~/.vim/vimrc ~/.vimrc
vim +PlugInstall +qall
