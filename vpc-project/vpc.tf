
# vpc

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.vpc_name}"
    Owner = local.Owner
    TeamDL = local.TeamDL
    Environmnet = local.Environmnet
  }
}
