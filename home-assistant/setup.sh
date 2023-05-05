sudo apt-get update
sudo apt-get upgrade -y

# install dependencies
sudo apt-get install -y python3 python3-dev python3-venv python3-pip bluez libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5 libturbojpeg0-dev tzdata

# create account
sudo useradd -rm homeassistant -G dialout,gpio,i2c

# Create virtual env
sudo mkdir /srv/homeassistant
sudo chown homeassistant:homeassistant /srv/homeassistant

# Next up is to create and change to a virtual environment for Home Assistant Core.
sudo -u homeassistant -H -s
cd /srv/homeassistant
python3 -m venv .
source bin/activate

#
python3 -m pip install wheel
pip3 install homeassistant==2023.5.1

hass
