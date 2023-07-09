resource "azurerm_vpn_site" "this" {
  name                = var.vpn_site_name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_wan_id      = var.virtual_wan_id
  address_cidrs       = var.address_cidrs
  device_model        = var.device_model
  device_vendor       = var.device_vendor

dynamic "link" {
    for_each = var.links
    content {
      name           = link.value.name
      ip_address     = link.value.ip_address
      provider_name  = link.value.provider_name
      speed_in_mbps  = link.value.speed_in_mbps

      dynamic "bgp" {
        for_each = link.value.bgp_asn != null ? [link.value.bgp_asn] : []
        content {
          asn             = bgp.value
          peering_address = link.value.bgp_peering_address
        }
      }
    }
  }

  dynamic "o365_policy" {
    for_each = var.enable_o365_policy ? [1] : []
    content {
      traffic_category{
      allow_endpoint_enabled    = var.allow_endpoint_enabled
      default_endpoint_enabled  = var.default_endpoint_enabled
      optimize_endpoint_enabled = var.optimize_endpoint_enabled
      }
    }
  }

  tags = var.tags
}
