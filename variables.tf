variable "rg-name" {
  description = "rg Name"
}

variable "rg-location" {
  description = "rg location"

}

variable "vnet-name" {
  description = "name of the vm"

}

variable "subnet-name" {
  description = "value of the subnet name"
}

variable "nic-name" {
  description = "name of the nic"
}

variable "public-ip" {
  description = "name of the public ip"
}

variable "vm-name" {
  description = "name of the vm"
}

variable "username" {
  description = "name of the username"
}

variable "password" {
  description = "value of the password"
  type        = string
}


variable "publisher" {
  description = "value of the publisher"
  type        = string
}

variable "sku" {
  description = "value of the sku"
  type        = string
}

variable "version-set" {
  description = "value of the version"
  type        = string
}

variable "offer" {
  description = "value of the offer"
  type        = string
}

variable "vm-size" {
  description = "value of the vm size"
  type        = string
}

variable "os_disk_size" {
  description = "value of the os_disk_size"
  type        = string
}


variable "vnet-address-space" {
  description = "value of the vnet address"
}

variable "subnet-address-space" {
  description = "value of the subnet address"
}

variable "public-ip-allocation" {
  description = "value of the subnet address"
}

variable "caching" {
  description = "value of the caching"
}

variable "private-ip" {
  description = "value of the private ip"
}
