<!-- BEGIN_TF_DOCS -->
 # VPN Site
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-vpn_site/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/vpn_site)

# Usage - Module

## VPN Site

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

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_vpn_site.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/vpn_site) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| address\_cidrs | List of address CIDRs. | `list(string)` | yes |
| device\_model | Model of the device. | `string` | yes |
| device\_vendor | Vendor of the device. | `string` | yes |
| ip\_address | IP address. | `string` | yes |
| link\_name | Name of the link. | `string` | yes |
| location | Location of the VPN site. | `string` | yes |
| provider\_name | Provider name. | `string` | yes |
| resource\_group\_name | Name of the resource group. | `string` | yes |
| virtual\_wan\_id | ID of the virtual WAN. | `string` | yes |
| vpn\_site\_name | Name of the VPN site. | `string` | yes |
| allow\_endpoint\_enabled | Allow endpoint enabled. | `bool` | no |
| bgp\_asn | BGP ASN. | `number` | no |
| bgp\_peering\_address | BGP peering address. | `string` | no |
| default\_endpoint\_enabled | Default endpoint enabled. | `bool` | no |
| enable\_bgp | Enable BGP. | `bool` | no |
| enable\_link | Enable link. | `bool` | no |
| enable\_o365\_policy | Enable O365 policy. | `bool` | no |
| optimize\_endpoint\_enabled | Optimize endpoint enabled. | `bool` | no |
| speed\_in\_mbps | Speed in Mbps. | `number` | no |
| tags | Map of tags. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpn\_site\_id | ID of the VPN site. |
| vpn\_site\_name | Name of the VPN site. |

## Related documentation
<!-- END_TF_DOCS -->