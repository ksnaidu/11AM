resource "aws_instance" "this" {     ### this means we don't know the project-names, we are using "this in  programatical way"
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = var.tags
}



