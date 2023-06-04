pyenv install 3.10
pyenv global 3.10

sudo chattr +i /etc/fstab
cd ~
mkdir .config
mkdir .config/gphotos-sync
cp /mnt/nas_share/client_secret.json ~/.config/gphotos-sync/client_secret.json
cd ~
cd homelab/crontasks

python3 get-pip.py
python3 -m pip install gphotos-sync
