provider "aws" {
  region = "us-east-1"
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "S3_BUCKET_NAME_HERE"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
