terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
 
  required_version = ">= 1.2.0"
}
 
provider "aws" {
  region  = "us-east-2"
}
 
resource "aws_instance" "app_server" {
  ami           = "ami-09040d770ffe2224f"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  # user_data = <<-EOF
  #   #!/bin/bash
  #   cd /home/ubuntu
  #   echo "<h1>XUXUCO</h1>" > index.html
  #   nohup busybox httpd -f -p 8080 &

  #    EOF
  tags = {
    Name = "Teste Aws"
  }
}