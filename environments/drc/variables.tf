###General Variable

variable "project" {}
variable "region" {}

###Network Variable
variable "network_name_and_cidr" {
type = map(object({ 
name = string
cidr = string
prefix= string
}))

default = {
   "management-l3" = {
    name = "management-l3"
    cidr = "10.121.1.0"
    prefix = "24"
   }

   "acc-control-krwc" = {
    name = "acc-control-krwc"
    cidr = "10.125.8.0"
    prefix = "24"
   }
}

}