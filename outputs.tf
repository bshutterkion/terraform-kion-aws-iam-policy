output "policy_id" {
  description = "The ID of the created IAM policy"
  value       = length(kion_aws_iam_policy.user_managed) > 0 ? kion_aws_iam_policy.user_managed[0].id : null
}

output "policy_ids" {
  description = "The IDs of all created IAM policies"
  value       = kion_aws_iam_policy.user_managed[*].id
}

output "id" {
  description = "The ID of the created IAM policy"
  value       = length(kion_aws_iam_policy.user_managed) > 0 ? kion_aws_iam_policy.user_managed[0].id : null
}
