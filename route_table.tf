resource "aws_route_table" "terraform-public-crt" {
    vpc_id = "${aws_vpc.terraform-vpc.id}"
    
    route {
        cidr_block = "0.0.0.0/0" 
        gateway_id = "${aws_internet_gateway.terraform-igw.id}" 
    }
    
    tags = {
        Name = "terraform-public-crt"
    }
}

resource "aws_route_table_association" "terraform-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.terraform-subnet-public-1.id}"
    route_table_id = "${aws_route_table.terraform-public-crt.id}"
}