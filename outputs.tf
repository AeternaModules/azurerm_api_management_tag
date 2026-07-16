output "api_management_tags_id" {
  description = "Map of id values across all api_management_tags, keyed the same as var.api_management_tags"
  value       = { for k, v in azurerm_api_management_tag.api_management_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_tags_api_management_id" {
  description = "Map of api_management_id values across all api_management_tags, keyed the same as var.api_management_tags"
  value       = { for k, v in azurerm_api_management_tag.api_management_tags : k => v.api_management_id if v.api_management_id != null && length(v.api_management_id) > 0 }
}
output "api_management_tags_display_name" {
  description = "Map of display_name values across all api_management_tags, keyed the same as var.api_management_tags"
  value       = { for k, v in azurerm_api_management_tag.api_management_tags : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "api_management_tags_name" {
  description = "Map of name values across all api_management_tags, keyed the same as var.api_management_tags"
  value       = { for k, v in azurerm_api_management_tag.api_management_tags : k => v.name if v.name != null && length(v.name) > 0 }
}

