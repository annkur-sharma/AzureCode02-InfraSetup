## ⚠️ Update the subscription ID with your own id.
main_provider_subscription_id = "00000000-0000-0000-00000000" # ✅ Update this with your own subscription ID.

## ⚠️ Update the values to be used for creating the resources.
## ❌ Do not start resource name with number [0-9]. Always start with an alphabet. 
## ⚠️ Keep the values in ⚠️ lowercase (⚠️ 3 to 15 characters) to avoid validation issues during execution of code.
root_resource_group_name      = "abcRG15ab"       # ✅ Update this with your own resource group name.
root_resource_location        = "France Central"  # ✅ Update this with your own Azure region.
root_vnet_name                = "abcRG15VNet"
root_vnet_address_space       = ["42.108.0.0/24"]
root_subnet_name              = "abcRG15Subnet1"
root_subnet_address_prefixes  = ["42.108.0.0/28"]
root_nsg_name                 = "abcRG15NSG"
root_public_Ip_name           = "abcRG15PublicIP"
root_nic_name                 = "abcRG15NIC"
root_ip_config_name           = "abcRG15IPConfig"
root_virtual_machine_name     = "abcRG15VM"
root_virtual_machine_username = "abcVMUser"        ## ⚠️ For training purpose only.   ##	❌ Not recommended to use a hardcoded username in production.
root_virtual_machine_password = "abcVMPassword1@"  ## ⚠️ For training purpose only.   ##	❌ Not recommended to use a hardcoded password in production.
root_sql_server_name          = "abcrg15server"    ## ⚠️ Keep the values in ⚠️ lowercase (⚠️ 3 to 15 characters).
root_sql_server_username      = "SQLUser1"         ## ⚠️ For training purpose only.   ##	❌ Not recommended to use a hardcoded username in production.
root_sql_server_password      = "SQLPassword@1!"   ## ⚠️ For training purpose only.   ##	❌ Not recommended to use a hardcoded password in production.
root_sql_database_name        = "abcrg15db1"       ## ⚠️ Keep the values in ⚠️ lowercase (⚠️ 3 to 15 characters)
