# Input Variables
# https://www.terraform.io/language/values/variables

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
