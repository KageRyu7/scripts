#!/bin/bash

echo Installing Spark

# Pull spark tgz and un pack files into /usr/local/spark
if [ -d /usr/local/spark ]
then
	echo "- /usr/local/spark exists assuming installed. If there is a problem delete this directory and try installing again."
else
	echo "- installing spark 2.2.0"
	curl https://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz > spark-2.2.0-bin-hadoop2.7.tgz
	tar xvf spark-2.2.0-bin-hadoop2.7.tgz
	sudo mv spark-2.2.0-bin-hadoop2.7 /usr/local/spark
	rm spark-2.2.0-bin-hadoop2.7.tgz
fi

# Add a spark paths to .bashrc file
if grep -Fxq 'export PATH=$PATH:/usr/local/spark/bin' ~/.bashrc
then
	echo "- spark path already in .bashrc"
else
	echo "- adding spark path to ~/.bashrc"
	echo 'export PATH=$PATH:/usr/local/spark/bin' >> ~/.bashrc
fi

echo Spark installed
