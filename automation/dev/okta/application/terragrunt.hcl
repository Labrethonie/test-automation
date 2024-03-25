include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "The Hive 4"
    logo = "./logo.png"
    type = "web"
    grant_types = ["authorization_code"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa4uz7pw1IN4qls50x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = false
    issuer_mode = "DYNAMIC"
    response_types = ["code"]
    wildcard_redirect = "SUBDOMAIN"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "SPEC"
    login_uri = "http://3.251.40.222:8000/api/ssoLogin"
    post_logout_redirect_uris = ["http://localhost:8080"]
    redirect_uris = ["http://3.251.40.222:8000/api/ssoLogin"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["anouar.aissaoui@backmarket.com", "aude.roussel@backmarket.com", "manuel.delanchy@backmarket.com", "pierre.lalet@backmarket.com", "theo.martin-castex@backmarket.com"]
    groups_assigned = [
      {
          name="Sec"
      
      },
      {
          name="SOR"
      
      },
    ]
}