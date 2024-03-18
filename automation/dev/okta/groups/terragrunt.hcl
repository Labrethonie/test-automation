include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Test_1"
  custom_rule_expression = "isMemberOfAnyGroup(\"00g4k3z4lsauEbA0f0x7\")"
  groups_assigned = ["Test_exlusion"] 
  users_excluded = ["jerome.heymonet+test@backmarket.com"]
}