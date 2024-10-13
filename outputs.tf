# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "region" {
  value = local.region
}

output "zone" {
  value = local.zone
}

output "environment" {
  value = local.environment
}
