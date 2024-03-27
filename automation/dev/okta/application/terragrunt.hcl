include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Chronicle"
    logo = "./logo.png"
    preconfigured_app = "backmarket_gcpworkforceidentity_1"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"backmarket_gcpworkforceidentity_1_link":true})
    assertion_signed = true
    hide_web = false
    hide_ios = false
    honor_force_authn = true
    response_signed = true
    saml_version = "2.0"
    user_name_template = "$${source.email}"
    user_name_template_type = "BUILT_IN"
    attribute_statements = [{"filter_type": "STARTS_WITH", "filter_value": "bsa_test_chronicle_", "name": "groups", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "GROUP"}, {"name": "emailaddress", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["user.email"]}, {"name": "first_name", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["user.firstName"]}, {"name": "last_name", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["user.lastName"]}, {"name": "name", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["user.firstName + \\\" \\\" + user.lastName"]}, {"name": "subject", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "type": "EXPRESSION", "values": ["user.email"]}]
    groups_assigned = [
    {
        name="bsa_test_chronicle_admin"
        priority="0"
    },
    ]
}