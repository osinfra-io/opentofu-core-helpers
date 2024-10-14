# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "environment" {
  value = local.environment
}

output "labels" {
  value = local.labels
}

output "region" {
  value = local.region
}

output "zone" {
  value = local.zone
}
