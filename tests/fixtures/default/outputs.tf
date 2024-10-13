# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "region" {
  value = module.core_workspace.region
}

output "zone" {
  value = module.core_workspace.zone
}

output "environment" {
  value = module.core_workspace.environment
}
