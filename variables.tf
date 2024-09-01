variable "subscription_id" {
  type        = string
  description = "The subscription id passed to the terraform provider."
}

variable "vnet_resource_group_name" {
  type    = string
}

variable "tenant_id" {
  type        = string
  description = "The tenant id for the service principal passed to the terraform provider."
}

variable "client_id" {
  type        = string
  description = "The client id for the service principal passed to the terraform provider"
}

variable "client_secret" {
  type        = string

  description = "The client id for the service principal passed to the terraform provider"
}

variable "client_certificate_path" {
  type        = string
  description = "The client cert path for the service principal passed to the terraform provider"
}

variable "name_prefix" {
  description = "Prefix to be used for naming resources"
  type        = string
  default     = "linux"
}

variable "number_of_vms" {
  description = "Number of Linux VMs to create"
  type        = number
  default     = 2
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralus"
}

variable "vnet_subnet_id" {
  description = "ID of the subnet where the VMs will be deployed"
  type        = string
}
variable "subnet_name" {
  description = "Name of the subnet where the VMs will be deployed"
  type        = string
}
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the Linux VMs"
  type        = string
  default     = "azureuser"
}

variable "ssh_key" {
  description = "Public SSH key for VM authentication"
  type        = string
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_DS1_v2"
}

variable "os_publisher" {
  description = "The publisher of the OS image"
  type        = string
  default     = "Canonical"
}

variable "os_offer" {
  description = "The offer of the OS image"
  type        = string
  default     = "UbuntuServer"
}

variable "os_sku" {
  description = "The SKU of the OS image"
  type        = string
  default     = "18.04-LTS"
}

variable "os_version" {
  description = "The version of the OS image"
  type        = string
  default     = "latest"
}

variable "remote_port" {
  description = "Port number for remote access"
  type        = number
  default     = 22
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "development"
    Project     = "Terraform"
  }
}
