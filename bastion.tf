resource "aws_instance" "bastion" {
  ami               = "ami-03d1b2fa19c17c9f1" 
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
	key_name = "rsschool-key-pair"
  tags = {
    Name = "BastionHost"
  }
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
  description = "The public IP of the Bastion Host"
}