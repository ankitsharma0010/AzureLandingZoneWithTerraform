module "Resource_Group" {
  source         = "../../ResourceGroup"
  Resource_Group = var.Resource_Group
}
module "Vnet" {
  source     = "../../Vnet"
  Vnet       = var.Vnet
  depends_on = [module.Resource_Group]
}
module "KeyVault" {
  source     = "../../KeyVault"
  KeyVault   = var.KeyVault
  depends_on = [var.Vnet]
}
module "VM" {
  source     = "../../VM"
  VM         = var.VM
  depends_on = [module.KeyVault]
}