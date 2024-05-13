resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.rg-location
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  address_space       = var.vnet-address-space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet-name
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet-address-space
}

resource "azurerm_network_interface" "nic" {
  name                = var.nic-name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = var.public-ip
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = var.public-ip-allocation
    private_ip_address = var.private-ip
    public_ip_address_id = azurerm_public_ip.public-ip.id
  }
}

resource "azurerm_public_ip" "public-ip" {
  name                    = "tf-pip"
  location                = azurerm_resource_group.rg.location
  resource_group_name     = azurerm_resource_group.rg.name
  allocation_method       = "Dynamic"
  idle_timeout_in_minutes = 30

  
}
resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm-name
  resource_group_name             = azurerm_resource_group.rg.name
  location                        = azurerm_resource_group.rg.location
  size                            = var.vm-size
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]



  os_disk {
    caching              = var.caching
    storage_account_type = var.os_disk_size
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version-set
  }
}
