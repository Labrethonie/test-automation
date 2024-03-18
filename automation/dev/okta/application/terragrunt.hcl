include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Wattson"
    type = "service"
    status = "INACTIVE"
    grant_types = ["client_credentials"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa3ld73tcBroglaW0x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "DYNAMIC"
    response_types = ["token"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
}