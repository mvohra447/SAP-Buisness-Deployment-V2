/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */

#variable "AZURE_SUBSCRIPTION_ID" {
#  default = ""
#}

#variable "AZURE_CLIENT_ID" {
#  default = ""
#}

#variable "AZURE_CLIENT_SECRET" {
#  default = ""
#}

#variable "AZURE_TENENT_ID" {
#  default = ""
#}


#variable "customer" {
#  default = ""
#}

#variable "project" {
#  default = ""
#}

#variable "env" {
#  default = ""
#}


variable "win_rdp_create" {
  default = "yes"
  description = "Provide 'yes' or 'no' if yes then win rdp machine will create if no win rdp machine will not create"
}

variable "location" {
  default = "East US"
  description = "The default Azure region for the resource provisioning"
}

variable "resource_group" {
  default = "OS-Factory"
  description = "Resource group name that will contain various resources"
}

variable "virtual_network_name" {
  default = "SAPNet"
  description = "Virtual Network name"
}

variable "vnet_cidr" {
  default = "10.1.0.0/16"
  description = "CIDR block for Virtual Network like 10.1.0.0/16"
}

variable "azure_subnet1_name" {
  default = "SAP_Private_sub"
  description = "Private Subnet name"
}

variable "subnet1_cidr" {
  default = "10.1.0.0/24"
  description = "CIDR block for Private Subnet within a Virtual Network"
}


variable "azure_subnet2_name" {
  default = "SAP_Public_sub"
  description = "Public Subnet name"
}


variable "subnet2_cidr" {
  default = "10.1.1.0/24"
  description = "CIDR block for Subnet within a Virtual Network"
}


variable "sap_public_ip" {
  default = "sap_public_ip"
  description = "Public IP Allocation"
}


variable "nsg_name" {
  default = "mysg"
  description = "Network Security Group and Rule"
}

variable "linuxnic" {
  default = "mylinuxnic"
  description = "Network Interface"
}

variable "winnic" {
  default = "mywinnic"
  description = "Network Interface"
}

variable "linux_vm_name" {
  default = "mylinuxVM"
  description = "Linux virtual machine name hostname & VM name"
}

variable "linux_vm_size" {
  default = "Standard_E16-8s_v3"
  description = "Linux virtual machine instance type like t2.micro"
}


variable "managed_disk_type" {
  default = "Standard_LRS"
  description = "parameter of storage_os_disk"
}

variable "disk_size_gb" {
  default = "120"
  description = "parameter of storage_os_disk"
}

variable "publisher" {
  default = "SUSE"
  description = "parameter of storage_image_reference"
}

variable "offer" {
  default = "SLES-SAP"
  description = "parameter of storage_image_reference"
}

variable "sku" {
  default = "12-SP2"
  description = "parameter of storage_image_reference"
}

variable "image_version" {
  default = "2019.11.19"
  description = "parameter of storage_image_reference"
}

variable "vm_username" {
  default = "platon"
  description = "Enter admin username to SSH into Linux VM"
}

variable "vm_password" {
  default = "welcome@1234"
  description = "Enter admin password to SSH into VM"
}

variable "ssh_keys_path" {
  default = "/home/platon/.ssh/authorized_keys"
  description = "Enter path of user to be passwordless"
}

variable "ssh_keys_key_data" {
  default = "ssh-rsa AAAAB3N"
  description = "Enter public key which need to insert into linux vm"
}

variable "azure_win_vm_name" {
  default = "win-rdp"
  description = " Windows virtual machine name"
}

variable "win_os_profile_name" {
  default = "winrdp"
  description = "Linux virtual machine name"
}

variable "win_admin_username" {
  default = "cloud"
  description = "Admin user name of windows vm"
}

variable "win_admin_password" {
  default = "welcome@1234"
  description = "Admin password for windows vm"
}

variable "disk1_size" {
  default = "128"
  description = "SAP Common disk"
}

variable "disk2_size" {
  default = "128"
  description = "SAP H1B data disk"
}

variable "disk3_size" {
  default = "50"
  description = "SAP H1B Log disk"
}

variable "disk4_size" {
  default = "50"
  description = "SAP H1B Log disk"
}
