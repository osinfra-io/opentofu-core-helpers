# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "env" {
  value = module.core_workspace.env
}

output "environment" {
  value = module.core_workspace.environment
}

output "labels" {
  value = module.core_workspace.labels
}

output "region" {
  value = module.core_workspace.region
}

output "zone" {
  value = module.core_workspace.zone
}
