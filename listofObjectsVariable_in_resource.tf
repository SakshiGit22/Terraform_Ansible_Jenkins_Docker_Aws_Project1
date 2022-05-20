# list of  Objects variable example

#variable "subnet_cidr"{
	description = "cidr block for subnet"
	type = 
	# type consraint , it can be left blank , variable value defined in listofObjects.tfvars file
	default = "10.0.1.0/16"
	# if user not gonna define the variable value then this default value will be used
}

# Create a Subnet 

# resource "aws_subnet" "subnet-1" {
#   cidr_block        = var.subnet_cidr[0].cidr_block
#   availability_zone = "us-east-1a"
#	tags = {
#     Name = var.subnet_cidr[0].name
#   }
# }


# resource "aws_subnet" "subnet-2" {
#   cidr_block        = var.subnet_cidr[1].cidr_block
#   availability_zone = "us-east-1a"
#	tags = {
#     Name = var.subnet_cidr[1].name
#   }
# }


#terraform apply -var-file=AssignValues_listofObjectsVariable.tfvars --auto-approve