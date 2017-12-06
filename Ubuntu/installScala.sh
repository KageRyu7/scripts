#!/bin/bash

scala -version &> /dev/null
exists=$?
if [ "$exists" == 0 ]; then
	echo Scala installed
	scala -version
else
	echo Installing scala

	OS=$(awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]')
	ARCH=$(uname -m | sed 's/x86_//;s/i[3-6]86/32/')
	VERSION=$(awk '/DISTRIB_RELEASE=/' /etc/*-release | sed 's/DISTRIB_RELEASE=//' | sed 's/[.]0/./')

	if [ -z "$OS" ]; then
	    OS=$(awk '{print $1}' /etc/*-release | tr '[:upper:]' '[:lower:]')
	fi
	 
	if [ "$OS"=="ubuntu" ]; then
		echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
		sudo apt-get update
		sudo apt-get install sbt
	else
		if [ "$OS"=="centos" ]; then
			curl https://bintray.com/sbt/rpm/rpm > bintray-sbt-rpm.repo
			sudo mv bintray-sbt-rpm.repo /etc/yum.repos.d/
			sudo yum install sbt
		fi
	fi

	echo scala installed
fi
