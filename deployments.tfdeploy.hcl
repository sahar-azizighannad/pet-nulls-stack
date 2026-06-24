# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }
  deployment_group = deployment_group.prod
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }
  deployment_group = deployment_group.dev
}

deployment "test" {
  inputs = {
    prefix           = "test"
    instances        = 1
  }
  deployment_group = deployment_group.test
}

deployment "stg" {
  inputs = {
    prefix           = "stg"
    instances        = 1
  }
  deployment_group = deployment_group.stg
}

deployment "oas" {
  inputs = {
    prefix           = "oas"
    instances        = 1
  }
  deployment_group = deployment_group.oas
}

deployment_group "test" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
}

deployment_group "prod" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
}

deployment_group "dev" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
}

deployment_group "stg" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
}

deployment_group "oas" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
}

deployment_auto_approve "no_destroy" {
  check {
    condition = context.plan.changes.remove == 0
    reason    = "Plan removes ${context.plan.changes.remove} resources."
  }
}
