provider "aws" {
  region = "ap-south-1" # Replace with your desired region
}

resource "aws_instance" "build-server" {
  ami           = "ami-02ddb77f8f93ca4ca" # Replace with a valid AMI ID
  instance_type = "t2.micro"             # Replace with the desired instance type

  key_name = "key-01"        # Replace with your key pair name

  tags = {
    Name = "build-server"
  }
}

