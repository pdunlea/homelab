sudo apt update
sudo apt upgrade -y
sudo apt install software-properties-common -y

# Install urbackup
sudo add-apt-repository ppa:uroni/urbackup
sudo apt-get update
sudo apt-get install urbackup-server
