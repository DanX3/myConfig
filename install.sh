echo "Installing dotfiles..."
cp ~/.vimrc ~/.vimrc.bak
cp -r ~/.vim .vim.bak
cp -r .bashrc .vimrc .bash/ .vim/ .oh-my-zsh/  ~/
sudo cp experiment /usr/bin/experiment
if ! [ -e /usr/share/fonts/opentype/ ] ; then
    echo "Installing fonts..."
    sudo cp -r opentype/ /usr/share/fonts/
    sudo cp -r ttf /usr/share/fonts/truetype/
    fc-cache
fi

echo "Setting git aliases"
git config --global alias.ss status
git config --global alias.last 'log --oneline -1'
git config --global alias.recent 'log --oneline -10 --graph --decorate'
git config --global alias.cm 'commit -m'
git config --global alias.co checkout
git config --global alias.pullom 'pull origin master'
git config --global alias.pushom 'push origin master'
git config --global alias.cme 'commit -m "quick commit"'
git config --global alias.draw 'log --graph --decorate --oneline'
git config --global alias.remotes 'remote -v'
git config --global alias.co 'checkout'
