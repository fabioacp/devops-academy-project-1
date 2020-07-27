resource "aws_subnet" "default" {
    vpc_id                  = var.vpc_id
    cidr_block              = var.subnet_cidr
    availability_zone       = var.availability_zone
	  map_public_ip_on_launch = var.map_public_ip
    
    tags = merge(
      var.tags,
      {
        "Name"    = "${var.name}-Subnet-Private-${var.submnet_name_suffix}"
        "Scheme"  = "private"
      }
    )
}