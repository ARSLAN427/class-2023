# resource "aws_instance" "aws-class" {
#   ami           = "ami-051f7e7f6c2f40dc1"
#   instance_type = "t2.micro"

#   subnet_id = "subnet-0452a9b73aacc5c86"
#   key_name  = "terraform-key-ssh"
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
# subnet_id = "subnet-0452a9b73aacc5c86"
#  key_name  = "terraform-key-ssh"
#   tags = {
#     Name = "i-love-u"

#   }
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }
# data "aws_key_pair" "example" {
#   key_name           = "terraform-key-ssh"
#   include_public_key = true

#   filter {
#     name   = "tag:name"
#     values = ["terraform-key-ssh"]
#   }

# }

# data "aws_subnet" "selected" {

#   filter {


#   module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"

#   name = "single-instance"

#   instance_type          = "t2.micro"
#   key_name               = "terraform-key-ssh"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-0a0c9bad857a4c610"]
#   subnet_id              = "subnet-0452a9b73aacc5c86"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

# module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"

#   for_each = toset(["one"])

#   name = "instance-${each.key}"

#   instance_type          = "t2.micro"
#   key_name               = "terraform-key-ssh"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-0a0c9bad857a4c610"]
#   subnet_id              = "subnet-0452a9b73aacc5c86"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

