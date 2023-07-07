resource "azurerm_vpn_site" "this" {
  name                = var.vpn_site_name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_wan_id      = var.virtual_wan_id
  address_cidrs       = var.address_cidrs
  device_model        = var.device_model
  device_vendor       = var.device_vendor

  dynamic "link" {
    for_each = var.enable_link ? [1] : []
    content {
      name = var.link_name
      bgp {
        asn             = var.bgp_asn
        peering_address = var.bgp_peering_address
      }
      ip_address    = var.ip_address
      provider_name = var.provider_name
      speed_in_mbps = var.speed_in_mbps
    }
  }

  dynamic "o365_policy" {
    for_each = var.enable_o365_policy ? [1] : []
    content {
      allow_endpoint_enabled    = var.allow_endpoint_enabled
      default_endpoint_enabled  = var.default_endpoint_enabled
      optimize_endpoint_enabled = var.optimize_endpoint_enabled
    }
  }

  tags = var.tags
}
