resource "aws_internet_gateway" "main_igw" {
   vpc_id = aws_vpc.main.id

   tags = {
     Name = "${var.vpc_name}-igw"
     Owner = local.Owner
     TeamDL = local.TeamDL
     Environmnet = local.Environmnet
  }
}
