include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "SOR catalyst"
    logo = "./logo.png"
    type = "web"
    grant_types = ["authorization_code"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa4x87f9ePSfL2T60x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "DYNAMIC"
    response_types = ["code"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    redirect_uris = ["http://localhost:8000/auth/callback", "https://soar-preprod.csec.backmarket.io/auth/callback"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["aude.roussel@backmarket.com", "pierre.lalet@backmarket.com", "theo.martin-castex@backmarket.com"]
    groups_assigned = [
      {
          name="SOR"
      
      },
    ]
}