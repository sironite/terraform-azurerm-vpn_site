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
    name          = each.value.link_name
    ip_address    = each.value.ip_address
    provider_name = each.value.provider_name
    speed_in_mbps = each.value.speed_in_mbps

    dynamic "bgp" {
      for_each = each.value.enable_bgp ? [1] : []

      content {
        asn             = each.value.enable_bgp.bgp_asn
        peering_address = each.value.enable_bgp.bgp_peering_address
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
