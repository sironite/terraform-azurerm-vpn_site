variable "vpn_site_name" {
  description = "Name of the VPN site."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the VPN site is created."
  type        = string
}

variable "location" {
  description = "Location/region where the VPN site is deployed."
  type        = string
}

variable "virtual_wan_id" {
  description = "ID of the virtual WAN associated with the VPN site."
  type        = string
}

variable "address_cidrs" {
  description = "List of CIDR blocks representing the address ranges for the VPN site."
  type        = list(string)
  default     = []
}

variable "device_model" {
  description = "Model of the VPN site device."
  type        = string
}

variable "device_vendor" {
  description = "Vendor of the VPN site device."
  type        = string
}

variable "links" {
  description = "List of links"
  type        = list(object({
    name           = string
    ip_address     = string
    provider_name  = string
    speed_in_mbps  = number
    bgp_asn        = number
    bgp_peering_address = string
  }))
  default = []
}

variable "enable_o365_policy" {
  description = "Flag to enable O365 policy for the VPN site."
  type        = bool
  default     = false
}

variable "allow_endpoint_enabled" {
  description = "Flag to enable O365 policy - Allow Endpoint."
  type        = bool
  default     = false
}

variable "default_endpoint_enabled" {
  description = "Flag to enable O365 policy - Default Endpoint."
  type        = bool
  default     = false
}

variable "optimize_endpoint_enabled" {
  description = "Flag to enable O365 policy - Optimize Endpoint."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to associate with the VPN site resource."
  type        = map(string)
  default     = {}
}
