include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Okta Workflows"
    logo = "./logo.png"
    app_settings_json = jsonencode({"initiateLoginURI":"https://backmarket.workflows.oktapreview.com/oidc/0oaz34wx4FayWeJ5u0x6/login","redirectURI":"https://backmarket.workflows.oktapreview.com/oidc/0oaz34wx4FayWeJ5u0x6/cb"})
    hide_ios = false
    hide_web = false
    pkce_required = false
    auto_submit_toolbar = false
    accessibility_self_service = false
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["jerome.heymonet@backmarket.com", "remy.angel@backmarket.com"]
}