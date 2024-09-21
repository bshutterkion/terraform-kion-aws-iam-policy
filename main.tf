resource "kion_aws_iam_policy" "user_managed" {
  count        = var.policy_type == "user_managed" ? 1 : 0
  name         = var.name
  policy       = var.policy_template != null ? templatefile(var.policy_template, {}) : var.policy
  aws_iam_path = "/kion/"

  description = "AWS IAM Policy for ${var.name}"

  dynamic "owner_user_groups" {
    for_each = var.owner_user_groups
    content {
      id = owner_user_groups.value.id
    }
  }

  dynamic "owner_users" {
    for_each = var.owner_users
    content {
      id = owner_users.value.id
    }
  }
}
