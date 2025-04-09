resource "aws_glue_catalog_database" "default" {
  name = "${var.env}_glue_db"
}