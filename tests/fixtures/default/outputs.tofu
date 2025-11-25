# Output Values
# https://opentofu.org/docs/language/values/outputs

output "env" {
  value = module.core_helpers_root.env
}

output "environment" {
  value = module.core_helpers_root.environment
}

output "labels" {
  value = module.core_helpers_root.labels
}

output "region" {
  value = module.core_helpers_root.region
}

output "zone" {
  value = module.core_helpers_root.zone
}

output "environment_folder_id" {
  value = module.core_helpers_root.environment_folder_id
}

output "project_naming" {
  value = module.core_helpers_root.project_naming
}

output "team_key" {
  value = module.core_helpers_root.team_key
}
