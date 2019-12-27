output "azure_signalr_hostname" {
  value = "${azurerm_signalr_service.serverless-signalr.hostname}"
}

output "azure_signalr_primary_connection_string" {
  value = "${azurerm_signalr_service.serverless-signalr.primary_connection_string}"
}
