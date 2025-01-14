
terraform {
  required_version = ">= 0.13"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}
