include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Externals - Zendesk - Push Group - Foundever"
  custom_rule_expression = "user.organization==\"Foundever\""
  groups_assigned = ["APP_Zendesk_PG_Foundever"] 
  users_excluded = ["gregory.novosad.ext@backmarket.com"]
}