variable "region" {
  default = "us-west-2"
}

variable "user_names" {
  description = "Create IAM users with these names"
  type        = "list"
  default     = ["user1", "user2", "user3"]
}


