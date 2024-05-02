include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Google TEST 2 "
    logo = "./logo.png"
    preconfigured_app = "google"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"accounts":false,"calendar":false,"drive":false,"keep":false,"mail":true,"sites":false})
    app_settings_json = jsonencode({"afwOnly":false,"domain":"backmarket.fr"})
    assertion_signed = false
    hide_web = false
    hide_ios = true
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
    groups_assigned = [
    {
        name="external-GoogleTEST2"
        priority="0"
    },
    ]
}