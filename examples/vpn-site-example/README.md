# Terraform module | AzureRM - VPN Site

This Terraform module is designed to create a VPN Site for Azure.

## Pre-requisites

Using the modules requires the following pre-requisites:
 * Active Azure account and subscription 

## Usage

`azurerm_vpn_site`

```hcl

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

```

## Authors

The module is maintained by [Sironite](https://github.com/sironite)

## Documentation

> product: https://azure.microsoft.com/en-us/
> 
> Provider: https://registry.terraform.io/providers/hashicorp/azurerm/latest
> 
> Documentation: https://learn.microsoft.com/en-us/azure/?product=popular
