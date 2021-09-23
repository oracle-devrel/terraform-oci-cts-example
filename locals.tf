# Copyright (c) 2021 Oracle and/or its affiliates.

locals {
  cts_services = { for k,v in var.services : k => v if v["status"] == "passing" }
}