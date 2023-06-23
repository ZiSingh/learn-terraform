//these variables will take the values from vars.tf

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

output "Sample-Ext" {
  value = "Value of Sample - ${sample} & Value of Sample1 - ${sample1}"
}