sudo apt install cifs-utils -y
sudo apt install nfs-common -y
sudo mkdir /media/nas_share
sudo echo '192.168.1.9:/mnt/MainStorage /media/nas_share nfs rw 0 0' >> /etc/fstab

pyenv install 3.10
pyenv global 3.10
reboot
