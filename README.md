# Terraform
In order to run this:
  -First download Git (sudo yum install git -y)
  -Clone repo from git hub (git clone https://github.com/munir505/Terraform)
  -Then run the file run.bash (./run.bash)
  -Enjoy :D
 
This repo uses, terraform and makefiles in order to create a VM on GCP, then installs a Go-Http-Server and jenkins in to that newly created vm that was created using teraform.

Also this allows for a local machine to ssh in to it and run the two services locally

This project uses, terraform variables and HCL and a tf file to config a VM
