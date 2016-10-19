echo "Installing dotfiles..."
cp -r .conkyrc .bashrc .vimrc .bash/ .vim/  ~/
sudo cp experiment /usr/bin/experiment
if ! [ -e /usr/share/fonts/opentype/ ] ; then
    echo "Installing fonts..."
    sudo cp -r opentype/ /usr/share/fonts/
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
