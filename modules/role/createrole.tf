resource "aws_iam_role" "create_role" {
  count = var.create_role ? 1 :0
  name = var.role_name
  description = var.role_description
  assume_role_policy = var.roles_assume_policy_json
  force_detach_policies = var.role_force_detach_policies
  max_session_duration = var.role_max_session_duration
  path = var.role_path
  tags = var.role_tags
}

resource "aws_iam_policy" "policy_additional" {
  count = var.create_role && var.role_create_additional_policy ? 1 : 0
  name = var.role_additional_policy_name
  description = var.role_additional_policy_description
  policy = var.additional_policy_json_file_content
}


resource "aws_iam_role_policy_attachment" "attach" {
  count = var.create_role && var.role_create_additional_policy ? 1 : 0
  role       = join("",aws_iam_role.create_role.*.name)
  policy_arn = aws_iam_policy.policy_additional[0].arn
}

