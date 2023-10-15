provider "aws" {
  region  = "eu-north-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_ACCESS_KEY
}
resource "aws_instance" "web" {
  ami           = "ami-0743788e185274ba7"
  instance_type = "t3.micro"
  tags = {
	Name = "Hello-GBH-Test"
}
}
