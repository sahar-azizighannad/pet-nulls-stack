# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "pet_resources_per_component" {
  type = number
}

variable "null_resources_per_component" {
  type = number
}

required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.9.0"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.3.0"
  }

  time = {
    source  = "hashicorp/time"
    version = "~> 0.14"
  }
}

provider "random" "this" {}
provider "null" "this" {}
provider "time" "this" {}

component "pet_1" {
  source = "./pet"
  inputs = {
    no_of_pets = var.pet_resources_per_component
  }

  providers = {
    random = provider.random.this
    time   = provider.time.this
  }
}

component "nulls_1" {
  source = "./nulls"

  inputs = {
    pet      = component.pet_1.name
    instances = var.null_resources_per_component
  }

  providers = {
    null = provider.null.this
    time = provider.time.this
  }
}
