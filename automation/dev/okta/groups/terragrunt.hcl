include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Users_with_Termination_date"
  custom_rule_expression = "user.terminationDate != null AND user.terminationDate != \"\""
  groups_assigned = ["Users_with_Termination_Date"]
}