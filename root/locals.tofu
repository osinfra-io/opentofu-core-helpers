# Local Values
# https://opentofu.org/docs/language/values/locals

locals {
  # Logos functionality - parse team data from remote state when available
  team_data = var.logos_remote_state_config != null ? data.terraform_remote_state.logos[0].outputs.teams[var.team] : null

  # Extract team key from team variable
  team_key = var.team

  # Team prefix extraction (pt, st, cst, et)
  team_prefix = local.team_key != null ? split("-", local.team_key)[0] : null

  # Environment key for logos lookup (title case with dashes replaced by spaces)
  environment_key = local.environment != null ? title(replace(local.environment, "-", " ")) : null

  # Environment folder ID for the current team and environment
  environment_folder_id = local.team_data != null && local.environment_key != null ? local.team_data.environments[local.environment_key] : null

  # Project naming components matching logos_helper interface
  project_naming = local.team_data != null ? {
    description = lower(local.team_data.display_name)
    prefix      = local.team_prefix
    team_key    = local.team_key
    team_prefix = local.team_prefix
  } : null

  labels = {

    # Datadog expects the label env for unified service tagging otherwise we'd use the full name of environment.

    env                 = local.environment
    cost-center         = var.cost_center
    data-classification = var.data_classification
    region              = local.region
    repository          = var.repository
    team                = var.team
    zone                = local.zone != null ? "${local.region}-${local.zone}" : null
  }
}
