# CTS on OCI Example

[![License: UPL](https://img.shields.io/badge/license-UPL-green)](https://img.shields.io/badge/license-UPL-green)

## Introduction
This is a simple example showing how Consul-Terraform-Sync can be used on OCI.  It's a rather simplistic example, which will add backends to the designated OCI LB Backend Set designed to be used with the sample CTS OCI architecture in [consul-testing-validation](https://github.com/oracle-devrel/consul-testing-validation).

## Getting Started
### Using with CTS
This has been designed to accompany the CTS on OCI architecture, found at [consul-testing-validation CTS architecture](https://github.com/oracle-devrel/consul-testing-validation/terraform_cts).  See [consul-testing-validation CTS architecture](https://github.com/oracle-devrel/consul-testing-validation/terraform_cts) for the instructions on using it in this topology.

### Testing locally
To test this on your local machine, copy the `inputs.tfvars.template` file to `inputs.tfvars` and fill-in-the-blanks.  Run it:

```
terraform init
terraform apply -var-file="inputs.tfvars"
terraform destroy -var-file="inputs.tfvars"
```

This will simulate adding a host to the existing backend set of the LB (notice that the `services` variable is populated in the `input.tfvars` file, simulating what Consul would be providing when used with CTS).

### Prerequisites
You must have an OCI account.  [Click here](https://www.oracle.com/cloud/free/?source=:ex:tb:::::WWMK211203P00003&SC=:ex:tb:::::WWMK211203P00003&pcode=WWMK211203P00003) to create a new cloud account.

You need to have Consul setup on OCI.  See [consul-testing-validation](https://github.com/oracle-devrel/consul-testing-validation) for a sample topolgoy that this was built on.  Feel free to deploy this topology and try it for yourself!

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.0 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | >= 4.39.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.44.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_load_balancer_backend.this](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/load_balancer_backend) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_be_set_name"></a> [be\_set\_name](#input\_be\_set\_name) | The name of the LB Backend Set to use. | `string` | n/a | yes |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | n/a | `any` | n/a | yes |
| <a name="input_lb_id"></a> [lb\_id](#input\_lb\_id) | The OCID of the OCI LB to use. | `string` | n/a | yes |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | n/a | `string` | `""` | no |
| <a name="input_private_key_password"></a> [private\_key\_password](#input\_private\_key\_password) | n/a | `any` | n/a | yes |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | n/a | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | The OCI region to use. | `string` | n/a | yes |
| <a name="input_services"></a> [services](#input\_services) | Consul services monitored by Consul-Terraform-Sync | <pre>map(<br>    object({<br>      id        = string<br>      name      = string<br>      kind      = string<br>      address   = string<br>      port      = number<br>      meta      = map(string)<br>      tags      = list(string)<br>      namespace = string<br>      status    = string<br><br>      node                  = string<br>      node_id               = string<br>      node_address          = string<br>      node_datacenter       = string<br>      node_tagged_addresses = map(string)<br>      node_meta             = map(string)<br><br>      cts_user_defined_meta = map(string)<br>    })<br>  )</pre> | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `any` | n/a | yes |

## Outputs

No outputs.

## Notes/Issues
None at this time.

## URLs
* Nothing at this time

## Contributing
This project is open source.  Please submit your contributions by forking this repository and submitting a pull request!  Oracle appreciates any contributions that are made by the open source community.

## License
Copyright (c) 2021 Oracle and/or its affiliates.

Licensed under the Universal Permissive License (UPL), Version 1.0.

See [LICENSE](LICENSE) for more details.
