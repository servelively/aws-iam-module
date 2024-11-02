output "policy_name" {
    description = "The ARN assigned by AWS to this policy"
    value = join("",aws_iam_policy.work_policy.*.name)
}

output "policy_arn" {
    description = "The ARN assigned by AWS to this policy"
    value = join("",aws_iam_policy.work_policy.*.arn)
}
output "policy_id" {
    description = "The ARN assigned by AWS to this policy"    
    value = join("",aws_iam_policy.work_policy.*.policy_id)
}
