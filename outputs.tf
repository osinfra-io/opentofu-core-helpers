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

output "env" {
  description = "The short name for the environment for example prod, nonprod, sb"
  value       = local.env
}

output "environment" {
  description = "The environment name for example production, non-production, sandbox"
  value       = local.environment
}

output "labels" {
  description = "A map of labels to apply to resources"
  value       = local.labels
}

output "region" {
  description = "The region where resources will be deployed"
  value       = local.region
}

output "repository" {
  description = "The repository name"
  value       = var.repository
}

output "team" {
  description = "The team name"
  value       = var.team
}

output "zone" {
  description = "The zone where resources will be deployed"
  value       = local.zone
}
