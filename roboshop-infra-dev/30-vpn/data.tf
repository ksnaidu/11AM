data "aws_ami" "OpenVPN" {

  owners           = ["679593333241"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["OpenVPN Access Server 3.1.0a publisher image-ami-056fe8a449e02bdb8"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.project}/${var.environment}/vpn_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project}/${var.environment}/public_subnet_ids"
}
