provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA57WCDEI77A3VC6HR"
  secret_key = "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"
}

resource "aws_instance" "AWSServer" {
  ami             = "ami-06b09bfacae1453cb"
  instance_type   = "t2.micro"
  key_name        = "linuxkeypair"
  security_groups = ["default"]
  tags = {
    Name = "MyEC2-VM"
  }
}

