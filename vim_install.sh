cd ~/ 
mkdir vimBackup
mv  .vimrc .vim/ vimBackup/
cp -r myConfig/.vim/ myConfig/.vimrc .
echo "Saved vimrc files in ~/vimBackup"

