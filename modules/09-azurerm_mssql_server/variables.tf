variable "child_resource_group_name" {
  description = "The name of the resource group where the virtual machine will be created."
  type        = string
}

variable "child_resource_location" {
  description = "The Azure region where the virtual machine will be created."
  type        = string
}

variable "child_sql_server_name" {
  description = "The name of the SQL server."
  type        = string
}

variable "child_sql_server_username" {
  description = "The username for the SQL Server."
  type        = string
}

variable "child_sql_server_password" {
  description = "The password for the SQL Server."
  type        = string
}
