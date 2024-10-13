# Input Variables
# https://www.terraform.io/language/values/variables

variable "workspace" {
  description = "The workspace to use for the Terraform run"
  type        = string
  default     = null
}
