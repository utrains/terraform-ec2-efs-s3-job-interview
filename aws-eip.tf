# resource block for eip #
resource "aws_eip" "demo-eip" {
    instance = aws_instance.ec2_instance.id
    vpc = true

    tags = {
        Project = "NetSPI_EIP"
    }
}

#Associate EIP with EC2 Instance
resource "aws_eip_association" "demo-eip-association" {
  instance_id   = aws_instance.ec2_instance.id
  allocation_id = aws_eip.demo-eip.id
}