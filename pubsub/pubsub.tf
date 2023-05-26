resource "google_pubsub_topic" "demo" {
  name = var.topic_name
  project = var.project
}

resource "google_pubsub_subscription" "demo" {
  name    = var.subscriber_name
  topic   = google_pubsub_topic.demo.name
  project = var.project

  ack_deadline_seconds = 20

  labels = {
    foo = "bar"
  }

  push_config {
    push_endpoint = "https://example.com/push"

    attributes = {
      x-goog-version = "v1"
    }
  }
}
