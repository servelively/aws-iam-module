output "role_arn" {
    value = join("",aws_iam_role.create_role.*.arn)
}
output "role_name" {
   value = join("",aws_iam_role.create_role.*.name)
}
/*
output "additional_policy_arn" {
   value = aws_iam_role_policy_attachment.attach.arn
}*/