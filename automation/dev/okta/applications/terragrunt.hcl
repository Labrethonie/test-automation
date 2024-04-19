include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "WBR-67"
    type = "service"
    grant_types = ["client_credentials"]
    token_endpoint_auth_method = "private_key_jwt"
    client_id = "0oa6xgua2iQ6492bH0x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "DYNAMIC"
    response_types = ["token"]
    jwks_kid = "21epPM52BWmEqa4c4dy4GgLKAGeHh9TRB5LBWM-ZSyg"
    oauth_scopes = ["okta.logs.read", "okta.schemas.manage", "okta.eventHooks.manage", "okta.groups.read", "okta.users.read", "okta.events.read", "okta.apps.read", "okta.apps.manage", "okta.groups.manage", "okta.schemas.read", "okta.users.manage"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
}