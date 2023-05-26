resource "google_storage_bucket" "demo" {
  name          = "wiz-iac-demo-bucket-00"
  location      = "US"
  force_destroy = true
  project = "wiz-environment-692908"

  public_access_prevention = "enforced"

  uniform_bucket_level_access = true

  retention_policy {
    retention_period = "315360000"
    is_locked = true
  }
}