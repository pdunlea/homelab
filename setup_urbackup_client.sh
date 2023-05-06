TF=$(mktemp) && wget "https://hndl.urbackup.org/Client/2.5.23/UrBackup%20Client%20Linux%202.5.23.sh" -O $TF && sudo sh $TF; rm -f $TF


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
