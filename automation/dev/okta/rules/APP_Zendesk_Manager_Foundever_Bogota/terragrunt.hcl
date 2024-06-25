include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-group-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "APP_Zendesk_Manager_Foundever_Bogota"
  custom_rule_expression = "(user.zendeskrole==\"Admin\" or user.zendeskrole==\"BPO Manager\") and user.organization==\"Foundever\" and user.city==\"Bogota\""
  groups_assigned = ["APP_Zendesk_Manager_Foundever_Bogota"]
}