include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Talkdesk"
    preconfigured_app = "backmarket_talkdesk_1"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"backmarket_talkdesk_1_link":true})
    assertion_signed = true
    hide_web = false
    hide_ios = false
    honor_force_authn = true
    response_signed = true
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
    groups_assigned = [
    {
        name="APP_Ext_Talkdesk"
        priority="0"
    },
    ]
}