variable "sys_config_cors" {
  description = <<EOT
Map of sys_config_cors, attributes below
Required:
    - allowed_origins
Optional:
    - allowed_headers
EOT

  type = map(object({
    allowed_origins = set(string)
    allowed_headers = optional(set(string))
  }))
}

