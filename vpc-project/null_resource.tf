resource "null_resource" "file-provisioner" {
   provisioner "file" {
     source = "dev.sh"
     destination = "/home/ec2-user/dev.sh"

   connection{
      type = "ssh"
      user = "ec2-user"
      private_key = file("ohio-9767.pem")
      host = aws_instance.first.public_ip
   }
  }

  provisioner "remote-exec" {
    inline = [
        "chmod +x /home/ec2-user/dev.sh",
        "/home/ec2-user/dev.sh"

    ]

     connection{
      type = "ssh"
      user = "ec2-user"
      private_key = file("ohio-9767.pem")
      host = aws_instance.first.public_ip
   }
     
  }

  provisioner "local-exec" {
     command = "echo 'local-exec running succesfuly' > /mnt/new.txt && echo 'new application ' > /mnt/fiest.txt"

   }
}
