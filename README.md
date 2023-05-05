# Purpose

This repo contains how to setup various servers within my homelab. In general, the following will need to be run for each software. 

```
cd <whatever>
sudo chmod +x setup.sh
./setup.sh
```

### Uptime Kuma

This is used to help track what software is up or down. The details are in the uptime-kuma directory. There is a setup file and a serivce file.  The setup should make it so that uptime kuma is installed and running on a linux box at machine startup.  This is initially meant to be run as a container on a Proxmox server. Must run the below command on the setup file for it to be able to run.

### Home Assistant 

This is used to help keep home automation working as desired.
