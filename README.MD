Link start and autoupdate scripts for VM.

# How to prepare image

## 1. Clone this project

`mkdir /var/scripts && git clone https://github.com/dmpanch/link-vm-deploy /var/scripts`

## 2. Copy rc.local and add run permissions

`cp /var/scripts/rc.local /etc/rc.local && chmod +x /etc/rc.local`

## 3. Add run permissions to all scripts

`chmod -R +x /var/scripts/`

## 4. Clone Link project

`git clone https://github.com/basip/link /root`

## 5. Remove cloud-init service

`apt purge -y cloud-init
rm -Rf /etc/cloud /var/lib/cloud`

## 6. Add Link start script to cronjob

`sudo echo '@reboot root /var/scripts/_start.sh >> /var/log/link_startup.log' >> /root/cronjob && crontab /root/cronjob`

## 7. After reboot Link will be downloaded and started