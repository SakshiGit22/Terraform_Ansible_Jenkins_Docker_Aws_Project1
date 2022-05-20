provider "aws" {
    region = "us-east-1"
    access_key = "ABCDEFGHIJKLMN"
    secret_key = "2ABCDEFGHDHGDFUIGJNJGNNERNGJNJNBJN"
     #get the keys from your aws account
}

resource "aws_vpc" "my_vpc1"{
	cidr_block = "10.0.0.0/16"
	tags = {
		Name = "this tag name searchable in aws console"
	}
}
resource "aws_subnet" "my_subnet1"{
	vpc_id = awc_vpc.my_vpc1.id
	cidr_block = 10.0.0.0/20
	tags = {
		Name = "public_subnet_1"
	}
}

#terraform apply --auto-approve
#when we create ec2 resource it selects default vpc
#you can define your own VPC in aws and select that vpc when you create ec2 instance
#vpc is virtual private cloud , its your own network in the cloud.
#Consider any Region in the aws cloud , there will be availability zones in that region
#These zones are big data centres in a big cluster or say in a building. Inside these availability zones , we launch ec2 instance , RDS instance etc.

#usecase of VPC
# we can define security groups on vpc LEVEL through which we can control accesses and traffic to intances
# Network access control list - it controls which traffic may enter the subnets.
# Either Security group or NACL
# you can control assignment of public IPs
# Route table = control routing of outgoing network requests

#VPC can have both public and private subnet.

#Subnet CIDR block: defining Range of IP Addresses internally for eg 10.0.0.0/16 , 16 is netmask which means 16 binary digits are fixed in the IP.
#Route table 
#Aim of VPC is to have private subnet so that those are not accessible from Internet.


