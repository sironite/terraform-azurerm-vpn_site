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
| device\_model | Model of the VPN site device. | `string` | yes |
| device\_vendor | Vendor of the VPN site device. | `string` | yes |
| location | Location/region where the VPN site is deployed. | `string` | yes |
| resource\_group\_name | Name of the resource group where the VPN site is created. | `string` | yes |
| virtual\_wan\_id | ID of the virtual WAN associated with the VPN site. | `string` | yes |
| vpn\_site\_name | Name of the VPN site. | `string` | yes |
| address\_cidrs | List of CIDR blocks representing the address ranges for the VPN site. | `list(string)` | no |
| allow\_endpoint\_enabled | Flag to enable O365 policy - Allow Endpoint. | `bool` | no |
| default\_endpoint\_enabled | Flag to enable O365 policy - Default Endpoint. | `bool` | no |
| enable\_link | Map of link configurations for the VPN site. | <pre>map(object({<br>    link_name           = string<br>    ip_address          = string<br>    provider_name       = string<br>    speed_in_mbps       = number<br>    enable_bgp          = bool<br>    bgp_asn             = string<br>    bgp_peering_address = string<br>  }))</pre> | no |
| enable\_o365\_policy | Flag to enable O365 policy for the VPN site. | `bool` | no |
| optimize\_endpoint\_enabled | Flag to enable O365 policy - Optimize Endpoint. | `bool` | no |
| tags | Tags to associate with the VPN site resource. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| address\_cidrs | List of CIDR blocks representing the address ranges for the VPN site. |
| allow\_endpoint\_enabled | Flag indicating if O365 policy - Allow Endpoint is enabled. |
| default\_endpoint\_enabled | Flag indicating if O365 policy - Default Endpoint is enabled. |
| device\_model | Model of the VPN site device. |
| device\_vendor | Vendor of the VPN site device. |
| links | List of link configurations for the VPN site. |
| location | Location/region where the VPN site is deployed. |
| o365\_policy\_enabled | Flag indicating if O365 policy is enabled for the VPN site. |
| optimize\_endpoint\_enabled | Flag indicating if O365 policy - Optimize Endpoint is enabled. |
| resource\_group\_name | Name of the resource group where the VPN site is created. |
| tags | Tags associated with the VPN site resource. |
| virtual\_wan\_id | ID of the virtual WAN associated with the VPN site. |
| vpn\_site\_name | Name of the VPN site. |

## Related documentation
<!-- END_TF_DOCS -->