cd ~
mkdir .config
mkdir .config/gphotos-sync
more homelab/crontasks/setup3.sh
cp /mnt/nas_share/client_secret.json ~/.config/gphotos-sync/client_secret.json
cd ~
cd homelab/crontasks

python3 get-pip.py
python3 -m pip install gphotos-sync
