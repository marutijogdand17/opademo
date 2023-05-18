resource "google_storage_bucket" "auto-expire" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = true
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  retention_policy {
    retention_period = "123442111"
    is_locked = true
  }

  public_access_prevention = "enforced"
}