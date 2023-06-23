//these variables will take the values from vars.tf

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "Sample-Ext" {
  value = "The value of Sample is ${var.sample} & the value of Sample1 is ${var.sample1}"
}

output "Course" {
  value = "var.Course"
}

#output "Courses" {
#  value = "var.Courses"
#}
#
#output "Course_Details" {
#  value = "var.Course_Details"
#}