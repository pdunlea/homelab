# if this returns "Image is up to date" then you can stop here
docker pull ghcr.io/home-assistant/home-assistant:stable

# stop the running container
docker stop homeassistant

# remove it from Docker's list of containers
docker rm homeassistant

# finally, start a new one
docker run -d \
  --name homeassistant \
  --restart=unless-stopped \
  --privileged \
  -e TZ=MY_TIME_ZONE \
  -v /PATH_TO_YOUR_CONFIG:/config \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable
