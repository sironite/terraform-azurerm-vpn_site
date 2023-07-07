module "vpn_site" {
  source  = "sironite/vpn_site/azurerm"
  version = "X.X.X"

  vpn_site_name       = "example-vpn-site"
  resource_group_name = "example-resource-group"
  location            = "example-location"
  virtual_wan_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resource-group/providers/Microsoft.Network/virtualWans/example-virtual-wan"
  address_cidrs       = "XX.XX.XX.XX/XX"
  device_model        = "example-device-model"
  device_vendor       = "example-device-vendor"

  enable_link = "true"
  link_name   = "example-link"

  ip_address    = "XX.XX.XX.XX"
  provider_name = "example-provider-name"
  speed_in_mbps = "example-speed-in-mbps"

}