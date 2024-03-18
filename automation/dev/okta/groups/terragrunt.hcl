include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Externals - Other"
  custom_rule_expression = "String.stringContains(user.externalType,\"Other\")"
  groups_assigned = ["Externals - Other"]
}