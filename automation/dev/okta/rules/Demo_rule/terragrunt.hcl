include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-group-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Demo rule"
  custom_rule_expression = "String.startsWith(user.firstName,\"Jerome\")"
  groups_assigned = ["Demo"]
}