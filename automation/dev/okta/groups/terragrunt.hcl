include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Test"
  custom_rule_expression = "user.login==\"jerome.heymonet@backmarket.com\""
  groups_assigned = ["bot-squad-it-ops-eng"]
}