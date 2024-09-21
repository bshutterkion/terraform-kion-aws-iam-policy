locals {
  policy_id = var.policy_type == "user_managed" ? try(kion_aws_iam_policy.user_managed[0].id, null) : try(data.kion_aws_iam_policy.system_managed[0].list[0].id, null)
}
