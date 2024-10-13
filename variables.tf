# Define a variable for the VPC CIDR block
variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
	# Default value assigned to the variable
  default     = "10.0.0.0/16" # This represents a range of IP addresses for the VPC
}

# Define a variable for the first public subnet CIDR block
variable "public_subnet_1_cidr" {
  description = "CIDR block for the first public subnet."
	# Default value assigned to the variable
  default     = "10.0.1.0/24" # This represents a range of IP addresses for the first public subnet
}