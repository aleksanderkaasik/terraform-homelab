resource "proxmox_lxc" "server-testing" {
  target_node     = var.proxmox_node_name
  vmid            = 120
  hostname        = "test-lxc"
  ostemplate      = "local:vztmpl/${var.os_image}"
  password        = var.proxmox_vm_password
  tags            = "testing;ubuntu"
  unprivileged    = true
  start           = true
  ssh_public_keys = var.public_ssh_key

  network {
    name      = "eth0"
    bridge    = "vmbr0"
    ip        = "dhcp"
    firewall  = false
  }

  features {
    nesting = true
  }

  rootfs {
    storage = "VM-Storage"
    size    = "8G"
  }
}
