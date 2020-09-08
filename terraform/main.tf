module "sap" {
  #####################################
  # Do not modify the following lines #
  source = "./module-sap"

  subscription_id = var.AZURE_SUBSCRIPTION_ID
  client_id       = var.AZURE_CLIENT_ID
  client_secret   = var.AZURE_CLIENT_SECRET
  tenant_id       = var.AZURE_TENENT_ID


  project            = var.project
  env                = var.env
  customer           = var.customer
  win_rdp_create     = "<win-rdp-create>"
  location           = var.location

  resource_group            =   var.resource_group         
  virtual_network_name      =   var.virtual_network_name   
  vnet_cidr                 =   var.vnet_cidr              
  azure_subnet1_name        =   var.azure_subnet1_name     
  subnet1_cidr              =   var.subnet1_cidr           
  azure_subnet2_name        =   var.azure_subnet2_name     
  subnet2_cidr              =   var.subnet2_cidr           
  sap_public_ip             =   var.sap_public_ip          
  nsg_name                  =   var.nsg_name               
  linuxnic                  =   var.linuxnic               
  winnic                    =   var.winnic                 
  linux_vm_name             =   var.linux_vm_name          
  linux_vm_size             =   var.linux_vm_size          
  managed_disk_type         =   var.managed_disk_type      
  disk_size_gb              =   var.disk_size_gb           
  publisher                 =   var.publisher              
  offer                     =   var.offer                  
  sku                       =   var.sku                    
  image_version             =   var.image_version          
  vm_username               =   var.vm_username            
  vm_password               =   var.vm_password            
  ssh_keys_path             =   var.ssh_keys_path          
  ssh_keys_key_data         =   var.ssh_keys_key_data      
  azure_win_vm_name         =   var.azure_win_vm_name      
  win_os_profile_name       =   var.win_os_profile_name    
  win_admin_username        =   var.win_admin_username     
  win_admin_password        =   var.win_admin_password     
  disk1_size                =   var.disk1_size             
  disk2_size                =   var.disk2_size             
  disk3_size                =   var.disk3_size             
  disk4_size                =   var.disk4_size             
}
