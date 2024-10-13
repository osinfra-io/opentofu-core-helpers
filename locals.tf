# Local Values
# https://www.terraform.io/docs/language/values/locals.html

locals {

  # The variable for the workspace is only for testing purposes, it should not be set under any other use case.

  workspace = var.workspace != null ? var.workspace : terraform.workspace

  # The regex is used to parse the workspace name into its components, the components are used to set the region, zone, and environment variables.

  #workspace_regex = "^(?:(?P<region>us-[a-z]+\\d+)(?:-(?P<zone>[abcd]))?(?:-[a-zA-Z0-9-]+)?|main)-(?P<environment>sandbox|non-production|production)$"
  workspace_regex = "^(?:(?P<region>us-[a-z]+\\d+)(?:-(?P<zone>[abcd]))?(?:-[a-zA-Z0-9-]+)?|main)-(?P<environment>sandbox|non-production|production)$"


  parsed_workspace = (
    local.workspace == "default" ?
    {

      # We use mock providers when testing Terraform child modules, these values align with the test naming conventions

      region      = "mock-region"
      zone        = "mock-zone"
      environment = "mock-environment"
    } :
    try(regex(local.workspace_regex, local.workspace),
      {
        region      = null
        zone        = null
        environment = null
    })
  )

  region      = local.parsed_workspace.region
  zone        = local.parsed_workspace.zone
  environment = local.parsed_workspace.environment
}
