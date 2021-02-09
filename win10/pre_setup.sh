sudo apt-get update
sudo apt-get upgrade
sudo apt install virtualbox
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb
sudo apt-get install screen
cd /home
mkdir vm
cd vm
mkdir W10
cd W10
clear
wget -O W10.vhd https://app.vagrantup.com/thuonghai2711/boxes/W2012DevBox/versions/1.0.0/providers/virtualboxw10.box
clear
VBoxManage createvm --name W10 --ostype Windows10_64 --register --basefolder `pwd` 
VBoxManage modifyvm W10 --ioapic on 
VBoxManage modifyvm W10 --memory 12288 --vram 256 --cpus 8
VBoxManage modifyvm W10 --nic1 nat 
VBoxManage modifyvm W10 --natpf1 "rdp,tcp,,33899,,3389"
vboxmanage storagectl W10 --name "SATA Controller" --add sata --controller IntelAHCI --portcount 1 --bootable on
vboxmanage storageattach W10 --storagectl "SATA Controller" --device 0 --port 0 --type hdd --medium /home/developer/W10/W10.vhd
VBoxManage startvm "W10" --type headless
clear
echo All done! Connect your VM using RDP.
echo IP:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo User: Administrator
echo Pass: Thuonghai001
echo Finished!this screen will show on 10s
sleep 10
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip *.zip
./ngrok authtoken 1aO30oRov2ig77pFpaieYZ1rOIx_7u2HxCdyR3afW22DZJap4
screen
./ngrok tcp 33899
