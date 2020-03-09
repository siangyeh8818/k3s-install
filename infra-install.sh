#!/bin/bash

echo "----------- Stage 1 : Install Docker Engine ------------"

yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y --setopt=obsoletes=0 docker-ce-17.03.1.ce-1.el7.centos  docker-ce-selinux-17.03.1.ce-1.el7.centos
systemctl start docker
systemctl enable docker
sleep 3s

echo "----------- Stage 2 : Install K3S ------------"

cp k3s-14 /usr/local/bin/k3s
cp kubectl /usr/local/bin/.
cp k3s.service /etc/systemd/system/.
touch /etc/systemd/system/k3s.service.env

echo "----------- Stage 3 : Starting K3S  ------------"

systemctl restart k3s
systemctl enable k3s

