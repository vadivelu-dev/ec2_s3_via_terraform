resource "aws_instance" "ec2_via_terraform" {
  ami           =  "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2"
  }
}

resource "aws_s3_bucket" "s3_via_terraform" {
  bucket = "s3-via-terraform-bucket-2026"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}