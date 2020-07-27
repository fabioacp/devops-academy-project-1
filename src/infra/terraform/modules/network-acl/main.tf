resource "aws_network_acl" "default" {
  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  tags = merge(
    var.tags,
    {
      "Name"    = "${var.name}-ACL-${access_level}"
      "Scheme"  = var.access_level
      "EnvName" = var.name
    }
  )
}