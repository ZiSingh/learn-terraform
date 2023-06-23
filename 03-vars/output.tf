//these variables will take the values from vars.tf

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "Sample-Ext" {
  value = "The value of Sample is ${var.sample}"
  value = "The value of Sample1 is ${var.sample1}"
}