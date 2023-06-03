# Purpose

This repo contains how to setup various servers within my homelab. In general, the following will need to be run for each software. 

```
cd <whatever>
sudo chmod +x setup.sh
./setup.sh
```

### Truenas
Set this up first with a ZFS pool for storing backups
Make sure to share the drive with an NFS

### Proxmox

Whole PC - runs VMs and containers. 

* Port 8006

Setup steps for proxmox:
1: Make sure that we've already got Truenas going
2: set the ip for the trunas server into the setup.sh file for within proxmox
3: install git and run the setup, this will create an NFS mount to the truenas server
4: Go to Datacenter -> Storage and add a link to the truenas NFS
5: Go to backups and create a backup for all VMs pointing to the truenas store

### Uptime Kuma

This is used to help track what software is up or down. The details are in the uptime-kuma directory. There is a setup file and a serivce file.  The setup should make it so that uptime kuma is installed and running on a linux box at machine startup.  This is initially meant to be run as a container on a Proxmox server. Must run the below command on the setup file for it to be able to run.

* Disk Size:  16
* CPUs: 1
* Memory: 1024  
* Port: 3001

### Homer Dashboard

This is used as a way to get to all the different applications etc on the network.

* Disk Size:  8
* CPUs: 1
* Memory: 512
* Port: 8080

### Home Assistant 

This is used to help keep home automation working as desired.

* Disk Size:  32
* CPUs: 2
* Memory: 2048
* Port: 8123

### Homebridge

This works in conjunction with Home Assistant to help manage smart devices.

* Disk Size: 10  
* CPUs: 1
* Memory: 1024
* Port: 8581

### Crontasks vm

NOTE:  This must be setup as a privileged container

* Disk Size: 32
* CPUs: 1
* Memory: 1024

### 

* Disk Size:
* CPUs:
* Memory:
* Port: 
