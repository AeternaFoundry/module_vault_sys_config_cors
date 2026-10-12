output "sys_config_cors_id" {
  description = "Map of id values across all sys_config_cors, keyed the same as var.sys_config_cors except keys with no id are omitted"
  value       = { for k, v in vault_sys_config_cors.sys_config_cors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sys_config_cors_allowed_headers" {
  description = "Map of allowed_headers values across all sys_config_cors, keyed the same as var.sys_config_cors except keys with no allowed_headers are omitted"
  value       = { for k, v in vault_sys_config_cors.sys_config_cors : k => v.allowed_headers if v.allowed_headers != null && length(v.allowed_headers) > 0 }
}
output "sys_config_cors_allowed_origins" {
  description = "Map of allowed_origins values across all sys_config_cors, keyed the same as var.sys_config_cors except keys with no allowed_origins are omitted"
  value       = { for k, v in vault_sys_config_cors.sys_config_cors : k => v.allowed_origins if v.allowed_origins != null && length(v.allowed_origins) > 0 }
}
output "sys_config_cors_enabled" {
  description = "Map of enabled values across all sys_config_cors, keyed the same as var.sys_config_cors except keys with no enabled are omitted"
  value       = { for k, v in vault_sys_config_cors.sys_config_cors : k => v.enabled if v.enabled != null }
}

