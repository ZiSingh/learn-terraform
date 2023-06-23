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
  value = var.Course
}

output "Courses" {
  value = var.Courses
}

output "Course_Details" {
  value = var.Course_Details
}

#now i want to display the courses in serial wise

output "First_Course" {
  value = var.Courses[0]
}

output "Second_Course" {
  value = var.Courses[1]

}

output "Third_Course" {
  value = var.Courses[2]
}

#now i want to display the courses details of a particular course


output "course_details_DevOps" {
  value = var.Course_Details[Courses[0]]
}

#"",
#"AWS",
#"Python"