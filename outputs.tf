output "terraform_role_arn" {
  value = aws_iam_role.terraform.arn
}

output "sts_external_id" {
  value = var.external_id
}