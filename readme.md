# OpenModelica installer for Apple Silicon

This script helps you to install OpenModelica nightly on Apple Silicon powered Macs, iMacs and MacBooks. This scripts builds OpenModelica from source automatically and installs it.

## Requirements
> **Warning**
> 
> Make sure to disable ***Set up this disk as an LVM group*** during the installation of Ubuntu, otherwise you will get an error during the installation of OpenModelica.

- An Apple Silicon powered device
- An Ubuntu or Debian derivates virtual machine ([UTM](https://github.com/utmapp/UTM) is recommended, you can follow [this guide](https://mac.getutm.app/gallery/ubuntu-20-04))
- At least 4 GB of free space in the virtual machine, this space will be freed at the end of the script
- Make sure to have a reliable internet connection, this script will download a huge amount of files

## Installation
Boot the virtual machine and run the terminal app.

Clone the repository with this command:

```bash
git clone https://github.com/Lorenzoantonelli/openmodelica-apple-silicon.git
```

Then you just need to run `install.sh` to begin the installation

```bash
cd openmodelica-apple-silicon
chmod +x install.sh
./install.sh
```