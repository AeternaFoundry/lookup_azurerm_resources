variable "resources_lookup" {
  description = <<EOT
Map of resources_lookup, attributes below
Optional:
    - name
    - required_tags
    - resource_group_name
    - type
EOT

  type = map(object({
    name                = optional(string)
    required_tags       = optional(map(string))
    resource_group_name = optional(string)
    type                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.resources_lookup : (
        v.required_tags == null || (length(v.required_tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

