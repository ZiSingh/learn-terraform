//these variables will take the values from vars.tf

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "Sample-ext" {
  value = "Value of Sample - ${var.sample}"
  value = "Value of Sample - ${var.sample1}"
}