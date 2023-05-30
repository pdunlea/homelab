sudo mount -t nfs 192.168.1.9:/mnt/MainStorage /media/nas_share

CONFIG=.config/gphotos-sync
STORAGE=/media/nas_share/My_photos_backup
docker run --rm -v $CONFIG:/config -v $STORAGE:/storage -it ghcr.io/gilesknap/gphotos-sync /storage
