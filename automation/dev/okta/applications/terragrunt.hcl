include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "G Suite - Admin Champions"
    logo = "./logo.png"
    preconfigured_app = "google"
    auto_submit_toolbar = true
    accessibility_self_service = false
    app_links_json = jsonencode({"accounts":false,"calendar":false,"drive":false,"keep":false,"mail":true,"sites":false})
    app_settings_json = jsonencode({"afwOnly":false,"domain":"backmarket.fr"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "String.toLowerCase(\"admin-champions@backmarket.com\")"
    user_name_template_push_status = "PUSH"
    user_name_template_type = "CUSTOM"
    attribute_statements = [{"filter_type": "REGEX", "filter_value": ".*Datadog - Adminstrators.*|.*BoT Team.*|.*Datadog - Standard Role.*|.*Team.*|.*Product.*", "name": "memberOf", "namespace": "urn:oasis:names:tc:SAML:2.0:attrname-format:uri", "type": "GROUP"}]
    groups_assigned = [
    {
        name="Externals - Contractor - Major"
        priority="0"
    },
    {
        name="external-GSuiteAdminChampions"
        priority="1"
    },
    ]
}