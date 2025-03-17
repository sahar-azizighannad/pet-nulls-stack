# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

variable "pet" {
  type = string
}

variable "instances" {
  type = number
}

resource "null_resource" "this" {
  triggers = {
    pet         = var.pet
    instance_id = var.instances  # Unique per instance
  }
}

output "ids" {
  value = [for n in null_resource.this : n.id]
}

