include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Google Cloud Platform"
    logo = "./logo.png"
    preconfigured_app = "cloudconsole"
    auto_submit_toolbar = true
    accessibility_self_service = false
    app_links_json = jsonencode({"cloudconsole_link":true})
    app_settings_json = jsonencode({"domain":"tech.pilot.backmarket.io"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
    groups_assigned = [
    {
        name="external-GoogleCloudPlatform"
        priority="0"
    },
    ]
}