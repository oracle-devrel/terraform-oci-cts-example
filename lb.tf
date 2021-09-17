# Copyright (c) 2021 Oracle and/or its affiliates.

resource "oci_load_balancer_backend" "this" {
  for_each = var.services

  backendset_name  = var.be_set_name
  ip_address       = each.value.address
  load_balancer_id = var.lb_id
  port             = each.value.port

  backup  = false
  drain   = false
  offline = false
  weight  = 5
}
