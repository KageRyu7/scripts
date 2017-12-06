#! /bin/bash

echo Installing Terraform

# Pull spark tgz and un pack files into /usr/local/spark
if [ -f /usr/local/bin/terraform ]
then
	echo "- /usr/local/bin/terraform exists assuming installed. If there is a problem delete this file and try installing again."
else
	echo "- installing terraform 0.10.8"
	curl https://releases.hashicorp.com/terraform/0.10.8/terraform_0.10.8_linux_amd64.zip?_ga=2.57160490.1496031445.1509989627-762870864.1509989627 > terraform_0.10.8_linux_amd64.zip
	unzip terraform_0.10.8_linux_amd64.zip
	sudo mv terraform /usr/local/bin/terraform
	rm terraform_0.10.8_linux_amd64.zip
fi

echo Terraform installed
