data "azurerm_resources" "resources_lookup" {
  for_each = var.resources_lookup

  name                = each.value.name
  required_tags       = each.value.required_tags
  resource_group_name = each.value.resource_group_name
  type                = each.value.type
}

