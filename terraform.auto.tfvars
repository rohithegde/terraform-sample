base_name           = "dl"
name                = "test-nsg1"
resource_group_name = "terraform-cloud"

network_security_rules = [
  {
    "name" : "first-rule",
    "priority" : 200,
    "direction" : "Outbound",
    "access" : "Allow",
    "protocol" : "Tcp",
    "source_port_range" : "*",
    "destination_port_range" : "*",
    "source_address_prefix" : "*",
    "destination_address_prefix" : "*"
  }
]
location = "centralus"
