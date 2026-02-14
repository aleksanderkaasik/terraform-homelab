variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
    sensitive = true
}
 
variable "proxmox_api_token_secret" {
    type = string
    sensitive = true
}

variable "proxmox_vm_password" {
  type = string
  sensitive = true
}

variable "public_ssh_key" {
  type = string
  sensitive = true
}

variable "os_image" {
  type = string
}

variable "proxmox_node_name" {
  type = string
}

variable "proxmox_node_tls_insecure" {
  type = bool
  description = "By default Proxmox Virtual Environment uses self-signed certificates."
  default = true
}
