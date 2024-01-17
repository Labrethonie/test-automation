include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "BambooHR"
    logo = "./logo.png"
    preconfigured_app = "bamboohr"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"login":true})
    app_settings_json = jsonencode({"samlNameId":"email","subDomain":"backmarkettest"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
}