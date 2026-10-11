variable "role_assignments" {
  description = <<EOT
Map of role_assignments, attributes below
Required:
    - role_uid
Optional:
    - org_id
    - service_accounts
    - teams
    - users
EOT

  type = map(object({
    role_uid         = string
    org_id           = optional(string)
    service_accounts = optional(set(string))
    teams            = optional(set(string))
    users            = optional(set(number))
  }))
}

