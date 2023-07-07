variable "vpn_site_name" {
  type        = string
  description = "Name of the VPN site."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group."
}

variable "location" {
  type        = string
  description = "Location of the VPN site."
}

variable "virtual_wan_id" {
  type        = string
  description = "ID of the virtual WAN."
}

variable "address_cidrs" {
  type        = list(string)
  description = "List of address CIDRs."
}

variable "device_model" {
  type        = string
  description = "Model of the device."
}

variable "device_vendor" {
  type        = string
  description = "Vendor of the device."
}

variable "enable_link" {
  type        = bool
  description = "Enable link."
  default     = true
}

variable "link_name" {
  type        = string
  description = "Name of the link."
}

variable "enable_bgp" {
  type        = bool
  description = "Enable BGP."
  default     = false
}
variable "bgp_asn" {
  type        = number
  description = "BGP ASN."
  default     = null
}

variable "bgp_peering_address" {
  type        = string
  description = "BGP peering address."
  default     = null
}

variable "ip_address" {
  type        = string
  description = "IP address."
}

variable "provider_name" {
  type        = string
  description = "Provider name."
}

variable "speed_in_mbps" {
  type        = number
  description = "Speed in Mbps."
  default     = 50
}

variable "enable_o365_policy" {
  type        = bool
  description = "Enable O365 policy."
  default     = false
}

variable "allow_endpoint_enabled" {
  type        = bool
  description = "Allow endpoint enabled."
  default     = null
}

variable "default_endpoint_enabled" {
  type        = bool
  description = "Default endpoint enabled."
  default     = null
}

variable "optimize_endpoint_enabled" {
  type        = bool
  description = "Optimize endpoint enabled."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "Map of tags."
  default     = {}
}