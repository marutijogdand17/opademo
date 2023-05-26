terraform {
  backend "gcs" {
    bucket = "wiz-demo"
    prefix = "terraform/dev/state"
  }
}