output "role_assignments_id" {
  description = "Map of id values across all role_assignments, keyed the same as var.role_assignments except keys with no id are omitted"
  value       = { for k, v in grafana_role_assignment.role_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "role_assignments_org_id" {
  description = "Map of org_id values across all role_assignments, keyed the same as var.role_assignments except keys with no org_id are omitted"
  value       = { for k, v in grafana_role_assignment.role_assignments : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "role_assignments_role_uid" {
  description = "Map of role_uid values across all role_assignments, keyed the same as var.role_assignments except keys with no role_uid are omitted"
  value       = { for k, v in grafana_role_assignment.role_assignments : k => v.role_uid if v.role_uid != null && length(v.role_uid) > 0 }
}
output "role_assignments_service_accounts" {
  description = "Map of service_accounts values across all role_assignments, keyed the same as var.role_assignments except keys with no service_accounts are omitted"
  value       = { for k, v in grafana_role_assignment.role_assignments : k => v.service_accounts if v.service_accounts != null && length(v.service_accounts) > 0 }
}
output "role_assignments_teams" {
  description = "Map of teams values across all role_assignments, keyed the same as var.role_assignments except keys with no teams are omitted"
  value       = { for k, v in grafana_role_assignment.role_assignments : k => v.teams if v.teams != null && length(v.teams) > 0 }
}
output "role_assignments_users" {
  description = "Map of users values across all role_assignments, keyed the same as var.role_assignments except keys with no users are omitted"
  value       = { for k, v in grafana_role_assignment.role_assignments : k => v.users if v.users != null && length(v.users) > 0 }
}

