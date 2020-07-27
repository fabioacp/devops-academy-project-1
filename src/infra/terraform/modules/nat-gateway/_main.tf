resource "aws_eip" "default" {
  vpc   = true

  tags = merge(
    var.tags,
    {
      "Name"    = "${var.name}-EIP"
    },
  )
}

resource "aws_nat_gateway" "default" {
  allocation_id = aws_eip.default.id
  subnet_id     = var.subnet_id

  tags = merge(
    var.tags,
    {
      "Name"    = "${var.name}-NATGW-${subnet_name_prefix}"
      "EnvName" = var.name
    },
  )
}