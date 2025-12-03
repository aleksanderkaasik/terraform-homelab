resource "proxmox_lxc" "server-testing" {
  target_node = "proxymity"
  vmid        = 120
  hostname    = "test-lxc"
  ostemplate  = "local:vztmpl/ubuntu-24.04-standard_24.04-1.1_amd64.tar.zst"
  password    = "secret"
  unprivileged = true

  start = true

  network {
    name      = "eth0"
    bridge    = "vmbr0"
    ip        = "dhcp"
    firewall  = false
  }

  tags = "testing;ubuntu"

  features {
    nesting = true
  }

  rootfs {
    storage = "VM-Storage"
    size    = "8G"
  }
}
