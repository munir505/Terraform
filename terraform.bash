#!/bin/bash
sudo yum install wget -y
sudo yum install unzip -y
remote_zip="https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip"
wget ${remote_zip} -O ~/terraform.zip
sudo unzip ~/terraform.zip -d /opt/terraform/
sudo ln -s /opt/terraform/terraform /usr/bin/terraform
