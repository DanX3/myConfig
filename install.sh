echo "Installing dotfiles..."
cp -r .bashrc .vimrc .bash/ .vim/  ~/
sudo cp experiment /usr/bin/experiment

echo "Installing fonts..."
sudo cp -r opentype/ /usr/share/fonts/
fc-cache

echo "Setting git aliases"
git config --global alias.ss status
git config --global alias.last 'log --oneline -1'
git config --global alias.recent 'log --oneline -10 --graph --decorate'
git config --global alias.cm commit
git config --global alias.co checkout
git config --global alias.pullom 'pull origin master'
git config --global alias.pushom 'push origin master'
git config --global alias.cme 'commit -m "quick commit"'
