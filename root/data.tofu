# Data Sources
# https://opentofu.org/docs/language/data-sources

# Access logos remote state when configuration is provided
data "terraform_remote_state" "logos" {
  count = var.logos_remote_state_config != null ? 1 : 0

  backend = var.logos_remote_state_config.backend
  config  = var.logos_remote_state_config.config
}
