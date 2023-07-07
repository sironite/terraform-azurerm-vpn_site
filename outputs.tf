output "vpn_site_id" {
  description = "ID of the VPN site."
  value       = azurerm_vpn_site.this.id
}

output "vpn_site_name" {
  description = "Name of the VPN site."
  value       = azurerm_vpn_site.this.name
}
