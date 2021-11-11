variable "aws_region" {
  default = "us-east-1"
}

variable "ec2_ami" {
  default = "ami-01cc34ab2709337aa"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_count" {
  type = number
  default = "3"
}

variable "environment" {
  default = "dev"
}

variable "product" {
  default = "sales"
}
variable "vpc_id" {
  default = "vpc-9fdea1e2"
}
# Ao iniciar uma instancia na console AWS, na pagina "Configure Instance Details", vemos que:
# subnet-3836c474 = us-east-1a
# subnet-9d3c13c2 = us-east-1b
# subnet-c93311af = us-east-1c
# Assim, cada instancia sera criada em uma subnet diferente o que tambem sera uma AZ diferente
variable "subnets" {
   default = ["subnet-3836c474","subnet-9d3c13c2","subnet-c93311af"]
}
