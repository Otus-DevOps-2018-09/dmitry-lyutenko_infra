provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

module "app-network" {
  source                  = "../modules/vpc"
  app-network             = "${var.app-network}"
  app-subnetwork-name     = "${var.app-subnetwork-name}"
  app-subnetwork-ip-range = "${var.app-subnetwork-ip-ranges}"
  source-ip-ranges        = "${var.source-ip-ranges}"
}

module "app" {
  source          = "../modules/app"
  public_key_path = "${var.public_key_path}"
  zone            = "${var.zone}"
  app_disk_image  = "${var.app_disk_image}"
  app-network     = "${var.app-network}"
  app-subnetwork  = "${var.app-subnetwork-name}"
}

module "db" {
  source          = "../modules/db"
  public_key_path = "${var.public_key_path}"
  zone            = "${var.zone}"
  db_disk_image   = "${var.db_disk_image}"
  app-network     = "${var.app-network}"
  app-subnetwork  = "${var.app-subnetwork-name}"
}
