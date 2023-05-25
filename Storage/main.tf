resource "google_storage_bucket" "demo" {
  name          = "no-public-access-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"

  retention_policy {
    retention_period = "315360000"
    is_locked = false
  }
}