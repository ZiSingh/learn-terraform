//How do i create a same resource MULTIPLE TIME
//here i will create an instance 3 times using count
resource "aws_instance" "web" {
  count = 3
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}



//resource "aws_instance" "web" {
//  count         = length(var.instances)
//  ami           = data.aws_ami.example.id
//  instance_type = "t3.micro"
//
//  tags = {
//    Name = "HelloWorld-${count.index}"
//  }
//}

