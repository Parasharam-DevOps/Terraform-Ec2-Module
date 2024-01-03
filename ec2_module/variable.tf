/*--------------- Public SG Variables ---------------*/

variable "public_ingress_ports" {
  description = "SG inbound ports"
  type        = list(number)
  default     = [22, 443, 80]
}
variable "public_sg_name" {
  type    = string
  default = "public-SG"
}

/*--------------- Key Pair Variables ---------------*/

variable "key_pair" {
  type    = string
  default = "private-key"
}


/*--------------- AMI Variables---------------*/

variable "ami_id" {
  type    = string
  default = "ami-0faab6bdbac9486fb"
}

/*--------------- Public Instance Variables ---------------*/
variable "public_instance_count" {
  description = "Number of public instances to create"
  type        = number
  default     = 2
}

variable "public_instance_type" {
  description = "type of instance for public server"
  type        = string
  default     = "t2.micro"
}

variable "public_instance_name" {
  description = "public instance name"
  type        = string
  default     = "public-instance"

}
