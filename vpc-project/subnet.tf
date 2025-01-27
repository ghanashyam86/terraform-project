# public subnet

resource "aws_subnet" "public_subnet" {
    count = 3
    vpc_id = aws_vpc.main.id
    cidr_block = element(var.public_subnet_cidr, count.index)
    availability_zone = element(var.azs, count.index)
    map_public_ip_on_launch = true

    tags = {
      Name = "${var.vpc_name}-public-subnet-${count.index + 1}"
      Owner = local.Owner
      TeamDL = local.TeamDL
      Environmnet = local.Environmnet
  }
}

# private subnet

resource "aws_subnet" "private_subnet" {
    count = 3
    vpc_id = aws_vpc.main.id
    cidr_block = element(var.private_subnet_cidr, count.index)
    availability_zone = element(var.azs, count.index)
    map_public_ip_on_launch = true

    tags = {
      Name = "${var.vpc_name}-private-subnet-${count.index + 1}"
      Owner = local.Owner
      TeamDL = local.TeamDL
      Environmnet = local.Environmnet
  }
}
