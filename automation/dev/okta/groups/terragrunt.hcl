include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups?ref=okta-groups-1.2.0"
}

# Indicate the input values to use for the variables of the module.
inputs = {
  group_name             = "Ext_BPO_Agents"
  group_description      = "Back Market Agent for Zendesk Provisioning"
}