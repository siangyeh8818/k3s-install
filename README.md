# sre.k3s.provisionor

## 安裝懶人包腳本

infra-install.sh

## Install

cp k3s-14 /usr/local/bin/k3s 

cp kubectl /usr/local/bin/. 


## Launch K3S

k3s server

kubectl get po 

## Systemctl

cp k3s.service /etc/systemd/system/.

touch /etc/systemd/system/k3s.service.env


