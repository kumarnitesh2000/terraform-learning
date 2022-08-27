# define provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIATKUEIWS"
  secret_key = "HDYWNN1383HPlgQZanJ5anDVay8/QVzB9m"
}

# show the example of how to reference the resources 
resource "aws_vpc" "test-vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.test-vpc.id
  cidr_block = "10.0.1.0/24"
}
