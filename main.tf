# Provier Block 
/*
terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws ={ 
        source = "hashicorp/aws"
        version = "~>3.0"

    }
    random = {
        source = "hashicorp/random"
        version = "3.1.0"
    
    }
  }
}
*/

#This is the Provider Block
provider "aws" {
  region = "us-east-1"
# This informs terraform to use AWS provider and deploy services in us-east-1 region
}

#Creating the aws EC2 instance named web_server
#This is also referred to as Resource Block because it starts with the term resource
resource "aws_instance" "web_server" {
  ami           = "ami-07d9b9ddc6cd8dd30"
  instance_type = "t2.micro"

  tags = {
    Name        = "Chris"
    Environment = "Production"
  }
}

