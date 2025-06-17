resource "null_resource" "set_execution_policy" {
  provisioner "local-exec" {
    command = "powershell -Command \"Set-ExecutionPolicy Bypass -Scope Process -Force\""
  }
}

data "external" "get_my_ip" {
  depends_on = [null_resource.set_execution_policy]
  program    = ["powershell", "-File", "${path.module}/../../INFRA01/scripts/get_ip.ps1"] # For Windows
}

data "azurerm_mssql_server" "get_child_sql_server" {
  depends_on          = [azurerm_mssql_server.child_sqlserver]
  name                = var.child_sql_server_name
  resource_group_name = var.child_resource_group_name
}


