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
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

