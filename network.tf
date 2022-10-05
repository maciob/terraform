resource "aws_internet_gateway" "MaciejBekas-easy-igw" {
    vpc_id = "${aws_vpc.MaciejBekas-easy-vpc.id}"
    tags = {
        Name = "MaciejBekas-easy-igw"
    }
}

resource "aws_route_table" "MaciejBekas-easy-public-crt" {
    vpc_id = "${aws_vpc.MaciejBekas-easy-vpc.id}"
    
    route {
        //associated subnet can reach everywhere
        cidr_block = "0.0.0.0/0" 
        //CRT uses this IGW to reach internet
        gateway_id = "${aws_internet_gateway.MaciejBekas-easy-igw.id}" 
    }
    
    tags = {
        Name = "prod-public-crt"
    }
}

resource "aws_route_table_association" "MaciejBekas-easy-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.MY_SUBNETS["a"].id}"
    route_table_id = "${aws_route_table.MaciejBekas-easy-public-crt.id}"
}

resource "aws_route_table_association" "MaciejBekas-easy-crta-public-subnet-2"{
    subnet_id = "${aws_subnet.MY_SUBNETS["b"].id}"
    route_table_id = "${aws_route_table.MaciejBekas-easy-public-crt.id}"
}

resource "aws_security_group" "MaciejBekas-easy-sec-group" {
    vpc_id = "${aws_vpc.MaciejBekas-easy-vpc.id}"
    
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "MaciejBekas-easy-sec-group"
    }
}
