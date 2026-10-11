output "mutating_webhook_configuration_v1s_id" {
  description = "Map of id values across all mutating_webhook_configuration_v1s, keyed the same as var.mutating_webhook_configuration_v1s except keys with no id are omitted"
  value       = { for k, v in kubernetes_mutating_webhook_configuration_v1.mutating_webhook_configuration_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mutating_webhook_configuration_v1s_metadata" {
  description = "Map of metadata values across all mutating_webhook_configuration_v1s, keyed the same as var.mutating_webhook_configuration_v1s except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_mutating_webhook_configuration_v1.mutating_webhook_configuration_v1s : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "mutating_webhook_configuration_v1s_webhook" {
  description = "Map of webhook values across all mutating_webhook_configuration_v1s, keyed the same as var.mutating_webhook_configuration_v1s except keys with no webhook are omitted"
  value       = { for k, v in kubernetes_mutating_webhook_configuration_v1.mutating_webhook_configuration_v1s : k => v.webhook if v.webhook != null && length(v.webhook) > 0 }
}

