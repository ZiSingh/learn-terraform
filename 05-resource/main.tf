#how do i launch an AWS EC2 instance using ami id
#resource "aws_instance" "web" {
#  ami           = data.aws_ami.example.id
#  instance_type = "t3.micro"
#
#  tags = {
#    Name = "HelloWorld"
#  }
#}
#
#data "aws_ami" "example" {
#  owners      = ["973714476881"]
#  most_recent = true
#  name_regex  = "Centos-8-DevOps-Practice"
#}

#resource "github_repository" "Zsingh-repo-1" {
#  name        = "Zsingh-repo-1"
#  description = "Zi Singh awesome codebase"
#
#  visibility = "public"
#}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "github"
    repository           = "terraform-template-module"

  }
}