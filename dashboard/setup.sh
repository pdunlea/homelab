sudo chmod +x start.sh
sudo chmod +x restart.sh
sudo apt-get update
sudo apt-get upgrade -y

# install docker
sudo apt-get update
sudo apt-get install \
 ca-certificates \
 curl \
 gnupg \
 lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
 "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl start docker.service
sudo systemctl start containerd.service

# setup restart on server restart
cp start.sh /etc/init.d/start.sh
chmod +x /etc/init.d/start.sh

# install and run homer
./start.sh

