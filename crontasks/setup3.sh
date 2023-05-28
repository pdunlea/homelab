sudo apt install cifs-utils -y
sudo apt install nfs-common -y
yum install nfs-utils
mount -t nfs 192.168.1.9:/mnt/MainStorage /media/nas_share

pyenv install 3.10
pyenv global 3.10
reboot
