include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Spinnaker Preprod"
    type = "web"
    grant_types = ["authorization_code"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa1dbo6m2rBGf9hj0x7"
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
    redirect_uris = ["https://preprod-gate-spinnaker.backmarket.io/login"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["maxime.vidori@backmarket.com"]
}