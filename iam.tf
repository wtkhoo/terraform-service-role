resource "aws_iam_role" "terraform" {
  name                = "terraform-service-role"
  description         = "IAM role for Terraform assume role"
  assume_role_policy  = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        AWS = "arn:aws:iam::${var.account_id}:root"
      }
      Condition = {
        StringEquals = {
          "sts:ExternalId" = "${var.external_id}"
        }
      }
    }]
  })

  managed_policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}
