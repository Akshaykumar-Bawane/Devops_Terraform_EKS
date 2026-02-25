resource "aws_eks_cluster" "main" {
  
  role_arn = aws_iam_role.eks_cluster_role.arn
  name    = var.cluster_name
  version = var.cluster_version

 vpc_config {
  subnet_ids = var.subnet_ids
}

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy
  ]
}