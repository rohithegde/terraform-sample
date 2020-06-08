variable "base_name" {
  description = "Base name to be used as prefix for all created resources"
  type        = string
}
variable "name" {
  description = "Network Security Group name"
  type        = string
}
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}
variable "location" {
  description = "Location to deploy the resource"
  type        = string
}
variable "network_security_rules" {
  description = "List of network security rules"
  type        = list
}
