variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

#plain variable
variable "course" {
  default = "DevOps Training"
}



#plain variable
#variable "course" {
#  default = "DevOps Training"
#}

##list DataType variable
#variable "Courses" {
#  default = [
#    "DevOps",
#    "AWS",
#    "Python"
#  ]
#
#}
#
##map Datatype variable
#variable "Course_Details" {
#  default = {
#    DevOps  = {
#      name  = "DevOps"
#      timings = "10am"
#      duration  = 90
#    }
#    AWS = {
#      name  = "AWS"
#      timings = "11am"
#      duration  = 60
#    }
#    Python  = {
#      name  = "Python"
#      timings = "12am"
#      duration  = 40
#    }
#  }
#}

#output "sample" {
#  value = var.sample
#}
#
#output "sample1" {
#  value = var.sample1
#}
#
### Sometime if variable/any reference with the combination of some other string then we have to access those in ${}
#
#output "sample-ext" {
#  value = "Value of Sample & Sample1 - ${var.sample} - ${var.sample1}"
#}
#
## Variable Data types
## 1. string
## 2. number
## 3. Boolean
#
## Variable Types
## In Ansible - 1. Plain Key, Value, 2. List 3. Map/Dict
#
## In Terraform
## 1. Plain
## 2. List
## 3. Map
#
### Plain
#variable "course" {
#  default = "DevOps Training"
#}
#
## List
#variable "courses" {
#  default = [
#    "DevOps",
#    "AWS",
#    "Python"
#  ]
#}
#
### Map
#variable "course_details" {
#  default = {
#    DevOps = {
#      name     = "DevOps"
#      timing   = "10am"
#      duration = 90
#    }
#    AWS = {
#      name     = "AWS"
#      timing   = "11am"
#      duration = 30
#    }
#  }
#}
#
#output "course" {
#  value = var.course
#}
#
##output "courses" {
##  value = var.courses
##}
###here you get the particular value from the list (0,1,2)
#output "courses" {
#  value = var.courses[2]
#}
#
##output "course_details" {
##  value = var.course_details
##}
#
### here you are getting the from the Map (DevOps/ AWS) so here within ["DevOps"] use are choosing DevOps
#output "course_details" {
#  value = var.course_details["DevOps"]
#}
#
###now after creating dev.tfvars & prod.tfvars
#
#variable "env" {}
#
#output "env" {
#  value = var.env
#}
#
##to demonstrate the terraform.tfvars file
#variable "url" {}
#output "url" {
#  value =var.url
#}