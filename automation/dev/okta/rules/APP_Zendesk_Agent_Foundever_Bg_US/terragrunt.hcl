include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-group-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "APP_Zendesk_Agent_Foundever_Bg_US"
  custom_rule_expression = "user.zendeskrole==\"Back Market Agent\" and user.organization==\"Foundever\" and user.city==\"Bogota\" and isMemberOfGroupName(\"APP_Zendesk_Market_US\")"
  groups_assigned = ["APP_Zendesk_Agent_Foundever_Bg_US"]
}