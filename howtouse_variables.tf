
#Variables

#First way - you can define string ,list ,number ,boolean ,maps ,sets ,any ,tuples ,objects in variable in script
#when you do terraform apply , terminal prompt you to give variable value or you can pass the value of variable as a command line argument
#terraform apply -var "subnet_cidr=10.0.0.0/16" --auto-approve

#Second way- terraform looks for terraform.tfvars file by default so we can define all our variables in that file. create file terraform.tfvars

#third way - when you want to have multiple files for segregating variables then you can create your own .tfvar file for example example.tfvars 
#terraform apply -var-file example.tfvars 


#define variable in .tf script itself

#variable "subnet_cidr"{
#	description = "cidr block for subnet"
#	type = string
#	default = "10.0.1.0/16"
#}


# type consraint - value accepted here should be of string type only
# if user not gonna define the variable value then this default value will be used
#Create a Subnet 

# resource "aws_subnet" "subnet-1" {
#   cidr_block        = var.subnet_cidr
#   availability_zone = "us-east-1a"
# }


#terraform apply
#it will search for this variable value in default file terraform.tfvars