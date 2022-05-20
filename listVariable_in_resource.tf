# list variable example

#variable "subnet_cidr"{
	description = "cidr block for subnet"
	type = 
	# type consraint , it can be left blank , variable value defined in .tfvars file
	default = "10.0.1.0/16"
	# if user not gonna define the variable value then this default value will be used
}

# Create a Subnet 

# resource "aws_subnet" "subnet-1" {
#   cidr_block        = var.subnet_cidr[0]
#   availability_zone = "us-east-1a"
# }


# resource "aws_subnet" "subnet-2" {
#   cidr_block        = var.subnet_cidr[1]
#   availability_zone = "us-east-1a"
# }

