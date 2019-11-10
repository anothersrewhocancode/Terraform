data "aws_iam_policy_document" "ec2_full" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:*"]
    resources = ["*"]
  }
}        
