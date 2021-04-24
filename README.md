
# Network Security Group

## Introduction

Provisions an Azure Network Security Group which filters network traffic to and from Azure resources in an Azure virtual network. Read more about Azure Network Security Groups [here](https://docs.microsoft.com/en-us/azure/virtual-network/security-overview).

This component creates the following Azure resources :

- Network Security Group
- Network Security Group diagnostic setting

## Usage

### Dependencies

This component depends on the following resources :

- Resource group
- Log Analytics workspace

### Input

| Name                          | Type   | Description                                               | Mandatory             | Default Value             |
| ------------------------------| ------ | --------------------------------------------------------- | --------------------- |--------------------- |
| base_name                     | string | Base name to be used as prefix for all created resources. | Required              |
| name                          | string | Network Security Group name. | Required              |              |
| resource_group_name           | string | Resource group name. | Required              |              |
| log_analytics_workspace_id    | string | Log Analytics workspace id. | Required              |              |
| log_retention_days            | string | Number of days to retain logs. | Optional              |     7         |
| supported_log_categories      | list   | List of log categories supported for diagnostics. Full list : https://docs.microsoft.com/en-us/azure/azure-monitor/platform/diagnostic-logs-schema. | Optional              | "NetworkSecurityGroupEvent", "NetworkSecurityGroupRuleCounter"] |
| network_security_rules        | list   | List of network security rules. | Required              |              |
| tags                          | map    | Tags for categorization. | Optional              |          {}    |
| location                      | string | Location to deploy the resource to. | Required              |              |

### Output

| Name     | Type   | description                      |
|----------|--------|----------------------------------|
| id       | string | Network Security Group id.       |
| name     | string | Network Security Group name.     |
| resource | object | Network Security Group resource. |

## Testing

### Manual Testing

You will have to add the provider to a terraform file (eg: test-provider.tf) :

```terraform
provider "azurerm" {
  version = "=2.0.0"
  features {}
}
```

You can manually test execution of this component with :

```bash
terraform init
terraform validate
terraform plan --var-file="tests/input.tfvars" -out=plan.tfplan -input=false
terraform apply plan.tfplan
terraform destroy --var-file="tests/input.tfvars" -auto-approve
```

TODO: Describe and show how to run the tests.
