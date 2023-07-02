provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA57WCDEI7TRQEBVFR"
  secret_key = "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"
}

resource "aws_instance" "AWSServer" {
  ami             = "ami-06b09bfacae1453cb"
  instance_type   = "t2.micro"
  key_name        = "linuxkeypair"
  security_groups = ["default"]
  user_data       = file("installHttpd.sh")
  tags = {
    Name = "Static web site"
  }
}

