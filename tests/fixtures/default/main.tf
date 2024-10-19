module "core_workspace" {
  source = "../../../"

  cost_center         = var.cost_center
  data_classification = var.data_classification
  email               = var.email
  repository          = var.repository
  team                = var.team
  workspace           = var.workspace
}
