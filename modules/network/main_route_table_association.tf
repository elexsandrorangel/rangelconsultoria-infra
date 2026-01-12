# resource "aws_main_route_table_association" "application-vpc" {
#   region         = var.aws_region
#   route_table_id = "${aws_route_table.application-rtb-main.id}"
#   vpc_id         = "${aws_vpc.application-vpc.id}"
# }
