variable "ami" {
  type = string
  default = "ami-0f5ee92e2d63afc18"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
  default = "mykey"
}
