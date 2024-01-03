# Terraform-Ec2-Module
Terraform-Ec2-Module-Project

Feel free to utilize this EC2 module for your Terraform learning journey. I've already set up the `main.tf` behind the module, so you only need to pass variables to customize the configuration.

## Prerequisites

Before getting started, make sure you have the following tools installed:

1. [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html): AWS Command Line Interface for managing AWS services.

2. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): Terraform Infrastructure as Code (IaC) tool for provisioning and managing infrastructure.

## Usage

1. **Install AWS CLI:**

   Ensure that you have the AWS CLI installed on your machine. You can follow the [official AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) for detailed instructions.

2. **Install Terraform:**

   Ensure that you have Terraform installed on your machine. You can follow the [official Terraform installation guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) for detailed instructions.

   

       **Pass Region:**
       - Update the `provider "aws"` block in your `main.tf` or root configuration to set the desired AWS region.

   ```hcl
   /*--------------- Pass Region ---------------*/

   provider "aws" {
     region = "your-region-code"
   }


    /*--------------- Pass variables to the module ---------------*/

    module "ec2" {
      source = "./ec2_module"
    
      key_pair            = "your-key-pair-name"
      ami_id              = "your-ami-id"
      public_instance_count = 2
      public_instance_type  = "t2.micro"
      public_instance_name  = "your-instance-name"
    }


# Terraform Learning Journey with EC2 Module

## Overview


**EC2 Module Project***


**Directory view**

![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/004a5d21-c0d4-40f8-9a1f-0cb329ea6a7e)


**terraform init**

![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/c6599d34-84ee-43ea-80b7-7e680aeb412e)

**terraform apply --auto-approve**

![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/dfae3198-3e8a-4fd1-9bae-9fb442b9a239)

**Console Preview**

![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/4d4d9304-fcae-437a-beb4-80c66f53c5c0)


![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/6c614e02-971f-4fea-92fb-c0fcef5f84b0)


![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/4a50873c-a503-41d8-8e25-8be8646d14c5)


**terraform state list**

![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/b71de317-05ef-4020-8239-8c5712987780)



**terraform destroy --auto-approve**
![image](https://github.com/Parasharam-DevOps/terraform-learning-journey/assets/132131379/ee9d0813-ae44-432a-a50e-42cfc3e3a136)




