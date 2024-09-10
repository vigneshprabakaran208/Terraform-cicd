provider "aws" {
    region = "ap-south-1"
  }
resource "aws_instance" "Test-instance" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.Test-sg.name]
                
  //  key_name      = [aws_key_pair.pub-key.key_name]
}

