include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Workato"
    preconfigured_app = "backmarket_workato_1"
    auto_submit_toolbar = false
    accessibility_self_service = false
    app_links_json = jsonencode({"backmarket_workato_1_link":true})
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
        name="bot-squad-it-ops-eng"
        priority="4"
        profile = jsonencode({"workato_role":"WT_789456_DEV_RW","workato_role_prod":"WT_789456_PROD_RW","workato_role_test":"None"})
    },
    {
        name="Workato_123456_DEV_RO"
        priority="1"
        profile = jsonencode({"workato_role":"WT_123456_DEV_RW","workato_role_prod":"WT_123456_PROD_RW","workato_role_test":"None"})
    },
    {
        name="Workato_123456_PROD_RW"
        priority="2"
        profile = jsonencode({"workato_role":"WT_123456_DEV_RW","workato_role_prod":"WT_123456_PROD_RW","workato_role_test":"None"})
    },
    {
        name="Workato_123456_DEV_RW"
        priority="0"
        profile = jsonencode({"workato_role":"WT_123456_DEV_RW","workato_role_prod":"WT_123456_PROD_RW","workato_role_test":"None"})
    },
    {
        name="Workato_123456_PROD_RO"
        priority="3"
        profile = jsonencode({"workato_role":"WT_123456_DEV_RW","workato_role_prod":"WT_123456_PROD_RW","workato_role_test":"None"})
    },
    ]
}