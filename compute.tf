resource "aws_instance" "MaciejBekasDemoEasy" {
    ami = "ami-0f540e9f488cfa27d"
    instance_type = "t2.micro"
    availability_zone = "${var.AWS_REGION}"
    # VPC
    subnet_id = "${aws_subnet.MaciejBekas-easy-subnet-public-1.id}"
    # Security Group
    #vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    key_name = "MaciejBekasBootcampPL"
    vpc_security_group_ids = [aws_security_group.MaciejBekas-easy-sec-group.id]
    user_data = file("docker.sh")
    # nginx installation
    #provisioner "file" {
    #    source = "nginx.sh"
    #    destination = "/tmp/nginx.sh"
    #}
    #provisioner "remote-exec" {
    #    inline = [
    #         "chmod +x /tmp/nginx.sh",
    #         "sudo /tmp/nginx.sh"
    #    ]
    #}
    #connection {
    #    user = "${var.EC2_USER}"
    #    private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    #}
    credit_specification{
        cpu_credits = "unlimited"
    }
    tags = {
        Name = "MaciejBekasDemoEasy"
        created_by = "MaciejBekas"
        bootcamp = "poland1"        
    }
    volume_tags = {
        Name = "MaciejBekasDemoEasy"
        created_by = "MaciejBekas"
        bootcamp = "poland1"
    }
}

#resource "aws_key_pair" "MaciejBekas-easy-key" {
#    key_name = "MaciejBekas-easy-key"
#    public_key = "MaciejBekasBootcampPL"
#}



resource "aws_instance" "MaciejBekasDemoEasy2" {
    ami = "ami-0f540e9f488cfa27d"
    instance_type = "t2.micro"
    availability_zone = "${var.AWS_REGION}"
    # VPC
    subnet_id = "${aws_subnet.MaciejBekas-easy-subnet-public-2.id}"
    # Security Group
    #vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    # the Public SSH key
    user_data = file("docker.sh")
    key_name = "MaciejBekasBootcampPL"
    vpc_security_group_ids = [aws_security_group.MaciejBekas-easy-sec-group.id]
    # nginx installation
    #provisioner "file" {
    #    source = "nginx.sh"
    #    destination = "/tmp/nginx.sh"
    #}
    #provisioner "remote-exec" {
    #    inline = [
    #         "chmod +x /tmp/nginx.sh",
    #         "sudo /tmp/nginx.sh"
    #    ]
    #}
    #connection {
    #    user = "${var.EC2_USER}"
    #    private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
    #}
    credit_specification{
        cpu_credits = "unlimited"
    }
    tags = {
        Name = "MaciejBekasDemoEasy2"
        created_by = "MaciejBekas"
        bootcamp = "poland1"
    }
    volume_tags = {
        Name = "MaciejBekasDemoEasy2"
        created_by = "MaciejBekas"
        bootcamp = "poland1"
    }
}
