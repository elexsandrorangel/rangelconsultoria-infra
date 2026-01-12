resource "aws_route_table" "application-rtb-private2" {
  region = var.aws_region

  tags = {
    Name = "application-rtb-private2-us-east-1b"
  }

  tags_all = {
    Name = "application-rtb-private2-us-east-1b"
  }

  vpc_id = aws_vpc.application-vpc.id
}

resource "aws_route_table" "application-rtb-private1" {
  region = var.aws_region

  tags = {
    Name = "application-rtb-private1-us-east-1a"
  }

  tags_all = {
    Name = "application-rtb-private1-us-east-1a"
  }

  vpc_id = aws_vpc.application-vpc.id
}

resource "aws_route_table" "application-rtb-public" {
  region = var.aws_region

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.application-igw.id
  }

  tags = {
    Name = "application-rtb-public"
  }

  tags_all = {
    Name = "application-rtb-public"
  }

  vpc_id = aws_vpc.application-vpc.id
}

# Main route still managed by AWS
# resource "aws_route_table" "application-rtb-main" {
#   region = var.aws_region
#   vpc_id = aws_vpc.application-vpc.id
# }

