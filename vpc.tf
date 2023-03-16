resource "aws_vpc" "primary-west-2" {
  cidr_block           = "192.168.1.0/24"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name   = "primary-west-2"
    Region = "us-west-2"
  }

  provider = aws.west-2
}

resource "aws_subnet" "primary-a" {
  vpc_id            = aws_vpc.primary-west-2.id
  cidr_block        = "192.168.1.0/25"
  availability_zone = "us-west-2a"

  tags = {
    Name   = "primary-west-2a"
    Region = "us-west-2"
    AZ     = "us-west-2a"
  }

  provider = aws.west-2
}

resource "aws_subnet" "primary-b" {
  vpc_id            = aws_vpc.primary-west-2.id
  cidr_block        = "192.168.1.128/25"
  availability_zone = "us-west-2b"

  tags = {
    Name   = "primary-west-2b"
    Region = "us-west-2"
    AZ     = "us-west-2b"
  }

  provider = aws.west-2
}


resource "aws_vpc" "secondary-east-2" {
  cidr_block           = "192.168.2.0/24"
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "primary-east-2"
  }

  provider = aws.east-2
}

resource "aws_subnet" "secondary-a" {
  vpc_id            = aws_vpc.secondary-east-2.id
  cidr_block        = "192.168.2.0/25"
  availability_zone = "us-east-2a"

  tags = {
    Name   = "secondary-east-2a"
    Region = "us-east-2"
    AZ     = "us-east-2a"
  }

  provider = aws.east-2
}

resource "aws_subnet" "secondary-b" {
  vpc_id            = aws_vpc.secondary-east-2.id
  cidr_block        = "192.168.2.128/25"
  availability_zone = "us-east-2b"

  tags = {
    Name   = "secondary-east-2b"
    Region = "us-east-2"
    AZ     = "us-east-2b"
  }

  provider = aws.east-2
}


