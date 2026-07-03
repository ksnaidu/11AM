data "aws_ami" "joindevops" {
  owners           = ["196939353460"]
  most_recent      = true


filter {
    name= "name"
    values = ["RHEL-9-Devops-Practice"]
}

filter {
    name = "root-device-type"
    values = ["ebs"]
}

filter {
    name = "virtualization-type"
    values = ["hvm"]
}

}