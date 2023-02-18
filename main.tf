resource "azurerm_automation_runbook" "this" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  log_verbose             = var.log_verbose
  log_progress            = var.log_progress
  description             = var.description
  runbook_type            = var.runbook_type
  dynamic "publish_content_link" {
    for_each = var.publish_content_link == null ? [] : [1]
    content {
      uri = var.publish_content_link
    }
  }
  content = var.content
  tags = merge(
    var.additional_tags,
    {
      created-by = "iac-tf"
    },
  )
}
