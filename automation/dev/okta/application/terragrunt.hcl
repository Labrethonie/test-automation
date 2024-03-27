include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-saml?ref=okta-applications-saml-1.0.0"
}
inputs = {
    label = "Google Workspace Pilot.backmarket.fr"
    logo = "./logo.png"
    preconfigured_app = "google"
    auto_submit_toolbar = true
    accessibility_self_service = false
    app_links_json = jsonencode({"accounts":true,"calendar":true,"drive":true,"keep":true,"mail":true,"sites":true})
    app_settings_json = jsonencode({"afwOnly":false,"domain":"pilot.backmarket.fr"})
    assertion_signed = false
    hide_web = false
    hide_ios = false
    honor_force_authn = false
    response_signed = false
    saml_version = "2.0"
    user_name_template = "String.replaceFirst(user.login, \"@backmarket.com\", \"@pilot.backmarket.fr\")"
    user_name_template_push_status = "DONT_PUSH"
    user_name_template_type = "CUSTOM"
    users_assigned = ["antonin.mellier@backmarket.com", "benoit.sauvere@backmarket.com"]
    groups_assigned = [
    {
        name="Gsuite-Pilot.backmarket.fr"
        priority="0"
        profile = jsonencode({"googleLicenses":["Google Workspace Essentials (formerly G Suite Essentials)"],"manageLicenses":null,"manageRoles":null,"orgUnitPath":"/Employees","roles":null,"unassignmentConfig":[{"name":"Remove all G Suite licenses","value":"remove-licenses"},{"name":"Remove all G Suite Roles","value":"remove-roles"}]})
    },
    ]
}