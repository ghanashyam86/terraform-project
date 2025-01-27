/*
resource "aws_instance" "first" {
  #  ami                         = data.aws_ami.example.id
   ami                         = local.ami_id
   subnet_id                   = aws_subnet.public_subnet[0].id
   key_name                    = var.key_name
   instance_type               = var.instance_type
   associate_public_ip_address = true
   vpc_security_group_ids      = [aws_security_group.main_security_group.id]

   user_data = <<-EOF
       #!/bin/bash
       sudo yum update -y
       sudo yum install httpd -y
       sudo systemctl start httpd
       sudo systemctl enable httpd
       echo "<h1>$${var.env}-server</h1>" > /var/www/html/index.html
       sudo chmod 644 /var/www/html/index.html
   EOF

   tags = {
      Name        = "${var.vpc_name}-${var.env}-server"
      Owner       = local.Owner
      TeamDL      = local.TeamDL
      Environment = local.Environmnet
   }
 } */
