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
    app_settings_json = jsonencode({"companySubDomain":"backmarkethelp1709650557"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "user.login"
    user_name_template_type = "CUSTOM"
    attribute_statements = [{"name": "custom_role_id", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["appuser.zendeskCustomRole"]}, {"name": "role", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["appuser.zendeskRole"]}]
    groups_assigned = [
    {
        name="Ext_BPO_Agents"
        priority="8"
        profile = jsonencode({"bpo_site":"Webhelp::Abidjan","locale":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":null})
    },
    {
        name="Ext_BPO_Managers"
        priority="7"
        profile = jsonencode({"bpo_site":null,"locale":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":null})
    },
    {
        name="Ext_BPO_Supervisors"
        priority="6"
        profile = jsonencode({"bpo_site":null,"locale":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":null})
    },
    {
        name="APP_Zendesk_Administrators"
        priority="0"
        profile = jsonencode({"bpo_site":null,"locale":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":"admin"})
    },
    {
        name="APP_Zendesk_ICK"
        priority="3"
        profile = jsonencode({"bpo_site":null,"locale":null,"tags":null,"timeZone":null,"zendeskCustomRole":"Advisor","zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":null,"zendeskRole":null})
    },
    {
        name="APP_Zendesk_Agents_InternalHandlers"
        priority="4"
        profile = jsonencode({"bpo_site":null,"locale":null,"tags":null,"timeZone":null,"zendeskCustomRole":null,"zendeskGroups":null,"zendeskOrganization":null,"zendeskRestrictionId":"requested","zendeskRole":null})
    },
    ]
}