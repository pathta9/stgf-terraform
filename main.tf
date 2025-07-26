resource "azurerm_storage_account" "stgfs" {
    for_each = var.stg_map
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = "Standard"
    account_replication_type = each.value.account_replication_type
  
}

