# Ubuntu-17-Desktop-Unbloated
A script to remove all the bloatware/crapware from Ubuntu Desktop 17. 

Optionally prepares for VirtualBox Guest additions installation and installs VS Code.

## Versions
unbloat17.sh -> unbloats and updates remaining installed packages.

unbloat17_vb.sh -> unbloats, updates, and prepares for VirtualBox GuestAdditions installation.

unbloat17_vb_tools.sh -> same as above and installs Visual Studio Tools.

unbloat17_tools.sh -> unbloats, updates, and installs Visual Studio Tools.

## Usage
Download the desired edition of the script (eg with sudo wget)

    sudo wget https://raw.githubusercontent.com/warejacob/Ubuntu-17-Desktop-Unbloated/master/src/unbloat17.sh


make it executable 

    sudo chmod +x ./unbloat17.sh


run it

    sudo ./unbloat17.sh
