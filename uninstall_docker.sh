#!/bin/bash

echo ""
echo ""
echo ""
echo "#####################################################"
echo "# 删除docker-ce相关程序及依赖                       #"
echo "#####################################################"
yum -y remove docker-ce \
                  docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

echo ""
echo "#####################################################"
echo "# 删除docker服务                                    #"
echo "#####################################################"
rm -rf /etc/systemd/system/docker.service.d

echo ""
echo "#####################################################"
echo "# 删除相关目录                                      #"
echo "#####################################################"
rm -rf /var/lib/docker
rm -rf /var/run/docker

echo ""
echo "#####################################################"
echo "# 安装网桥管理工具                                  #"
echo "#####################################################"
yum -y install bridge-utils

echo ""
echo "#####################################################"
echo "# 停止并删除docker0                                  #"
echo "#####################################################"
ifconfig docker0 down
brctl delbr docker0
