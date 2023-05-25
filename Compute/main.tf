
resource "google_compute_instance" "demo" {
  name         = "sample"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["demo", "admin"]

  boot_disk {
    initialize_params {
      image = "projects/wiz-environment-69290812/global/images/custom-test-image"
      labels = {
        env = "dev"
      }
    }
    kms_key_self_link = "kms-key-self-link"
  }

  attached_disk {
    source = "pd-disk-self-link"
    kms_key_self_link = "kms-key-self-link"
  }

  shielded_instance_config {
    enable_integrity_monitoring = false
    enable_secure_boot = false
    enable_vtpm = true
  }

  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"

    access_config {
    }

  }

  metadata = {
    block-project-ssh-keys = "true"
    enable-guest-attributes = "TRUE"
    serial-port-enable = "false"
  }

  advanced_machine_features {
    enable_nested_virtualization = true
  }

  can_ip_forward = false

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    email  = "tf-wiz-sa@wiz-environment-test.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}