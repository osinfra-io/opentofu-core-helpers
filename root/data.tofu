# Data Sources
# https://opentofu.org/docs/language/data-sources

# Access logos remote state when configuration is provided
data "terraform_remote_state" "logos" {
  for_each = var.logos_workspaces != null ? toset(var.logos_workspaces) : toset([])

  backend = "local"
  config = {
    path = "../pt-logos/terraform.tfstate.d/${each.key}/terraform.tfstate"
  }
}
