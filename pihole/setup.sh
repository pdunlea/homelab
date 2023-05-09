apt update
apt upgrade -y

cp 01-network-manager-all.yaml /etc/netplan
cd /etc/netplan

netplan try
cd ~
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
cd "Pi-hole/automated install/"
sudo bash basic-install.sh
