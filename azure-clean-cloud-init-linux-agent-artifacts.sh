sudo cloud-init clean --logs --seed
sudo rm -rf /var/lib/cloud/
sudo systemctl stop walinuxagent.service
sudo rm -rf /var/lib/waagent/
sudo rm -f /var/log/waagent.log