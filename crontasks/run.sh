CONFIG=~/.config/gphotos-sync
STORAGE=/mnt/nas_share/My_photos_backup
docker run --rm -v $CONFIG:/config -v $STORAGE:/storage -it ghcr.io/gilesknap/gphotos-sync /storage
