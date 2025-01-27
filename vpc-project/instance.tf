resource "aws_instance" "first" {
  #  ami                         = data.aws_ami.dev_ami.id
  ami                         = lookup(var.amis, var.env == "dev" ? "dev" : "qa")
   subnet_id                   = aws_subnet.public_subnet[0].id
   key_name                    = var.key_name
   instance_type               = var.instance_type
   associate_public_ip_address = true
   vpc_security_group_ids      = [aws_security_group.main_security_group.id]

   user_data = file("${terraform.workspace}.html")

   tags = {
      Name        = "${var.vpc_name}-${var.env}-server"
      Owner       = local.Owner
      TeamDL      = local.TeamDL
      Environment = local.Environmnet
   }
}

