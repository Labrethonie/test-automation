include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Shipping Admin API"
    type = "browser"
    grant_types = ["authorization_code", "implicit"]
    token_endpoint_auth_method = "none"
    client_id = "0oa55in23vEwqkt6U0x7"
    consent_method = "REQUIRED"
    hide_ios = true
    hide_web = true
    issuer_mode = "DYNAMIC"
    response_types = ["code", "id_token", "token"]
    oauth_scopes = ["okta.users.read"]
    wildcard_redirect = "DISABLED"
    issuer_mode = "DYNAMIC"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"oidc_client_link":true})
    login_mode = "DISABLED"
    post_logout_redirect_uris = ["http://localhost:3000/admin/docs"]
    redirect_uris = ["http://localhost:3000/admin/docs/oauth2-redirect", "http://localhost:3000/api/auth/callback/backmarket", "http://localhost:4000/admin/ui/oauth2-redirect", "https://oidcdebugger.com/debug"]
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["elias.dorneles@backmarket.com", "nicolas.dufour@backmarket.com", "jules.spender@backmarket.com", "francois.rosato@backmarket.com"]
}