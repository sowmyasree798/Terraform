provider "aws" {
region="ap-south-1"
}

resource "instance-type" "AwsExample" {
ami= "ami-06b09bfacae1453cb"
instance_type="t2.micro"
key_name="linuxkeypair"
security_groups=["default"]
tags= {
Name="New Instance"
}
}
