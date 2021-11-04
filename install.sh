echo "deb https://build.openmodelica.org/apt `lsb_release -cs` nightly" | sudo tee /etc/apt/sources.list.d/openmodelica.list
echo "deb-src https://build.openmodelica.org/apt nightly contrib" | sudo tee -a /etc/apt/sources.list.d/openmodelica.list
wget -q http://build.openmodelica.org/apt/openmodelica.asc -O- | sudo apt-key add - 
sudo apt update
sudo apt install devscripts debhelper
mkdir ~/tmp
cd ~/tmp
sudo apt build-dep openmodelica
apt -b source openmodelica
sudo dpkg -i *.deb
echo "OpenModelica installed, cleaning up..."
cd ..
rm -rf ~/tmp
exit 0