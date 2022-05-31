provider aws {
    region = "us-east-1"
}
terraform {
    backend "s3" {
        bucket = "kamalhamad45444"
        key = "terraform-state"
        region = "us-west-2"
    }
}
resource "aws_instance" "web_server" {

    ami = "ami-06eecef118bbf9259"

    instance_type = "t2.micro"

   

   

    tags = {

        Name = var.inst_name      

    }

}