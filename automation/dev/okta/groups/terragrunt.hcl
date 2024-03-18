include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "testRule_jerome"
  custom_rule_expression = "String.startsWith(user.firstName,\"Jerome\")"
  groups_assigned = ["Jerome Test Example"]
}