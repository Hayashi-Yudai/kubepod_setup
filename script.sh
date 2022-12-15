#! /bin/bash

apt update -y \
    && apt install -y vim \
        git \
        fzf \
        fasd

cp ./.vimrc $HOME/.vimrc
cp ./.bashrc $HOME/.bashrc
cp ./.bash_aliases $HOME/.bash_aliases

source ./.env
mkdir $HOME/.ssh

echo "Host github.com" > $HOME/.ssh/config
echo "  HostName github.com" >> $HOME/.ssh/config
echo "  User git" >> $HOME/.ssh/config
echo "  Port $GITHUB_SSH_PORT" >> $HOME/.ssh/config
echo "  IdentityFile $GITHUB_SSH_IDENTITY" >> $HOME/.ssh/config
echo "  IdentitiesOnly yes" >> $HOME/.ssh/config

git clone https://github.com/tomasiser/vim-code-dark.git
mkdir -p ~/.vim/colors
mv ./vim-code-dark/colors/codedark.vim ~/.vim/colors/

source ~/.bashrc

