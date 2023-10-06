resource "aws_instance" "splunk-demo" {
    ami = "ami-0bb4c991fa89d4b9b"
    vpc_security_group_ids = [aws_security_group.splunk-sg.id]
    instance_type = "t2.micro"
    key_name = "ec2-demo"
    subnet_id = aws_subnet.public_subnet1.id
    user_data = file("install.sh")
    tags={
        Name = "splunk instance"
        env = "Dev"
    }

}