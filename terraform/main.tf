provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

resource "google_compute_project_metadata" "default" {
  count = 1

  metadata {
    ssh-keys = "appuser${count.index+1}:${file("${var.public_key_path}")}"
  }
}

resource "google_compute_instance" "app" {
  count        = "${var.instace_count}"
  name         = "reddit-app-${count.index+1}"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["reddit-app"]

  # boot HDD
  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata {
    ssh-keys = "appuser:${file("${var.public_key_path}")}"
  }

  connection {
    type        = "ssh"
    user        = "appuser"
    agent       = false
    private_key = "${file("${var.private_key_path}")}"
  }

  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
}

resource "google_compute_firewall" "firewall-puma" {
  name          = "allow-puma-default"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]

  allow {
    protocol = "tcp"
    ports    = ["${var.app_port}"]
  }
}