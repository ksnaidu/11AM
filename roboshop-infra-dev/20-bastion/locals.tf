locals {
  ami_id = data.aws_ami.joindevops.id
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
  pubilc_subnet_id = split ("," data.aws_ssm_parameter.pubilc_subnet_ids.value)[0]

  common_tags = {
    project = var.project
    environment = var.environment
    Terraform = "true"
  }
}

