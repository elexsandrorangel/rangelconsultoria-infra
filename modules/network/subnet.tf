resource "aws_subnet" "application-subnet-private2" {
  cidr_block                          = "10.100.144.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  region                              = var.aws_region

  tags = {
    Name = "application-subnet-private2-us-east-1b"
  }

  tags_all = {
    Name = "application-subnet-private2-us-east-1b"
  }

  vpc_id = aws_vpc.application-vpc.id
}

resource "aws_subnet" "application-subnet-public2" {
  cidr_block                          = "10.100.16.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  region                              = var.aws_region

  tags = {
    Name = "application-subnet-public2-us-east-1b"
  }

  tags_all = {
    Name = "application-subnet-public2-us-east-1b"
  }

  vpc_id = aws_vpc.application-vpc.id
}

resource "aws_subnet" "application-subnet-private1" {
  cidr_block                          = "10.100.128.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  region                              = var.aws_region

  tags = {
    Name = "application-subnet-private1-us-east-1a"
  }

  tags_all = {
    Name = "application-subnet-private1-us-east-1a"
  }

  vpc_id = aws_vpc.application-vpc.id
}

resource "aws_subnet" "application-subnet-public1" {
  cidr_block                          = "10.100.0.0/20"
  private_dns_hostname_type_on_launch = "ip-name"
  region                              = var.aws_region
  tags = {
    Name = "application-subnet-public1-us-east-1a"
  }

  tags_all = {
    Name = "application-subnet-public1-us-east-1a"
  }

  vpc_id = aws_vpc.application-vpc.id
}
