include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Workato - Okta termination dates"
    type = "web"
    grant_types = ["authorization_code", "refresh_token"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa6u314fodexAFxZ0x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "DYNAMIC"
    response_types = ["code"]
    oauth_scopes = ["okta.logs.read", "okta.enduser.read", "okta.schemas.read"]
    wildcard_redirect = "DISABLED"
    refresh_token_rotation = "STATIC"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    post_logout_redirect_uris = ["http://localhost:8080"]
    redirect_uris = ["https://app.eu.workato.com/oauth/callback"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
}