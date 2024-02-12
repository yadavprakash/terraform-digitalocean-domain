# Terraform Infrastructure as Code (IaC) - digitalocean domain Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured domain for digitalocean resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.
Example:Basic
```hcl
module "domain" {
  source     = "./../"
  name       = "example.com"
  ip_address = null

  records = {
    record1 = {
      type  = "A"
      name  = "www"
      value = "64.225.26.99"
    },
    record2 = {
      type  = "A"
      name  = "demo"
      value = "64.225.26.99"
    }
  }
}
```
Please ensure you specify the correct 'source' path for the module.

## Module Inputs

- `name`: The name of the application.
- `environment`: The environment (e.g., "test", "production").
- `label_order`: Label order, e.g. `name`,`application`.
- `enabled`: Flag to control the domain creation.
- `cluster_private_network_uuid`: The ID of the VPC where the domain cluster will be located.
- `mysql_sql_mode` : A comma separated string specifying the SQL modes for a MySQL cluster.
- `cluster_node_count`: Number of nodes that will be included in the cluster.
- `redis_eviction_policy`: A string specifying the eviction policy for a Redis cluster. Valid values are: noeviction, allkeys_lru, allkeys_random, volatile_lru, volatile_random, or volatile_ttl.
- `domains`: A list of domains in the cluster.

## Module Outputs
- This module currently does not provide any outputs.

# Examples:Basic
For detailed examples on how to use this module, please refer to the '[example](https://github.com/opsstation/terraform-digitalocean-domain/tree/master/_example)' directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opsstation/terraform-digitalocean-domain/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.6 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_domain.domain](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/domain) | resource |
| [digitalocean_record.www](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the droplet creation. | `bool` | `true` | no |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | n/a | `string` | `""` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | n/a | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The Droplet name. | `string` | `""` | no |
| <a name="input_records"></a> [records](#input\_records) | n/a | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The fully qualified domain name (FQDN) specified in the input variables |
| <a name="output_id"></a> [id](#output\_id) | The ID of the DigitalOcean domain |
| <a name="output_ttl"></a> [ttl](#output\_ttl) | The Time-to-Live (TTL) value of the DigitalOcean domain |
| <a name="output_urn"></a> [urn](#output\_urn) | The URN (Uniform Resource Name) of the DigitalOcean domain |
<!-- END_TF_DOCS -->