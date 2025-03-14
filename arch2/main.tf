module "arch2" {
  source            = "../modules/arch2"
  ami               = "ami-01e3c4a339a264cc9"
  instance_type     = "t2.micro"
  subnet_id         = "subnet-045ec973034abc11d"
  security_group_id = "sg-00ecf57bfd56ca1e9"
}

output "arch2" {
  value = module.arch2
}

terraform {
  backend "s3" {
    bucket         = "salah-devops-bucket-001"  
    key            = "terraform/arch2/terraform.tfstate"
    region         = "us-east-1"            
    dynamodb_table = "terraform-state-lock"     
    encrypt        = true
  }
}