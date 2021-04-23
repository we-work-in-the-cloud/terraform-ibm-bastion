variable "ibmcloud_api_key" {
  type = string
}

variable "region" {
  type        = string
  default     = "us-south"
  description = "Region where to deploy the example"
}

variable "name" {
  type        = string
  default     = "vpc-and-bastion"
  description = "Prefix to use to create the example resources"
}

variable "ssh_key_name" {
  type        = string
  description = "Name of an existing VPC SSH key to inject into the bastion and instance to allow remote connection"
}

variable "create_public_ip" {
  type    = bool
  default = true
}

variable "resource_group" {
  type        = string
  default     = null
  description = "Resource group where to create resources"
}

variable "image_name" {
  type        = string
  default     = "ibm-ubuntu-18-04-1-minimal-amd64-2"
  description = "Name of the image to use for the private instance"
}

variable "profile_name" {
  type        = string
  description = "Instance profile to use for the private instance"
  default     = "cx2-2x4"
}
