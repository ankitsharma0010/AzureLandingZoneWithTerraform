Resource_Group = {
  RG1 = {
    name     = "AnkuRG"
    location = "canadaeast"
  }
}
Vnet = {
  Vnet1 = {
    name                = "AnkuVnet"
    location            = "canadaeast"
    resource_group_name = "AnkuRG"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet1 = {
        subnet_name    = "AnkuSubnet"
        address_prefix = "10.0.1.0/24"
      }
      subnet2 = {
        subnet_name    = "AzureBastionSubnet"
        address_prefix = "10.0.1.0/25"
      }
    }
  }
}
VM = {
  VM1 = {
    resource_group_name = "AnkuRG"
    nic_name            = "AnkuNIC"
    location            = "canadaeast"
    vm_name             = "AnkuVM"
    vm_size             = "Standard_DS1_v2"
  }
}
KeyVault = {
  KeyVault1 = {
    keyvaultname        = "SecretStorage"
    location            = "canadaeast"
    resource_group_name = "AnkuRG"
  }
}

