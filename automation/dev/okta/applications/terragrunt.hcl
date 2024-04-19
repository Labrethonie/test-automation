include {
    path = find_in_parent_folders("env.hcl")
}

terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-oauth?ref=okta-applications-oauth-1.0.0"
}

inputs = {
    label = "Okta Workflows OAuth"
    logo = "./logo.png"
    app_settings_json = jsonencode({"redirectURI":"https://oauth.workflows.oktapreview.com/oauth/okta/cb","serviceDomain":"https://oauth.workflows.oktapreview.com"})
    hide_ios = true
    hide_web = true
    pkce_required = false
    oauth_scopes = ["okta.eventHooks.read", "okta.schemas.manage", "okta.eventHooks.manage", "okta.groups.read", "okta.clients.register", "okta.users.read", "okta.apps.read", "okta.apps.manage", "okta.groups.manage", "okta.schemas.read", "okta.users.manage", "okta.users.read.self", "okta.users.manage.self", "okta.clients.read", "okta.clients.manage"]
    auto_submit_toolbar = false
    accessibility_self_service = false
    user_name_template = "$${source.login}"
    user_name_template_type = "$${source.login}"
    users_assigned = ["jerome.heymonet@backmarket.com", "remy.angel@backmarket.com"]
}