resource "aws_instance" "import-demo" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [
    "sg-0b7199557ac4e0337"
  ]
  subnet_id = "subnet-06ccc52b816c1708b"

  tags = {
    Name = "import demo change"
  }
}