variable "main_provider_subscription_id" {
  type        = string
  description = "The Azure subscription ID"
}

variable "root_resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "root_resource_location" {
  type        = string
  description = "The Azure region where the resource group will be created"
}

variable "root_vnet_name" {
  type        = string
  description = "The name of the virtual network"
}

variable "root_vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
}

variable "root_subnet_name" {
  type        = string
  description = "The name of the subnet"
}

variable "root_subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the subnet"
}

variable "root_nsg_name" {
  type        = string
  description = "value of the name of the network security group"
}

variable "root_public_Ip_name" {
  type        = string
  description = "The name of the public IP address"
}

variable "root_nic_name" {
  type        = string
  description = "The name of the network interface."
}

variable "root_ip_config_name" {
  type        = string
  description = "The name of the IP configuraton"
}

variable "root_virtual_machine_name" {
  type        = string
  description = "The name of the virtual machine."
}

variable "root_virtual_machine_username" {
  type        = string
  description = "The username for the virtual machine."
}

variable "root_virtual_machine_password" {
  type        = string
  description = "The password for the virtual machine."
}

variable "root_sql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

variable "root_sql_server_username" {
  description = "The username for the SQL Server."
  type        = string
}

variable "root_sql_server_password" {
  description = "The password for the SQL Server."
  type        = string
}

variable "root_sql_database_name" {
  description = "The name of the SQL Database Name."
  type = string
}