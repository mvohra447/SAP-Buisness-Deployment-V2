module "sap-testing" {
  #####################################
  # Do not modify the following lines #
  source = "./module-sap"

#  subscription_id = var.AZURE_SUBSCRIPTION_ID
#  client_id       = var.AZURE_CLIENT_ID
#  client_secret   = var.AZURE_CLIENT_SECRET
#  tenant_id       = var.AZURE_TENENT_ID


  project            = var.project
  env                = var.env
  customer           = var.customer
  location           = var.location

  resource_group            =   "OS-Factory"
  virtual_network_name      =   "SAPNet"
  vnet_cidr                 =   "10.1.0.0/16"
  azure_subnet1_name        =   "SAP_Private_sub"
  subnet1_cidr              =   "10.1.0.0/24"
  azure_subnet2_name        =   "SAP_Public_sub"
  subnet2_cidr              =   "10.1.1.0/24"
  sap_public_ip             =   "sap_public_ip"
  nsg_name                  =   "mysg"
  linuxnic                  =   "mylinuxnic"
  winnic                    =   "mywinnic"
  linux_vm_name             =   "mylinuxVM"
  linux_vm_size             =   "Standard_E16-8s_v3"
  managed_disk_type         =   "Standard_LRS"
  disk_size_gb              =   120
  publisher                 =   "SUSE"
  offer                     =   "SLES-SAP"
  sku                       =   "12-SP2"
  image_version             =   "2019.11.19"
  vm_username               =   "platon"
  vm_password               =   "welcome@1234"
  ssh_keys_path             =   "/home/platon/.ssh/authorized_keys"
  ssh_keys_key_data         =   "ssh-rsa AAAAB3N"
  azure_win_vm_name         =   "win-rdp"
  win_os_profile_name       =   "winrdp"
  win_admin_username        =   "cloud"
  win_admin_password        =   "welcome@1234"
  disk1_size                =   128
  disk2_size                =   128
  disk3_size                =   50
  disk4_size                =   50

}
