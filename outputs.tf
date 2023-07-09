output "vpn_site_name" {
  description = "Name of the VPN site."
  value       = azurerm_vpn_site.this.name
}

output "resource_group_name" {
  description = "Name of the resource group where the VPN site is created."
  value       = azurerm_vpn_site.this.resource_group_name
}

output "location" {
  description = "Location/region where the VPN site is deployed."
  value       = azurerm_vpn_site.this.location
}

output "virtual_wan_id" {
  description = "ID of the virtual WAN associated with the VPN site."
  value       = azurerm_vpn_site.this.virtual_wan_id
}

output "address_cidrs" {
  description = "List of CIDR blocks representing the address ranges for the VPN site."
  value       = azurerm_vpn_site.this.address_cidrs
}

output "device_model" {
  description = "Model of the VPN site device."
  value       = azurerm_vpn_site.this.device_model
}

output "device_vendor" {
  description = "Vendor of the VPN site device."
  value       = azurerm_vpn_site.this.device_vendor
}

output "links" {
  description = "List of link configurations for the VPN site."
  value       = azurerm_vpn_site.this.link
}

output "o365_policy_enabled" {
  description = "Flag indicating if O365 policy is enabled for the VPN site."
  value       = var.enable_o365_policy
}

output "allow_endpoint_enabled" {
  description = "Flag indicating if O365 policy - Allow Endpoint is enabled."
  value       = var.allow_endpoint_enabled
}

output "default_endpoint_enabled" {
  description = "Flag indicating if O365 policy - Default Endpoint is enabled."
  value       = var.default_endpoint_enabled
}

output "optimize_endpoint_enabled" {
  description = "Flag indicating if O365 policy - Optimize Endpoint is enabled."
  value       = var.optimize_endpoint_enabled
}

output "tags" {
  description = "Tags associated with the VPN site resource."
  value       = var.tags
}
