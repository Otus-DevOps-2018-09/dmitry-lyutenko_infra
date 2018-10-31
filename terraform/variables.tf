variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  default = "europe-west1-d"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable "instace_count" {
  description = "Number of instances in cluster"
  default     = 2
}

variable "app_port" {
  default     = 9292
  description = "Firewall and health check port"
}
