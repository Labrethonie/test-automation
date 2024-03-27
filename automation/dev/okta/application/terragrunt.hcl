include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Kratos"
    type = "web"
    grant_types = ["authorization_code"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa16jm16eG4rHSdc0x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "ORG_URL"
    response_types = ["code"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "ORG_URL"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    redirect_uris = ["http://127.0.0.1/kratos/self-service/methods/oidc/callback/okta", "http://127.0.0.1:4433/self-service/methods/oidc/callback/okta", "http://localhost:4455/self-service/methods/oidc/callback/okta", "https://127.0.0.1/kratos/self-service/methods/oidc/callback/okta", "https://54.155.214.15/kratos/self-service/methods/oidc/callback/okta", "https://account-authn-poc.backmarket.io/kratos/self-service/methods/oidc/callback/okta"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["anouar.aissaoui@backmarket.com", "manuel.delanchy@backmarket.com"]
    groups_assigned = [
      {
          name="Sec"
      
      },
    ]
}