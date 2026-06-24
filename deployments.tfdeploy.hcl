# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 1
  }
}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 3
  }
}

deployment "test" {
  inputs = {
    prefix           = "test"
    instances        = 1
  }
}

deployment "stg" {
  inputs = {
    prefix           = "stg"
    instances        = 1
  }
}

deployment "oas" {
  inputs = {
    prefix           = "oas"
    instances        = 1
  }
}
