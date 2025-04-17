provider "aws" {
  region = var.region
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "tf-state-dksoni"
    region = "us-west-2"
    key    = "dev/terraform.tfstate"
    profile = "default"
  }
}


resource "aws_instance" "demo_instance" {

  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    "Name" = var.name
    "Env"  = var.env
  }


}
