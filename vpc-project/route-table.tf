# public route table

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
    }

   tags = {
     Name = "${var.vpc_name}-public-route-table"
     Owner = local.Owner
     TeamDL = local.TeamDL
     Environmnet = local.Environmnet
   }
 }


# private route table

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id

  tags = {
     Name = "${var.vpc_name}-private-route-table"
     Owner = local.Owner
     TeamDL = local.TeamDL
     Environmnet = local.Environmnet
   }
 }

# ================================

# public route table association


resource "aws_route_table_association" "public_rt_asso" {
  count = 3
  subnet_id = element(aws_subnet.public_subnet[*].id, count.index)
  route_table_id = aws_route_table.public_rt.id
}

# private route table association

resource "aws_route_table_association" "private_rt_asso" {
  count = 3
  subnet_id = element(aws_subnet.private_subnet[*].id, count.index)
  route_table_id = aws_route_table.private_rt.id
}
