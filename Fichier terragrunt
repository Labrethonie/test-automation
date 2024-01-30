include {
    path = find_in_parent_folders("env.hcl")
}
terraform {
    source = "git::git@github.com:BackMarket/world-common.git//okta-applications-bookmark?ref=okta-applications-bookmark-1.1.0"

}
inputs = {
    label = "Back Market Support Center"
    logo = "./logo.png"
    url = "https://backmarket.atlassian.net/servicedesk/customer/portals"
    app_links_json = jsonencode({"login":true})
    accessibility_self_service = false
    auto_submit_toolbar = false
    hide_ios = false
    hide_web = false
    users_assigned = ["jerome.heymonet@backmarket.com"]
    groups_assigned = [
      {
          name="Externals - Helper"
      
      },
      {
          name="Admin"
      
      },
      {
          name="APP_Ext_Figma"
      
      },
      {
          name="APP_Ext_Example"
      
      },
    ]
}