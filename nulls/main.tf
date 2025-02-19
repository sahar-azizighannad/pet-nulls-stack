# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.0"
    }
  }
}

variable "pets" {
  type = number
}

variable "instances" {
  type = number
}

resource "null_resource" "this" {
  count = var.instances

  triggers = {
    pet = var.pets
  }
}

output "ids" {
  value = [for n in null_resource.this: n.id]
}
