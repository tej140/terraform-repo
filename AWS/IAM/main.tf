provider "aws" {
  region = var.region[0]
}

resource "aws_iam_user" "test" {
  name = each.value
  for_each = var.name
}