# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "simple_test" {
  inputs = {
    prefix           = "simple_test"
    instances        = 2
  }
  deployment_group = deployment_group.production
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }
}

deployment_group "production" {
  auto_approve_checks = [ ]
  failure_tolerance = 0
  eager_plan = "off"
}

