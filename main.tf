resource "vault_sys_config_cors" "sys_config_cors" {
  for_each = var.sys_config_cors

  allowed_origins = each.value.allowed_origins
  allowed_headers = each.value.allowed_headers
}

