include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-groups?ref=okta-groups-1.2.0"
}

# Indicate the input values to use for the variables of the module.
inputs = {
  group_name             = "APP_Zendesk_Administrators"
  group_description      = "Internel users having administrator privileges in Zendesk"
  group_members = ["svc-zendesk@backmarket.com"]"
}
 