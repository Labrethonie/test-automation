include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "DefectDojo"
    type = "web"
    grant_types = ["authorization_code", "implicit"]
    token_endpoint_auth_method = "client_secret_basic"
    client_id = "0oa1hy0t8goqtgaIL0x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "ORG_URL"
    response_types = ["code", "id_token", "token"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "ORG_URL"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    login_uri = "https://defectdojo-poc.backmarket.io/complete/okta-oauth2/"
    redirect_uris = ["https://defectdojo-poc.backmarket.io/complete/okta-oauth2/"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["manuel.delanchy@backmarket.com"]
}