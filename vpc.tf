resource "aws_vpc" "MaciejBekas-easy-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"    
    enable_dns_support = "true"
    enable_dns_hostnames = "true"   
    tags = {
        Name = "MaciejBekas-easy-vpc"
    }
}
resource "aws_subnet" "MaciejBekas-easy-subnet-public-1" {
    vpc_id = "${aws_vpc.MaciejBekas-easy-vpc.id}"
    cidr_block = "10.0.0.0/28"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "eu-west-2a"
    tags = {
        Name = "MaciejBekas-easy-subnet-public-1"
    }
}
resource "aws_subnet" "MaciejBekas-easy-subnet-public-2" {
    vpc_id = "${aws_vpc.MaciejBekas-easy-vpc.id}"
    cidr_block = "10.0.0.16/28"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "eu-west-2b"
    tags = {
        Name = "MaciejBekas-easy-subnet-public-2"
    }
}
