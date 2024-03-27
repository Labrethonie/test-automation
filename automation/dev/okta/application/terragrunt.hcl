include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Google Workspace tech"
    logo = "./logo.png"
    preconfigured_app = "google"
    auto_submit_toolbar = true
    accessibility_self_service = false
    app_links_json = jsonencode({"accounts":true,"calendar":false,"drive":false,"keep":false,"mail":false,"sites":false})
    app_settings_json = jsonencode({"afwOnly":false,"domain":"tech.pilot.backmarket.io"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
}