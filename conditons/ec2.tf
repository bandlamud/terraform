resource "aws_instance" "example" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow-all.id]

  tags = {
    Name = "terraform"
    terraform = true
  }
}

resource "aws_security_group" "allow-all" {
  name   = "allow-all"

   egress {
    from_port        = 0 # from  port to 0
    to_port          = 0 # to port to 0
    protocol         = "-1" # protocall
    cidr_blocks      = ["0.0.0.0/0"] # allow internet
  }

    ingress {
    from_port        = 0 # from  port to 0
    to_port          = 0 # to port to 0
    protocol         = "-1" # protocall
    cidr_blocks      = ["0.0.0.0/0"] # allow internet
  }
}

