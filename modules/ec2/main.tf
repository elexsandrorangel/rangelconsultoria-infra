resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = var.instance_type

  tags = merge(
    {
      Name = "${var.instance_name_prefix}-${count.index + 1}"
    },
    var.tags,
  )
}