variable zone {
  default = "europe-west1-d"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable "app_port" {
  default     = 9292
  description = "Firewall and health check port"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
