# Data Sources
# https://opentofu.org/docs/language/data-sources

# Access logos remote state for team data and organizational information
# Reads from GCS backend with direct state file paths
# State files are stored directly as: pt-logos/{workspace-name}.tfstate
data "terraform_remote_state" "logos" {
  for_each = var.logos_workspaces != null ? toset(var.logos_workspaces) : toset([])

  backend = "gcs"
  config = {
    bucket = "pt-logos-state-prod"
    prefix = "pt-logos"
  }

  workspace = each.key
}
