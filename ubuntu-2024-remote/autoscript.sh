clear
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok.zip
unzip ngrok.zip
sudo useradd -m TinCowBoy
sudo adduser TinCowBoy sudo
echo 'TinCowBoy:12345678' | sudo chpasswd
sudo apt update
sudo apt install xfce4 -y
sudo chmod 777 /home/TinCowBoy/
echo xfce4-session >/home/TinCowBoy/.xsession
sudo apt install xrdp -y
sudo service xrdp restart
