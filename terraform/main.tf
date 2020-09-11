module "sap-function" {
  #####################################
  # Do not modify the following lines #
  source = "./module-sap"

#  subscription_id = var.AZURE_SUBSCRIPTION_ID
#  client_id       = var.AZURE_CLIENT_ID
#  client_secret   = var.AZURE_CLIENT_SECRET
#  tenant_id       = var.AZURE_TENENT_ID


#  project            = var.project
#  env                = var.env
#  customer           = var.customer
  location           = var.location

  win_rdp_create            =           "<win-rdp>"
  resource_group            =	        "<resource-group>"
  virtual_network_name      =           "<virtual-network>"
  vnet_cidr                 =           "<vnet_cidr>"
  azure_subnet1_name        =	        "<azure_subnet1>"
  subnet1_cidr              =           "<subnet1-cidr >"
  azure_subnet2_name        =           "<azure-subnet2>"
  subnet2_cidr              =           "<subnet2-cidr>"
  sap_public_ip             =           "<sap-public>"
  nsg_name                  =           "<nsg-name >"
  linuxnic                  =           "<linuxnic>"
  winnic                    =           "<winnic>"
  linux_vm_name             =           "<linux-vm-name>"
  linux_vm_size             =           "<linux-vm-size >"
  managed_disk_type         =           "<managed-disk>"
  disk_size_gb              =           "<disk-size>"
  publisher                 =           "<publisher>"
  offer                     =           "<offer>"
  sku                       =           "<sku>"
  image_version             =           "<image-version>"
  vm_username               =           "<vm-username>"
  vm_password               =           "<vm-password>"
  ssh_keys_path             =           "<ssh-keys-path >"
  ssh_keys_key_data         =           "<ssh-keys-key-data >"
  azure_win_vm_name         =           "<azure-win-vm-name>"
  win_os_profile_name       =           "<win-os-profile-name >"
  win_admin_username        =           "<win-admin-username>"
  win_admin_password        =           "<win-admin-password  >"
  disk1_size                =           "<disk1-size>"
  disk2_size                =           "<disk2-size>"
  disk3_size                =           "<disk3-size>"
  disk4_size                =           "<disk4-size>"
}
