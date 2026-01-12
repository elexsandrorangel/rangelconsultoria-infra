output "vpc_id" {
	description = "The ID of the VPC."
	value       = aws_vpc.application-vpc.id
}

output "private_subnet_ids" {
	description = "IDs of the private subnets."
	value = [
		aws_subnet.application-subnet-private1.id,
		aws_subnet.application-subnet-private2.id
	]
}

output "public_subnet_ids" {
	description = "IDs of the public subnets."
	value = [
		aws_subnet.application-subnet-public1.id,
		aws_subnet.application-subnet-public2.id
	]
}

output "private_route_table_ids" {
	description = "IDs of the private route tables."
	value = [
		aws_route_table.application-rtb-private1.id,
		aws_route_table.application-rtb-private2.id
	]
}

output "public_route_table_id" {
	description = "ID of the public route table."
	value       = aws_route_table.application-rtb-public.id
}

# output "main_route_table_id" {
#     description = "ID of the main route table."
#     value       = aws_route_table.application-rtb-main.id
# }

output "internet_gateway_id" {
	description = "ID of the Internet Gateway."
	value       = aws_internet_gateway.application-igw.id
}
