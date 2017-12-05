module "discovery-bucket" {
  source = "../s3-bucket"

  force_destroy = true

  bucket = "${ lower(var.application) }-swarm-discovery-bucket"
  name = "${ var.application }-swarm-discovery-bucket"
  application = "${ var.application }"
  provisionersrc = "${ var.provisionersrc }"
}
