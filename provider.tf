# Copyright (c) 2021 Oracle and/or its affiliates.

terraform {
  required_version = ">= 0.14.0"
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 4.39.0"
    }
  }
}

provider "oci" {
  region               = var.region
  auth = "InstancePrincipal"
  
  # uncomment the following if testing locally (using an API key)
  # tenancy_ocid         = var.tenancy_ocid
  # user_ocid            = var.user_ocid
  # private_key          = local.private_key
  # private_key_password = var.private_key_password
  # fingerprint          = var.fingerprint
}

locals {
  private_key = try(file(var.private_key_path), var.private_key)
}