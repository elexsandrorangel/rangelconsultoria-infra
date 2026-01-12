resource "aws_internet_gateway" "application-igw" {
  region = var.aws_region

  tags = {
    Name = "application-igw"
  }

  tags_all = {
    Name = "application-igw"
  }

  vpc_id = aws_vpc.application-vpc.id
}
