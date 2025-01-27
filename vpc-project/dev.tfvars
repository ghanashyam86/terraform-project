# vpc variable values

aws_region = "us-east-2"
vpc_name = "Hello-World-Vpc"
vpc_cidr = "10.10.0.0/16"
public_subnet_cidr = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
private_subnet_cidr = ["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]
azs = ["us-east-2a", "us-east-2c", "us-east-2b"]

# instance variable values

instance_type = "t2.micro"
key_name = "ohio-9767"
env = "DEV"
