resource "aws_redshift_cluster" "example" {
  cluster_identifier = "redshift-${var.env}"
  node_type          = "dc2.large"
  master_username    = var.username
  master_password    = var.password
  cluster_type       = "single-node"

  tags = {
    Environment = var.env
  }
}