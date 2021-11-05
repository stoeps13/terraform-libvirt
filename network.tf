
resource "libvirt_network" "vm_network" {
  name      = "vm_network"
  mode      = "nat"
  domain    = "stoeps.home"
  addresses = ["10.0.22.0/24"]
  dns {
    enabled    = true
    local_only = true
  }
}
