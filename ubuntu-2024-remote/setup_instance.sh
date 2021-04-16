wget https://raw.githubusercontent.com/DangDev/katacoda-scenarios/main/ubuntu-2024-remote/autoscript.sh &> /dev/null
chmod +x autoscript.sh
./autoscript.sh
read -p "Dán token Ngrok vào đây (Tạo nếu chưa có: " CRP
./ngrok authtoken $CRP
wget https://raw.githubusercontent.com/DangDev/katacoda-scenarios/main/ubuntu-2024-remote/app.sh
chmod +x app.sh
./app.sh
./ngrok tcp 3389
