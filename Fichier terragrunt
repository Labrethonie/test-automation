include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Sendgrid"
    logo = "./logo.png"
    preconfigured_app = "backmarket_sendgrid_1"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"backmarket_sendgrid_1_link":true})
    assertion_signed = true
    hide_web = false
    hide_ios = true
    honor_force_authn = true
    response_signed = true
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
}