
/** other distributions **/
/*
// centos 7
resource "libvirt_volume" "centos_image" {
  name = "${var.vm_machines[count.index]}.qcow2"
  pool   = "default"
  source = "/var/lib/libvirt/images/pool/CentOS-7-x86_64-GenericCloud-1907.qcow2"
}

// ubuntu 1904
resource "libvirt_volume" "ubuntu_1904_image" {
  name = "${var.vm_machines[count.index]}.qcow2"
  pool   = "default"
  source = "/var/lib/libvirt/images/pool/ubuntu-1904-server-cloudimg-amd64.qcow2"
}

// ubuntu 1910
resource "libvirt_volume" "ubuntu_1910_image" {
  name = "${var.vm_machines[count.index]}.qcow2"
  pool   = "default"
  source = "/var/lib/libvirt/images/pool/ubuntu-1910-server-cloudimg-amd64.qcow2"
}
*/
resource "libvirt_volume" "centos7_image" {
  name = "centos7.qcow2"
  pool = "default"
  source = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-2009.qcow2"
  #source = "./CentOS-7-x86_64-GenericCloud.qcow2"
  format = "qcow2"
}

resource "libvirt_volume" "diskimage" {

  for_each       = var.servers

  pool           = "default"
  name           = "${each.key}.qcow2"
  base_volume_id = libvirt_volume.centos7_image.id
  size           = lookup(var.servers[each.key], "disk_size", "") == "" ? "0" : var.servers[each.key].disk_size
}
