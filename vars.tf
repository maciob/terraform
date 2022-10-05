variable "AWS_REGION" {    
    default = "eu-west-2"
}
variable "KEY_PATH"{
    default = "/home/ubuntu/MaciejBekasKey.pem"
}
variable "VPC_NAME"{
    default = "MaciejBekas-easy-vpc"
}
variable "MY_SUBNETS"{
    type = map(object({
        cidr = string
        az = string
    }))
}
