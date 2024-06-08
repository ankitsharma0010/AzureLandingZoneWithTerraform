module "Resource_Group" {
  source         = "../../ResourceGroup"
  Resource_Group = var.Resource_Group
}
module "Vnet" {
  source = "../../Vnet"
  Vnet   = var.Vnet
  depends_on = [ module.Resource_Group ]
}