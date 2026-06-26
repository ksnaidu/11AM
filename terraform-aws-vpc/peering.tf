resource "aws_vpc_peering_connection" "default" {
  count = var.is_peering_required ? 1 : 0 ##1 means-true-peering-yes, 0-false-peering not required.

  peer_vpc_id   = data.aws_vpc.default.id # acceptor VPC which is default here
  vpc_id        = aws_vpc.main.id # requestor

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  auto_accept = true   ## both vpcs need to be in the same account.

  tags = merge(
    var.vpc_peering_tags,
    local.common_tags,
    {
        Name = "${var.project}-${var.environment}-default"
    }
  )
}
