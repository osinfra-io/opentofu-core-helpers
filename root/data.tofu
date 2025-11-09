# Data Sources
# https://opentofu.org/docs/language/data-sources

# Access logos remote state for team data and organizational information
# Reads from local backend with hardcoded path structure for logos workspaces
# Each workspace contains teams data, folder IDs, and project naming information
data "terraform_remote_state" "logos" {
  for_each = var.logos_workspaces != null ? toset(var.logos_workspaces) : toset([])

  backend = "local"
  config = {
    path = "../pt-logos/terraform.tfstate.d/${each.key}/terraform.tfstate"
  }
}
