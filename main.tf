resource "grafana_role_assignment" "role_assignments" {
  for_each = var.role_assignments

  role_uid         = each.value.role_uid
  org_id           = each.value.org_id
  service_accounts = each.value.service_accounts
  teams            = each.value.teams
  users            = each.value.users
}

