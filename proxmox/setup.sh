apt update
apt install nfs-common
mkdir /media/nas_share

sudo echo '192.168.1.9:/mnt/MainStorage /media/nas_share nfs rw 0 0' >> /etc/fstab
