module "core_helpers_root" {
  source = "../../../root"

  cost_center         = var.cost_center
  data_classification = var.data_classification
  repository          = var.repository
  team                = var.team
  workspace           = var.workspace
}
