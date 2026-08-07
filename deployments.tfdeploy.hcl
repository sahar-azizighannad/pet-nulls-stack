# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }
  deployment_group = deployment_group.production
}

deployment "test" {
  inputs = {
    prefix           = "test"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "stg" {
  inputs = {
    prefix           = "stg"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "oas" {
  inputs = {
    prefix           = "oas"
    instances        = 1
  }
  deployment_group = deployment_group.production
}
deployment "test1" {
  inputs = {
    prefix           = "test1"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test2" {
  inputs = {
    prefix           = "test2"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test3" {
  inputs = {
    prefix           = "test3"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test4" {
  inputs = {
    prefix           = "test4"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test5" {
  inputs = {
    prefix           = "test5"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test6" {
  inputs = {
    prefix           = "test6"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test7" {
  inputs = {
    prefix           = "test7"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test8" {
  inputs = {
    prefix           = "test8"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test9" {
  inputs = {
    prefix           = "test9"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test10" {
  inputs = {
    prefix           = "test10"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment "test11" {
  inputs = {
    prefix           = "test11"
    instances        = 1
  }
  deployment_group = deployment_group.production
}

deployment_group "production" {
  auto_approve_checks = [ deployment_auto_approve.no_destroy, ]
  failure_tolerance = 1
}

deployment_auto_approve "no_destroy" {
  check {
    condition = context.plan.changes.remove == 0
    reason    = "Plan removes ${context.plan.changes.remove} resources."
  }
}
