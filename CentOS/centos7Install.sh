#!/bin/bash

OUTFILE="/home/ryan/.bashrc"

sudo yum -y update
#su -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm'
sudo yum -y install epel-release
sudo yum -y install git
sudo yum -y install java-1.8.0-openjdk-devel
sudo yum -y install gcc

echo "export JAVA_HOME=/usr/lib/jvm/java" >> $OUTFILE