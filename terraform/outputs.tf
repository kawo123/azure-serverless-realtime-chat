output "azure_storage_name" {
  value = "${azurerm_storage_account.serverless-storage.name}"
}

output "azure_storage_primary_connection_string" {
  value = "${azurerm_storage_account.serverless-storage.primary_connection_string}"
}
