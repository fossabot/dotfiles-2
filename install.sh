git clone git@github.com:brunohenrique/dotfiles.git ~/.dotfiles
cd ~/.dotfiles && git submodule update --init && cd vimfiles && git submodule update --init

mkdir -p ~/.vim/
cp -r .scripts/ ~/.scripts

ln -s ~/.dotfiles/vimfiles/.vimrc ~/
ln -s ~/.dotfiles/vimfiles/.vimrc.after ~/
ln -s ~/.dotfiles/vimfiles/.vimrc.bundles ~/
ln -s ~/.dotfiles/vimfiles/autoload ~/.vim/
ln -s ~/.dotfiles/vimfiles/colors ~/.vim/

git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

ln -s ~/.dotfiles/.bashrc ~/
ln -s ~/.dotfiles/.editorconfig ~/
ln -s ~/.dotfiles/.gemrc ~/
ln -s ~/.dotfiles/.gitconfig ~/
ln -s ~/.dotfiles/.gitignore ~/
ln -s ~/.dotfiles/.irbrc ~/
ln -s ~/.dotfiles/.pryrc ~/
ln -s ~/.dotfiles/.tmux.conf ~/

vim +BundleInstall +qall

git clone git@github.com:powerline/fonts.git ~/fonts
cd ~/fonts && ./install.sh

rm -r ~/fonts
source ~/.bashrc
