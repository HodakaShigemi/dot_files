#! /bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install git pyenv macvim tfenv jq nodenv npm remarshal kops pyenv-virtualenv rbenv
cellar=/usr/local/Cellar
ln -s ${cellar}/macvim/$(ls $cellar/macvim) ${cellar}/macvim/latest
ln -s ${cellar}/macvim/latest/MacVim.app /Application/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
>     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew cask install homebrew/cask/pycharm-ce lacaille iterm2 slack google-cloud-sdk

# add code here
# add more

curl https://raw.githubusercontent.com/Arc0re/Iceberg-iTerm2/master/iceberg.itermcolors > ~/Downloads/iceberg.itermcolors

# awscli
python3 -m ensurepip
pip3 install awscli

