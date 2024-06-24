include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-group-rules?ref=okta-group-rules-1.0.0"
}

inputs = {
  rule_name              = "Ext_BPO_CARE_Agent"
  custom_rule_expression = "user.externalType==\"BPO\" and Arrays.contains(user.bpoRoles, \"CARE_Agent\")"
  groups_assigned = ["Ext_BPO_CARE_Agent"]
}