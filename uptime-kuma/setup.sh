sudo apt update
sudo apt upgrade -y

curl -sL https://deb.nodesource.com/setup_current.x | sudo bash -
# install nodejs
sudo apt install nodejs -y
# clone from git
git clone https://github.com/louislam/uptime-kuma.git ~/uptime-kuma
# change directory to ./uptime-kuma
cd ~/uptime-kuma
# install npm
sudo apt install npm
# run setup
npm run setup
# Setup uptime kuma to run automagically on startup
# create nodejs user
sudo useradd nodejs
# change directory out of uptime-kuma
cd ..
# move uptime kuma to /opt
sudo mv ~/uptime-kuma /opt
# create service bash file
sudo touch /opt/uptime-kuma/uptime-kuma.sh

# make uptime-kuma.sh executable
sudo chmod +x /opt/uptime-kuma/uptime-kuma.sh
# create uptime-kuma service file
sudo echo '#!/usr/bin/bash' >> /opt/uptime-kuma/uptime-kuma.sh
sudo echo '/usr/bin/node /opt/uptime-kuma/server/server.js' >> /opt/uptime-kuma/uptime-kuma.sh
# Copy the service file to wherever it belongs 
cp ~/homelab/uptime-kuma/uptime-kuma.service /etc/systemd/system/uptime-kuma.service
# set owner of /opt/uptime-kuma
sudo chown nodejs:nodejs /opt/uptime-kuma -R
# reload systemd services
sudo systemctl daemon-reload
# start uptime-kuma service on boot and now
sudo systemctl enable uptime-kuma
