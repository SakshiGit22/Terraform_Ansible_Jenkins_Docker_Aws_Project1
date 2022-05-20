provider "aws" {
    region = "us-east-1"
    access_key = "ABCDEFGHIJKLMN"
    secret_key = "2ABCDEFGHDHGDFUIGJNJGNNERNGJNJNBJN"
     #get the keys from your aws account
}

resource "aws_instance" "my_server_abc" {
    ami = "get it from aws account"
    instance_type ="t2.micro"
}

#Provides an EC2 instance resource
#specify provider name [you can add multiple provider here]
#specify resource you want to create in provder [aws here]
#open terminal , go to project path and type
#terraform init
#It is going to download the necessary plugins required to interact with provider-aws apis
#terraform plan = The terraform plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. It evaluates a Terraform configuration to determine the desired state of all the resources it declares
#terraform apply = The terraform apply command executes the actions proposed in a Terraform plan to create, update, or destroy infrastructure

#To update resource , update the .tf script , terraform apply 
#To delete the resource , terraform destroy , confirm with 'yes'. It will delete the all the resources mentioned in that script. OR remove the resource from script, terraform apply.

#Anything that you can do with aws-console manually , you can do that with terraform 
#Refer to terraform documentation to create any resource