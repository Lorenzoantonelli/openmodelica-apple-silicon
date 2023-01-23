#! /usr/bin/env bash
echo "deb https://build.openmodelica.org/apt `lsb_release -cs` nightly" | sudo tee /etc/apt/sources.list.d/openmodelica.list
echo "deb-src https://build.openmodelica.org/apt nightly contrib" | sudo tee -a /etc/apt/sources.list.d/openmodelica.list
wget -q http://build.openmodelica.org/apt/openmodelica.asc -O- | sudo apt-key add - 

sudo apt update
sudo apt install devscripts debhelper

mkdir ~/tmp_modelica
(
    cd ~/tmp_modelica
    echo "Compiling OpenModelica..."
    sudo apt build-dep openmodelica
    apt -b source openmodelica
    echo "Installing OpenModelica..."
    sudo dpkg -i ./*.deb
)

mkdir "Build"
cp ~/tmp_modelica/*.deb "Build/"
echo "Deb files are stored in the Build directory."

read -p "OpenModelica installed! Do you want to remove the temporary directory? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Removing temporary directory..."
    rm -rf ~/tmp_modelica
fi

exit 0