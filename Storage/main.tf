resource "google_storage_bucket" "auto-expire" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = true
  storage_class = "STANDARD"

  versioning {
    enabled = false
  }

  public_access_prevention = "enforced"
}