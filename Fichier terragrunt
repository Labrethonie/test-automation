include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Zendesk Preview"
    logo = "./logo.png"
    preconfigured_app = "zendesk"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"login":true})
    app_settings_json = jsonencode({"companySubDomain":"backmarkethelp1670492555"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "user.login"
    user_name_template_type = "CUSTOM"
    groups_assigned = [
    {
        name="Zendesk Test"
        priority="0"
        profile = jsonencode({"bpo_site":null,"locale":null,"market":null,"merchant_name":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":"admin"})
    },
    {
        name="APP_Zendesk_Market_FR"
        priority="1"
        profile = jsonencode({"bpo_site":null,"locale":null,"market":"FR","merchant_name":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":null})
    },
    ]
}