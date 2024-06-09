data "azurerm_client_config" "current" {

}
data "azuread_user" "objectid" {
  user_principal_name = "akshay@pksaws0908gmail.onmicrosoft.com"
}

output "object_id" {
  value = data.azuread_user.objectid.object_id
}