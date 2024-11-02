resource "aws_iam_policy" "work_policy" {
  count = var.create_policy ? 1 : 0
  name        = var.policy_name
  description = var.policy_description
  #policy = file("iam-policy.json")
  path        = var.policy_path
  policy = var.policy_file
  tags  = var.policy_tags
}

resource "aws_iam_role_policy_attachment" "attach" {
  count = var.create_policy && var.attach_policy ? 1 : 0
  role       = var.role_name
  policy_arn = join("",aws_iam_policy.work_policy.*.arn)
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  count = var.create_policy && var.attach_iam_user_policy ? 1 : 0
  user       = var.iam_username
  policy_arn = join("",aws_iam_policy.work_policy.*.arn)
}