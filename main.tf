
# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

/*--------------- Public SG Module---------------*/


module "ec2" {
   
    source = "github.com/Parasharam-DevOps/Terraform-Ec2-Module.git//ec2_module"

  # Pass variables to the module
  key_pair              = "private-key"
  ami_id                = "ami-0faab6bdbac9486fb"
  public_instance_count = 2
  public_instance_type  = "t2.micro"
  public_instance_name  = "public-instance"
}

/*--------------- Output Values ---------------*/

output "public_instance_ids" {
  description = "IDs of the EC2 instances"
  value       = module.ec2.aws_instance.ec2-project.*.id
}

output "public_instance_ips" {
  description = "Public IP addresses of the EC2 instances"
  value       = module.ec2.aws_instance.ec2-project.*.public_ip
}

output "key_pair_name" {
  description = "Name of the key pair"
  value       = module.ec2.aws_key_pair.private-key-pair.key_name
}


