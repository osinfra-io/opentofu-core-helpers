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
