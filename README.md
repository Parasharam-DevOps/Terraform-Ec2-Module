# Terraform-Ec2-Module
Terraform-Ec2-Module-Project

Feel free to utilize this EC2 module for your Terraform learning journey. I've already set up the `main.tf` behind the module for your reference, so need to pass variables to customize the configuration, including the number of instances you want to launch.

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
      public_instance_count = number-of-instances
      public_instance_type  = "t2.micro"
      public_instance_name  = "your-instance-name"
    }


# Terraform Learning Journey with EC2 Module

## Overview


**EC2 Module Project***


**Directory view**

![Screenshot from 2024-01-03 23-45-55](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/6481d5a5-1bc2-4544-a18b-6c4917fb994c)


**terraform init**

![Screenshot from 2024-01-03 23-44-37](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/560fe12d-c6fb-40b5-ae1c-784f8647b59e)

**terraform apply --auto-approve**

![Screenshot from 2024-01-03 23-41-21](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/86793688-4559-4b62-827e-58714fd679dc)

**Console Preview**

![Screenshot from 2024-01-03 23-22-53](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/7a074511-8576-4992-b1aa-0c9b15bee66a)

![Screenshot from 2024-01-03 23-23-25](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/2f36f8c7-ee09-4c8a-b3b6-f4764a0b3caf)

![Screenshot from 2024-01-03 23-24-00](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/ebb8406b-3009-4a55-911e-eeaf63559e25)


**terraform state list**

![Screenshot from 2024-01-03 23-26-02](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/41dde095-f2a8-448b-a12e-9167b901ccc3)



**terraform destroy --auto-approve**
![Screenshot from 2024-01-04 00-06-06](https://github.com/Parasharam-DevOps/Terraform-Ec2-Module/assets/132131379/4cdef249-cb53-4ec8-8c26-958a56174b3c)




