CONFIG=$HOME/.config/gphotos-sync
STORAGE=$HOME/My_photos_backup
docker run --rm -v $CONFIG:/config -v $STORAGE:/storage -it ghcr.io/gilesknap/gphotos-sync /storage
