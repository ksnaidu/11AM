resource "aws_instance" "linux" {
  ami = "ami-09c813fb71547fc4f" ## cahnge 
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-035143f391bb55883"]# change

  tags = {
    Name = "linux-change"
  }
}