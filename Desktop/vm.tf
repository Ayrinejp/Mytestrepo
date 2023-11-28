terraform {
required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-2"
  access_key = "AKIA4PBVWLVDIFHYJOUZ"
  secret_key = "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"
}

resource "aws_instance" "testserver" {
  ami           = "ami-0361bbf2b99f46c1d"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraformtestserver"
  }
}
