data "aws_availability_zones" "available" {
  state = "available"
}

# output "azs_info" {
#     value = data.aws_availability_zones.available  ## testing purpose azs
# }

data "aws_vpc" "default" {
  default = true
}