resource "google_storage_bucket" "auto-expire" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = true
  storage_class = "STANDARD"

  retention_policy {
    retention_period = "315360000"
    is_locked = false
  }

  public_access_prevention = "enforced"
}