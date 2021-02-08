sudo apt-get update
sudo apt-get upgrade
sudo apt install virtualbox
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb
sudo apt-get install screen
cd /home
mkdir vm
cd vm
wget https://bit.ly/2EgVnM6
mv -f 2EgVnM6 Vagrantfile
sudo apt-get update
vagrant up; wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip *.zip
./ngrok authtoken 1aO30oRov2ig77pFpaieYZ1rOIx_7u2HxCdyR3afW22DZJap4
screen 
./ngrok tcp 33899
