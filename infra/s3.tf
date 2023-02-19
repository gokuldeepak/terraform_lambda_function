module "s3_bucket" {
  source = "../modules/s3"
  bucket_name = var.s3_bucket_name
  acl = var.s3_acl
  version_enabled = var.s3_version_enabled
}