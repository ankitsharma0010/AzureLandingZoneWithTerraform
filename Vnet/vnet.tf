variable "Vnet" {

}
resource "azurerm_virtual_network" "example" {
  for_each            = var.Vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.subnets
    content {
      name           = subnet.value.subnet_name
      address_prefix = subnet.value.address_prefix
    }
  }
}