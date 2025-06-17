# AzureCode02-InfraSetup
AzureCode02-InfraSetup - To setup RG, Vnet, Subnet, NIC, NSG, Public IP, VM, SQL Server, SQL Database by providing static values.

## Step 01 - Update backend configuration in the below mentioned file.
#### ✅ Update the values to be used to backend configuration.
#### ⚠️ This is a pre-requisite to execute the code.
#### ❌ If the below resources are not present in the Azure Cloud, the terraform code will ❌ FAIL.
````yaml
📝 .\INFRA01\backend-config-infra01.hcl
---------------------------------------------------------------------------------------------------
# ✅ Update the values to be used to backend configuration.
# ⚠️ This is pre-requisite to execute the code.
# ❌ If the below resources are not present in the Azure Cloud, the terraform code will ❌ FAIL.

resource_group_name  = <ENTER backend - Resource Group>          # Example: "rg-backend"
storage_account_name = <ENTER backend - Storage Account>         # Example: "storageaccount"
container_name       = <ENTER backend - Storage Container Name>  # Example: "storagecontainer"
key                  = <ENTER backend - State File Name>         # Example: "a.terraform.tfstate"
````

## Step 02 - Update azure subscription id in the below mentioned file.
#### ✅ Update this with your own subscription ID.
````yaml
📝 infra01.auto.tfvars
---------------------------------------------------------------------------------------------------
# ✅ Update this with your own subscription ID.
main_provider_subscription_id = "00000000-0000-0000-00000000"
````

## Step 03 - Update variables in the below mentioned file.
#### All variables like RG, Vnet, Subnet, NIC, NSG, Public IP, VM, SQL Server, SQL Database needs to be updated.
````yaml
📝 infra01.auto.tfvars
---------------------------------------------------------------------------------------------------
# ⚠️ Update the values to be used for creating the resources.
# ❌ Do not start resource name with number [0-9]. Always start with an alphabet. 
# ⚠️ Keep the values in ⚠️ lowercase (⚠️ 3 to 15 characters) to avoid validation issues during execution of code.
root_resource_group_name      = "abcRG15ab"       # ✅ Update this with your own resource group name.
root_resource_location        = "East US"         # ✅ Update this with your own Azure region.
root_vnet_name                = "abcRG15VNet"
root_vnet_address_space       = ["42.108.0.0/24"]
root_subnet_name              = "abcRG15Subnet1"
root_subnet_address_prefixes  = ["42.108.0.0/28"]
root_nsg_name                 = "abcRG15NSG"
root_public_Ip_name           = "abcRG15PublicIP"
root_nic_name                 = "abcRG15NIC"
root_ip_config_name           = "abcRG15IPConfig"
root_virtual_machine_name     = "abcRG15VM"
root_virtual_machine_username = "abcVMUser"        # ⚠️ For training purpose only. # ❌ Not recommended to use a hardcoded username in production.
root_virtual_machine_password = "abcVMPassword1@"  # ⚠️ For training purpose only. # ❌ Not recommended to use a hardcoded password in production.
root_sql_server_name          = "abcrg15server"    # ⚠️ Keep the values in ⚠️ lowercase (⚠️ 3 to 15 characters).
root_sql_server_username      = "SQLUser1"         # ⚠️ For training purpose only. # ❌ Not recommended to use a hardcoded username in production.
root_sql_server_password      = "SQLPassword@1!"   # ⚠️ For training purpose only. # ❌ Not recommended to use a hardcoded password in production.
root_sql_database_name        = "abcrg15db1"       # ⚠️ Keep the values in ⚠️ lowercase (⚠️ 3 to 15 characters)
````

## Step 04 - Following command needs to be executed to initialize the backend.
#### ✅ Run with -backend-config parameter, else the initialize will ask for user input.
````yaml
terraform init -backend-config='backend-config-infra01.hcl'
````

## Step 05 - Following commands can be used to proceed with infrastructure creation.
````yaml
terraform validate
terraform plan
````

## Step 06 - ✅ Run terrafom apply, to deploy the resoueces in the Azure Cloud.
````yaml
terraform apply
terraform apply -auto-approve
````


# Execution
### On running 'terraform apply', the infrastructure is deplyoyed.
````yaml
PS D:\TerraformCode\AzureCode02-InfraSetup\INFRA01> terraform apply

Acquiring state lock. This may take a few moments...
````

# Output
### 📤 Successful execution.
````yaml
Apply complete! Resources: 12 added, 0 changed, 0 destroyed.

# ⚠️ In case you face issues during resource creation, please change the RESOURCE LOCATION variable.
# ⚠️ In case you face issues during resource creation, review resource names and follow instructions.
````
