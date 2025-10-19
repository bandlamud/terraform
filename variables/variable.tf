variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f" 
}

variable "instance_type" {
    default = "t3.micro"
  
}

variable "ec2_tags" {
    type = map 
    default = {
        Name = "terraform"
        Terraform = "true"
    }
  
}

variable "sg_name" {
    type = string
    default = "allow_all"
    description = "Security group to attched to ec2 instance"
  
}

variable "cidr" {
    type = list 
    default = ["0.0.0.0/0"]
  
}

variable "ingress_from_port" {
    type = number
    default = 0
  
}

variable "ingress_to_port" {
    type = number
    default = 0
  
}

variable "egress_from_port" {
    type = number
    default = 0
  
}

variable "egress_to_port" {
    type = number
    default = 0
  
}

variable "egress_protocall" {
    type = string
    default = "-1"
  
}

variable "ingress_protocall" {
    type = string
    default = "-1"
  
}