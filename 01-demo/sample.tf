//How do i create a AWS instance
//i need to have an ami id
resource "aws_instance" "web" {
  ami           = "ami-0920f062733cc174a"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
