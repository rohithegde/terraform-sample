output "id" {
  description = "Network Security Group id"
  value       = azurerm_network_security_group.this.id
}
output "name" {
  description = "Network Security Group name"
  value       = azurerm_network_security_group.this.name
}
output "resource" {
  description = "Network Security Group resource"
  value       = azurerm_network_security_group.this
}
