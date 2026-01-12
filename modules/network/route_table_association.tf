resource "aws_route_table_association" "application-subnet-private2" {
  region         = var.aws_region
  route_table_id = aws_route_table.application-rtb-private2.id
  subnet_id      = aws_subnet.application-subnet-private2.id
}

resource "aws_route_table_association" "application-subnet-public2" {
  region         = var.aws_region
  route_table_id = aws_route_table.application-rtb-public.id
  subnet_id      = aws_subnet.application-subnet-public2.id
}

resource "aws_route_table_association" "application-subnet-private1" {
  region         = var.aws_region
  route_table_id = aws_route_table.application-rtb-private1.id
  subnet_id      = aws_subnet.application-subnet-private1.id
}

resource "aws_route_table_association" "application-subnet-public1" {
  region         = var.aws_region
  route_table_id = aws_route_table.application-rtb-public.id
  subnet_id      = aws_subnet.application-subnet-public1.id
}
