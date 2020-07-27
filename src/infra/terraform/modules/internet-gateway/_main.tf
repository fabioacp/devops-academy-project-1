resource "aws_internet_gateway" "default" {
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      "Name"    = "${var.name}-IG"
    },
  )
}