module "core_workspace" {
  source = "../../../"

  repository = var.repository
  team       = var.team
  workspace  = var.workspace
}
