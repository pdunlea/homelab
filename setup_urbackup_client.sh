# grab the code
apt install build-essential "g++" libwxgtk3.0-dev "libcrypto++-dev" libz-dev

wget https://hndl.urbackup.org/Client/2.5.23/urbackup-client-2.5.23.tar.gz

# Untar
tar xzf urbackup-client-2.5.23.tar.gz

# Configure it
cd urbackup-client-2.5.23
./configure
make -j4
sudo make install

sudo urbackupclientbackend -v info

sudo chmod +x /etc/rc.local

sudo echo '/usr/local/sbin/urbackupclientbackend -d' >> /etc/rc.local
