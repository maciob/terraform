provider "aws" {
    region = "${var.AWS_REGION}"
}
terraform{
    backend "s3"{
        bucket = "maciejbekaseasy"
        key = "state"
        region = "eu-west-2"
    }
}