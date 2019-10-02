variable "cluster-name" {
  default = "terraform-eks-stage"
  type    = string
}

variable "cluster_version" {
  description = "Kubernetes version to use for the EKS cluster."
  type        = string
  default     = "1.14"
}
