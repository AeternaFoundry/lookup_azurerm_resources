output "resources_lookup_id" {
  description = "Map of id values across all resources_lookup, keyed the same as var.resources_lookup"
  value       = { for k, v in data.azurerm_resources.resources_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resources_lookup_name" {
  description = "Map of name values across all resources_lookup, keyed the same as var.resources_lookup"
  value       = { for k, v in data.azurerm_resources.resources_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "resources_lookup_required_tags" {
  description = "Map of required_tags values across all resources_lookup, keyed the same as var.resources_lookup"
  value       = { for k, v in data.azurerm_resources.resources_lookup : k => v.required_tags if v.required_tags != null && length(v.required_tags) > 0 }
}
output "resources_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all resources_lookup, keyed the same as var.resources_lookup"
  value       = { for k, v in data.azurerm_resources.resources_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "resources_lookup_resources" {
  description = "Map of resources values across all resources_lookup, keyed the same as var.resources_lookup"
  value       = { for k, v in data.azurerm_resources.resources_lookup : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "resources_lookup_type" {
  description = "Map of type values across all resources_lookup, keyed the same as var.resources_lookup"
  value       = { for k, v in data.azurerm_resources.resources_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

