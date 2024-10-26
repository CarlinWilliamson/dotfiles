tempdir=$(mktemp -d)
cd $tempdir
wget -O discord.deb -o- https://discord.com/api/download?platform=linux&format=deb
wait
sudo apt install ./discord.deb
