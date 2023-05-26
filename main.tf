module "gcs_bucket" {
  source                      = "./Storage"
  name                        = var.bucket_name
  location                    = var.bucket_location
  project                     = var.project
  public_access_prevention    = var.public_access_prevention
  uniform_bucket_level_access = var.uniform_bucket_level_access
  retention_period            = var.retention_period
  is_locked                   = var.retention_policy_is_locked
}
