servers = {
  "cnx-ns" = {
    "memory"    = 2*1024
    "vcpu"      = 2
    "disk_size" = 20*1024*1024*1024
    octetIP     = 2
    "hostname"  = "cnx-ns"        # Hostname
  }
  "cnx-nfs" = {
    "memory"    = 2*1024
    "vcpu"      = 2
    "disk_size" = 200*1024*1024*1024
    octetIP     = 3
    "hostname"  = "cnx-nfs"        # Hostname
  }
  "cnx-ds" = {
    "memory"    = 2*1024
    "vcpu"      = 2
    "disk_size" = 20*1024*1024*1024
    octetIP     = 4
    "hostname"  = "cnx-ds"        # Hostname
  }
}
