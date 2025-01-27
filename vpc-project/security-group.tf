# security group

variable "ingress_ports"{
  type = list(number)
  default = [22, 80, 8080, 443, 3306]
}

variable "egress_ports" {
  type = list(number)
  default = [0]
}

resource "aws_security_group" "main_security_group" {
  vpc_id = aws_vpc.main.id
  name = "main-security-group"
  description = "main security group "

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = ports

    content {
        from_port   = ports.value
        to_port     = ports.value
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
   }
}

   dynamic "egress" {
    for_each = var.egress_ports
    iterator = ports

    content {
       from_port = 0
       to_port   = 0
       protocol  = "-1"
       cidr_blocks = ["0.0.0.0/0"]
   }
}

 tags = {
    Name = "${var.vpc_name}-security-group"
    Owner = local.Owner
    TeamDL = local.TeamDL
    Environmnet = local.Environmnet
  }
}
