include {
  path = find_in_parent_folders("env.hcl")
}

terraform {
  source = "git::git@github.com:BackMarket/world-common.git//okta-applications-swa?ref=okta-applications-swa-1.0.0"
}

inputs = {
  label = "PREPROD EU FR"
  status = "ACTIVE"
  credentials_scheme = "SHARED_USERNAME_AND_PASSWORD"
  sign_on_url = "https://preprod.backmarket.fr/bo_admin/"
  shared_username = "admin"
  accessibility_self_service = false
  app_links_json = jsonencode({"backmarket_preprodeufr_2_link":true})
  auto_submit_toolbar = "false"
  credentials_scheme = "SHARED_USERNAME_AND_PASSWORD"
  user_name_template = "$${source.login}"
  groups_assigned = [
    {
        name="Externals - Contractor - Major"
    
    },
  ]
}