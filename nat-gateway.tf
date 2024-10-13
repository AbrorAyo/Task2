# Create an Elastic IP address for the NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_1.id
}

# Create a NAT Gateway in the specified public subnet
resource "aws_eip" "nat" {
  vpc = true
}
