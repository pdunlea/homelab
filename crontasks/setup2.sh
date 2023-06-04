sudo apt install nfs-common -y
sudo mkdir -p /mnt/nas_share
chmod 644 /etc/fstab
chattr -i /etc/fstab
sudo echo '192.168.1.9:/mnt/MainStorage /mnt/nas_share nfs rw 0 0' >> /etc/fstab
chattr +i /etc/fstab

sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y
sudo apt update
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

touch ~/.bashrc
touch ~/.profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile

pyenv install 3.10
pyenv global 3.10

reboot
