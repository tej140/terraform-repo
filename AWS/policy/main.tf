provider "aws" {
  region = var.region[0]
}

resource "aws_iam_user" "test" {
  name = each.value
  for_each = var.name
}

resource "aws_iam_policy" "adminUser" {
  name = "AdminUsers"
  policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "useradmin" {
  user = aws_iam_user.test.name
  policy_arn = aws_iam_policy.adminUser.arn
}