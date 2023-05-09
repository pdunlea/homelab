apt update
apt install network-manager -y
systemctl start NetworkManager.service
apt upgrade -y

cd ~
git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole

cp homelab/pihole/01-network-manager-all.yaml /etc/netplan


netplan try

cd "Pi-hole/automated install/"
sudo bash basic-install.sh
