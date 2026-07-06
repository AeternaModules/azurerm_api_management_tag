variable "api_management_tags" {
  description = <<EOT
Map of api_management_tags, attributes below
Required:
    - api_management_id
    - name
Optional:
    - display_name
EOT

  type = map(object({
    api_management_id = string
    name              = string
    display_name      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_tags : (
        v.display_name == null || (length(v.display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_tag's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] !ok
  # path: api_management_id
  #   source:    [from apimanagementservice.ValidateServiceID] err != nil
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
}

