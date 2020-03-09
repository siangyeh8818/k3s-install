# sre.k3s.provisionor

## Install

cp k3s-14 /usr/local/bin/k3s 

cp kubectl /usr/local/bin/. 


## Launch K3S

k3s server

kubectl get po 

## Systemctl

cp k3s.service /etc/systemd/system/.

touch /etc/systemd/system/k3s.service.env


