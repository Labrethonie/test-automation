include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Example"
    preconfigured_app = "backmarket_example_4"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"backmarket_example_4_link":true})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = true
    saml_version = "2.0"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
    attribute_statements = [{"filter_type": "REGEX", "filter_value": ".*", "name": "groups", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "GROUP"}]
    users_assigned = ["jerome.heymonet@backmarket.com", "remy.angel@backmarket.com", "thomas.lebrethon@backmarket.com"]
    groups_assigned = [
    {
        name="Butterfly"
        priority="0"
    },
    {
        name="This_is_a_test"
        priority="1"
    },
    {
        name="Demo"
        priority="2"
    },
    {
        name="APP_Ext_Example"
        priority="3"
    },
    ]
}