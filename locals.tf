# Fetch all AWS IAM policies
data "kion_aws_iam_policy" "all_policies" {}

# Filter system-managed policies in a local
locals {
  system_managed_policies = [
    for policy in data.kion_aws_iam_policy.all_policies.list :
    policy if policy.system_managed_policy
  ]
}
