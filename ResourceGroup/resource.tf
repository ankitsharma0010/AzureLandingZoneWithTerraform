variable "Resource_Group" {

}

resource "azurerm_resource_group" "RG" {
  for_each = var.Resource_Group
  name     = each.value.name
  location = each.value.location
}