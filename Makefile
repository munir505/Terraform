.PHONY = init apply destroy make_key tunnel

var = "config_var.tfvars"
terr_apply = "terraform apply -auto-approve -var-file="
terr_dest = "terraform destroyi -auto-approve"

init:
	@mkdir .ssh
	@ssh-keygen -N "" -f "id_rsa"
	@cp id_rsa.pub ~/.ssh
	@cp id_rsa ~/.ssh
	@cp ~/Terraform/01_provider.tf ~/
	@cp ~/Terraform/compute_resource.tf ~/
	@cp ~/Terraform/config_var.tfvars ~/
	@cp -r ~/Terraform/scripts ~/
	@cp ~/Terraform/terraform.bash ~/
	@cp ~/Terraform/terraform_default.tf ~/                                   	
	@chmod +x ~/terraform.bash
	@~/terraform.bash
	@terraform init

apply:
	@"${terr_apply}${var}"

destroy:
	@"${terr_dest}"

make_key:
	@mkdir ~/.gcp
	@gsutil cp gs://bucket_munir/t-rider-219612-fb14af0ed1be.json ~/
	@mv ~/t-rider-219612-fb14af0ed1be.json ~/.gcp/terraform_key.json

tunnel:
	@chmod +x tunnel_config.bash
	@~/Terraform/tunnel_config.bash
