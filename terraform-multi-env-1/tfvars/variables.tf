variable "project" {
    default = "roboshop"
  
}

variable "environment" {
  
}

variable "common_tags" {
    default = {
        project = "roboshop"
        terraform = "true"
    }
  
}

variable "sg_name" {
    default = "allow-all"
  
}

variable "sg_description" {
    default = "allow all ports from ip"
  
}

variable "instances" {
    default = ["mongodb", "redis"]
  
}

variable "from_port" {
    default =  0
  
}

variable "to_port" {
    default = 0
  
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
  
}

variable "ami_id" {
    type           = string
    default        =  "ami-0220d79f3f480ecf5"
    description    =  "AMI id of RHEL"
}

variable "instance_type" {

  
}

