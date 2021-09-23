# Copyright (c) 2021 Oracle and/or its affiliates.

variable "services" {
  description = "Consul services monitored by Consul-Terraform-Sync"
  type = map(
    object({
      id        = string
      name      = string
      kind      = string
      address   = string
      port      = number
      meta      = map(string)
      tags      = list(string)
      namespace = string
      status    = string

      node                  = string
      node_id               = string
      node_address          = string
      node_datacenter       = string
      node_tagged_addresses = map(string)
      node_meta             = map(string)

      cts_user_defined_meta = map(string)
    })
  )
}

# variable "catalog_services" {
#   description = "Consul catalog service names and tags monitored by Consul Terraform Sync"
#   type = map(list(string))
# }

variable "lb_id" {
  type        = string
  description = "The OCID of the OCI LB to use."
}

variable "be_set_name" {
  type        = string
  description = "The name of the LB Backend Set to use."
}

variable "region" {
  type        = string
  description = "The OCI region to use."
}

# optional vars, used when testing locally (using API key)
variable "tenancy_ocid" {
  default = ""
}
variable "user_ocid" {
  default = ""
}
variable "private_key" {
  default = ""
}
variable "private_key_path" {
  default = ""
}
variable "private_key_password" {
  default = ""
}
variable "fingerprint" {
  default = ""
}
