rm -rf ~/.vim
rm -f ~/.vimrc
git clone https://github.com/dimroc/dotvim.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/flazz/vim-colorschemes ~/.vim/vim-colorschemes
ln -s ~/.vim/vimrc ~/.vimrc
vim +PluginInstall +qall
