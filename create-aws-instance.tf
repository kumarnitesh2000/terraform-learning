# define provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIATKUEIWS"
  secret_key = "HDYWNN1383HPlgQZanJ5anDVay8/QVzB9m"
}

# define resources eg. created aws instances 
resource "aws_instance" "test-server" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  tags = {
    app = "value"
  } 
}

# output the public api
output "ec2_public_ip" {
    value = aws_instance.test-server.public_ip
}
