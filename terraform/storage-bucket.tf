provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

module "storage-bucket" {
  source = "SweetOps/storage-bucket/google"
  version = "0.1.1"
  name = ["otus-hw-terraform-1", "otus-hw-terraform-2"]
}

output "storage-bucket-url" {
  value = "${module.storage-bucket.url}"
}
