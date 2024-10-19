# Input Variables
# https://www.terraform.io/language/values/variables

variable "cost_center" {
  description = "The cost center the resources will be billed to, must start with 'x' followed by three or four digits"
  type        = string

  validation {
    condition     = can(regex("^(x\\d{3,4}|mock-cost-center)$", var.cost_center))
    error_message = "The cost center must start with 'x' followed by three or four digits"
  }
}

variable "data_classification" {
  description = "The data classification of the resources can be public, internal, or confidential"
  type        = string

  validation {
    condition     = can(regex("^(mock-data-classification|public|internal|confidential)$", var.data_classification))
    error_message = "The data classification must be public, internal, or confidential"
  }
}

variable "email" {
  description = "The email address of the the team responsible for the resources"
  type        = string

  validation {
    condition     = can(regex("^.+@osinfra.io$", var.email))
    error_message = "The email address must be an osinfra.io email address"
  }
}

variable "repository" {
  description = "The repository name"
  type        = string
}

variable "team" {
  description = "The team name"
  type        = string
}

variable "workspace" {
  description = "This is used for tests to set the workspace name. Do not set this variable in any other context"
  type        = string
  default     = null
}
