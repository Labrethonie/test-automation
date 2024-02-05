include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Surprise Me 22Q4"
    type = "browser"
    grant_types = ["authorization_code"]
    token_endpoint_auth_method = "none"
    client_id = "0oa4tc9cqpcG8JALr0x7"
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
    post_logout_redirect_uris = ["http://localhost:3000", "http://localhost:4455"]
    redirect_uris = ["http://localhost:3000/authenticate", "http://localhost:4455/authenticate"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
}