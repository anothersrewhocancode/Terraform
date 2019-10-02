resource "aws_eks_cluster" "stage-eks" {
  name     = var.cluster-name
  role_arn = aws_iam_role.stage-eks.arn
  version  = var.cluster_version
  vpc_config {
    security_group_ids = [aws_security_group.stage-eks.id]

    subnet_ids = module.vpc.public_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.stage-eks-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.stage-eks-AmazonEKSServicePolicy,
  ]
}
