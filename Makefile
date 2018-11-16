.PHONY = init apply destroy

var = "config_var.tfvars"
terr_apply = "terraform apply -auto-approve -var-file="
terr_dest = "terraform destroyi -auto-approve"

init:
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
