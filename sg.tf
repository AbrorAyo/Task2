# Define a security group for public access within the specified VPC
resource "aws_security_group" "public_sg" {
  vpc_id = aws_vpc.main.id

  # Ingress rules define the allowed incoming traffic to instances in this security group
  ingress {
    from_port   = 22  # Allow incoming traffic on port 22 (SSH)
    to_port     = 22  # Allow incoming traffic on port 22 (SSH)
    protocol    = "tcp" # Use the TCP protocol for SSH
    cidr_blocks = ["95.214.210.127/32"] # Restrict access to a specific IP address
  }

  # Egress rules define the allowed outgoing traffic from instances in this security group
  egress {
    from_port   = 0 # Allow outgoing traffic from any port
    to_port     = 0 # Allow outgoing traffic from any port
    protocol    = "-1"  # Allow all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}
