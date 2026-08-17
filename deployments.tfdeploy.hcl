# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
deployment_auto_approve "allow_plans" {
  check {
    condition = context.operation == "plan"
    reason    = "Plan removes ${context.plan.changes.remove} resources."
  }
}
deployment_auto_approve "allow_applies" {
  check {
    condition = context.operation == "apply"
    reason    = "Apply removes ${context.plan.changes.remove} resources."
  }
}
deployment_group "deployment_1_group_new" {
  failure_tolerance = 1
  auto_approve_checks = [deployment_auto_approve.allow_plans, deployment_auto_approve.allow_applies]
}
deployment "deployment_1" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_2" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_3" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_4" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_5" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_6" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_7" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_8" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_9" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}
deployment "deployment_10" {
  inputs = {
    pet_resources_per_component  = 1
    # Append nulls_instances-1 because 1 sleep resource is already there
    null_resources_per_component = 0
  }
  deployment_group = deployment_group.deployment_1_group_new
}