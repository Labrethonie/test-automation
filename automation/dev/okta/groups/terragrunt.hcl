include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "my_second_test"
  custom_rule_expression = "String.startsWith(user.firstName,\"Jerome\")"
  groups_assigned = ["my_first_test", "test-gchenuet"] 
  users_excluded = ["andrews.delices@backmarket.com", "thomas.lebrethon@backmarket.com"]
}