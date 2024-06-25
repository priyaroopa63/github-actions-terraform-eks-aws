locals {
  prefix   = "${var.bu}-${var.project}"
  suffix   = var.env
  region   = var.region
  tags = {
    Businessunit = var.bu
    Environment  = var.env
    Managedby    = "Terraform"
  }
}
