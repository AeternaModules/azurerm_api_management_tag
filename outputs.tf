output "api_management_tags" {
  description = "All api_management_tag resources"
  value       = azurerm_api_management_tag.api_management_tags
}
output "api_management_tags_api_management_id" {
  description = "List of api_management_id values across all api_management_tags"
  value       = [for k, v in azurerm_api_management_tag.api_management_tags : v.api_management_id]
}
output "api_management_tags_display_name" {
  description = "List of display_name values across all api_management_tags"
  value       = [for k, v in azurerm_api_management_tag.api_management_tags : v.display_name]
}
output "api_management_tags_name" {
  description = "List of name values across all api_management_tags"
  value       = [for k, v in azurerm_api_management_tag.api_management_tags : v.name]
}

