# Local Values
# https://www.terraform.io/docs/language/values/locals.html

locals {
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
