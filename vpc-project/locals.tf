locals {
   Owner = "Ghana"
   TeamDL = "DevOps"
   Environmnet = "DEv"
   ami_id = var.env == "DEV" ? data.aws_ami.dev_ami.id : data.aws_ami.qa_ami.id
} 
