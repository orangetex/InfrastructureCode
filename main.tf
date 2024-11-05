terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = "orangetexinfraterraformbucket"
    key    = "arn:aws:kms:us-east-1:970547365374:key/949d78bc-b5d2-40bf-8b27-b70068c6a64a"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "Gopiapp_server_Nov1" {
  ami           = "ami-050cd642fd83388e4"
  instance_type = "t2.micro"
  tags = {
    Name = "byGopiInstance"
  }
}