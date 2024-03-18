include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Ext_BPO_Agents"
  custom_rule_expression = "user.title==\"Agent\" and user.organization==\"Webhelp\""
  groups_assigned = ["Ext_BPO_Agents"] 
  users_excluded = ["france.paris.ext@backmarket.com"]
}