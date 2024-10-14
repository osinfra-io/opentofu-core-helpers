# Local Values
# https://www.terraform.io/docs/language/values/locals.html

locals {
  env = local.environment != null ? lookup(local.env_map, local.environment, "none") : null

  env_map = {
    "non-production" = "nonprod"
    "production"     = "prod"
    "sandbox"        = "sb"
  }

  environment = local.parsed_workspace.environment

  labels = {
    environment = local.environment
    region      = local.region
    # team        = local.team
    zone = local.zone
  }

  parsed_workspace = (
    local.workspace == "default" ?
    {

      # We use mock providers when testing Terraform child modules, these values align with the test naming conventions

      environment = "mock-environment"
      region      = "mock-region"
      # team        = "mock-team"
      zone = "mock-zone"
    } :
    try(regex(local.workspace_regex, local.workspace),
      {
        environment = null
        region      = null
        # team        = null
        zone = null
    })
  )

  region = local.parsed_workspace.region

  # team = local.parsed_workspace.team

  workspace = var.workspace != null ? var.workspace : terraform.workspace

  # The regex is used to parse the workspace name into its components, the components are used to set the region, zone, and environment variables.
  # This requires structured workspace names, the structured workspace names are defined by the regex.

  # Examples:
  # main-sandbox -> region = null, zone = null, environment = sandbox
  # us-west1-sandbox -> region = us-west1, zone = null, environment = sandbox
  # us-west1-foo-sandbox -> region = us-west1, zone = null, environment = sandbox
  # us-west1-a-sandbox -> region = us-west1, zone = a, environment = sandbox
  # us-west1-a-foo-sandbox -> region = us-west1, zone = a, environment = sandbox

  workspace_regex = "^(?:(?P<region>us-[a-z]+\\d+)(?:-(?P<zone>[abcd]))?(?:-[a-zA-Z0-9-]+)?|[a-zA-Z0-9-]+)-(?P<environment>sandbox|non-production|production)$"

  zone = local.parsed_workspace.zone
}
