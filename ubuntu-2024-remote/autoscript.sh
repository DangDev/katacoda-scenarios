sudo useradd -m TinCowBoy
sudo adduser TinCowBoy sudo
cho 'TinCowBoy:48694869' | sudo chpasswd
sudo apt update
sudo apt install xfce4
udo chmod 777 /home/TinCowBoy/
echo xfce4-session >/home/TinCowBoy/.xsession
sudo apt install xrdp -y
sudo service xrdp restart
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok.zip && unzip ngrok.zip
read -p "Dán token Ngrok vào đây (Tạo nếu chưa có: " CRP
./ngrok authtoken $CRP
./ngrok tcp 3389