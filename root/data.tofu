# Data Sources
# https://opentofu.org/docs/language/data-sources

# Access logos remote state for team data and organizational information
# Reads from GCS backend with workspace-based state file structure
# Each workspace contains teams data, folder IDs, and project naming information
data "terraform_remote_state" "logos" {
  for_each = var.logos_workspaces != null ? toset(var.logos_workspaces) : toset([])

  backend = "gcs"
  config = {
    bucket = "pt-logos-state-prod"
    prefix = "pt-logos/${each.key}"
  }
}
