variable "name" {
  description = "Name of the IAM policy without file extension"
  type        = string
}

variable "policy" {
  description = "The IAM policy document"
  type        = string
  default     = null
}

variable "policy_template" {
  description = "Path to the IAM policy template file"
  type        = string
  default     = null
}

variable "aws_iam_path" {
  description = "The path for the IAM policy"
  type        = string
  default     = null
}

variable "description" {
  description = "Description of the IAM policy without file extension"
  type        = string
  default     = null
}

variable "owner_user_groups" {
  description = "Owner user groups for the IAM policy"
  type = list(object({
    id = number
  }))
  default = []
}

variable "owner_users" {
  description = "Owner users for the IAM policy"
  type = list(object({
    id = number
  }))
  default = []
}

variable "filter_name" {
  description = "The name of the field to filter by in the data source"
  type        = string
  default     = null
}

variable "filter_values" {
  description = "The values of the field to filter by in the data source"
  type        = list(string)
  default     = []
}

variable "policy_type" {
  description = "Type of the policy: user_managed or system_managed"
  type        = string
  default     = "user_managed"
}

variable "system_managed_policies" {
  description = "List of all system-managed policies"
  type        = list(map(string))
  default     = []
}
