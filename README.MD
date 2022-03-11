Link start and autoupdate scripts for VM.

# How to prepare image

## 1. Clone this project

`sudo mkdir /var/scripts && sudo git clone https://github.com/dmpanch/link-vm-deploy /var/scripts`

## 2. Copy rc.local and add run permissions

`sudo p /var/scripts/rc.local /etc/rc.local && sudo chmod +x /etc/rc.local`

## 3. Add run permissions to all scripts

`sudo chmod -R +x /var/scripts/`

## 4. Clone Link project

`sudo git clone https://github.com/basip/link /root/link`

## 5. Remove cloud-init service

`sudo apt purge -y cloud-init && sudo rm -Rf /etc/cloud /var/lib/cloud`

## 6. Add Link start script to cronjob

`sudo echo '@reboot /var/scripts/_start.sh >> /var/log/link_startup.log' >> /root/cronjob && sudo crontab /root/cronjob`

## 7. After reboot Link will be downloaded and started