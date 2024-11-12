# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "cost_center" {
  description = "The cost center the resources will be billed to"
  value       = var.cost_center
}

output "data_classification" {
  description = "The data classification of the resources"
  value       = var.data_classification
}

output "labels" {
  description = "A map of labels to apply to resources"
  value       = local.labels
}

output "repository" {
  description = "The repository name"
  value       = var.repository
}

output "team" {
  description = "The team name"
  value       = var.team
}
