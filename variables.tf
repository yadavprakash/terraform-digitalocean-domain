
variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the droplet creation."
}

variable "name" {
  type        = string
  default     = ""
  description = "The Droplet name."
}

variable "ip_address" {
  type    = string
  default = null
}

variable "records" {
  type    = map(any)
  default = {}
}

variable "fqdn" {
  type    = string
  default = ""
}