include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups?ref=okta-groups-1.2.0"
}

# Indicate the input values to use for the variables of the module.
inputs = {
  group_name             = "This_is_a_test"
  group_description      = "Jerome is testing terraform and terragrunt"
  group_members = ["jerome.heymonet@backmarket.com", "remy.angel@backmarket.com"]
}