resource "aws_subnet" "terraform-subnet-public-1" {
    vpc_id = "${aws_vpc.terraform-vpc.id}"
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = "true" 
    availability_zone = "us-east-1a"
    tags = {
        Name = "terraform-subnet-public-1"
    }
}