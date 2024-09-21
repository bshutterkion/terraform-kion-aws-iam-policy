data "kion_aws_iam_policy" "system_managed" {
  count = var.policy_type == "system_managed" ? 1 : 0
  filter {
    name   = "name"
    values = [var.name]
  }
}
