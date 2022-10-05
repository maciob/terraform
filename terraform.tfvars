MY_SUBNETS = {
  "a" = {
    cidr = "10.0.0.0/28"
    az   = "eu-west-2a"
  },
  "b" = {
    cidr = "10.0.0.16/28"
    az   = "eu-west-2b"
  }
}
INSTANCES = {
  "a" = {
    az   = "eu-west-2a"
    ver  = "a" 
    name = "MaciejBekasDemoEasy"
  },
  "b" = {
    az   = "eu-west-2b"
    ver  = "b"
    name = "MaciejBekasDemoEasy2"
  }
}