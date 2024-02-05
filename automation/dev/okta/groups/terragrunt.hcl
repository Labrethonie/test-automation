include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "My_test_rule"
  custom_rule_expression = "String.startsWith(user.firstName,\"Jerome\")"
  groups_assigned = ["This_is_a_test"]
}