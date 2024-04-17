include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "WBR46-Terst"
    type = "service"
    grant_types = ["client_credentials"]
    token_endpoint_auth_method = "private_key_jwt"
    client_id = "0oa5psogy5WidWu810x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "DYNAMIC"
    response_types = ["token"]
    jwks_kid = "TGNjZGLWi5a5-_il9OxmK7QAh-90P6ifpEK5oTL2ZVg"
    oauth_scopes = ["okta.eventHooks.manage", "okta.users.read", "okta.apps.read", "okta.apps.manage", "okta.userTypes.manage", "okta.users.manage", "okta.userTypes.read"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
}